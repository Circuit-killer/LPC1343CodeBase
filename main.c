/**************************************************************************/
/*! 
    @file     main.c
    @author   K. Townsend (microBuilder.eu)

    @section LICENSE

    Software License Agreement (BSD License)

    Copyright (c) 2011, microBuilder SARL
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:
    1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
    2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
    3. Neither the name of the copyright holders nor the
    names of its contributors may be used to endorse or promote products
    derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ''AS IS'' AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
/**************************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "projectconfig.h"
#include "sysinit.h"

#include "core/gpio/gpio.h"
#include "core/systick/systick.h"
#include "core/timer32/timer32.h"
#include "encoder.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

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
}


void PIOINT2_IRQHandler(void) {
  if (isEncoderInterrupt(encoder1)) {
    setEncoderInterrupt(encoder1);
    gpioIntClear(encoder1->port, encoder1->pinU1);    
    asm("nop");
    asm("nop");
  }		
}

int main(void) {
  systemInit();
  gpioInit();
  encoder_t e;
  encoder1 = &e;

  encoder1->port = 2;
  encoder1->pinU1 = 0;
  encoder1->pinU2 = 1;
  encoder1->debounceDelayUs = 190;

  NVIC_SetIRQPriority(EINT2_IRQn, 7);
  NVIC_SetIRQPriority(TIMER_32_0_IRQn, 0);

  setupEncoderHardware(encoder1);
    
  timer32Init(0, TIMER32_CCLK_1US);
  timer32Enable(0);

  int32_t lastencoder1StepCount = 0;  

  while (1) {
    if(isEncoderTimeout(encoder1, encoder1Timeout)) {
      encoderReset(encoder1);
    }
    
    if(encoder1->interrupt) {
      onEncoderInterrupt(encoder1);
    }
    
    if(encoder1->stepCount > goThreshold) {
      encoder1->status = STATUS_RUNNING;
    }
    
    if(lastencoder1StepCount != encoder1->stepCount && STATUS_RUNNING == encoder1->status) {
      printf("count: %d dir: %d%s", encoder1->stepCount, encoder1->direction, CFG_PRINTF_NEWLINE);
      lastencoder1StepCount = encoder1->stepCount;
    }
    
    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
