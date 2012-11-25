
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

#include "logValues.h"
#include "core/ssp/ssp.h"
#include "core/uart/uart.h"
#include "dmx.h"


volatile uint8_t counter = 0;
volatile uint8_t pwmCounter;
volatile register uint32_t toSend asm("r3");
volatile uint32_t sendValues1[256];
volatile uint32_t sendValues2[256];
uint32_t (*p_sendValuesBack)[256];
uint32_t (*p_sendValuesFront)[256];

void TIMER16_0_IRQHandler(void) {  
  /* Clear the interrupt flag */
  TMR_TMR16B0IR = TMR_TMR16B0IR_MR0;
  TMR_TMR16B0TC = 0;
  TMR_TMR16B0PC = 0; 

  toSend = (*p_sendValuesFront)[pwmCounter];
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 1);
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 0);
  SSP_SSP0DR=~toSend>>24;
  SSP_SSP0DR=~toSend>>16;
  SSP_SSP0DR=~toSend>>8;
  SSP_SSP0DR=~toSend;
  pwmCounter++;
}

void calculateSendValues() {
  uint16_t i, j;
  for(j = 0; j < 256; j++) {
    (*p_sendValuesBack)[j] = 0;
    for(i = 0; i < MAX_DMX_CHANNELS; i++) {
      (*p_sendValuesBack)[j] |= ((logValues[dmxChannels[i]] > j) << i);
    }
  }
  uint32_t (*t)[256];
  t = p_sendValuesFront;
  p_sendValuesFront = p_sendValuesBack;
  p_sendValuesBack = t;
}

void inline timerInit() {
  /* Enable the clock for CT16B0 */
  SCB_SYSAHBCLKCTRL |= (SCB_SYSAHBCLKCTRL_CT16B0);
  NVIC_EnableIRQ(TIMER_16_0_IRQn);
  
  TMR_TMR16B0PR = 0;
  TMR_TMR16B0MR0 = 256;//2163;
  
  TMR_TMR16B0MCR = (TMR_TMR16B0MCR_MR0_INT_ENABLED);
  TMR_TMR16B0TCR = TMR_TMR16B0TCR_COUNTERENABLE_ENABLED;  
}

void inline mockupTimerInit() {
  /* Enable the clock for CT16B0 */
  SCB_SYSAHBCLKCTRL |= (SCB_SYSAHBCLKCTRL_CT16B1);
  NVIC_EnableIRQ(TIMER_16_1_IRQn);
  
  TMR_TMR16B1PR = 0;
  TMR_TMR16B1MR0 = 65535;//3168 * 24; // tarkim 250kbps dazniu ateina baitas (72000000/ (250000/11)) 
                              // vienas DMX UART zodis yra 11 bitu
                              // mes kazka sunkaus darysim tik gave visus mus dominancius adresus,
                              // tarkim, 24 adresus
  
  TMR_TMR16B1MCR = (TMR_TMR16B1MCR_MR0_INT_ENABLED);
  TMR_TMR16B1TCR = TMR_TMR16B1TCR_COUNTERENABLE_ENABLED;  
}

uint8_t fadeUp = 1;
uint8_t recalculateSendValues = 0;

inline void fadeUpDown() {
  if(fadeUp) {
    counter++;
  } else {
    counter--;
  }
  dmxChannels[0]=counter;
  dmxChannels[1]=counter;
  dmxChannels[2]=counter;
  dmxChannels[3]=counter;
  dmxChannels[4]=counter;
  dmxChannels[5]=counter;
  dmxChannels[6]=counter;
  dmxChannels[7]=counter;
  if(fadeUp && counter==255) {
    fadeUp = 0;
  }
  if(!fadeUp && counter == 0) {
    fadeUp = 1;
  }
  recalculateSendValues = 1;  
}

uint8_t cylonRight = 1;
uint16_t fadeInIndex=1, fadeOutIndex=0;

inline void cylon() {
  dmxChannels[fadeInIndex]++;
  dmxChannels[fadeOutIndex]--;
  
  if(dmxChannels[fadeInIndex] == 255) {
    if(cylonRight){
      if(MAX_DMX_CHANNELS - 1 == fadeInIndex) {
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
  uint8_t i;
  recalculateSendValues = 1;  

}

void TIMER16_1_IRQHandler(void)
{  
  /* Clear the interrupt flag */
  TMR_TMR16B1IR = TMR_TMR16B1IR_MR0;
  TMR_TMR16B1TC = 0;
  TMR_TMR16B1PC = 0; 
  cylon();
}  



int currChannel = 0;
uint8_t lastRxChar = 0;

#define DMX_UART_STATE_IDLE 0
#define DMX_UART_STATE_BREAK 1
#define DMX_UART_STATE_DATA 2

uint8_t dmxUartState = DMX_UART_STATE_IDLE;

void UART_IRQHandler(void)
{
  uint8_t IIRValue, LSRValue;
  uint8_t Dummy = Dummy;
  uint8_t rxChar;
  
  IIRValue = UART_U0IIR;
  IIRValue &= ~(UART_U0IIR_IntStatus_MASK); /* skip pending bit in IIR */
  IIRValue &= UART_U0IIR_IntId_MASK;        /* check bit 1~3, interrupt identification */

  //TODO - nepamirsti, kad po BREAK ir MAB eina START CODE, kuri reikia praleisti
  
  // 1.) Check receiver line status
  if (IIRValue == UART_U0IIR_IntId_RLS) {
    LSRValue = UART_U0LSR;
    
    if(LSRValue & UART_U0LSR_BI) {
      Dummy = UART_U0RBR;	/* Dummy read the break character */
      if(DMX_UART_STATE_IDLE == dmxUartState) {
        dmxUartState = DMX_UART_STATE_BREAK;
      }
    }else if (LSRValue & (UART_U0LSR_OE | UART_U0LSR_FE | UART_U0LSR_RXFE)) {
      /* There are errors */
      // If there is a 'bad' character in RX FIFO, after an error or BREAK, read it and forget ir
      if(LSRValue & UART_U0LSR_RXFE) {
        Dummy = UART_U0RBR;	/* Dummy read on RX to clear interrupt, then bail out */
      }
      return;
    }
  }
  // 2.) Check receive data available
  else if (IIRValue == UART_U0IIR_IntId_RDA) {
    rxChar = UART_U0RBR;
    if(DMX_UART_STATE_BREAK == dmxUartState) {
      dmxUartState = DMX_UART_STATE_DATA;
    }    
  }
  // 3.) Check character timeout indicator
  else if (IIRValue == UART_U0IIR_IntId_CTI) {
  }

  //  if(rxChar != lastRxChar) {
  //    currChannel = 0;
  //    lastRxChar = rxChar;
  //  }
  
  if(DMX_UART_STATE_DATA == dmxUartState) {
    if(currChannel < MAX_DMX_CHANNELS) {
      dmxChannels[currChannel] = rxChar;
      currChannel++;
      if(currChannel >= MAX_DMX_CHANNELS) {
        recalculateSendValues = 1;
        dmxUartState = DMX_UART_STATE_IDLE;
        currChannel = 0;
      }
    }
  }
  
}


int main(void) {
  systemInit();
  uartInit(250000);
  //mockupTimerInit();

  pwmCounter = 0;
  p_sendValuesFront = sendValues1;
  p_sendValuesBack = sendValues2;
  
  sspInit(0, sspClockPolarity_Low, sspClockPhase_RisingEdge);
  
  dmxChannels[0] = 32;
  calculateSendValues();

  SSP_SSP0DR=0;
  while(SSP_SSP0SR & SSP_SSP0SR_BSY_BUSY) {
    //nothing
  }
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 1);
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 0);
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 1);
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 0);
  systickDelay(300);

  SSP_SSP0DR=255;
  while(SSP_SSP0SR & SSP_SSP0SR_BSY_BUSY) {
    //nothing
  }
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 1);
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 0);
  systickDelay(300);

      
  timerInit();
  uint32_t lastTimestamp = 0;
  while (1) {
    
    if(recalculateSendValues){
      uint8_t recalcBefore = dmxChannels[MAX_DMX_CHANNELS-1];
      calculateSendValues();
      if(dmxChannels[MAX_DMX_CHANNELS-1] != recalcBefore) {
        gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, CFG_LED_ON);
      } else {
        gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, CFG_LED_OFF);
      }
      recalculateSendValues = 0;
    }

    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}

// legacy Mirrored Bit Angle Modulation code for timer interrupt
//  uint32_t regVal = TMR_TMR16B0MR0;
//  if(bamLeft) {
//    regVal = regVal << 1;
//  } else {
//    regVal = regVal >> 1;
//  }
//  
//  if(256 == regVal && bamLeft) {
//    regVal = 128;
//    bamLeft = 0;
//  }
//  if(0 == regVal && !bamLeft) {
//    regVal = 1;
//    bamLeft = 1;
//    currOutput = output;
//  }
//  
//  
//  if(currOutput & regVal) {
//    gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, 1);
//  } else {
//    gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, 0);
//  }

//  if(currOutput >= pwmCounter) {
//    gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, 1);
//  } else {
//    gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, 0);
//  }
