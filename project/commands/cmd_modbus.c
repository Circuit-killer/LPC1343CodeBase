#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions

#include "modbus.h"

void reportModbusError(int32_t value) {
  if(EXCEPTION_TIMEOUT == value) {
    printf("Time out error%s", CFG_PRINTF_NEWLINE);
  } else if(EXCEPTION_INVALID_SPEED == value) {
    printf("Invalid speed");
  } else {
    printf("Modbus error. Exception code: %d%s", value, CFG_PRINTF_NEWLINE);
  }  
}

void modbusStartStop(uint16_t controlWord) {
  int32_t value = modbusControl(controlWord);
  if(0 < value) {
    reportModbusError(value);
  } else {
    printf("OK%s", CFG_PRINTF_NEWLINE);
  }
}

void cmd_modbus_get_status(uint8_t argc, char** argv) {
  int32_t value = modbusGetHoldingRegister(2100);
  if(value < 0) {
    reportModbusError(value);
  } else {
    printf("Status word: 0x%x%s", value, CFG_PRINTF_NEWLINE);
    if(value & 1) {
      printf("Drive ready%s", CFG_PRINTF_NEWLINE);
    } else {
      printf("Drive not ready %s", CFG_PRINTF_NEWLINE);
    }
    
    if(value & 2) {
      printf("Drive running%s", CFG_PRINTF_NEWLINE);
    } else {
      printf("Drive stopped %s", CFG_PRINTF_NEWLINE);
    }

    if(value & 4) {
      printf("Counter-clockwise%s", CFG_PRINTF_NEWLINE);
    } else {
      printf("Clockwise%s", CFG_PRINTF_NEWLINE);
    }

    if(value & 16) {
      printf("Alarm active%s", CFG_PRINTF_NEWLINE);
    } else {
      printf("No alarm%s", CFG_PRINTF_NEWLINE);
    }

    if(value & 32) {
      printf("Speed reference reached%s", CFG_PRINTF_NEWLINE);
    } else {
      printf("Ramping%s", CFG_PRINTF_NEWLINE);
    }

    if(value & 64) {
      printf("Drive is running at zero speed%s", CFG_PRINTF_NEWLINE);
    } 

    if(value & 128) {
      printf("Flux ready%s", CFG_PRINTF_NEWLINE);
    }

    if(value & 8) {
      printf("Fault active%s", CFG_PRINTF_NEWLINE);
      value = modbusGetHoldingRegister(2110);
      if(value < 0) {
        reportModbusError(value);
      } else {
        printf("Fault code: %d%s", value, CFG_PRINTF_NEWLINE);
        switch (value) {
          case 1:
            printf("Overcurrent%s", CFG_PRINTF_NEWLINE);
            break;
          case 2:
            printf("Overvoltage%s", CFG_PRINTF_NEWLINE);
            break;
          case 3:
            printf("Earth fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 8:
            printf("System fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 9:
            printf("Undervoltage", CFG_PRINTF_NEWLINE);
            break;
          case 11:
            printf("Output phase fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 13:
            printf("Undertemperature%s", CFG_PRINTF_NEWLINE);
            break;
          case 14:
            printf("Overtemperature%s", CFG_PRINTF_NEWLINE);
            break;
          case 15:
            printf("Motor stalled%s", CFG_PRINTF_NEWLINE);
            break;
          case 16:
            printf("Motor overtemperature%s", CFG_PRINTF_NEWLINE);
            break;
          case 17:
            printf("Motor underload%s", CFG_PRINTF_NEWLINE);
            break;
          case 22:
            printf("EEPROM checksum fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 25:
            printf("Microcontroller watchdog fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 27:
            printf("Back EMF protection%s", CFG_PRINTF_NEWLINE);
            break;
          case 34:
            printf("Internal bus comm fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 35:
            printf("Applicatin fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 41:
            printf("IGBT overtemperature%s", CFG_PRINTF_NEWLINE);
            break;
          case 50:
            printf("Analog input fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 51:
            printf("External fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 53:
            printf("Fieldbus fault%s", CFG_PRINTF_NEWLINE);
            break;
          case 57:
            printf("Identification fault%s", CFG_PRINTF_NEWLINE);
            break;
          default:
            printf("unknown %s", CFG_PRINTF_NEWLINE);
            break;
        }
      }
    } else {
      printf("No fault%s", CFG_PRINTF_NEWLINE);
    }    
  }
}

void cmd_modbus_clear_fault(uint8_t argc, char **argv) {
  int32_t value = modbusControl(4);
  if(value < 0) {
    reportModbusError(value);
  } else {
    printf("OK%s", CFG_PRINTF_NEWLINE);
  }
}

void cmd_modbus_start(uint8_t argc, char ** argv) {
  int32_t direction = 0;
  if(argc > 0) {
    getNumber(argv[0], &direction);
  }
  uint16_t controlWord = 1;
  if(direction) {
    controlWord = controlWord | 2;
  }
  modbusStartStop(controlWord);
}

void cmd_modbus_stop(uint8_t argc, char ** argv) {
  modbusStartStop(0);
}

void cmd_modbus_set_speed(uint8_t argc, char **argv) {
  int32_t speed = 0;
  getNumber(argv[0], &speed);
  int32_t value = modbusSetSpeed(speed);
  if(value < 0) {
    reportModbusError(value);
  } else {
    printf("OK%s", CFG_PRINTF_NEWLINE);
  }
}

void cmd_modbus_get_register(uint8_t argc, char **argv) {
  int32_t address = 0;
  getNumber(argv[0], &address);
  address--;
  int32_t value = modbusGetHoldingRegister(address);
  if(value < 0) {
    reportModbusError(value);
  } else {
    printf("%d%s", value, CFG_PRINTF_NEWLINE);
  }
}

void cmd_modbus_set_register(uint8_t argc, char **argv) {
  int32_t address;
  int32_t value;

  getNumber(argv[0], &address);
  getNumber(argv[1], &value);
  
  int8_t ret = modbusPresetSingleRegister(address-1, value);//addresses in modbus area differ by -1 from ID in documentation
  if(ret < 0) {
    reportModbusError(value);
  } else {
    printf("OK%s", CFG_PRINTF_NEWLINE);
  }
}
