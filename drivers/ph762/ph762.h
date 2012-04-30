/**************************************************************************/
/*! 
    @file     ph762.h
    @author   Albertas Mickėnas (mic@wemakethings.net)

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
#ifndef __PH762_H__
#define __PH762_H__

#include "projectconfig.h"

// Pin Definitions
#define PH762_A_PORT        (2)
#define PH762_A_PIN         (1)
#define PH762_B_PORT        (2)
#define PH762_B_PIN         (2)
#define PH762_C_PORT        (2)
#define PH762_C_PIN         (3)
#define PH762_D_PORT        (2)
#define PH762_D_PIN         (4)

#define PH762_STB_PORT      (2)
#define PH762_STB_PIN       (5)
#define PH762_CLK_PORT      (2)
#define PH762_CLK_PIN       (6)
#define PH762_R_PORT        (2)
#define PH762_R_PIN         (7)
#define PH762_G_PORT        (2)
#define PH762_G_PIN         (8)
#define PH762_EN_PORT       (2)
#define PH762_EN_PIN        (9)

#define SCR_HEIGHT 16
#define SCR_WIDTH 64

int16_t animationPosition;
uint8_t shift;

void ph762Init(void);
void ph762SetMemory(uint8_t col, uint8_t row, uint8_t val);
void ph762StartDisplay();
void ph762StopDisplay();

BOOL ph762IsTimeToChangeScreen();
void ph762ChangeScreen();
void ph762SetScreen(uint8_t *newScreen);
void ph762SetAnimationSpeed(uint8_t, uint8_t);
uint8_t* ph762GetScreen();
void ph762StopScroll();
void ph762StartScroll();

#endif
