/**************************************************************************/
/*! 
    @file     cmd_sysinfo.c
    @author   K. Townsend (microBuilder.eu)

    @brief    Code to execute for cmd_sysinfo in the 'core/cmd'
              command-line interpretter.

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
#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions
#include "drivers/ph762/ph762.h"
#include "drivers/fatfs/diskio.h"

#include "drivers/fatfs/ff.h"


#ifdef CFG_PRINTF_UART
  #include "core/uart/uart.h"
#endif

void cmd_ledtest(uint8_t argc, char **argv) {
    
    int32_t col = 0;
    int32_t row = 0;
    int32_t val = 0;
    
    getNumber (argv[0], &col);
    getNumber (argv[1], &row);
    getNumber (argv[2], &val);

    printf("setting [%d,%d] to %d %s", (int) col, (int) row, (int) val, CFG_PRINTF_NEWLINE);
    ph762SetMemory(col, row, val);
}

uint8_t acceptBuffer[1026];
int32_t bank;

void onBufferReceived(uint8_t *buf, uint16_t length) {
    buf[length] = 0;
    printf("Buffer received: %d%s", length, CFG_PRINTF_NEWLINE);
    ph762StopDisplay();
    
    FIL fp;
    BYTE res = f_open(&fp, "ledmem.bin", FA_WRITE);
    if(FR_OK == res) {
        printf("Writing bank %d to file ledmem.bin%s", (int) bank, CFG_PRINTF_NEWLINE);
        UINT bw;
        f_lseek(&fp, bank * 1024);
        res = f_write(&fp, &acceptBuffer, length, &bw);
        if(FR_OK != res) {
            printf("Error while writing to file: %d%s", res, CFG_PRINTF_NEWLINE);
            return;
        }
        f_close(&fp);
        ph762SetScreen(acceptBuffer);
    } else {
        printf("error while opening file: %d%s", res, CFG_PRINTF_NEWLINE);
    }

    ph762StartDisplay();
}

void cmd_send(uint8_t argc, char **argv) {
    int32_t length;
    getNumber(argv[0], &length);
    getNumber(argv[1], &bank);
    
    bufferHandler = onBufferReceived;
    printf("Waiting for %d bytes...%s", (int) length, CFG_PRINTF_NEWLINE);
    cmdBufferModeStart(acceptBuffer, length);
}

void cmd_ledScreenPos(uint8_t argc, char **argv) {
    int32_t t;
    int32_t sh;
    getNumber(argv[0], &t);
    getNumber(argv[1], &sh);
    
    animationPosition = t;
    shift = sh;
}

void cmd_setSpeed(uint8_t argc, char **argv) {
    int32_t s;
    getNumber(argv[0], &s);
    if(s > 0 && s < 255) {
        ph762SetAnimationSpeed((uint8_t) s);
    }
    printf("Setting speed: %d%s", (int) s, CFG_PRINTF_NEWLINE);
}

void cmd_stopScreen (uint8_t argc, char **argv) {
    ph762StopDisplay();
}

void cmd_startScreen (uint8_t argc, char **argv) {
    ph762StartDisplay();
}