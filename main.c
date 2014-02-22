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

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

#include "core/i2c/i2c.h"

extern volatile uint8_t   I2CMasterBuffer[I2C_BUFSIZE];
extern volatile uint8_t   I2CSlaveBuffer[I2C_BUFSIZE];
extern volatile uint32_t  I2CReadLength, I2CWriteLength;

uint32_t i2c_read(int32_t address, int32_t reg, int32_t bytesToRead) {
	uint32_t i;
	
	if(bytesToRead  > I2C_BUFSIZE) {
		printf("Too many bytes to read. Max: %d", I2C_BUFSIZE);	
		return 0;		
	}
	
	if (i2cInit(I2CMASTER) == false) {
		printf("i2c init failed.\r\n");    /* Fatal error */
		return 0;
	}

	for ( i = 0; i < I2C_BUFSIZE; i++ ) {
	  I2CMasterBuffer[i] = 0x00;
	}

	I2CWriteLength = 0;
	I2CReadLength = bytesToRead;
	I2CMasterBuffer[0] = address;	       // I2C device address
	I2CMasterBuffer[1] = reg;            // Address (low byte)
	I2CMasterBuffer[2] = address | 0x01;

	// Transmit command
	uint32_t result = i2cEngine();

	//printf("%d\r\n", (I2CSlaveBuffer[0] << 8) + I2CSlaveBuffer[1]);
	return (I2CSlaveBuffer[0] << 8) + I2CSlaveBuffer[1];
}

void i2c_write(int32_t address, int32_t reg, int32_t bufferLength, uint32_t *buffer) {
	//uint32_t buffer[62];

	if(bufferLength + 2 > I2C_BUFSIZE) {
		printf("Too many bytes to send. Max data length: %d", I2C_BUFSIZE - 2);	
		return;		
	} 

	if (i2cInit(I2CMASTER) == false) {
		printf("i2c init failed.\r\n");    /* Fatal error */
		return;
	}
	uint32_t i;
		
	for ( i = 0; i < I2C_BUFSIZE; i++ ) {
	  I2CMasterBuffer[i] = 0x00;
	}

	I2CWriteLength = 2 + bufferLength;
	I2CReadLength = 0;
	I2CMasterBuffer[0] = address;			                // I2C device address
	I2CMasterBuffer[1] = (reg);            // Address (low byte)
	
	for (i = 0; i < bufferLength; i++) {
	  I2CMasterBuffer[i+2] = buffer[i];
	}
//	printf("transmitting %d to %d \r\n", reg, address);
	// Transmit command
	uint32_t result = i2cEngine();
//	printf("transmission result: %d\r\n", result);
}


int main(void)
{
  // Configure cpu and mandatory peripherals
  systemInit();

  uint32_t currentSecond, lastSecond;
  currentSecond = lastSecond = 0;

	uint32_t address = 0x20 << 1;
	uint32_t reg = 0;
  printf("%d, ", i2c_read(address, reg, 2));
  systickDelay(1000);
  while (1)
  {
    // Toggle LED once per second
    currentSecond = systickGetSecondsActive();
    if (currentSecond != lastSecond)
    {
      lastSecond = currentSecond;
      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
      printf("%d, ", i2c_read(address, reg, 2));
      systickDelay(1000);
      i2c_write(address, 3, 0, 0);
      systickDelay(8000);
      printf("%d\r\n", i2c_read(address, 4, 2));
      systickDelay(1000);
    }
    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
