#ifndef PICLIB_DS18B20_H
#define PICLIB_DS18B20_H 1

#include "typedef.h"
#include "onewire.h"

// ---------------------------------------------------------------------------
// ---------------------------------------------------------------------------
#define DS18B20_CONVERT_T 0x44
#define DS18B20_WRITE_SCRATCHPAD 0x4e
#define DS18B20_READ_SCRATCHPAD 0xbe
#define DS18B20_COPY_SCRATCHPAD 0x48
#define DS18B20_RECALL_EE 0xb8
#define DS18B20_READ_POWER_SUPPLY 0xb4


// ---------------------------------------------------------------------------
#define DS18B20_T_INVAL -273.15f
#define DS18B20_T_MIN -55.0f
#define DS18B20_T_MAX 125.0f

// ---------------------------------------------------------------------------
BOOL ds18b20_start_conversion(int8_t actNumROM, BOOL parasite_power);
uint16_t ds18b20_value(int8_t actNumROM);
double ds18b20_temperature(uint16_t value, uint8_t shift);

#endif // PICLIB_DS18B20_H
 

