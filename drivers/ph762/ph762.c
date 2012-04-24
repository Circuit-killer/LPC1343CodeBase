/**************************************************************************/
/*! 
    @file     ph762.c
    @author   Albertas Mickėnas (mic@wemakethings.net)

    @section DESCRIPTION

    Driver for PH7.62 Led matrix.

    @section LICENSE

    Software License Agreement (BSD License)

    Copyright (c) 2010, microBuilder SARL
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
#include <string.h>
#include <stdio.h>

#include "ph762.h"
#include "core/gpio/gpio.h"
#include "core/timer32/timer32.h"
#include "screenSourceMMC.h"

volatile uint32_t scanLineTimeout = 0;
volatile uint32_t frameTimeout = 0; 
volatile uint8_t ph762Speed;

volatile uint8_t currLine;
uint8_t screen[SCR_HEIGHT][SCR_WIDTH];
uint8_t screenBuffer[SCR_HEIGHT][SCR_WIDTH];

/**************************************************************************/
/* Private Methods                                                        */
/**************************************************************************/
void blankScreen() {
    int i,j;
    for(i = 0; i < SCR_HEIGHT; i++) {
        for(j = 0; j < SCR_WIDTH; j++) {
            screen[i][j] = 0xff;
        }
    }
    screen[0][SCR_WIDTH-1] = 0b01111111;
}

inline void bitBangByte(uint8_t b) {
    uint8_t i = 4;
    REG32 *gpiodata = &GPIO_GPIO2DATA;
    while(i-- > 0) {
        //      gpioSetValue(PH762_R_PORT, PH762_R_PIN, (b & 0b00000001));
        (b & 0b00000001) == 1 ? *gpiodata |= (1 << PH762_R_PIN) : (*gpiodata &= ~(1 << PH762_R_PIN));
        b = b >> 1;
        //      gpioSetValue(PH762_G_PORT, PH762_G_PIN, (b & 0b00000001));
        (b & 0b00000001) == 1 ? *gpiodata |= (1 << PH762_G_PIN) : (*gpiodata &= ~(1 << PH762_G_PIN));
        b = b >> 1;
        *gpiodata |= (1 << PH762_CLK_PIN);
        //        gpioSetValue(PH762_CLK_PORT, PH762_CLK_PIN, 1);        
        *gpiodata &= ~(1 << PH762_CLK_PIN);
        //        gpioSetValue(PH762_CLK_PORT, PH762_CLK_PIN, 0);
    }
}



inline void bitBangLine(uint8_t *buffer, uint16_t length, uint8_t lineNo) {
    uint16_t i = length;
    REG32 *gpiodata = &GPIO_GPIO2DATA;
    
    for(i = 0; i < length; i++) {
        bitBangByte(*buffer);
        buffer++;
    }
    *gpiodata |= (1 << PH762_STB_PIN);
    //    gpioSetValue(PH762_STB_PORT, PH762_STB_PIN, 1);
    *gpiodata &= ~(1 << PH762_STB_PIN);
    //    gpioSetValue(PH762_STB_PORT, PH762_STB_PIN, 0);
    
    (lineNo & 0b00000001) == 1 ? *gpiodata |= (1 << PH762_A_PIN) : (*gpiodata &= ~(1 << PH762_A_PIN));
    //gpioSetValue(PH762_A_PORT, PH762_A_PIN, (lineNo & 0b00000001));
    (lineNo >> 1 & 0b00000001) == 1 ? *gpiodata |= (1 << PH762_B_PIN) : (*gpiodata &= ~(1 << PH762_B_PIN));
    //gpioSetValue(PH762_B_PORT, PH762_B_PIN, (lineNo >> 1 & 0b00000001));
    (lineNo >> 2 & 0b00000001) == 1 ? *gpiodata |= (1 << PH762_C_PIN) : (*gpiodata &= ~(1 << PH762_C_PIN));
    //gpioSetValue(PH762_C_PORT, PH762_C_PIN, (lineNo >> 2 & 0b00000001));
    (lineNo >> 3 & 0b00000001) == 1 ? *gpiodata |= (1 << PH762_D_PIN) : (*gpiodata &= ~(1 << PH762_D_PIN));
    //gpioSetValue(PH762_D_PORT, PH762_D_PIN, (lineNo >> 3 & 0b00000001));        
}

void ph762SetScreen(uint8_t *newScreen) {
    int i,j;
    for(i = 0; i < SCR_WIDTH; i++) {
        for(j = 0; j < SCR_HEIGHT; j++) {
            screenBuffer[j][i] = *(newScreen + j * SCR_WIDTH + i);
        }
    }
}

void sendNextLine() {
    gpioSetValue(PH762_STB_PORT, PH762_EN_PIN, 1);

    bitBangLine(screen[currLine], SCR_WIDTH, currLine);
    currLine+=2;
    
    if(currLine >= SCR_HEIGHT) {
        if(currLine % 2 == 1) {
            currLine = 0;
        } else {
            currLine = 1;
        }
    }
    gpioSetValue(PH762_STB_PORT, PH762_EN_PIN, 0);
}

inline BOOL isFrameComplete() {
    return currLine == 0;
}

inline void waitFrameComplete() {
    while(currLine != 0){
    }
}


void onTimerTick() {
    sendNextLine();
}

/**************************************************************************/
/* Public Methods                                                         */
/**************************************************************************/

/**************************************************************************/
/*! 
    @brief Initialises the PH7.62 LED matrix
*/
/**************************************************************************/

#define ANIM_POS_START (-16)
#define ANIM_POS_END (16)

void ph762Init(void) {
    //TODO load from eeprom
    ph762Speed = 10;

    currLine = 0;
    scanLineTimeout = TIMER32_CCLK_100US * 6;
    frameTimeout = 16 * ph762Speed; //taimeris nupieses eilute, patiksi viena karta. taigi, keiciam kadra po 10 pilnu kadru
    animationPosition = ANIM_POS_START;
    shift = 0;

    
    gpioSetDir(PH762_EN_PORT, PH762_EN_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_9, gpioPullupMode_Inactive);
    gpioSetValue(PH762_EN_PORT, PH762_EN_PIN, 1);    
    
    gpioSetDir(PH762_A_PORT, PH762_A_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_1, gpioPullupMode_Inactive);
    gpioSetValue(PH762_A_PORT, PH762_A_PIN, 0);

    gpioSetDir(PH762_B_PORT, PH762_B_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_2, gpioPullupMode_Inactive);
    gpioSetValue(PH762_B_PORT, PH762_B_PIN, 0);
    
    gpioSetDir(PH762_C_PORT, PH762_C_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_3, gpioPullupMode_Inactive);
    gpioSetValue(PH762_C_PORT, PH762_C_PIN, 0);
    
    gpioSetDir(PH762_D_PORT, PH762_D_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_4, gpioPullupMode_Inactive);
    gpioSetValue(PH762_D_PORT, PH762_D_PIN, 0);
    
    gpioSetDir(PH762_STB_PORT, PH762_STB_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_5, gpioPullupMode_Inactive);
    gpioSetValue(PH762_STB_PORT, PH762_STB_PIN, 0);

    gpioSetDir(PH762_CLK_PORT, PH762_CLK_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_6, gpioPullupMode_Inactive);
    gpioSetValue(PH762_CLK_PORT, PH762_CLK_PIN, 0);
    
    gpioSetDir(PH762_R_PORT, PH762_R_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_7, gpioPullupMode_Inactive);
    gpioSetValue(PH762_R_PORT, PH762_R_PIN, 0);
    
    gpioSetDir(PH762_G_PORT, PH762_G_PIN, gpioDirection_Output);
    gpioSetPullup(&IOCON_PIO2_8, gpioPullupMode_Inactive);
    gpioSetValue(PH762_G_PORT, PH762_G_PIN, 0);
    
    blankScreen();
    
    timer32Init(0, scanLineTimeout);
    timer32SetIntHandler(onTimerTick);
    initScreenSource();
 //   loadScreen(screenBuffer);
}

void ph762StartDisplay() {
    blankScreen();
    animationPosition = ANIM_POS_START;
    shift = 0;

    initScreenSource();
    loadScreen(screenBuffer);
    timer32Enable(0);
}

void ph762StopDisplay() {
    timer32Disable(0);
    freeScreenSource();
    gpioSetValue(PH762_STB_PORT, PH762_EN_PIN, 1);
}


void ph762SetMemory(uint8_t col, uint8_t row, uint8_t val) {
    screen[row][col] = val;
}


/**
 * Positive amount for upcomming screen
 * negative amount for disappearing screen
 **/

void animateScreen() {
    int j;
    for(j = 0; j < SCR_HEIGHT; j++) {
        int i;
        for(i = 0; i < SCR_WIDTH; i++) {
            if((i < animationPosition) || (i < -1 * animationPosition)) {
                screen[j][i]=0xFF;
            } else {
                screen[j][i] = screenBuffer[j][i - animationPosition] << shift | (screenBuffer[j][i - animationPosition - 1] & 0b11111111) >> (8 - shift);
            }
        }
    }
    
    
    shift +=2;
    if(shift >= 8) {
        animationPosition ++;
        shift = 0;
    }
    if(animationPosition > ANIM_POS_END) {
        animationPosition = ANIM_POS_START;
        shift = 0;
        
        loadScreen(screenBuffer);
    }
}

void ph762ChangeScreen() {
    //waitFrameComplete();
    //loadScreen(screenBuffer);
    animateScreen();
    timer32ResetCounter(0);
}

void ph762SetAnimationSpeed(uint8_t s) {
    ph762Speed = s;
    frameTimeout = 16 * ph762Speed;
}

BOOL ph762IsTimeToChangeScreen() {
    return timer32GetCount(0) >= frameTimeout;
}
