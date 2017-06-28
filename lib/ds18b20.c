#include "const.h"
#include "onewire.h"
#include "ds18b20.h"

// ---------------------------------------------------------------------------
BOOL
ds18b20_start_conversion(int8_t actNumROM, BOOL parasite_power) {
  if(!ow_reset()) {    // If a device is present
    ow_write_byte(OW_SKIP_ROM, 0); // Skip Rom command
    ow_write_byte(DS18B20_CONVERT_T, parasite_power); // Temperature convert command

    return 1;
  }

  return 0;
}

// ---------------------------------------------------------------------------
uint16_t
ds18b20_value(int8_t actNumROM) {
  uint8_t scratch[9];
  uint16_t v = 0;
  int i;

  ow_reset(); /*if(ow_reset())
    return DS18B20_T_INVAL;

  if(actNumROM > 0)
    ow_access(actNumROM);
  else*/
  ow_write_byte(OW_SKIP_ROM, 0);
  ow_write_byte(DS18B20_READ_SCRATCHPAD, 0); // Read scratch pad command
  //dowcrc = 0;

  // Get the data bytes
  for(i = 0; i <= 7; i++) {
    scratch[i] = ow_read_byte();
    //ow_crc(scratch[i]);
  }

  scratch[8] = ow_read_byte();   // Get crc byte
  ow_reset();

  // If calculated crc from incoming bytes equal to crc byte
  // then data is valid.

  //if(scratch[8] == dowcrc)
  {
    v = (((uint16_t)(unsigned)scratch[1] << 8) | (unsigned)scratch[0]);

  }

  return v;
}


// ---------------------------------------------------------------------------
double
ds18b20_temperature(uint16_t value, uint8_t shift) {
  double t;

  t = (double)value;

  if(shift)
    t /= (1 << shift);

  if(t >= 0)
    t = (t + 8) / 16;

  else
    t = (t - 8) / 16;

  t -= 0.5;

  return t;
}
 

