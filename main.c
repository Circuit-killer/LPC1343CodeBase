
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

inline void sspInit2(uint8_t portNum, sspClockPolarity_t polarity, sspClockPhase_t phase) {
  /* Reset SSP */
  SCB_PRESETCTRL &= ~SCB_PRESETCTRL_SSP0_MASK;
  SCB_PRESETCTRL |= SCB_PRESETCTRL_SSP0_RESETDISABLED;
  
  /* Enable AHB clock to the SSP domain. */
  SCB_SYSAHBCLKCTRL |= (SCB_SYSAHBCLKCTRL_SSP0);
  
  /* Divide by 1 (SSPCLKDIV also enables to SSP CLK) */
  SCB_SSP0CLKDIV = SCB_SSP0CLKDIV_DIV1;
  
  /* Set P0.8 to SSP MISO */
  IOCON_PIO0_8 &= ~IOCON_PIO0_8_FUNC_MASK;
  IOCON_PIO0_8 |= IOCON_PIO0_8_FUNC_MISO0;
  
  /* Set P0.9 to SSP MOSI */
  IOCON_PIO0_9 &= ~IOCON_PIO0_9_FUNC_MASK;
  IOCON_PIO0_9 |= IOCON_PIO0_9_FUNC_MOSI0;
  
  IOCON_SCKLOC = IOCON_SCKLOC_SCKPIN_PIO0_10; 
  IOCON_JTAG_TCK_PIO0_10 = IOCON_JTAG_TCK_PIO0_10_FUNC_SCK;  
  
  /* Set P0.2/SSEL to GPIO output and high */
  IOCON_PIO0_2 &= ~IOCON_PIO0_2_FUNC_MASK;
  IOCON_PIO0_2 |= IOCON_PIO0_2_FUNC_GPIO;
  gpioSetDir(SSP0_CSPORT, SSP0_CSPIN, 1);
  gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 1);
  gpioSetPullup(&IOCON_PIO0_2, gpioPullupMode_Inactive);  // Board has external pull-up
  
  /* If SSP0CLKDIV = DIV1 -- (PCLK / (CPSDVSR * [SCR+1])) = (72,000,000 / (2 x [8 + 1])) = 4.0 MHz */
  uint32_t configReg = ( SSP_SSP0CR0_DSS_8BIT   // Data size = 8-bit
                        | SSP_SSP0CR0_FRF_SPI           // Frame format = SPI
                        | SSP_SSP0CR0_SCR_1);           // Serial clock rate = 8
  
  // Set clock polarity
  if (polarity == sspClockPolarity_High)
    configReg |= SSP_SSP0CR0_CPOL_HIGH;     // Clock polarity = High between frames
  else
    configReg &= ~SSP_SSP0CR0_CPOL_MASK;    // Clock polarity = Low between frames
  
  // Set edge transition
  if (phase == sspClockPhase_FallingEdge)
    configReg |= SSP_SSP0CR0_CPHA_SECOND;   // Clock out phase = Trailing edge clock transition
  else
    configReg &= ~SSP_SSP0CR0_CPHA_MASK;    // Clock out phase = Leading edge clock transition
  
  // Assign config values to SSP0CR0
  SSP_SSP0CR0 = configReg;
  
  /* Clock prescale register must be even and at least 2 in master mode */
  SSP_SSP0CPSR = SSP_SSP0CPSR_CPSDVSR_DIV2;
  
  /* Clear the Rx FIFO */
  uint8_t i, Dummy=Dummy;
  for ( i = 0; i < SSP_FIFOSIZE; i++ )
  {
    Dummy = SSP_SSP0DR;
  }
  
  /* Enable the SSP Interrupt */
  //NVIC_EnableIRQ(SSP_IRQn);
  
  /* Set SSPINMS registers to enable interrupts
   * enable all error related interrupts        */
//  SSP_SSP0IMSC = ( SSP_SSP0IMSC_RORIM_ENBL      // Enable overrun interrupt
//                  | SSP_SSP0IMSC_RTIM_ENBL);     // Enable timeout interrupt
  //SSP_SSP0IMSC = SSP_SSP0IMSC_TXIM_ENBL;
  
  /* Enable device and set it to master mode, no loopback */
  SSP_SSP0CR1 = SSP_SSP0CR1_SSE_ENABLED | SSP_SSP0CR1_MS_MASTER | SSP_SSP0CR1_LBM_NORMAL;  
}

void uartInit(uint32_t baudrate)
{
  uint32_t fDiv;
  uint32_t regVal;
  
  NVIC_DisableIRQ(UART_IRQn);
  
  // Clear protocol control blocks
//  memset(&pcb, 0, sizeof(uart_pcb_t));
//  pcb.pending_tx_data = 0;
//  uartRxBufferInit();
  
  /* Set 1.6 UART RXD */
  IOCON_PIO1_6 &= ~IOCON_PIO1_6_FUNC_MASK;
  IOCON_PIO1_6 |= IOCON_PIO1_6_FUNC_UART_RXD;
  
  /* Set 1.7 UART TXD */
  IOCON_PIO1_7 &= ~IOCON_PIO1_7_FUNC_MASK;	
  IOCON_PIO1_7 |= IOCON_PIO1_7_FUNC_UART_TXD;
  
  /* Enable UART clock */
  SCB_SYSAHBCLKCTRL |= (SCB_SYSAHBCLKCTRL_UART);
  SCB_UARTCLKDIV = SCB_UARTCLKDIV_DIV1;     /* divided by 1 */
  
  /* 8 bits, no Parity, 1 Stop bit */
  UART_U0LCR = (UART_U0LCR_Word_Length_Select_8Chars |
                UART_U0LCR_Stop_Bit_Select_1Bits |
                UART_U0LCR_Parity_Disabled |
                UART_U0LCR_Parity_Select_OddParity |
                UART_U0LCR_Break_Control_Disabled |
                UART_U0LCR_Divisor_Latch_Access_Enabled);
  
  /* Baud rate */
  regVal = SCB_UARTCLKDIV;
  fDiv = (((CFG_CPU_CCLK * SCB_SYSAHBCLKDIV)/regVal)/16)/baudrate;
  
  UART_U0DLM = fDiv / 256;
  UART_U0DLL = fDiv % 256;
  
  /* Set DLAB back to 0 */
  UART_U0LCR = (UART_U0LCR_Word_Length_Select_8Chars |
                UART_U0LCR_Stop_Bit_Select_1Bits |
                UART_U0LCR_Parity_Disabled |
                UART_U0LCR_Parity_Select_OddParity |
                UART_U0LCR_Break_Control_Disabled |
                UART_U0LCR_Divisor_Latch_Access_Disabled);
  
  /* Enable and reset TX and RX FIFO. */
  UART_U0FCR = (UART_U0FCR_FIFO_Enabled | 
                UART_U0FCR_Rx_FIFO_Reset | 
                UART_U0FCR_Tx_FIFO_Reset); 
  
  /* Read to clear the line status. */
  regVal = UART_U0LSR;
  
  /* Ensure a clean start, no data in either TX or RX FIFO. */
  while (( UART_U0LSR & (UART_U0LSR_THRE|UART_U0LSR_TEMT)) != (UART_U0LSR_THRE|UART_U0LSR_TEMT) );
  while ( UART_U0LSR & UART_U0LSR_RDR_DATA )
  {
    /* Dump data from RX FIFO */
    regVal = UART_U0RBR;
  }
  
//  /* Set the initialised flag in the protocol control block */
//  pcb.initialised = 1;
//  pcb.baudrate = baudrate;
  
  /* Enable the UART Interrupt */
  NVIC_EnableIRQ(UART_IRQn);
  UART_U0IER = UART_U0IER_RBR_Interrupt_Enabled | UART_U0IER_RLS_Interrupt_Enabled;
  
  return;
}

int currChannel = 0;
uint8_t lastRxChar = 0;
void UART_IRQHandler(void)
{
  uint8_t IIRValue, LSRValue;
  uint8_t Dummy = Dummy;
  uint8_t rxChar;
  
  IIRValue = UART_U0IIR;
  IIRValue &= ~(UART_U0IIR_IntStatus_MASK); /* skip pending bit in IIR */
  IIRValue &= UART_U0IIR_IntId_MASK;        /* check bit 1~3, interrupt identification */
  
  // 1.) Check receiver line status
  if (IIRValue == UART_U0IIR_IntId_RLS) {
    LSRValue = UART_U0LSR;
    // Check for errors
    if (LSRValue & (UART_U0LSR_OE | UART_U0LSR_PE | UART_U0LSR_FE | UART_U0LSR_RXFE | UART_U0LSR_BI)) {
      /* There are errors or break interrupt */
      /* Read LSR will clear the interrupt */
      Dummy = UART_U0RBR;	/* Dummy read on RX to clear interrupt, then bail out */
      return;
    }
    // No error and receive data is ready
    if (LSRValue & UART_U0LSR_RDR_DATA) {
      rxChar = UART_U0RBR;
    }
  }
  // 2.) Check receive data available
  else if (IIRValue == UART_U0IIR_IntId_RDA) {
    rxChar = UART_U0RBR;
  }
  // 3.) Check character timeout indicator
  else if (IIRValue == UART_U0IIR_IntId_CTI) {
  }
  // 4.) Check THRE (transmit holding register empty)
  else if (IIRValue == UART_U0IIR_IntId_THRE) {
  }
  
  if(rxChar != lastRxChar) {
    currChannel = 0;
    lastRxChar = rxChar;
  }
  
  if(currChannel < MAX_DMX_CHANNELS) {
    dmxChannels[currChannel] = rxChar;
    currChannel++;
    if(currChannel >= MAX_DMX_CHANNELS) {
      recalculateSendValues = 1;
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
  
  sspInit2(0, sspClockPolarity_Low, sspClockPhase_RisingEdge);
  
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
