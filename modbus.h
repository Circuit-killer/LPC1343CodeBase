#include <stdint.h>

#ifndef _MODBUS_H
#define _MODBUS_H
#define EXCEPTION_TIMEOUT -127
#define EXCEPTION_INVALID_SPEED -127
#define FIELDBUS_CONTROL_REG 2000

void modbusInit();
int32_t modbusGetHoldingRegister(uint16_t regAddress);
int8_t modbusPresetSingleRegister(uint16_t regAddress, uint16_t value);
int8_t modbusControl(uint16_t controlWord);
int8_t modbusSetSpeed(uint16_t speed);
#endif
