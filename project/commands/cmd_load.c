#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions


extern uint32_t screen[32];

void cmd_load(uint8_t argc, char **argv){
	uint32_t addr;
  getNumber (argv[0], &addr);
	if(addr > 31) {
    printf("Address out of range %s", CFG_PRINTF_NEWLINE);
    return;
	}	
	uint32_t value;
  getNumber (argv[1], &value);
	printf("Replacing %d at address %d with %d %s", screen[addr], addr, value, CFG_PRINTF_NEWLINE);
	screen[addr] = value;
}
