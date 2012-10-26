#include <stdio.h>
#include <float.h>
#include "projectconfig.h"
#include "core/uart/uart.h"
#include "core/systick/systick.h"
#include "modbus.h"

uint16_t calculateCRC(uint8_t *frame, unsigned char bufferSize) {
  uint16_t temp, temp2, flag;
  temp = 0xFFFF;
  uint8_t i;
  for (i = 0; i < bufferSize; i++) {
    temp = temp ^ frame[i];
    uint8_t j;
    for (j = 1; j <= 8; j++) {
      flag = temp & 0x0001;
      temp >>= 1;
      if (flag)
        temp ^= 0xA001;
    }
  }
  // Reverse byte order. 
  temp2 = temp >> 8;
  temp = (temp << 8) | temp2;
  temp &= 0xFFFF;
  return temp; // the returned value is already swopped - crcLo byte is first & crcHi byte is last
}

void modbusInit() {
  uartInit(4800);
  UART_U0RS485CTRL |= UART_U0RS485CTRL_DCTRL_Enabled | UART_U0RS485CTRL_OINV_Inverted;
  IOCON_PIO1_5 |= IOCON_PIO1_5_FUNC_RTS | IOCON_PIO1_5_MODE_PULLDOWN;  
  UART_U0RS485DLY = 4;
  
  uart_pcb_t *pcb = uartGetPCB();
  
  while(!pcb->initialised) {
    printf("waiting UART to initialize...%s", CFG_PRINTF_NEWLINE);
    systickDelay(500);
  }    
}

int8_t modbusSetSpeed(uint16_t speed) {
  if(speed > 10000) {
    return -125;
  }
  return modbusPresetSingleRegister(2002, speed);
}

void modbusControl(uint16_t controlWord) {
  uint8_t frame[8] = {1, 6, 2000 >> 8, 2000 & 0xff, controlWord << 8, controlWord & 0xff, 0, 0 };
  uint16_t crc = calculateCRC(frame, 6);
  frame[6] = crc >> 8;
  frame[7] = crc & 0xff;
  uartSend(frame, 8);
  while(uartRxBufferDataPending()) {
    uint8_t c = uartRxBufferRead();
    printf("0x%x ", c);
  }  
  printf("%s", CFG_PRINTF_NEWLINE);
}

uint8_t waitForChar() {
  uint8_t wait = 255;
  while(!uartRxBufferDataPending()) {
    systickDelay(1);
    wait--;
    if(0 == wait) {
      return 1;
    }
  }  
  return 0;
}

int8_t modbusPresetSingleRegister(uint16_t regAddress, uint16_t value) {
  uint8_t count = 0;
  uint8_t bytesToWait = 8;
  uint8_t error = 0;
  uint8_t exceptionCode = 0;
  uint8_t frame[8] = {1, 6, regAddress >> 8, regAddress & 0xff, value << 8, value & 0xff, 0, 0 };
  uint16_t crc = calculateCRC(frame, 6);
  frame[6] = crc >> 8;
  frame[7] = crc & 0xff;
  uartSend(frame, 8);
  while(count < bytesToWait) {
    uint8_t timeout = waitForChar();
    if(timeout) {
      error = 1;
      exceptionCode = EXCEPTION_TIMEOUT;
      break;
    }
    uint8_t c = uartRxBufferRead();
    
    if(1 == count && 0x86 == c) {
      error = 1;
      bytesToWait = 4;
    }
    if(error) {
      if(2 == count) {
        exceptionCode = c * -1;
      }
    } else {
      //nothing
    }
    count++;
  }  
  if(error) {
    return exceptionCode;
  } else {
    return 0;
  }
}


int32_t modbusGetHoldingRegister(uint16_t regAddress) {
  uint8_t count = 0;
  uint8_t bytesToWait = 7;
  uint8_t error = 0;
  int8_t exceptionCode = 0;
  uint16_t ret = 0;
  
  uint8_t frame[8] = {1, 3, regAddress >> 8, regAddress & 0xff, 0, 1, 0, 0 };
  uint16_t crc = calculateCRC(frame, 6);
  frame[6] = crc >> 8;
  frame[7] = crc & 0xff;  
  uartSend(frame, 8);
  

  while(count < bytesToWait) {
    
    uint8_t timeout = waitForChar();
    if(timeout) {
      error = 1;
      exceptionCode = EXCEPTION_TIMEOUT;
      break;
    }
    
    uint8_t c = uartRxBufferRead();

    if(1 == count && 0x83 == c) {
      error = 1;
      bytesToWait = 4;
    }
    if(error) {
      if(2 == count) {
        exceptionCode = c * -1;
      }
    } else {
      if(3 == count) {
        ret = (uint16_t) c << 8;
      }
      if(4 == count) {
        ret = ret | c;
      }
    }
    count++;
  }
  
  if(error) {
    return exceptionCode;
  }
  return ret;
}

