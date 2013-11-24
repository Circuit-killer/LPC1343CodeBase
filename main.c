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
#include "drivers/storage/eeprom/eeprom.h"
#include "project/eeprom.h"
#include "core/pmu/pmu.h"

#ifdef CFG_USBCDC
  volatile unsigned int lastTick;
  #include "core/usbcdc/usb.h"
  #include "core/usbcdc/usbcore.h"
  #include "core/usbcdc/usbhw.h"
  #include "core/usbcdc/cdcuser.h"
  #include "core/usbcdc/cdc_buf.h"
#endif

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

extern uint8_t usbActive;

//uint32_t screen[32] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

void sendLine(int32_t value) {
  uint8_t request[SSP_FIFOSIZE];
  request[0]=(uint8_t) (value >> 24);
  request[1]=(uint8_t) (value >> 16);
  request[2]=(uint8_t) (value >> 8);
  request[3]=(uint8_t) value;
  
  ssp0Deselect();
  sspSend(0, (uint8_t *)&request, 4);
  ssp0Select();
  ssp0Deselect();
}

void sleep() {
	uint32_t pmuRegVal;
	// Initialise power management unit
	pmuInit();

	// Put peripherals into sleep mode
	pmuRegVal = SCB_PDSLEEPCFG_IRCOUT_PD |
		          SCB_PDSLEEPCFG_IRC_PD |
		          SCB_PDSLEEPCFG_FLASH_PD |
		          SCB_PDSLEEPCFG_USBPLL_PD |
							SCB_PDSLEEPCFG_USBPAD_PD |
		          SCB_PDSLEEPCFG_SYSPLL_PD |
		          SCB_PDSLEEPCFG_SYSOSC_PD |
		          SCB_PDSLEEPCFG_ADC_PD |
		          SCB_PDSLEEPCFG_BOD_PD |
							SCB_PDSLEEPCFG_WDTOSC_PD;

	// Enter deep sleep mode (wakeup after 5 seconds)
	// pin 3.0 is configured as wakeup source
	pmuDeepSleep(pmuRegVal, 0);
}

uint16_t lastLine = 0;


int main(void)
{
  // Configure cpu and mandatory peripherals
  systemInit();

  sspInit(0, sspClockPolarity_Low, sspClockPhase_RisingEdge);
	sendLine(0);

  // Initialise USB CDC
  #ifdef CFG_USBCDC
    lastTick = systickGetTicks();   // Used to control output/printf timing
    CDC_Init();                     // Initialise VCOM
    USB_Init();                     // USB Initialization
    USB_Connect(TRUE);              // USB Connect
    // Wait until USB is configured or timeout occurs
    uint32_t usbTimeout = 0; 
    while ( usbTimeout < CFG_USBCDC_INITTIMEOUT / 10 )
    {
      if (USB_Configuration) break;
      systickDelay(10);             // Wait 10ms
      usbTimeout++;
    }
  #endif
	
	timer32Init(0, TIMER32_DEFAULTINTERVAL);
	timer32Enable(0);

	gpioSetDir(3, 0, gpioDirection_Input);
  gpioSetPullup(&IOCON_PIO3_0, gpioPullupMode_PullUp);

  uint32_t currentSecond, lastSecond, sleepTimeoutStart;
  currentSecond = lastSecond = 0;
	sleepTimeoutStart = systickGetSecondsActive();

  uint8_t idx = 0;

	lastLine = eepromReadU16(PIC_SIZE_ADDR);
	
  while (1)
  {	
    currentSecond = systickGetSecondsActive();
    if (currentSecond != lastSecond)
    {
      lastSecond = currentSecond;
      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
    }

		if(0 == gpioGetValue(3, 0)) {
			if(idx < lastLine) {
				sendLine(eepromReadU32(PIC_START_ADDR + idx * 4));
				timer32Delay(0, TIMER32_DELAY_1MS * 31);
				idx++;
			} else {
				sendLine(0);			
//				printf("lastLine: %d \r\n", lastLine);
//				int i;
//				for(i = 0; i < lastLine; i++) {
//					printf("0x%04X ", eepromReadU32(PIC_START_ADDR + i * 4));		
//				}
//				printf("\r\n");
//				timer32Delay(0, TIMER32_DELAY_1MS * 1000);
			}

		}	else {
			idx = 0;
			sendLine(0);
			ssp0Deselect();
			if(!usbActive && (systickGetSecondsActive() - sleepTimeoutStart) > 30) {
				sleep();
				usbActive = 0;
			} else {
				usbActive = 0;
			}
		}

    cmdPoll();
		if(usbActive) {
			sleepTimeoutStart = systickGetSecondsActive();
		} 
  }

  return 0;
}
