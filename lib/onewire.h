#ifndef PICLIB_ONEWIRE_H
#define PICLIB_ONEWIRE_H 1

#include "typedef.h"

// ---------------------------------------------------------------------------
#define DQ_BIT RC3
#define DQ_TRIS TRISC3

// ---------------------------------------------------------------------------
#define OW_SEARCH_ROM 0xf0
#define OW_READ_ROM 0x33
#define OW_MATCH_ROM 0x55
#define OW_SKIP_ROM 0xcc
#define OW_ALARM_SEARCH 0xec

// Returns 0 for one wire device presence, 1 for none
// ---------------------------------------------------------------------------
void
ow_search(void);

// ---------------------------------------------------------------------------
char
ow_reset(void);

// ---------------------------------------------------------------------------
uint8_t
ow_crc(uint8_t x);

// ---------------------------------------------------------------------------
// Searches for the next device on the one wire bus. If there are no more
// devices on the bus then false is returned.
// ---------------------------------------------------------------------------
char
ow_next(void);

// ---------------------------------------------------------------------------
uint8_t
ow_read_byte(void);

// ---------------------------------------------------------------------------
void
ow_write_byte(uint8_t val, BOOL power_on);

// Sends Match ROM command to bus then device address
// ---------------------------------------------------------------------------
char
ow_access(uint8_t actNumRom) ;

#endif // defined(PICLIB_ONEWIRE_H)
 

