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
#include "core/adc/adc.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

uint32_t hwTimer = 0;
uint32_t lowerThreshold = 0;//174;
uint32_t upperThreshold = 512;



void initTimer(uint32_t timerInterval) {
    /* Enable the clock for CT32B0 */
    SCB_SYSAHBCLKCTRL |= (SCB_SYSAHBCLKCTRL_CT32B0);

    TMR_TMR32B0CTCR = 0;
    TMR_TMR32B0PR = 72;
    
    /* Configure PIO1.5 as Timer0_32 CAP0 */
    IOCON_PIO1_5 &= ~IOCON_PIO1_5_FUNC_MASK;
    IOCON_PIO1_5 |= IOCON_PIO1_5_FUNC_CT32B0_CAP0;
    
    TMR_TMR32B0CCR = TMR_TMR16B0CCR_CAP0RE_ENABLED | TMR_TMR32B0CCR_CAP0I_ENABLED;
    
    /* Enable the TIMER0 interrupt */
    NVIC_EnableIRQ(TIMER_32_0_IRQn);

    //enable timer
    TMR_TMR32B0TCR = TMR_TMR32B0TCR_COUNTERENABLE_ENABLED;
}

void resetTimer() {
//    TMR_TMR32B0TCR |= TMR_TMR32B0TCR_COUNTERRESET_ENABLED;
//    __asm volatile("nop");
    TMR_TMR32B0TC = 0;
//    TMR_TMR32B0TCR &= ~TMR_TMR32B0TCR_COUNTERRESET_ENABLED;
}

uint32_t getTimerCount() {
    return TMR_TMR32B0TC;
}

volatile int captured = 0;


void setupDischarge() {
    gpioSetDir(1, 10, gpioDirection_Output);//charge pin
    gpioSetDir(1, 11, gpioDirection_Output);//discharge pin
    gpioSetValue(1, 10, 0);
    gpioSetValue(1, 11, 0);    
}

void discharge() {
    setupDischarge();
    //printf("discharging ");  
    
    uint32_t adcVal = adcRead(0);
    while(adcVal > lowerThreshold) {
        adcVal = adcRead(0);
    }    
}

void TIMER32_0_IRQHandler(void)
{  
    if(!captured) {
        hwTimer = TMR_TMR32B0CR0;
        captured = 1;
    }
    /* Clear the interrupt flag */
    TMR_TMR32B0IR = TMR_TMR32B0IR_CR0;
}


int main(void)
{
    
    uint32_t adcVal = 1024;
    
  // Configure cpu and mandatory peripherals
  systemInit();
 //   systickInit(1000);
    discharge();
    initTimer(1);

  adcVal = adcReadSingle(0);
        
    uint32_t capacity=0;
  while (1)
  {
      discharge();
      systickDelay(1);
      //printf("charging ");
      gpioSetDir(1, 11, gpioDirection_Input);
      gpioSetPullup(&IOCON_PIO1_11, gpioPullupMode_Inactive);
      gpioSetValue(1, 10, 1);
//      adcVal = adcRead(0);
//      while(adcVal < lowerThreshold) {
//          adcVal = adcRead(0);
//      }

      resetTimer();
      captured=0;
      //printf("measuring %s", CFG_PRINTF_NEWLINE);
      while(!captured){
          //nothing
      }
      
      uint32_t currCap = hwTimer * 1000 / 697;
      if(capacity != currCap) {
//          if(currCap > capacity && ((currCap - capacity) * 100) / capacity  > 18) {
//          gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, !gpioGetValue(CFG_LED_PORT, CFG_LED_PIN));
          if(currCap > 70){
              printf("PYPT!%s", CFG_PRINTF_NEWLINE);
              gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, 0); 
          } else if (currCap < 50){
              gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, 1); 
          }
          
          printf("%d %s", capacity, CFG_PRINTF_NEWLINE);
          capacity = currCap;
      }
      
     // systickDelay(500);
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
