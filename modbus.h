#include <stdint.h>

#ifndef _MODBUS_H
#define _MODBUS_H
#define EXCEPTION_TIMEOUT -127

void modbusInit();
void modbusControl(uint16_t controlWord);
int32_t modbusGetHoldingRegister(uint16_t regAddress);
int8_t modbusPresetSingleRegister(uint16_t regAddress, uint16_t value);
#endif
