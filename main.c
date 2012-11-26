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

#include "core/uart/uart.h"

#define MAX_DMX_CHANNELS 512
volatile uint8_t dmxChannels[MAX_DMX_CHANNELS]={0};

volatile uint16_t currSendChannel = 0;
volatile uint8_t updateChannelsEnable = 0;

void UART_IRQHandler(void)
{
  uint8_t IIRValue, LSRValue;
  uint8_t Dummy = Dummy;
  
  IIRValue = UART_U0IIR;
  IIRValue &= ~(UART_U0IIR_IntStatus_MASK); /* skip pending bit in IIR */
  IIRValue &= UART_U0IIR_IntId_MASK;        /* check bit 1~3, interrupt identification */

  
  if (IIRValue == UART_U0IIR_IntId_THRE) {
    if(currSendChannel < MAX_DMX_CHANNELS) {
      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, !gpioGetValue(CFG_LED_PORT, CFG_LED_PIN));
      uint8_t i;
      for (i = 0 ; i < 16; i++) {
        UART_U0THR = dmxChannels[currSendChannel++];
      }
    } else {
      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, CFG_LED_OFF);
      UART_U0IER = UART_U0IER_THRE_Interrupt_Disabled;
      updateChannelsEnable = 1;
    }
  }
}

inline void sendBreak() {
  UART_U0LCR |= UART_U0LCR_Break_Control_Enabled;
}

inline void clearBreak() {
  UART_U0LCR &= ~UART_U0LCR_Break_Control_Enabled;
}


uint8_t cylonRight = 1;
uint16_t fadeInIndex=1, fadeOutIndex=0;

inline void cylon() {
  dmxChannels[fadeInIndex]++;
  dmxChannels[fadeOutIndex]--;
  
  if(dmxChannels[fadeInIndex] == 255) {
    if(cylonRight){
      if(7 == fadeInIndex) {
        dmxChannels[fadeOutIndex] = 0;
        fadeInIndex = 6;
        fadeOutIndex = 7;
        cylonRight = 0;
      } else {
        fadeOutIndex = fadeInIndex;
        fadeInIndex++;
      }
    } else {
      if(0 == fadeInIndex) {
        dmxChannels[fadeOutIndex] = 0;
        fadeInIndex = 1;
        fadeOutIndex = 0;
        cylonRight = 1;
      } else {
        fadeOutIndex = fadeInIndex;
        fadeInIndex--;
      }
    }
  }
}


int main(void)
{
  systemInit();
  systickConfig(72);//mikrosekunde
  uartInit(250000);

  uint32_t currentSecond, lastSecond;
  currentSecond = lastSecond = 0;
  
  
  int i;
  
  for(i = 0; i < MAX_DMX_CHANNELS; i++) {
    dmxChannels[i] = 0;
  }
  dmxChannels[0] = 255;
  
  while (1) {
//    currentSecond = systickGetSecondsActive();
//    if (currentSecond != lastSecond) {
//      lastSecond = currentSecond;
//      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
//    }
    
    for (i = 0 ; i < 16; i++) {
      UART_U0THR = dmxChannels[currSendChannel++];
    }
    
    while(!updateChannelsEnable) {
      //nothing
    }
    currSendChannel = 0;
    cylon();
//    for(i = 0; i < MAX_DMX_CHANNELS; i++) {
//      dmxChannels[i] ++;
//    }
    updateChannelsEnable = 0;
    sendBreak();
    systickDelay(100);
    clearBreak();
    systickDelay(12);
    UART_U0IER = UART_U0IER_THRE_Interrupt_Enabled;

    //uartSend (dmxChannels, MAX_DMX_CHANNELS);
    
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
