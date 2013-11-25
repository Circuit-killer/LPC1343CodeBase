/**************************************************************************/
/*! 
    @file     main.c
    @author   K. Townsend (microBuilder.eu)

    @section LICENSE

    Software License Agreement (BSD License)

    Copyright (c) 2012, microBuilder SARL
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
#include "projectconfig.h"
#include "sysinit.h"

#include "core/gpio/gpio.h"
#include "core/timer32/timer32.h"
#include "core/systick/systick.h"
#include "core/gpio/gpio.h"
#include "core/adc/adc.h"
#include "drivers/pid/pid.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

void setupPrimary();
void setupSecondary();
void setupLCD();
void lcdLatch();

#define RS 2,1
#define RW 2,2
#define E 2,3
#define DB4 2,4
#define DB5 2,5
#define DB6 2,6
#define DB7 2,7

void lcdLatch() {
    gpioSetValue(E, 1);
    systickDelay(40);
    gpioSetValue(E, 0);
    systickDelay(40);
    systickDelay(2000);

}


void setupLCD() {
    systickInit(1);
    systickDelay(2000);
    
    gpioSetDir(RS, gpioDirection_Output);
    gpioSetDir(RW, gpioDirection_Output);
    gpioSetDir(E, gpioDirection_Output);
    gpioSetDir(DB4, gpioDirection_Output);
    gpioSetDir(DB5, gpioDirection_Output);
    gpioSetDir(DB6, gpioDirection_Output);
    gpioSetDir(DB7, gpioDirection_Output);
    
    gpioSetValue(RS, 0);
    gpioSetValue(RW, 0);
    gpioSetValue(E, 0);
    gpioSetValue(DB4, 0);
    gpioSetValue(DB5, 0);
    gpioSetValue(DB6, 0);
    gpioSetValue(DB7, 0);
    
    //Function set
    gpioSetValue(DB5, 1);
    gpioSetValue(DB4, 1);
    lcdLatch();
    gpioSetValue(DB5, 1);
    gpioSetValue(DB4, 1);
    lcdLatch();    
    gpioSetValue(DB4, 1);
    gpioSetValue(DB5, 1);
//    gpioSetValue(DB7, 1);
    lcdLatch();

    gpioSetValue(DB4, 0);
    gpioSetValue(DB5, 0);
    gpioSetValue(DB6, 0);
    gpioSetValue(DB7, 0);
    
    
    //Display on off control
    gpioSetValue(DB5, 0);
    gpioSetValue(DB7, 0);
    lcdLatch();
    
    gpioSetValue(DB7, 1);
    gpioSetValue(DB6, 1); //display on
    gpioSetValue(DB5, 1); //cursor on
    gpioSetValue(DB4, 0); //blink off
    lcdLatch();

    //Display clear
    gpioSetValue(DB7, 0);
    gpioSetValue(DB6, 0);
    gpioSetValue(DB5, 0);
    gpioSetValue(DB4, 0);
    lcdLatch();
    
    gpioSetValue(DB4, 1);
    lcdLatch();
    
    //Entry mode set
    gpioSetValue(DB4, 0);
    lcdLatch();
    
    gpioSetValue(DB6, 1);
    gpioSetValue(DB5, 0); //no increment
    gpioSetValue(DB4, 0); //no shift
    lcdLatch();
}


uint16_t controlLoopTotal = 10; //sekundziu trunka sildytuvo veikimo ciklas
int16_t controlValue = 0;

uint16_t temp;
int16_t error;
BOOL controlLoopDone = TRUE;

#define RING_BUFFER_SIZE (6)

uint16_t ringBuffer[RING_BUFFER_SIZE] = {0, 0, 0, 0, 0, 0};
uint8_t ringIndex = 0;

void heaterOn() {
    gpioSetValue(2, 1, 1);
}

void heaterOff() {
    gpioSetValue(2, 1, 0);
}

uint8_t waitasec = FALSE;
void controlAction() {
    if(timer32GetCount(0) < controlLoopTotal) {
        if((controlValue > 0) && timer32GetCount(0) <= controlValue) {
            heaterOn();
        } else {
            heaterOff();
        }
    } else {
        if(waitasec) {
            timer32Disable(0);
            controlLoopDone = TRUE;
            waitasec = FALSE;
        } else {
            heaterOff();
            waitasec = TRUE;
        }
    }
}

void heaterSetup() {
    gpioSetDir(2, 1, gpioDirection_Output);
    gpioSetValue(2, 1, 0);
}

uint16_t getTemperature() {
    uint32_t ambientValue = adcReadOversampled(1, 6);    
    uint32_t thermocoupleValue = adcReadOversampled(0, 6);
    
    double ambientVoltage = (double) ambientValue / 65535.0F * 3300.0F;
    double thermocoupleVoltage = (double)(((double)thermocoupleValue / 65535.0F) * 3300.0F);
    
    return (uint16_t) (ambientVoltage / 10.0) + (uint16_t)(thermocoupleVoltage / 3.0);
}

void recordTemp(uint16_t t) {
    ringBuffer[ringIndex] = t;
    ringIndex++;
    if(ringIndex >= RING_BUFFER_SIZE) {
        ringIndex = 0;
    }     
}

uint16_t getAverageTemp() {
    uint8_t i;
    uint16_t sum = 0;
    for(i = 0; i < RING_BUFFER_SIZE; i++){
        sum += ringBuffer[i];
    }
    return sum / RING_BUFFER_SIZE;
}


#define PROGRAM_PRIMARY 0
#define PROGRAM_SECONDARY 0xFF

int main(void)
{
  // Configure cpu and mandatory peripherals
    systemInit();
    gpioInit();
    
    heaterSetup();
    timer32Init(0, TIMER32_CCLK_1S);
    timer32SetIntHandler(controlAction);
    
    pid.pGain = (double) ((double) 350 / 1000.0);
    pid.iGain = (double) 30 / 1000.0;
    pid.dGain = (double) 400 / 1000.0;
    
    pid.iState = 0;
    pid.iMax = 6.0 / pid.iGain;
    pid.iMin = 6.0 / pid.iGain * -1;
    
    
    uint32_t currentSecond, lastSecond;
    currentSecond = lastSecond = 0;
    
    setPoint = 0;
    temp = getTemperature();
    recordTemp(temp);

    gpioSetDir(2, 8, gpioDirection_Output);
    
    gpioSetDir(2, 9, gpioDirection_Input);
    gpioSetPullup(&IOCON_PIO2_9, gpioPullupMode_PullUp);

    uint8_t currProgram = PROGRAM_PRIMARY;

    gpioSetValue(2, 8, 0);
    setupPrimary();
    startPidProgram(0);

    error = setPoint - temp;
    controlValue = updatePID(&pid, error, temp);


    while (1){
        if(controlLoopDone) {
            timer32ResetCounter(0);
            temp = getTemperature();
            recordTemp(temp);

            processPidProgramStep(getAverageTemp());

            if(isPidRunning()) {
            	if(verbose){
            		printf("%d\r\n", temp);
            	}
            }
            error = setPoint - temp;
            controlValue = updatePID(&pid, error, temp);
            controlLoopDone = FALSE;

            timer32Enable(0);
        }
        
        if(gpioGetValue(2, 9) == 0) {
            //printf("button?");
            
            systickDelay(100);
            if(gpioGetValue(2, 9) == 0) {
                //printf("click!%s", CFG_PRINTF_NEWLINE);
                if(PROGRAM_SECONDARY == currProgram) {
                    if(verbose) {
                    	printf("Starting PRIMARY program%s", CFG_PRINTF_NEWLINE);
                    }
                    setupPrimary();
                    currProgram = PROGRAM_PRIMARY;
                    gpioSetValue(2, 8, 0);
                } else {
                    if(verbose) {
                    	printf("Starting SECONDARY program%s", CFG_PRINTF_NEWLINE);
                    }
                    currProgram = PROGRAM_SECONDARY;
                    setupSecondary();
                    gpioSetValue(2, 8, 1);
                }
                
                startPidProgram(0);
                
                while(gpioGetValue(2, 9) == 0) {
                    systickDelay(100);
                }
            } else {
                //printf("no...");
            }
        }

        currentSecond = systickGetSecondsActive();
        if (currentSecond != lastSecond)
        {
          lastSecond = currentSecond;
          gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
        }

        #ifdef CFG_INTERFACE 
          cmdPoll(); 
        #endif
    }

  return 0;
}

void setupPrimary() {
    clearProgram();
    pidProgram[20] = (Command){COMMAND_TYPE_HOLD, 60, 600};
    pidProgram[40] = (Command){COMMAND_TYPE_HOLD, 110, 900};
    pidProgram[80] = (Command){COMMAND_TYPE_HOLD, 210, 900};
    pidProgram[100] = (Command){COMMAND_TYPE_HOLD, 260, 900};
    pidProgram[140] = (Command){COMMAND_TYPE_HOLD, 360, 900};
    pidProgram[190] = (Command){COMMAND_TYPE_HOLD, 470, 900};
    pidProgram[210] = (Command){COMMAND_TYPE_HOLD, 540, 900};
    pidProgram[230] = (Command){COMMAND_TYPE_HOLD, 610, 900};
    pidProgram[250] = (Command){COMMAND_TYPE_HOLD, 680, 900};
    pidProgram[270] = (Command){COMMAND_TYPE_HOLD, 750, 900};
    pidProgram[290] = (Command){COMMAND_TYPE_HOLD, 830, 900};
    pidProgram[310] = (Command){COMMAND_TYPE_HOLD, 900, 900};
    pidProgram[320] = (Command){COMMAND_TYPE_HOLD, 940, 10};
    pidProgram[340] = (Command){COMMAND_TYPE_HOLD, 600, 600};
}

void setupSecondary() {
    clearProgram();
    pidProgram[20] = (Command){COMMAND_TYPE_HOLD, 200, 600};
    pidProgram[30] = (Command){COMMAND_TYPE_HOLD, 400, 900};
    pidProgram[40] = (Command){COMMAND_TYPE_HOLD, 600, 900};
    pidProgram[100] = (Command){COMMAND_TYPE_HOLD, 940, 900};
    pidProgram[120] = (Command){COMMAND_TYPE_HOLD, 1020, 300};
    pidProgram[140] = (Command){COMMAND_TYPE_HOLD, 960, 900};
}
