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

#include "drivers/displays/character/16101_serial/16101_serial.h"
#include "core/timer32/timer32.h"

#ifdef CFG_INTERFACE
#include "core/cmd/cmd.h"
#endif

uint32_t rotationTime = 0;
uint8_t sampleCount = 0;

#define SKIP_SAMPLES 4

void PIOINT2_IRQHandler(void) {
    uint32_t regVal;
    regVal = gpioIntStatus(2, 9);
    if ( regVal ) {
        if(gpioGetValue(2, 9)) {
            if(sampleCount < SKIP_SAMPLES) {
                sampleCount++;
            } else {
                rotationTime = timer32GetCount(0);
            }
                
            timer32ResetCounter(0);
        }
        gpioIntClear(2, 9);
    }		
    return;
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
    
    uint32_t currentSecond, lastSecond;
    uint32_t lastRotationTime = 0;
    currentSecond = lastSecond = 0;
    timer32Init(0, TIMER32_CCLK_1US);
    timer32Enable(0);
    LCDInit();
    
    gpioInit();
    gpioSetDir(2, 9, gpioDirection_Input);
    gpioSetPullup (&IOCON_PIO2_9, gpioPullupMode_Inactive);
    gpioSetInterrupt(2, 9, gpioInterruptSense_Edge, gpioInterruptEdge_Single, gpioInterruptEvent_ActiveHigh);
    gpioIntEnable(2, 9);
    rotationTime = 0;
    char msg[16];

    LCDWrite("Apuoka pasukiok...", 16);

    while (1) {        
        // Toggle LED once per second
        currentSecond = systickGetSecondsActive();
        printf("rotationTime: %u lastRotation: %u samples: %u%s", rotationTime, lastRotationTime, sampleCount, CFG_PRINTF_NEWLINE);
        if(rotationTime > 0) {
            if((rotationTime > lastRotationTime * 0.5) || lastRotationTime == 0) {
                lastRotationTime = rotationTime;
            }
            uint32_t rpm = 60000000 / lastRotationTime;
            sprintf(msg, "RPM: %u", rpm);
            LCDWrite(msg, strlen(msg));
            printf("rotationTime: %u%s", lastRotationTime, CFG_PRINTF_NEWLINE);
        } else {
            LCDWrite("RPM: 0", strlen("RPM: 0"));
        }
        systickDelay(250);

        if (currentSecond != lastSecond) {
            lastSecond = currentSecond;
            gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
            if(timer32GetCount(0) > 6000000) {
                rotationTime = 0;
                lastRotationTime = 0;
                sampleCount = 0;
            }
        }
        
        // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
#ifdef CFG_INTERFACE 
        cmdPoll(); 
#endif
    }
    
    return 0;
}
