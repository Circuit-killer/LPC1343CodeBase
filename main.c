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
#include "core/timer32/timer32.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

uint32_t screen[32] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

void sendLine(uint32_t value) {
  uint8_t request[SSP_FIFOSIZE];
  request[0]=(uint8_t) (value >> 24);
  request[1]=(uint8_t) (value >> 16);
  request[2]=(uint8_t) (value >> 8);
  request[3]=(uint8_t) value;
  
  ssp0Deselect();
  sspSend(0, (uint8_t *)&request, 4);
  ssp0Select();
}

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
  sspInit(0, sspClockPolarity_Low, sspClockPhase_RisingEdge);
	timer32Init(0, TIMER32_DEFAULTINTERVAL);
	timer32Enable(0);

	gpioSetDir(3, 0, gpioDirection_Input);
  gpioSetPullup(&IOCON_PIO3_0, gpioPullupMode_PullUp);

  uint32_t currentSecond, lastSecond;
  currentSecond = lastSecond = 0;

  int32_t value = 1;
	uint8_t dir = 1;
  uint8_t idx = 0;
	int i;	
	for(i= 0; i < 32; i++) {
		screen[i] = 1 << i;	
	}
  while (1)
  {
    // Toggle LED once per second
    currentSecond = systickGetSecondsActive();
    if (currentSecond != lastSecond)
    {
      lastSecond = currentSecond;
      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
    }    
	
		if(0 == gpioGetValue(3, 0)) {
			if(idx < 32) {
				sendLine(screen[idx]);
				timer32Delay(0, TIMER32_DELAY_1MS * 31);
				idx++;
			} else {
				sendLine(0);			
			}

		}	else {
			idx = 0;
			dir = 1;
			sendLine(0);
		}

    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
