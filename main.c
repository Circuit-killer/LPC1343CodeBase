#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "projectconfig.h"
#include "sysinit.h"

#include "core/gpio/gpio.h"
#include "core/systick/systick.h"
#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

#include "core/timer32/timer32.h"
#include "encoder.h"
#include "modbus.h"
#include "motor.h"
#include "pid.h"

encoder_t *encoder1;
encoder_t *encoder2;

inline void setupEncoderHardware(encoder_t *encoder1, encoder_t *encoder2) {
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!           !!!!!###########
  ///######!!!!  B Y B Y S  !!!!###########
  ///######!!!!!           !!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  gpioSetPullup(&IOCON_PIO2_6, gpioPullupMode_PullUp); 
  gpioSetPullup(&IOCON_PIO2_7, gpioPullupMode_PullUp); 
  gpioSetPullup(&IOCON_PIO2_8, gpioPullupMode_PullUp); 
  gpioSetPullup(&IOCON_PIO2_9, gpioPullupMode_PullUp); 
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  
  NVIC_SetIRQPriority(EINT2_IRQn, 7);
  NVIC_SetIRQPriority(TIMER_32_0_IRQn, 0);

  encoderSetupHardware(encoder1);
  encoderSetupHardware(encoder2);
}


void PIOINT2_IRQHandler(void) {
  if (isEncoderInterrupt(encoder1)) {
    setEncoderInterrupt(encoder1);
    gpioIntClear(encoder1->port, encoder1->pinU1);    
    asm("nop");
    asm("nop");
  } else if (isEncoderInterrupt(encoder2)) {
    setEncoderInterrupt(encoder2);
    gpioIntClear(encoder2->port, encoder2->pinU1);    
    asm("nop");
    asm("nop");
  }		
}


inline void encoder1Init(encoder_t *encoder) {
  encoder->port = 2;
  encoder->pinU1 = 8;
  encoder->pinU2 = 6;
  encoder->debounceDelayUs = 190;  
  encoder->pulses = 0;
  encoder->pulsesTemp = 0;
  encoder->status = STATUS_STOPPED;
  encoder->direction = DIRECTION_NONE;
  encoder->interrupt = 0;
  encoder->indicatorPort = 3;
  encoder->indicatorPin = 0;
  encoder->timeout = 500000;
  encoder->goThreshold = 50;
}

inline void encoder2Init(encoder_t *encoder) {
  encoder->port = 2;
  encoder->pinU1 = 7;
  encoder->pinU2 = 9;
  encoder->debounceDelayUs = 190;  
  encoder->pulses = 0;
  encoder->pulsesTemp = 0;
  encoder->status = STATUS_STOPPED;
  encoder->direction = DIRECTION_NONE;
  encoder->interrupt = 0;
  encoder->indicatorPort = 3;
  encoder->indicatorPin = 3;
  encoder->timeout = 500000;
  encoder->goThreshold = 50;
}

inline void setupLeds() {
  gpioSetDir(3, 3, gpioDirection_Output); // encoder2 indication
  gpioSetValue(3, 3, 1);
  gpioSetDir(3, 0, gpioDirection_Output); // encoder1 indication
  gpioSetValue(3, 0, 1);
  gpioSetDir(1, 6, gpioDirection_Output); // rxd
  gpioSetValue(1, 6, 1);
  gpioSetDir(1, 7, gpioDirection_Output); // txd
  gpioSetValue(1, 7, 1);
  gpioSetDir(1, 9, gpioDirection_Output); // no comm
  gpioSetValue(1, 9, 1);
}

inline void ledsOn() {
  gpioSetValue(3, 3, 0);
  gpioSetValue(3, 0, 0);
  gpioSetValue(1, 6, 0);
  gpioSetValue(1, 7, 0);
  gpioSetValue(1, 9, 0);
}

inline void ledsOff() {
  gpioSetValue(3, 3, 1);
  gpioSetValue(3, 0, 1);
  gpioSetValue(1, 6, 1);
  gpioSetValue(1, 7, 1);
  gpioSetValue(1, 9, 1);
}

inline void commBad() {
  gpioSetValue(1, 9, 0);
}

inline void commGood() {
  gpioSetValue(1, 9, 1);
}

int main(void) {
  systemInit();
  timer32Init(0, TIMER32_CCLK_1US);
  timer32Enable(0);

  setupLeds();
  
  ledsOn();
  systickDelay(2000);
  ledsOff();
  systickDelay(1000);
  ledsOn();
  systickDelay(100);
  ledsOff();
  commBad();

  modbusInit();
  
  encoder_t e1;
  encoder1 = &e1;
  encoder_t e2;
  encoder2 = &e2;
  
  encoder1Init(encoder1);
  encoder2Init(encoder2);
  setupEncoderHardware(encoder1, encoder2);

  pidData_t p;
  pid = &p;
  pid_Init(5000, 500, 0, pid);
  runSynchro = 0;
  
  MotorModel_t m;
  MotorModel_t* motor = &m;
  motorInit(motor);
  int16_t motorTargetFrequency = 0;

  uint32_t lastPIDAction = timer32GetCount(0);
  uint32_t lastPrintTimestamp = timer32GetCount(0);
  uint32_t lastCommCheckTimestamp = timer32GetCount(0);
  int16_t controlAction;

  while (1) {
    if(encoder1->interrupt) {
      onEncoderInterrupt(encoder1);
    }
    
    if(encoder2->interrupt) {
      onEncoderInterrupt(encoder2);
    }

    if(isEncoderTimeout(encoder1, timer32GetCount(0))) {
      gpioSetValue(1, 9, !gpioGetValue(1,9));
      encoderReset(encoder1);
    }
    if(isEncoderTimeout(encoder2, timer32GetCount(0))) {
      encoderReset(encoder2);
    }
        
    if(encoderCanStart(encoder1)) {
      encoderStart(encoder1);
      motorStart(motor, timer32GetCount(0));
    }

    if(encoderCanStart(encoder2)) {
      encoderStart(encoder2);
    }
    
    int32_t temp;
    
//    printf("Reading input register - acceleration time%s", CFG_PRINTF_NEWLINE);
//    temp = modbusGetHoldingRegister(102);
//    printf("read: %d%s", temp, CFG_PRINTF_NEWLINE);
//    systickDelay(500);
//    printf("Reading input register - deceleration time%s", CFG_PRINTF_NEWLINE);
//    temp = modbusGetHoldingRegister(103);
//    printf("read: %d%s", temp, CFG_PRINTF_NEWLINE);
//    systickDelay(2000);
//    printf("Reading holding register - DC-link voltage%s", CFG_PRINTF_NEWLINE);
//    temp = modbusGetHoldingRegister(6);
//    printf("read: %d%s", temp, CFG_PRINTF_NEWLINE);
//    systickDelay(2000);
//    printf("Setting acceleration%s", CFG_PRINTF_NEWLINE);
//    modbusPresetSingleRegister(102, 255);
//    systickDelay(1000);

    uint32_t timestamp = timer32GetCount(0);
    if(runSynchro && timestamp - lastPIDAction >  1000) {
      motorStep(motor, timestamp);
      controlAction = pid_Controller(encoder1->pulses, motor->pulses, pid);
      
      motorTargetFrequency = controlAction;
      if(motorTargetFrequency > 10000) {
        motorTargetFrequency = 10000;
      } else if(motorTargetFrequency < -10000) {
        motorTargetFrequency = 0;
      }
      motorSetTargetFrequency(motor, motorTargetFrequency);
      if(modbusSetSpeed(motorTargetFrequency) < 0) {
        commBad();
      } else {
        commGood();
      }
      lastPIDAction = timestamp;

//      printf("%5d-%5d=%2d, ctrl: %3d, freq: %4d of %4d %s", encoder1->pulses, motor->pulses, (encoder1->pulses - motor->pulses), controlAction, motor->frequency, motor->targetFrequency, CFG_PRINTF_NEWLINE);
      printf("Freq: %6d of %6d motor: %4d encoder: %4d %s", motor->frequency, motor->targetFrequency, motor->pulses, encoder1->pulses, CFG_PRINTF_NEWLINE);
    } else if(timestamp - lastCommCheckTimestamp > 1000000) {
      if(modbusGetHoldingRegister(2001) < 0) {//TODO pakeist i koki nors prasminga registra
        commBad();
      } else {
        commGood();
      }
      lastCommCheckTimestamp = timestamp;
    }

    
    
    
    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
