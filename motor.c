#include <stdint.h>
#include <stdio.h>
#include <float.h>
#include "motor.h"
#include "projectconfig.h"
#include "core/uart/uart.h"


#define NOMINAL_SPEED 0.8//rps
#define PULSES_PER_ROTATION 2500

void motorInit(MotorModel_t *motor) {
  motor->targetFrequency = 0;
  motor->frequency = 0;
  motor->responseCoeff = 0.002;
  motor->pulses = 0;
  motor->fpulses = 0;
  motor->ffrequency = 0;
  motor->timestamp = 0;
  
  uartInit(4800);
  UART_U0RS485CTRL |= UART_U0RS485CTRL_DCTRL_Enabled | UART_U0RS485CTRL_OINV_Inverted;
  IOCON_PIO1_5 |= IOCON_PIO1_5_FUNC_RTS | IOCON_PIO1_5_MODE_PULLDOWN;  
  UART_U0RS485DLY = 4;

  uart_pcb_t *pcb = uartGetPCB();
  
  while(!pcb->initialised) {
    printf("waiting UART to initialize...%s", CFG_PRINTF_NEWLINE);
    systickDelay(500);
  }  
}

uint16_t calculateCRC(uint8_t *frame, unsigned char bufferSize) {
  uint16_t temp, temp2, flag;
  temp = 0xFFFF;
  uint8_t i;
  for (i = 0; i < bufferSize; i++) {
    temp = temp ^ frame[i];
    uint8_t j;
    for (j = 1; j <= 8; j++) {
      flag = temp & 0x0001;
      temp >>= 1;
      if (flag)
        temp ^= 0xA001;
    }
  }
  // Reverse byte order. 
  temp2 = temp >> 8;
  temp = (temp << 8) | temp2;
  temp &= 0xFFFF;
  return temp; // the returned value is already swopped - crcLo byte is first & crcHi byte is last
}

void modbusSetSpeed(uint16_t speed) {
  if(speed > 10000) {
    printf("Speed must be <= 10000");
    return;
  }
  uint8_t frame[8] = {1, 6, 2002 >> 8, 2002 & 0xFF, speed >> 8, speed & 0xff, 0, 0};
  uint16_t crc = calculateCRC(frame, 6);
  frame[6] = crc >> 8;
  frame[7] = crc & 0xff;
  
  printf("sending%s", CFG_PRINTF_NEWLINE);
  uartSend(frame, 8);
  printf("receiving...%s", CFG_PRINTF_NEWLINE);
  while(uartRxBufferDataPending()) {
    uint8_t c = uartRxBufferRead();
    printf("0x%x ", c);
  }
  printf("%s", CFG_PRINTF_NEWLINE);
}

void modbusControl(uint16_t controlWord) {
  uint8_t frame[8] = {1, 6, 2000 >> 8, 2000 & 0xff, controlWord << 8, controlWord & 0xff, 0, 0 };
  uint16_t crc = calculateCRC(frame, 6);
  frame[6] = crc >> 8;
  frame[7] = crc & 0xff;
  printf("Starting motor%s", CFG_PRINTF_NEWLINE);
  uartSend(frame, 8);
  while(uartRxBufferDataPending()) {
    uint8_t c = uartRxBufferRead();
    printf("0x%x ", c);
  }  
  printf(" done%s", CFG_PRINTF_NEWLINE);
}

void countRouteTravelled(MotorModel_t *motor, uint32_t timestamp) {
  double r1 = (double)NOMINAL_SPEED / (double)10000.0 * motor->ffrequency;
  double rotations = r1 * (double)(timestamp - motor->timestamp) / (double)1000000;
  motor->fpulses = motor->fpulses + (double) PULSES_PER_ROTATION * rotations;
  
//  uint32_t r2 = rotations * 1000;
//  uint32_t p = motor->fpulses * 1000;
//  printf("dt: %d, r:%d, p:%d ",(timestamp - motor->timestamp), r2, p);

  motor->pulses = (int32_t) motor->fpulses;
}

void motorStart(MotorModel_t *motor, uint32_t timestamp) {
  motor->timestamp = timestamp;
}

void motorStep(MotorModel_t *motor, uint32_t timestamp) {
  if(motor->frequency < motor->targetFrequency) {
    motor->ffrequency = motor->ffrequency + (double) motor->responseCoeff * (timestamp - motor->timestamp);
    motor->frequency = (int32_t) motor->ffrequency;
    if(motor->frequency > motor->targetFrequency) {
      motor->frequency = motor->targetFrequency;
      motor->ffrequency = motor->targetFrequency;
    }
  } else if(motor->frequency > motor->targetFrequency) {
    motor->ffrequency = motor->ffrequency - (double) motor->responseCoeff * (timestamp - motor->timestamp) ;
    motor->frequency = (int32_t) motor->ffrequency;
    if(motor->frequency < motor->targetFrequency) {
      motor->frequency = motor->targetFrequency;
      motor->ffrequency = motor->targetFrequency;
    }
  }
  if(motor->frequency == 0) {
    motor->ffrequency = 0;
  }
  countRouteTravelled(motor, timestamp);
  motor->timestamp = timestamp;
}

void motorSetTargetFrequency(MotorModel_t *motor, int16_t target){
  motor->targetFrequency = target;
}


//int main() {
//  uint32_t i;
//  MotorModel_t m;
//  MotorModel_t* motor = &m;
//  motorInit(motor);
//  motorStart(motor, 0);
//  motorSetTargetFrequency(motor, 10000);
//  printf("rotations frequency pulses speed\n");
//  for(i = 0; i < 6000000; i+= 10000) {
//    motorStep(motor, i);
//    printf("%d, %d\n", motor->frequency, motor->pulses);
//  }
//  return 0;
//}
