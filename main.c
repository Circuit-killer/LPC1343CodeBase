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
#include "motor.h"
#include "pid.h"

encoder_t *encoder1;
uint32_t encoder1Timeout = 1000000;
uint16_t goThreshold = 50;


inline void setupEncoderHardware(encoder_t *encoder) {
  gpioSetDir(encoder->port, encoder->pinU1, gpioDirection_Input);
  gpioSetDir(encoder->port, encoder->pinU2, gpioDirection_Input);
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!           !!!!!###########
  ///######!!!!  B Y B Y S  !!!!###########
  ///######!!!!!           !!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  gpioSetPullup(&IOCON_PIO2_0, gpioPullupMode_PullUp); 
  gpioSetPullup(&IOCON_PIO2_1, gpioPullupMode_PullUp); 
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  ///######!!!!!!!!!!!!!!!!!!!!!###########
  gpioSetInterrupt(encoder->port, encoder->pinU1, gpioInterruptSense_Edge, gpioInterruptEdge_Single, gpioInterruptEvent_ActiveLow);
  gpioIntEnable(encoder->port, encoder->pinU1);  
  
  NVIC_SetIRQPriority(EINT2_IRQn, 7);
  NVIC_SetIRQPriority(TIMER_32_0_IRQn, 0);
}


void PIOINT2_IRQHandler(void) {
  if (isEncoderInterrupt(encoder1)) {
    setEncoderInterrupt(encoder1);
    gpioIntClear(encoder1->port, encoder1->pinU1);    
    asm("nop");
    asm("nop");
  }		
}


void encoderInit(encoder_t *encoder) {
  encoder1->port = 2;
  encoder1->pinU1 = 0;
  encoder1->pinU2 = 1;
  encoder1->debounceDelayUs = 190;  
  encoder1->pulses = 0;
  encoder1->pulsesTemp = 0;
  encoder1->status = STATUS_STOPPED;
  encoder1->direction = DIRECTION_NONE;
  encoder1->interrupt = 0;
}

int main(void) {
  systemInit();
  
  encoder_t e;
  encoder1 = &e;
  
  encoderInit(encoder1);
  setupEncoderHardware(encoder1);
    
  timer32Init(0, TIMER32_CCLK_1US);
  timer32Enable(0);

  int32_t lastencoder1StepCount = 0;  

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
  int16_t controlAction;

//  systickDelay(5000);
  

  while (1) {
    if(isEncoderTimeout(encoder1, encoder1Timeout)) {
      encoderReset(encoder1);
    }
    
    if(encoder1->interrupt) {
      onEncoderInterrupt(encoder1);
    }
    
    if(encoder1->pulsesTemp > goThreshold && STATUS_STOPPED == encoder1->status) {
      encoder1->status = STATUS_RUNNING;
      encoder1->pulses += encoder1->pulsesTemp;
      motorStart(motor, timer32GetCount(0));
    }
    
    if(lastencoder1StepCount != encoder1->pulses && STATUS_RUNNING == encoder1->status) {
      lastencoder1StepCount = encoder1->pulses;
    }
// TODO pamėgint paenablint histerizę

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
      lastPIDAction = timestamp;

//      printf("%5d-%5d=%2d, ctrl: %3d, freq: %4d of %4d %s", encoder1->pulses, motor->pulses, (encoder1->pulses - motor->pulses), controlAction, motor->frequency, motor->targetFrequency, CFG_PRINTF_NEWLINE);
      printf("Freq: %6d of %6d motor: %4d encoder: %4d %s", motor->frequency, motor->targetFrequency, motor->pulses, encoder1->pulses, CFG_PRINTF_NEWLINE);
    }
    
    
    
    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
