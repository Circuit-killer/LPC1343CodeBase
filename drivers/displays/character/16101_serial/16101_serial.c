#include "16101_serial.h"

#define RS  0x04   
#define E   0x08
#define SET_RS  LCDpins |= RS
#define CLR_RS  LCDpins &= ~RS
#define SET_E   LCDpins |= E
#define CLR_E   LCDpins &= ~E

unsigned char LCDpins = 0;


void spiTransfer(uint8_t data) {
    ssp0Select();
    sspSend(0, &data, 1);
    ssp0Deselect();
}

void SPI_Latch() {
    SET_E;
    spiTransfer(LCDpins);
    //NutSleep(1);
    CLR_E;
    spiTransfer(LCDpins);
    //NutSleep(1);
}

void LCDsendbyte(uint8_t tosend) {
    LCDpins &= 0x0f;                //prepare place for the upper nibble
    LCDpins |= ( tosend & 0xf0 );   //copy upper nibble to LCD variable
    SPI_Latch();
    
    LCDpins &= 0x0f;                    //prepare place for the lower nibble
    LCDpins |= ( tosend << 4 ) & 0xf0;    //copy lower nibble to LCD variable
    SPI_Latch();
}

/*!
 * \brief Send characters to 7-Segment Display.
 *
 * A newline character will reset write pointer to digit 0.
 * Carriage return is ignored.
 *
 * \return Number of characters sent.
 */
int LCDWrite(void *buffer, int len) {
    int i=len;
    char *cp = buffer;
    

    CLR_RS;
    LCDsendbyte(0b00000001);
    systickDelay(2);
    LCDsendbyte(0b00000010);
    systickDelay(2);
    SET_RS;
    while(i--) {
        if(9 == len - i) {
            int j = 40 - 8;
            while(j--) {
                LCDsendbyte('x');
            }
        }
        LCDsendbyte(*cp++);
    }
    CLR_RS;
    return len;
}



/* LCD initialization by instruction                */
/* 4-bit 2 line                                     */
int LCDInit() {
    sspInit(0, sspClockPolarity_High, sspClockPhase_FallingEdge);
        
//    spiTransfer(0);
//    systickDelay(1000);
//        
//    spiTransfer(255);
//    systickDelay(1000);
//        
//    spiTransfer(0);
//    systickDelay(1000);
        
    CLR_RS;
    //digitalWrite(chipSelectPin, LOW);
    
    LCDpins =  0b00100000; 
    SPI_Latch();
    SPI_Latch();
    LCDpins =  0b11000000;  
    SPI_Latch();//function set

    systickDelay(1);
    
    LCDpins =  0b00000000;  
    SPI_Latch();
    LCDpins =  0b11000000;  
    SPI_Latch();//display on/off ctrl

    systickDelay(1);

    LCDpins =  0b00000000;  
    SPI_Latch();
    LCDpins =  0b00010000;
    SPI_Latch();//display clear

    systickDelay(2);

    LCDpins =  0b00000000;
    SPI_Latch();
    LCDpins =  0b01100000;
    SPI_Latch();//entry mode
        
    return 0;
}