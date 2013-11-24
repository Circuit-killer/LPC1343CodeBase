/**************************************************************************/
/*! 
    @file     cmd_ssp.c
    @author   Miceuz

    @brief    SSP CLI command.
 
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
#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions

#include "core/i2c/i2c.h"

extern volatile uint8_t   I2CMasterBuffer[I2C_BUFSIZE];
extern volatile uint8_t   I2CSlaveBuffer[I2C_BUFSIZE];
extern volatile uint32_t  I2CReadLength, I2CWriteLength;

void cmd_i2c_write(uint8_t argc, char **argv) {
    int32_t address = 0;
    getNumber (argv[0], &address);
    int32_t reg = 0;
    getNumber (argv[1], &reg);

		if (i2cInit(I2CMASTER) == false) {
		  printf("i2c init failed.\r\n");    /* Fatal error */
			return;
		}
		uint32_t i;

	  for ( i = 0; i < I2C_BUFSIZE; i++ ) {
		  I2CMasterBuffer[i] = 0x00;
		}
		uint32_t bufferLength = 0;

		I2CWriteLength = 2 + bufferLength;
		I2CReadLength = 0;
		I2CMasterBuffer[0] = address;			                // I2C device address
		I2CMasterBuffer[1] = (reg);            // Address (low byte)
		
		uint32_t buffer[0];
		for (i = 0; i < bufferLength; i++) {
		  I2CMasterBuffer[i+3] = buffer[i];
		}
		printf("transmitting %d to %d \r\n", reg, address);
		// Transmit command
		uint32_t result = i2cEngine();
		printf("transmission result: %d", result);

		// Wait at least 10ms
		systickDelay(10);
  
}