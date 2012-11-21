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

encoder_t *encoderCarousel;
encoder_t *encoderWheel;

inline void setupEncoderHardware(encoder_t *encoderCarousel, encoder_t *encoderWheel) {
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

  encoderSetupHardware(encoderCarousel);
  encoderSetupHardware(encoderWheel);
}


void PIOINT2_IRQHandler(void) {
  if (isEncoderInterrupt(encoderCarousel)) {
    setEncoderInterrupt(encoderCarousel);
    gpioIntClear(encoderCarousel->port, encoderCarousel->pinU1);    
    asm("nop");
    asm("nop");
  } else if (isEncoderInterrupt(encoderWheel)) {
    setEncoderInterrupt(encoderWheel);
    gpioIntClear(encoderWheel->port, encoderWheel->pinU1);    
    asm("nop");
    asm("nop");
  }		
}


inline void encoderCarouselInit(encoder_t *encoder) {
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

inline void encoderWheelInit(encoder_t *encoder) {
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
  gpioSetDir(3, 3, gpioDirection_Output); // encoderWheel indication
  gpioSetValue(3, 3, 1);
  gpioSetDir(3, 0, gpioDirection_Output); // encoderCarousel indication
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

void debounceSwitch(uint8_t *flag, uint8_t port, uint8_t pin) {
  if(! *flag && 0 == gpioGetValue(port, pin)) {
    printf("switch on?\r\n");
    systickDelay(30);
    if(0 == gpioGetValue(port, pin)) {
      *flag = 1;
      printf("ON!!! \r\n");
    } else {
      printf("no...\r\n");
    }
  }
  if(*flag && 1 == gpioGetValue(port, pin)) {
    printf("switch off?\r\n");
    systickDelay(30);
    if(1 == gpioGetValue(port, pin)) {
      *flag = 0;
      printf("off\r\n");
    } else {
      printf("no...\r\n");
    }
  }
}

inline void setupSwitches() {
  gpioSetDir(1, 10, gpioDirection_Input); //synchro
  gpioSetPullup(&IOCON_PIO1_10, gpioPullupMode_PullUp);

  gpioSetDir(1, 11, gpioDirection_Input); //start-stop
  gpioSetPullup(&IOCON_PIO1_11, gpioPullupMode_PullUp);

  gpioSetDir(1, 8, gpioDirection_Input); //slow go
  gpioSetPullup(&IOCON_PIO1_10, gpioPullupMode_PullUp);
}

inline void checkControlsOff() {
  while(0 == gpioGetValue(1, 10) || 0 == gpioGetValue(1, 11) || 0 == gpioGetValue(1, 8)) {
    //nothing
  }
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
  setupSwitches();
  checkControlsOff();
  systickDelay(100);
  ledsOff();
  commBad();

  modbusInit();
  
  encoder_t e1;
  encoderCarousel = &e1;
  encoder_t e2;
  encoderWheel = &e2;
  
  encoderCarouselInit(encoderCarousel);
  encoderWheelInit(encoderWheel);
  setupEncoderHardware(encoderCarousel, encoderWheel);
  
  pidData_t p;
  pid = &p;
  pid_Init(25000, 0, 0, pid);
  encoderRatio = 7500;
  
  MotorModel_t m;
  MotorModel_t* motor = &m;
  motorInit(motor);
  int16_t motorTargetFrequency = 0;  

  uint32_t lastPIDAction = timer32GetCount(0);
  uint32_t lastPrintTimestamp = timer32GetCount(0);
  uint32_t lastCommCheckTimestamp = timer32GetCount(0);
  int16_t controlAction;

  runSynchro = 0;
  uint8_t run = 0;
  uint8_t slowgo = 0;
  uint32_t lastWheelPulses = 0;
  uint32_t lastCarouselPulses = 0;
  
  while (1) {
    if(encoderCarousel->interrupt) {
      onEncoderInterrupt(encoderCarousel);
    }
    
    if(encoderWheel->interrupt) {
      onEncoderInterrupt(encoderWheel);
    }

    if(isEncoderTimeout(encoderCarousel, timer32GetCount(0))) {
      printf("timeout - resetting carousel encoder%s", CFG_PRINTF_NEWLINE);
      encoderReset(encoderCarousel);
    }
    
    
    if(isEncoderTimeout(encoderWheel, timer32GetCount(0))) {
      printf("timeout - resetting wheel encoder%s", CFG_PRINTF_NEWLINE);
      printf("wheel pulses: %d%s", encoderWheel->pulses, CFG_PRINTF_NEWLINE);
      encoderReset(encoderWheel);
    }
        
    if(encoderCanStart(encoderWheel)) {
      encoderStart(encoderWheel);
      printf("starting wheel encoder%s", CFG_PRINTF_NEWLINE);
      motorStart(motor, timer32GetCount(0));
      if(runSynchro) {
        modbusSetSpeed(10000);
        if(DIRECTION_CW == encoderWheel->direction) {
          modbusControl(3);
        } else if(DIRECTION_CCW == encoderWheel->direction){
          modbusControl(1);
        }
      }
    }

    if(encoderCanStart(encoderCarousel)) {
      printf("starting casousel encoder%s", CFG_PRINTF_NEWLINE);
      encoderStart(encoderCarousel);
    }
    
    
    uint32_t timestamp = timer32GetCount(0);
    if(runSynchro && timestamp - lastPIDAction >  100000) {
      //printf("encoder status: %d temppulses: %d\n", encoderWheel->status, encoderWheel->pulsesTemp);
      motorStep(motor, timestamp);
      float setPoint = (float)encoderWheel->pulses / ((float)encoderRatio / 1000.0);
      
      controlAction = pid_Controller((int32_t) setPoint, encoderCarousel->pulses, pid);
      
      motorTargetFrequency = controlAction;
      if(motorTargetFrequency > 10000) {
        motorTargetFrequency = 10000;
      } else if(motorTargetFrequency < 0) {
        motorTargetFrequency = 0;
      }
      motorSetTargetFrequency(motor, motorTargetFrequency);
      modbusSetSpeed(motorTargetFrequency);
      
      lastPIDAction = timestamp;

//      printf("%5d-%5d=%2d, ctrl: %3d, freq: %4d of %4d %s", encoderCarousel->pulses, motor->pulses, (encoderCarousel->pulses - motor->pulses), controlAction, motor->frequency, motor->targetFrequency, CFG_PRINTF_NEWLINE);
      printf("Freq: %6d carousel: %4d wheel: %4d wdiff: %4d cdiff:%4d %s", motor->targetFrequency, encoderCarousel->pulses, encoderWheel->pulses, encoderWheel->pulses - lastWheelPulses, encoderCarousel->pulses - lastCarouselPulses, CFG_PRINTF_NEWLINE);
      lastWheelPulses = encoderWheel->pulses;
      lastCarouselPulses = encoderCarousel->pulses;
    } else if(timestamp - lastCommCheckTimestamp > 1000000) {
      if(modbusGetHoldingRegister(2001) < 0) {
        commBad();
      } else {
        commGood();
      }
      lastCommCheckTimestamp = timestamp;
    }
    
    #define MODE_SYNCHRO 1
    #define MODE_RUN 2
    #define MODE_SLOWGO 3
    uint8_t lastMode = 0;
    
    uint8_t t = 0;
    if(!run && !slowgo) {
      t = runSynchro;
      debounceSwitch(&t, 1, 10);
      if(t != runSynchro) {
        runSynchro = t;
        modbusSetSpeed(0);
        
        encoderReset(encoderWheel);
        encoderWheel->pulses = 0;
        encoderReset(encoderCarousel);
        encoderCarousel->pulses = 0;
        
        if(0 == runSynchro) {
          printf("stopping synchro%s", CFG_PRINTF_NEWLINE);
          modbusControl(0);
        } else {
          printf("starting synchro%s", CFG_PRINTF_NEWLINE);
          modbusPresetSingleRegister(108, 0); //no torque boost
          modbusPresetSingleRegister(599, 0); //freq control
          modbusPresetSingleRegister(504, 0); //start ramp
          modbusPresetSingleRegister(505, 1); //stop ramp
          modbusPresetSingleRegister(101, 1250);//max freq
          modbusPresetSingleRegister(102, 1);//acceleration time
          modbusPresetSingleRegister(103, 1);//deceleration time
          
          modbusControl(3);
          lastMode = MODE_SYNCHRO;
        }
      }
    }
        
    if(!runSynchro && !slowgo){
      t = run;
      debounceSwitch(&t, 1, 11);
      if(t != run) {
        run = t;
        if(0 == run) {
          printf("stopping motor%s", CFG_PRINTF_NEWLINE);
          modbusControl(0);
        } else {
          printf("starting motor%s", CFG_PRINTF_NEWLINE);
          modbusPresetSingleRegister(108, 0); //no torque boost
          modbusPresetSingleRegister(599, 1); //speed control
          modbusPresetSingleRegister(504, 0); //start ramp
          modbusPresetSingleRegister(505, 0); //stop coasting
          modbusPresetSingleRegister(101, 3500);//max freq
          modbusPresetSingleRegister(102, 100);//acceleration time
          modbusPresetSingleRegister(103, 200);//deceleration time
          modbusSetSpeed(5000);
          modbusControl(3);
          lastMode = MODE_RUN;
        }
      }
    }

    if(!run && !runSynchro) {
      t = slowgo;
      debounceSwitch(&t, 1, 8);
      if(t != slowgo) {
        slowgo = t;
        if(0 == slowgo) {
          printf("stopping slowgo%s", CFG_PRINTF_NEWLINE);
          printf("total carousel pulses: %d%s", encoderCarousel->pulses, CFG_PRINTF_NEWLINE);
//          modbusSetSpeed(0);
          modbusControl(0);
        } else if(STATUS_STOPPED == encoderCarousel->status) {
          printf("starting slowgo%s", CFG_PRINTF_NEWLINE);
          encoderReset(encoderCarousel);
          encoderCarousel->pulses = 0;
          if(lastMode != MODE_SLOWGO) {
            modbusPresetSingleRegister(108, 1); //torque boost
            modbusPresetSingleRegister(599, 1); //speed control
            modbusPresetSingleRegister(504, 0); //start ramp
            modbusPresetSingleRegister(505, 0); //stop coasting
            modbusPresetSingleRegister(101, 3500);//max freq
            modbusPresetSingleRegister(102, 20);//acceleration time
            modbusPresetSingleRegister(103, 200);//deceleration time
          }
          modbusSetSpeed(8000);
          modbusControl(3);
          lastMode = MODE_SLOWGO;
        }
      }
    }
    
    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
