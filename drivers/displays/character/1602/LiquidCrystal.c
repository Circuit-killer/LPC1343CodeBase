#include "LiquidCrystal.h"
//#include "../SPI/SPI.h"

#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include "core/gpio/gpio.h"
#include "core/systick/systick.h"

#define HIGH 1
#define LOW 0

// When the display powers up, it is configured as follows:
//
// 1. Display clear
// 2. Function set:
//    DL = 1; 8-bit interface data
//    N = 0; 1-line display
//    F = 0; 5x8 dot character font
// 3. Display on/off control:
//    D = 0; Display off
//    C = 0; Cursor off
//    B = 0; Blinking off
// 4. Entry mode set:
//    I/D = 1; Increment by 1
//    S = 0; No shift
//
// Note, however, that resetting the Arduino doesn't reset the LCD, so we
// can't assume that its in that state when a sketch starts (and the
// LiquidCrystal constructor is called).


void LiquidCrystal() {
   _displayfunction = LCD_4BITMODE | LCD_1LINE | LCD_5x8DOTS;

  // the SPI expander pinout
  _rs_pin = 1;// 1;
  _rw_pin = 2;
  _enable_pin = 3;//2;
  _data_pins[0] = 4;//6;  // really d4
  _data_pins[1] = 5;//5;  // really d5
  _data_pins[2] = 6;//4;  // really d6
  _data_pins[3] = 7;//3;  // really d7

  _SPIclock = 1;

  //pinMode(_SPIlatch, OUTPUT);
  gpioSetDir(2, 8, gpioDirection_Output);
  gpioSetValue(2, 8, 1);

  _SPIbuff = 0;

  // Set direction register for SCK and MOSI pin.
  // MISO pin automatically overrides to INPUT.
  // When the SS pin is set as OUTPUT, it can be used as
  // a general purpose output port (it doesn't influence
  // SPI operations).

  //~ pinMode(SCK, OUTPUT);
  //~ pinMode(MOSI, OUTPUT);
  //~ pinMode(SS, OUTPUT);
//~
  //~ digitalWrite(SCK, LOW);
  //~ digitalWrite(MOSI, LOW);
  //~ digitalWrite(SS, HIGH);

  // Warning: if the SS pin ever becomes a LOW INPUT then SPI
  // automatically switches to Slave, so the data direction of
  // the SS pin MUST be kept as OUTPUT.
  //~ SPCR |= _BV(MSTR);
  //~ SPCR |= _BV(SPE);

  // we can't begin() yet :(
  begin(16,2, LCD_5x8DOTS);
}

void delayMicroseconds(uint32_t microseconds) {
	if(microseconds > 1000){
		systickDelay(microseconds/1000 + 1);
	} else {
		systickDelay(1);
	}
}

void begin(uint8_t cols, uint8_t lines, uint8_t dotsize) {
  if (_SPIclock != 255) {
    _SPIbuff = 0x00; // backlight
  }

  if (lines > 1) {
    _displayfunction |= LCD_2LINE;
  }
  _numlines = lines;
  _currline = 0;

  // for some 1 line displays you can select a 10 pixel high font
  if ((dotsize != 0) && (lines == 1)) {
    _displayfunction |= LCD_5x10DOTS;
  }

  // SEE PAGE 45/46 FOR INITIALIZATION SPECIFICATION!
  // according to datasheet, we need at least 40ms after power rises above 2.7V
  // before sending commands. Arduino can turn on way befer 4.5V so we'll wait 50
  delayMicroseconds(50000);
  // Now we pull both RS and R/W low to begin commands
  _digitalWrite(_rs_pin, LOW);
  _digitalWrite(_enable_pin, LOW);
  if (_rw_pin != 255) {
    _digitalWrite(_rw_pin, LOW);
  }

  //put the LCD into 4 bit or 8 bit mode
  if (! (_displayfunction & LCD_8BITMODE)) {
    // this is according to the hitachi HD44780 datasheet
    // figure 24, pg 46

    // we start in 8bit mode, try to set 4 bit mode
    write4bits(0x03);
    delayMicroseconds(4500); // wait min 4.1ms

    // second try
    write4bits(0x03);
    delayMicroseconds(4500); // wait min 4.1ms

    // third go!
    write4bits(0x03);
    delayMicroseconds(150);

    // finally, set to 8-bit interface
    write4bits(0x02);
  } else {
    // this is according to the hitachi HD44780 datasheet
    // page 45 figure 23

    // Send function set command sequence
    command(LCD_FUNCTIONSET | _displayfunction);
    delayMicroseconds(4500);  // wait more than 4.1ms

    // second try
    command(LCD_FUNCTIONSET | _displayfunction);
    delayMicroseconds(150);

    // third go
    command(LCD_FUNCTIONSET | _displayfunction);
  }

  // finally, set # lines, font size, etc.
  command(LCD_FUNCTIONSET | _displayfunction);

  // turn the display on with no cursor or blinking default
  _displaycontrol = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
  displayOn();

  // clear it off
  clear();

  // Initialize to default text direction (for romance languages)
  _displaymode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
  // set the entry mode
  command(LCD_ENTRYMODESET | _displaymode);

}

/********** high level commands, for the user! */
void clear()
{
  command(LCD_CLEARDISPLAY);  // clear display, set cursor position to zero
  delayMicroseconds(2000);  // this command takes a long time!
}

void home()
{
  command(LCD_RETURNHOME);  // set cursor position to zero
  delayMicroseconds(2000);  // this command takes a long time!
}

void setCursor(uint8_t col, uint8_t row)
{
  int row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
  if ( row > _numlines ) {
    row = _numlines-1;    // we count rows starting w/0
  }

  command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
}

// Turn the display on/off (quickly)
void noDisplay() {
  _displaycontrol &= ~LCD_DISPLAYON;
  command(LCD_DISPLAYCONTROL | _displaycontrol);
}

void displayOn() {
  _displaycontrol |= LCD_DISPLAYON;
  command(LCD_DISPLAYCONTROL | _displaycontrol);
}

// Turns the underline cursor on/off
void noCursor() {
  _displaycontrol &= ~LCD_CURSORON;
  command(LCD_DISPLAYCONTROL | _displaycontrol);
}
void cursor() {
  _displaycontrol |= LCD_CURSORON;
  command(LCD_DISPLAYCONTROL | _displaycontrol);
}

// Turn on and off the blinking cursor
void noBlink() {
  _displaycontrol &= ~LCD_BLINKON;
  command(LCD_DISPLAYCONTROL | _displaycontrol);
}
void blink() {
  _displaycontrol |= LCD_BLINKON;
  command(LCD_DISPLAYCONTROL | _displaycontrol);
}

// These commands scroll the display without changing the RAM
void scrollDisplayLeft(void) {
  command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVELEFT);
}
void scrollDisplayRight(void) {
  command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVERIGHT);
}

// This is for text that flows Left to Right
void leftToRight(void) {
  _displaymode |= LCD_ENTRYLEFT;
  command(LCD_ENTRYMODESET | _displaymode);
}

// This is for text that flows Right to Left
void rightToLeft(void) {
  _displaymode &= ~LCD_ENTRYLEFT;
  command(LCD_ENTRYMODESET | _displaymode);
}

// This will 'right justify' text from the cursor
void autoscroll(void) {
  _displaymode |= LCD_ENTRYSHIFTINCREMENT;
  command(LCD_ENTRYMODESET | _displaymode);
}

// This will 'left justify' text from the cursor
void noAutoscroll(void) {
  _displaymode &= ~LCD_ENTRYSHIFTINCREMENT;
  command(LCD_ENTRYMODESET | _displaymode);
}

// Allows us to fill the first 8 CGRAM locations
// with custom characters
void createChar(uint8_t location, uint8_t charmap[]) {
  location &= 0x7; // we only have 8 locations 0-7
  command(LCD_SETCGRAMADDR | (location << 3));
  int i=0;
  for (i=0; i<8; i++) {
    write(charmap[i]);
  }
}

/*********** mid level commands, for sending data/cmds */

inline void command(uint8_t value) {
  send(value, LOW);
}

inline char write(uint8_t value) {
  send(value, HIGH);
  return 1;
}

void print(const char * str){
  while(*str){
    write(*str++);
  }
}

/************ low level data pushing commands **********/

// little wrapper for i/o writes
void  _digitalWrite(uint8_t p, uint8_t d) {
  if (_SPIclock != 255) {
    if (d == HIGH)
      _SPIbuff |= (1 << p);
    else
      _SPIbuff &= ~(1 << p);

//    digitalWrite(_SPIlatch, LOW);
	gpioSetValue(2, 8, 0);

//    SPI.transfer(_SPIbuff);
   	while ((SSP_SSP0SR & (SSP_SSP0SR_BSY_BUSY )));
	SSP_SSP0DR = _SPIbuff;
   	while ((SSP_SSP0SR & (SSP_SSP0SR_BSY_BUSY )));

//    digitalWrite(_SPIlatch, HIGH);
 	gpioSetValue(2, 8, 1);
 } else {
    // straightup IO
    //digitalWrite(p, d);
  }
}

// Allows to set the backlight, if the LCD backpack is used
void setBacklight(uint8_t status) {
  // check if i2c or SPI
  if (_SPIclock != 255) {
    _digitalWrite(7, status); // backlight is on pin 7
  }
}

// little wrapper for i/o directions
void  _pinMode(uint8_t p, uint8_t d) {
  if (_SPIclock != 255) {
    // nothing!
  } else {
    // straightup IO
    // pinMode(p, d);
  }
}

// write either command or data, with automatic 4/8-bit selection
void send(uint8_t value, uint8_t mode) {
  _digitalWrite(_rs_pin, mode);

  // if there is a RW pin indicated, set it low to Write
  if (_rw_pin != 255) {
    _digitalWrite(_rw_pin, LOW);
  }

  if (_displayfunction & LCD_8BITMODE) {
    write8bits(value);
  } else {
    write4bits(value>>4);
    write4bits(value);
  }
}

void pulseEnable(void) {
  _digitalWrite(_enable_pin, LOW);
  delayMicroseconds(1);
  _digitalWrite(_enable_pin, HIGH);
  delayMicroseconds(1);    // enable pulse must be >450ns
  _digitalWrite(_enable_pin, LOW);
  delayMicroseconds(100);   // commands need > 37us to settle
}

void write4bits(uint8_t value) {
	int i = 0;
    for (i = 0; i < 4; i++) {
      //_pinMode(_data_pins[i], OUTPUT);
      _digitalWrite(_data_pins[i], (value >> i) & 0x01);
    }
    pulseEnable();
}

void write8bits(uint8_t value) {
	int i = 0;
  for (i = 0; i < 8; i++) {
    //_pinMode(_data_pins[i], OUTPUT);
    _digitalWrite(_data_pins[i], (value >> i) & 0x01);
  }

  pulseEnable();
}
