#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions

#include "modbus.h"


void cmd_modbus_get_register(uint8_t argc, char **argv) {
  int32_t address;
  int32_t value = modbusGetHoldingRegister(address);
  if(value < 0) {
    if(EXCEPTION_TIMEOUT == value) {
      printf("Time out error%s", CFG_PRINTF_NEWLINE);
    } else {
      printf("Modbus error. Exception code: %d%s", value, CFG_PRINTF_NEWLINE);
    }
  } else {
    printf("%d%s", value, CFG_PRINTF_NEWLINE);
  }
}

void cmd_modbus_set_register(uint8_t argc, char **argv) {
  int32_t address;
  int32_t value;

  getNumber(argv[0], address);
  getNumber(argv[1], value);
  
  int8_t ret = modbusPresetSingleRegister(address+1, value);//addresses in modbus area differ by -1 from ID in documentation
  if(ret < 0) {
    if(EXCEPTION_TIMEOUT == ret) {
      printf("Time out error%s", CFG_PRINTF_NEWLINE);
    } else {
      printf("Modbus error. Exception code: %d%s", value, CFG_PRINTF_NEWLINE);
    }
  } else {
    printf("OK%s", CFG_PRINTF_NEWLINE);
  }
}
