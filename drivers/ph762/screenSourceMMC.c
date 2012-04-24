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
#include "drivers/fatfs/diskio.h"
#include "drivers/fatfs/ff.h"

static FATFS Fatfs[1];
static FIL fp;

/**************************************************************************/
/* Private Methods                                                        */
/**************************************************************************/
BYTE openMemoryFile() {
    DSTATUS stat;
    
    stat = disk_initialize(0);
    if (stat & STA_NOINIT) {
        printf("SD init failed%s", CFG_PRINTF_NEWLINE);
        return STA_NOINIT;
    }
    if (stat & STA_NODISK) {
        printf("No SD card%s", CFG_PRINTF_NEWLINE);
        return STA_NODISK;
    }
    if (stat == 0) {
        BYTE res;
        
        // Try to mount drive
        res = f_mount(0, &Fatfs[0]);
        if (res != FR_OK) {
            printf("Failed to mount partition: %d%s" , res, CFG_PRINTF_NEWLINE);
            return res;
        }
        
        res = f_open(&fp, "ledmem.bin", FA_READ);
        if(FR_OK != res) {
            printf("could not open file for reading: %d%s", res, CFG_PRINTF_NEWLINE);
            return res;
        }
        return res;
    }           
    return STA_NOINIT;
}
/**************************************************************************/
/* Public Methods                                                         */
/**************************************************************************/

void freeScreenSource() {
    if(NULL != fp.fs) {
        f_close(&fp);
    }
}

BOOL isNewScreenAvailable() {
    return TRUE;
}

void loadScreen(uint8_t screen[SCR_HEIGHT][SCR_WIDTH]) {
    BYTE res;

    if(NULL == fp.fs){
        res = openMemoryFile();
    }
    
    if(NULL != fp.fs) {
        uint8_t i;
        for(i = 0; i < 16; i++) {
            UINT br;
            res = f_read(&fp, screen[i], 64, &br);
            if(FR_OK == res) {
                //                    printf("red %d bytes%s", br, CFG_PRINTF_NEWLINE);
            } else {
                //printf("Could not read from ledmem file: %d%s", res, CFG_PRINTF_NEWLINE);
                fp.fs = NULL;
                break;
            }
            
            if(fp.fptr >= fp.fsize || 0 == br) {
                f_lseek(&fp, 0);
                break;
                //                  printf("ledmem file end reached, looping");
            }
        }
    }    
}

void initScreenSource() {
    openMemoryFile();
}


