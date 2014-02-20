#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "projectconfig.h"
#include "sysinit.h"

#include "core/gpio/gpio.h"
#include "core/systick/systick.h"

#include "drivers/fatfs/diskio.h"
#include "drivers/fatfs/ff.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

void sspInit2 ()
{
  gpioInit();

    /* Reset SSP */
    SCB_PRESETCTRL &= ~SCB_PRESETCTRL_SSP0_MASK;
    SCB_PRESETCTRL |= SCB_PRESETCTRL_SSP0_RESETDISABLED;
  
    /* Enable AHB clock to the SSP domain. */
    SCB_SYSAHBCLKCTRL |= (SCB_SYSAHBCLKCTRL_SSP0);
  
    /* Divide by 1 (SSPCLKDIV also enables to SSP CLK) */
    SCB_SSP0CLKDIV = SCB_SSP0CLKDIV_DIV1;
  
    /* Set P0.8 to SSP MISO */
    //IOCON_PIO0_8 &= ~IOCON_PIO0_8_FUNC_MASK;
    //IOCON_PIO0_8 |= IOCON_PIO0_8_FUNC_MISO0;
  
    /* Set P0.9 to SSP MOSI */
    IOCON_PIO0_9 &= ~IOCON_PIO0_9_FUNC_MASK;
    IOCON_PIO0_9 |= IOCON_PIO0_9_FUNC_MOSI0;

    /* Set 2.11 to SSP SCK (0.6 and 0.10 can also be used) */ 
    IOCON_SCKLOC = IOCON_SCKLOC_SCKPIN_PIO2_11; 

    /* Set P0.2/SSEL to GPIO output and high */
 //   IOCON_PIO0_2 &= ~IOCON_PIO0_2_FUNC_MASK;
 //   IOCON_PIO0_2 |= IOCON_PIO0_2_FUNC_GPIO;
 //   gpioSetDir(SSP0_CSPORT, SSP0_CSPIN, 1);
 //   gpioSetValue(SSP0_CSPORT, SSP0_CSPIN, 1);
 //   gpioSetPullup(&IOCON_PIO0_2, gpioPullupMode_Inactive);  // Board has external pull-up
  
    /* If SSP0CLKDIV = DIV1 -- (PCLK / (CPSDVSR * [SCR+1])) = (72,000,000 / (2 x [8 + 1])) = 4.0 MHz */
    uint32_t configReg = ( SSP_SSP0CR0_DSS_12BIT   // Data size = 8-bit
                  | SSP_SSP0CR0_FRF_SPI           // Frame format = SPI
                  | SSP_SSP0CR0_SCR_10);           // Serial clock rate = 8
  
    // Set clock polarity
//    if (polarity == sspClockPolarity_High)
//      configReg |= SSP_SSP0CR0_CPOL_HIGH;     // Clock polarity = High between frames
//    else
      configReg &= ~SSP_SSP0CR0_CPOL_MASK;    // Clock polarity = Low between frames
  
    // Set edge transition
//    if (phase == sspClockPhase_FallingEdge)
      configReg |= SSP_SSP0CR0_CPHA_SECOND;   // Clock out phase = Trailing edge clock transition
//    else
//      configReg &= ~SSP_SSP0CR0_CPHA_MASK;    // Clock out phase = Leading edge clock transition
  
    // Assign config values to SSP0CR0
    SSP_SSP0CR0 = configReg;
  
    /* Clock prescale register must be even and at least 2 in master mode */
    SSP_SSP0CPSR = SSP_SSP0CPSR_CPSDVSR_DIV2;
  
    /* Clear the Rx FIFO */
    uint8_t i, Dummy=Dummy;
    for ( i = 0; i < 8; i++ )
    {
      Dummy = SSP_SSP0DR;
    }
  
    /* Enable the SSP Interrupt */
//    NVIC_EnableIRQ(SSP_IRQn);
  
    /* Set SSPINMS registers to enable interrupts
     * enable all error related interrupts        */
//    SSP_SSP0IMSC = ( SSP_SSP0IMSC_RORIM_ENBL      // Enable overrun interrupt
//                   | SSP_SSP0IMSC_RTIM_ENBL);     // Enable timeout interrupt
  
    /* Enable device and set it to master mode, no loopback */
    SSP_SSP0CR1 = SSP_SSP0CR1_SSE_ENABLED | SSP_SSP0CR1_MS_MASTER | SSP_SSP0CR1_LBM_NORMAL;

  return;
}

void uartInit2()
{
  uint32_t fDiv;
  uint32_t regVal;

  NVIC_DisableIRQ(UART_IRQn);

  // Clear protocol control blocks
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
  UART_U0LCR = (UART_U0LCR_Word_Length_Select_7Chars |
                UART_U0LCR_Stop_Bit_Select_1Bits |
                UART_U0LCR_Parity_Disabled |
                UART_U0LCR_Parity_Select_OddParity |
                UART_U0LCR_Break_Control_Disabled |
                UART_U0LCR_Divisor_Latch_Access_Enabled);

  /* Baud rate */
  regVal = SCB_UARTCLKDIV;
  //fDiv = (((CFG_CPU_CCLK * SCB_SYSAHBCLKDIV)/regVal)/16)/baudrate;

  UART_U0DLM = 0;//fDiv / 256;
  UART_U0DLL = 2;//fDiv % 256;
  
  /* Set DLAB back to 0 */
  UART_U0LCR = (UART_U0LCR_Word_Length_Select_7Chars |
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

  /* Enable the UART Interrupt */
  NVIC_EnableIRQ(UART_IRQn);
//  UART_U0IER = UART_U0IER_RBR_Interrupt_Enabled | UART_U0IER_RLS_Interrupt_Enabled;

  return;
}

void uartSendByte2 (uint8_t byte)
{
  /* THRE status, contain valid data */
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = byte;

  return;
}

uint16_t bitrefssp[] = {
	0b0000100010001000,//000
	0b0000100010001110,//001
	0b0000100011101000,//010
	0b0000100011101110,//011
	0b0000111010001000,//100
	0b0000111010001110,//101
	0b0000111011101000,//110
	0b0000111011101110,//111
};
void sendPixelSSP(uint32_t pixel) {
	while ((SSP_SSP0SR & (SSP_SSP0SR_BSY_BUSY )));
    gpioSetValue(2, 5, 1);
	SSP_SSP0DR = bitrefssp[pixel >> 21 & 0x00000007];
	SSP_SSP0DR = bitrefssp[pixel >> 18 & 0x00000007];
	SSP_SSP0DR = bitrefssp[pixel >> 15 & 0x00000007];
	SSP_SSP0DR = bitrefssp[pixel >> 12 & 0x00000007];
	SSP_SSP0DR = bitrefssp[pixel >> 9 & 0x00000007];
	SSP_SSP0DR = bitrefssp[pixel >> 6 & 0x00000007];
	SSP_SSP0DR = bitrefssp[pixel >> 3 & 0x00000007];
	SSP_SSP0DR = bitrefssp[pixel&0x00000007];	
    gpioSetValue(2, 5, 0);
}
void latchSSP(){
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
	while ((SSP_SSP0SR & (SSP_SSP0SR_TNF_NOTFULL )) != SSP_SSP0SR_TNF_NOTFULL);
	SSP_SSP0DR = 0;
}
/*
   0b11101111,//00
  0b10001111,//01
  0b11101100,//10
  0b10001100,//11

  0b11001110,//00
  0b10001110,//01
  0b11001100,//10
  0b10001100,//11

 */


//~ //  1xxxxxxx0	
  //~ 0b11011011,//000
  //~ 0b11011010,//001
  //~ 0b11010011,//010
  //~ 0b11010010,//011
  //~ 0b10011011,//100
  //~ 0b10011010,//101
  //~ 0b10010011,//110
  //~ 0b10010010,//111


//000
//100
//010
//110
//001
//101
//011
//111

uint16_t bitref[] = {
//  1xxxxxxx0	
  0b11011011,//000
  0b10011011,//100
  0b11010011,//010
  0b10010011,//110
  0b11011010,//001
  0b10011010,//101
  0b11010010,//011
  0b10010010,//111
};

void sendPixel(uint32_t pixel) {
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>21 & 0x00000007];
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>18 & 0x00000007];
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>15 & 0x00000007];
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>12 & 0x00000007];
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>9 & 0x00000007];
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>6 & 0x00000007];
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>3 & 0x00000007];
  while ( !(UART_U0LSR & UART_U0LSR_THRE) );
  UART_U0THR = bitref[pixel>>0 & 0x00000007];
}

void latch() {
	systickDelay(1);
}

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t wheel(uint32_t WheelPos) {
  if(WheelPos < 85) {
   return (WheelPos * 3) << 16 | (255 - WheelPos * 3) << 8 | 0;
  } else if(WheelPos < 170) {
   WheelPos -= 85;
   return (255 - WheelPos * 3) << 16 | 0 << 8 | WheelPos * 3;
  } else {
   WheelPos -= 170;
   return (0 << 16) | ((WheelPos * 3) << 8) | (255 - WheelPos * 3);
  }
}


uint32_t colourWheel ( uint8_t wheelPos, uint8_t brightness )
{
	uint8_t red = 0;
	uint8_t green = 0;
	uint8_t blue = 0;
	uint32_t result = 0;

	// Divide the radius into thirds, 85 counts for each
	if(wheelPos < 85)
	{
		red = wheelPos * 3;
		green = 255 - wheelPos * 3;
		blue = 0;
	}
	else if( wheelPos < 170 )
	{
		wheelPos -= 85;
		red = 255 - wheelPos * 3;
		green = 0;
		blue = wheelPos * 3;
	}
	else
	{
		wheelPos -= 170;
		red = 0;
		green = wheelPos * 3;
		blue = 255 - wheelPos * 3;
	}

	green -= (green / brightness);
	red -= (red / brightness);
	blue -= (blue /brightness);

	result = green << 16;
	result += red << 8;
	result += blue;

	return ( result );
}

uint32_t decreaseBrightness ( uint32_t pixel, uint8_t brightness )
{
	uint8_t *outColour;
	uint8_t i;

	// TODO : if I was doing it properly the frame buffer would use a structure datatype to allow easier access to each member/byte
	outColour = (uint8_t *)&pixel;

	for (i=0; i<3; i++)
	{
		if (outColour[i] > brightness)
		{
			outColour[i] -= brightness;
		}
		else
		{
			outColour[i] = 0;
		}
	}

	return(pixel);
}

  static FATFS Fatfs[1];
  static FIL fp;
  DSTATUS stat;
  BYTE res;  

int openFile() {
	stat = disk_initialize(0);
	if (stat & STA_NOINIT) {
		printf("SD init failed%s", CFG_PRINTF_NEWLINE);
		return 1;
	}
	if (stat & STA_NODISK) {
		printf("No SD card%s", CFG_PRINTF_NEWLINE);
		return 1;
	}
	
	res = f_mount(0, &Fatfs[0]);
	if (res != FR_OK) {
		printf("Failed to mount partition: %d%s" , res, CFG_PRINTF_NEWLINE);
		return res;
	}
	
	res = f_open(&fp, "Untitled.ppm", FA_READ);
	if(FR_OK != res) {
		printf("could not open file for reading: %d%s", res, CFG_PRINTF_NEWLINE);
		return 1;
	}
	f_lseek(&fp, 0x36);
	
	return 0; 
}


int main(void)
{
  // Configure cpu and mandatory peripherals
  systemInit();

  uint32_t currentSecond, lastSecond;
  currentSecond = lastSecond = 0;

  gpioSetDir(2, 5, gpioDirection_Output);
  gpioSetPullup(&IOCON_PIO2_5, gpioPullupMode_Inactive);
  sspInit2();
  uartInit2();
  uint16_t i = 0;
  for(i = 0; i < 144; i++) {
	sendPixel(0x00000000);
  }
  latch();
  uint8_t line[144*3];
  
  //systickDelay(2000);

  openFile();
  while (1) {

	UINT br;
	uint32_t start = systickGetTicks();
	res = f_read(&fp, line, 144*3, &br);
	uint32_t end = systickGetTicks();

	if(FR_OK == res) {
		
		for(i = 0; i < 144*3; i+=3) {
			//printf("(%d %d %d)", line[i], line[i+1], line[i+2]);
			sendPixel(decreaseBrightness((line[i+1] << 16) | (line[i] << 8) | line[i+2], 0));
		}
		systickDelay(7);
		printf("\r\nred %d bytes in %d ms %s", br, end-start, CFG_PRINTF_NEWLINE);
	} else {
		printf("Could not read from file: %d%s", res, CFG_PRINTF_NEWLINE);
		fp.fs = NULL;
		continue;
	}
	
	if(fp.fptr >= fp.fsize || 0 == br) {
		f_lseek(&fp, 0x36);
		printf("file end reached, looping");
		for(i = 0; i < 144; i++) {
			sendPixel(0x00000000);
		}
		systickDelay(1000);
		sendPixel(0x0000FF00);
		systickDelay(300);
		sendPixel(0x00000000);
		systickDelay(300);
		continue;
	}
	

	//~ for(p = 0; p < 144; p++) {
		//~ sendPixel(colourWheel((i+p)%255, 2));
		//~ //sendPixel(0x00000001);
	//~ }
	//~ i++;
    //~ systickDelay(1);

//~ 
	//~ latch();
	//~ delay(100);
	
    // Poll for CLI input if CFG_INTERFACE is enabled in projectconfig.h
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
