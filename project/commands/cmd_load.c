#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions
#include "project/eeprom.h"
#include "drivers/storage/eeprom/eeprom.h"

//extern uint32_t screen[32];
extern uint16_t lastLine;

void write(uint16_t addr, uint32_t value) {
	eepromWriteU8(addr, (uint8_t) value);
	eepromWriteU8(addr+1, value >> 8);
	eepromWriteU8(addr+2, value >> 16);
	eepromWriteU8(addr+3, value >> 24);
}

void cmd_load(uint8_t argc, char **argv){
	int32_t addr;
  getNumber (argv[0], &addr);
	if(addr < 0 || addr > 512) {
    printf("Address out of range %s", CFG_PRINTF_NEWLINE);
    return;
	}	
	uint32_t value;
  getNumber (argv[1], &value);
	printf("Writing at address %d with 0x%04X %s", PIC_START_ADDR+addr*4, value, CFG_PRINTF_NEWLINE);
	write(PIC_START_ADDR + addr * 4, value);
	eepromWriteU16(PIC_SIZE_ADDR, addr + 1);
	lastLine = addr + 1;
	//screen[addr] = value;
}
