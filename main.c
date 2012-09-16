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
#include "core/ssp/ssp.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

/**************************************************************************/
/*! 
    Main program entry point.  After reset, normal code execution will
    begin here.
*/
/**************************************************************************/
int main(void)
{
  // Configure cpu and mandatory peripherals
  systemInit();
    
    gpioInit();
    sspInit(0, sspClockPolarity_Low, sspClockPhase_RisingEdge);
    

  uint32_t currentSecond, lastSecond;
  currentSecond = lastSecond = 0;
  
  while (1)
  {
    // Toggle LED once per second
    currentSecond = systickGetSecondsActive();
    if (currentSecond != lastSecond)
    {
      lastSecond = currentSecond;
      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
    }

    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
      uint8_t buff[4] = {0,0,0,0};
      uint16_t ret = 0;
      while ( (SSP_SSP0SR & (SSP_SSP0SR_BSY_BUSY|SSP_SSP0SR_RNE_NOTEMPTY)) != SSP_SSP0SR_RNE_NOTEMPTY){
          //
      }

      while(SSP_SSP0SR & SSP_SSP0SR_RNE_NOTEMPTY) {
          ret = SSP_SSP0DR;
          printf("%d%s", ret, CFG_PRINTF_NEWLINE);
      }
  }

  return 0;
}
