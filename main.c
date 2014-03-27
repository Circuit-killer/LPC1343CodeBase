#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "projectconfig.h"
#include "sysinit.h"

#include "core/gpio/gpio.h"
#include "core/systick/systick.h"

#include "drivers/fatfs/diskio.h"
#include "drivers/fatfs/ff.h"
#include "drivers/displays/character/1602/LiquidCrystal.h"
#include "core/adc/adc.h"
//~ #include "core/pmu/pmu.h"
#include "core/pwm/pwm.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

void uartInit2()
{
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

uint32_t decreaseBrightness ( uint32_t pixel, uint32_t decreaseBy )
{
	uint8_t *outColour;
	uint8_t i;

	// TODO : if I was doing it properly the frame buffer would use a structure datatype to allow easier access to each member/byte
	outColour = (uint8_t *)&pixel;
	for (i=0; i<3; i++) {
			if(decreaseBy > 0) {
				float multiplier = 1.0 - (float)decreaseBy / 255.0;
				//outColour[i] = (uint8_t)((float)outColour[i] * multiplier);
				outColour[i] = ((uint32_t)outColour[i] * (1024 - (decreaseBy << 2)) + 512) >> 10;
			}
	}

	return(pixel);
}

static FILINFO Finfo;
static FATFS Fatfs[1];
static FIL fp;
DSTATUS stat;
BYTE res;

int initSDCard() {
	stat = disk_initialize(0);
	if (stat & STA_NOINIT) {
//		printf("SD init failed%s", CFG_PRINTF_NEWLINE);
		return 1;
	}
	if (stat & STA_NODISK) {
//		printf("No SD card%s", CFG_PRINTF_NEWLINE);
		return 1;
	}

	res = f_mount(0, &Fatfs[0]);
	if (res != FR_OK) {
//		printf("Failed to mount partition: %d%s" , res, CFG_PRINTF_NEWLINE);
		return res;
	}
	return 0;
}

int isPPMFile(FILINFO Finfo) {
	return !(Finfo.fattrib & AM_DIR) && !strcmp(strstr(Finfo.fname, "."), ".PPM");
}

#define MAX_FILES 20
char fileNames[MAX_FILES][13];
uint8_t totalFiles = 0;
uint8_t currFile = 0;
uint8_t brightness = 255;

int scanDir() {
    DIR dir;
	if (res != FR_OK) {
		printf("Failed to mount partition%s" , CFG_PRINTF_NEWLINE);
		return res;
	}
    if (res == FR_OK) {
		res = f_opendir(&dir, "/");
		if (res) {
			printf("Failed to open '/' %s", CFG_PRINTF_NEWLINE);
			return 1;
		}
		// Read directory contents
		int i;
		for(i = 0; i < MAX_FILES; ) {
			res = f_readdir(&dir, &Finfo);
			if ((res != FR_OK) || !Finfo.fname[0]){
				break;
			}
			if (isPPMFile(Finfo)) {
				strcpy(fileNames[i], Finfo.fname);
				i++;
			}
		}
		totalFiles = i;
	}
	return 1;
}

int openFile(char *fileName) {

	res = f_open(&fp, fileName, FA_READ);
	if(FR_OK != res) {
//		printf("could not open file for reading: %d%s", res, CFG_PRINTF_NEWLINE);
		return 1;
	}
	f_lseek(&fp, 0x36);

	return 0;
}

uint8_t gamma[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2,
2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5,
6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 11, 11,
11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18,
19, 19, 20, 21, 21, 22, 22, 23, 23, 24, 25, 25, 26, 27, 27, 28,
29, 29, 30, 31, 31, 32, 33, 34, 34, 35, 36, 37, 37, 38, 39, 40,
40, 41, 42, 43, 44, 45, 46, 46, 47, 48, 49, 50, 51, 52, 53, 54,
55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
71, 72, 73, 74, 76, 77, 78, 79, 80, 81, 83, 84, 85, 86, 88, 89,
90, 91, 93, 94, 95, 96, 98, 99,100,102,103,104,106,107,109,110,
111,113,114,116,117,119,120,121,123,124,126,128,129,131,132,134,
135,137,138,140,142,143,145,146,148,150,151,153,155,157,158,160,
162,163,165,167,169,170,172,174,176,178,179,181,183,185,187,189,
191,193,194,196,198,200,202,204,206,208,210,212,214,216,218,220,
222,224,227,229,231,233,235,237,239,241,244,246,248,250,252,255};

void blank(){
	uint16_t i = 0;
	for(i = 0; i < 144; i++) {
		sendPixel(0x00000000);
	}
	latch();
}

uint32_t pixels[144];

void display(){
	uint16_t i = 0;
	uint8_t line[144*3];
	uint32_t linesSent = 0;

	uint32_t start = systickGetTicks();

	while(1) {
		UINT br;
		res = f_read(&fp, line, 144*3, &br);

		if(FR_OK == res) {
			for(i = 0; i < 144*3; i+=3) {
				uint32_t pixel = (line[i+1] << 16) | (line[i] << 8) | line[i+2];
				pixel = decreaseBrightness(pixel, 255 - brightness);
				pixels[i/3] = gamma[(uint8_t)((pixel >> 16) & 0x000000FF)] << 16 | gamma[(uint8_t)((pixel >> 8) & 0x000000FF)] << 8 | (gamma[(uint8_t)(pixel & 0x000000FF)] );
			}

			for(i = 0; i < 144; i++) {
				//printf("(%d %d %d)", line[i], line[i+1], line[i+2]);
//				pixel = (gamma[line[i+1]] << 16) | (gamma[line[i]] << 8) | gamma[line[i+2]];
				sendPixel(pixels[i]);
			}
			linesSent++;
			systickDelay(2);
		} else {
//			printf("Could not read from file: %d%s", res, CFG_PRINTF_NEWLINE);
			fp.fs = NULL;
			break;
		}

		if(fp.fptr >= fp.fsize || 0 == br) {
			f_lseek(&fp, 0x36);
//			printf("file end reached, looping");
			blank();
			break;
		}
	}
			printf("%d ticks for %d lines \r\n", (systickGetTicks() - start), linesSent);
}

void batteryLow() {
	blank();
	sendPixel(0x00002200);
	systickDelay(1);
}

void displayFileSelection() {
	blank();
	uint16_t i = 0;
	for(i = 0; i < totalFiles; i++) {
		if(i == currFile) {
			sendPixel(0x00080000);
		} else {
			sendPixel(0x00010000);
		}
	}
	latch();
}


void selectFile() {
	openFile(fileNames[currFile]);

	clear();
	print(fileNames[currFile]);

	displayFileSelection();
}


void selectPreviousFile() {
	if(currFile > 0) {
		currFile--;
	} else {
		currFile = totalFiles - 1;
	}
	selectFile();
}

void selectNextFile() {
	currFile++;
	if(currFile >= totalFiles) {
		currFile = 0;
	}
	selectFile();
}

void indicateBrightness() {
	uint16_t i = 0;
	uint32_t pixel = decreaseBrightness(0x0022FF88, 255 - brightness);
	for(i = 0; i < 144; i++) {
		if(i == (255 - brightness) / 2) {
			sendPixel(pixel);
		} else {
			sendPixel(0x00000000);
		}
	}
	latch();
}


#define BTN_FIRE 3, 2
#define BTN_UP 1, 5
#define BTN_DOWN 3, 3

#define MODE_DISPLAY 1
#define MODE_SELECT 2

uint8_t mode = MODE_DISPLAY;

int main(void)
{
	// Configure cpu and mandatory peripherals
	systemInit();
	adcInit();

	pwmInit();
	pwmSetFrequencyInTicks(100);
	pwmSetDutyCycle(50);
	pwmStart();

	//LCD latch
    gpioSetDir(2, 8, gpioDirection_Output);
	gpioSetValue(2, 8, 1);

	//down button
	gpioSetDir(BTN_DOWN, gpioDirection_Input);
	gpioSetPullup(&IOCON_PIO3_3, gpioPullupMode_PullUp);

	//up button
	gpioSetDir(BTN_UP, gpioDirection_Input);
	gpioSetPullup(&IOCON_PIO1_5, gpioPullupMode_PullUp);

	//fire button
	gpioSetDir(BTN_FIRE, gpioDirection_Input);
	gpioSetPullup(&IOCON_PIO3_2, gpioPullupMode_PullUp);
	//button GND
	gpioSetDir(3, 1, gpioDirection_Output);
	gpioSetValue(3,1, 0);

	//LED strip power
	gpioSetDir(2, 9, gpioDirection_Output);
	gpioSetValue(2, 9, 1);
	systickDelay(100);

	uartInit2();
	blank();
	blank();

	sendPixel(0x00000011);
	systickDelay(1);

	while(0 != initSDCard()){
		cmdPoll();
		sendPixel(0x00000011);
		systickDelay(500);
		sendPixel(0x00000000);
		systickDelay(500);
	};

	scanDir();
	openFile(fileNames[currFile]);
	gpioSetValue(2, 9, 0);

	LiquidCrystal();
	clear();
	print(fileNames[currFile]);

	while (1) {
		if(0 == gpioGetValue(BTN_FIRE)) {

			if(MODE_DISPLAY == mode) {

				if(adcReadSingle(1) > 526) {

					gpioSetValue(2, 9, 1);
					systickDelay(10);
					display();
					blank();
					gpioSetValue(2, 9, 0);
					if(0 == gpioGetValue(BTN_FIRE)) {
						gpioSetValue(2, 9, 1);
						displayFileSelection();
						mode = MODE_SELECT;
						systickDelay(1000);
					}
				} else {
					gpioSetValue(2, 9, 1);
					batteryLow();
					gpioSetValue(2, 9, 0);
				}

			} else if(MODE_SELECT == mode) {

				mode = MODE_DISPLAY;
			}
		} else if(0 == gpioGetValue(BTN_UP)) {

			if(MODE_DISPLAY == mode) {

				gpioSetValue(2, 9, 1);
				systickDelay(10);
				if(brightness < 255) {
					brightness++;
				}
				indicateBrightness();
				systickDelay(200);
				while(0 == gpioGetValue(BTN_UP)) {
					if(brightness < 255) {
						brightness++;
					}
					indicateBrightness();
					systickDelay(10);
				}
				blank();
				gpioSetValue(2, 9, 0);
			} else if(MODE_SELECT == mode) {
				selectNextFile();
				systickDelay(300);
			}
		} else if(0 == gpioGetValue(BTN_DOWN)) {
			if(MODE_DISPLAY == mode) {
				gpioSetValue(2, 9, 1);
				systickDelay(10);
				if(brightness > 0) {
					brightness--;
				}
				indicateBrightness();
				systickDelay(200);
				while(0 == gpioGetValue(BTN_DOWN)) {
					if(brightness > 0) {
						brightness--;
					}
					indicateBrightness();
					systickDelay(10);
				}
				blank();
				gpioSetValue(2, 9, 0);
			} else if(MODE_SELECT == mode) {
				selectPreviousFile();
				systickDelay(300);
			}
		}

		if(adcReadSingle(1) <= 526) {
			//batteryLow();
		} else {
			//blank();
		}

		//sleep();

		cmdPoll();
	}

	return 0;
}
