// One Wire bus functions - from Dallas publication AN162
// "Interfacing DS18x20/DS1822 1-wire Temperature Sensor in a Microcontroller
// Environment". Delays calculated from values given for 8051.
// Changed variable name ROM[] to RomBytes[] because ROM is a reserved word
// in version 4 of the CCS compiler.

#include "delay.h"
#include "onewire.h"

#ifdef HI_TECH_C
# include <htc.h>
#else
# if defined(__PCM__) || defined(__PCH__)
#  include "ccs.h"
# endif
#endif

static uint8_t RomBytes[8];
static int8_t lastDiscrep = 0;
static BOOL doneFlag = 0;
static uint8_t FoundROM[12][8];    // Table of found ROM codes, 8 bytes for each
static uint8_t numROMs;
static int8_t ow_dowcrc;            // crc is accumulated in this variable

// crc lookup table
// ---------------------------------------------------------------------------
uint8_t const
ow_crctable[] = {
  0x00, 0x5e, 0xbc, 0xe2, 0x61, 0x3f, 0xdd, 0x83,
  0xc2, 0x9c, 0x7e, 0x20, 0xa3, 0xfd, 0x1f, 0x41,
  0x9d, 0xc3, 0x21, 0x7f, 0xfc, 0xa2, 0x40, 0x1e,
  0x5f, 0x01, 0xe3, 0xbd, 0x3e, 0x60, 0x82, 0xdc,
  0x23, 0x7d, 0x9f, 0xc1, 0x42, 0x1c, 0xfe, 0xa0,
  0xe1, 0xbf, 0x5d, 0x03, 0x80, 0xde, 0x3c, 0x62,
  0xbe, 0xe0, 0x02, 0x5c, 0xdf, 0x81, 0x63, 0x3d,
  0x7c, 0x22, 0xc0, 0x9e, 0x1d, 0x43, 0xa1, 0xff,
  0x46, 0x18, 0xfa, 0xa4, 0x27, 0x79, 0x9b, 0xc5,
  0x84, 0xda, 0x38, 0x66, 0xe5, 0xbb, 0x59, 0x07,
  0xdb, 0x85, 0x67, 0x39, 0xba, 0xe4, 0x06, 0x58,
  0x19, 0x47, 0xa5, 0xfb, 0x78, 0x26, 0xc4, 0x9a,
  0x65, 0x3b, 0xd9, 0x87, 0x04, 0x5a, 0xb8, 0xe6,
  0xa7, 0xf9, 0x1b, 0x45, 0xc6, 0x98, 0x7a, 0x24,
  0xf8, 0xa6, 0x44, 0x1a, 0x99, 0xc7, 0x25, 0x7b,
  0x3a, 0x64, 0x86, 0xd8, 0x5b, 0x05, 0xe7, 0xb9,
  0x8c, 0xd2, 0x30, 0x6e, 0xed, 0xb3, 0x51, 0x0f,
  0x4e, 0x10, 0xf2, 0xac, 0x2f, 0x71, 0x93, 0xcd,
  0x11, 0x4f, 0xad, 0xf3, 0x70, 0x2e, 0xcc, 0x92,
  0xd3, 0x8d, 0x6f, 0x31, 0xb2, 0xec, 0x0e, 0x50,
  0xaf, 0xf1, 0x13, 0x4d, 0xce, 0x90, 0x72, 0x2c,
  0x6d, 0x33, 0xd1, 0x8f, 0x0c, 0x52, 0xb0, 0xee,
  0x32, 0x6c, 0x8e, 0xd0, 0x53, 0x0d, 0xef, 0xb1,
  0xf0, 0xae, 0x4c, 0x12, 0x91, 0xcf, 0x2d, 0x73,
  0xca, 0x94, 0x76, 0x28, 0xab, 0xf5, 0x17, 0x49,
  0x08, 0x56, 0xb4, 0xea, 0x69, 0x37, 0xd5, 0x8b,
  0x57, 0x09, 0xeb, 0xb5, 0x36, 0x68, 0x8a, 0xd4,
  0x95, 0xcb, 0x29, 0x77, 0xf4, 0xaa, 0x48, 0x16,
  0xe9, 0xb7, 0x55, 0x0b, 0x88, 0xd6, 0x34, 0x6a,
  0x2b, 0x75, 0x97, 0xc9, 0x4a, 0x14, 0xf6, 0xa8,
  0x74, 0x2a, 0xc8, 0x96, 0x15, 0x4b, 0xa9, 0xf7,
  0xb6, 0xe8, 0x0a, 0x54, 0xd7, 0x89, 0x6b, 0x35,
};

// Returns 0 for one wire device presence, 1 for none
// ---------------------------------------------------------------------------
char
ow_reset(void) {
  int8_t presence;

  DQ_BIT = 0;
  DQ_TRIS = 0;

  delay_us(488);          // Min. 480uS

  DQ_TRIS = 1;

  delay_us(72);           // Takes 15 to 60uS for devices to respond

  presence = DQ_BIT;

  delay_us(424);          // Wait for end of timeslot

  return presence;
}

// Read bit on one wire bus
// ---------------------------------------------------------------------------
uint8_t
ow_read_bit(void) {
  DQ_BIT = 0;
  DQ_TRIS = 0;

  delay_us(3);         // Added, 1uS min. Code relied on 8051 being slow.

  DQ_TRIS = 1;

  delay_us(5);        // Read within 15uS from start of time slot

  return DQ_BIT; //input(DQ);
}

// ---------------------------------------------------------------------------
void
ow_write_bit(uint8_t bitval) {
  DQ_BIT = 0;
  DQ_TRIS = 0;

  if(bitval == 1) {
    delay_us(1);      // 1uS min. Code relied on 8051 being slow.

    DQ_TRIS = 1;
  }

  delay_us(105);       // Wait for end of timeslot

  DQ_TRIS = 1;
}

// ---------------------------------------------------------------------------
uint8_t
ow_read_byte(void) {
  uint8_t i;
  uint8_t val = 0;

  for(i = 0; i < 8; i++) {
    if(ow_read_bit())
      val |= (0x01 << i);

    delay_us(120);  // To finish time slot
  }

  return val;
}

// ---------------------------------------------------------------------------
// new byte writing routine with parasite power option
// ---------------------------------------------------------------------------
void
ow_write_byte(uint8_t val, BOOL power_on) {
  int i;

  for(i = 0; i < 8; i++) {
    DQ_BIT = 0;
    DQ_TRIS = 0;

    delay_us(2);

    DQ_BIT = val & 1;
    val >>= 1; //shift_right(&val, 1, 0);

    delay_us(60);

    if((i == 7) && (power_on == 1)) {
      DQ_BIT = 1;
    } else {
      DQ_TRIS = 1;

      delay_us(2);
    }
  }
}

// ---------------------------------------------------------------------------
// One wire crc
// ---------------------------------------------------------------------------
uint8_t
ow_crc(uint8_t x) {
  ow_dowcrc = ow_crctable[ow_dowcrc ^ x];

  return ow_dowcrc;
}

// ---------------------------------------------------------------------------
// Searches for the next device on the one wire bus. If there are no more
// devices on the bus then 0 is returned.
// ---------------------------------------------------------------------------
char
ow_next(void) {
  int8_t m = 1;             // ROM Bit index
  uint8_t n = 0;             // ROM Byte index
  uint8_t k = 1;             // Bit mask
  uint8_t x = 0;
  uint8_t discrepMarker = 0;
  uint8_t g;                 // Output bit
  uint8_t nxt;               // Return value
  int8_t flag;

  nxt = 0;            // Reset next flag to 0

  ow_dowcrc = 0;             // Reset the ow_dowcrc

  flag = ow_reset();

  if(flag || doneFlag) {  // If no parts return 0
    lastDiscrep = 0;     // Reset the search
    return 0;
  }

  ow_write_byte(0xF0, 0);      // Send SearchROM command

  do {
    x = 0;

    if(ow_read_bit() == 1) x = 2;

    delay_us(120);

    if(ow_read_bit() == 1) x |= 1;    // And it's complement

    if(x == 3)                    // There are no devices on the one wire bus
      break;
    else {
      if(x > 0)                  // All devices coupled have 0 or 1
        g = x >> 1;             // Bit write value for search

      // If this discrepancy is before the last discrepancy on a previous
      // ow_next then pick the same as last time.
      else {
        if(m < lastDiscrep)
          g = ((RomBytes[n] & k) > 0);
        // If equal to last pick 1
        else
          g = (m == lastDiscrep);  // If not then pick 0

        // If 0 was picked then record position with mask k
        if(g == 0)
          discrepMarker = m;
      }

      // Isolate bit in ROM[n] with mask k
      if(g == 1)
        RomBytes[n] |= k;
      else
        RomBytes[n] &= ~k;

      ow_write_bit(g);  // ROM search write

      m++;           // Increment bit counter m
      k = k << 1;    // and shift the bit mask k

      // If the mask is 0 then go to new ROM
      if(k == 0) {
        // Byte n and reset mask
        ow_crc(RomBytes[n]);      // Accumulate the crc
        n++;
        k++;
      }
    }
  } while(n < 8);   // Loop through until through all ROM bytes 0-7

  if(m < 65 || ow_dowcrc)  // If search was unsuccessful then
    lastDiscrep = 0;     // reset the last Discrepancy to zero

  else { // Search was successful, so set lastDiscrep, lastOne, nxt
    lastDiscrep = discrepMarker;
    doneFlag = (lastDiscrep == 0);
    nxt = 1; // Indicates search not yet complete, more parts remain
  }

  return nxt;
}

// ---------------------------------------------------------------------------
// Resets current state of a ROM search and calls ow_next to find the first device
// on the one wire bus.
// ---------------------------------------------------------------------------
uint8_t
ow_first(void) {
  lastDiscrep = 0;
  doneFlag = 0;

  return ow_next();    // Call ow_next and return it's return value;
}

// ---------------------------------------------------------------------------
void
ow_search(void) {
  uint8_t m;

  if(!ow_reset()) {
    if(ow_first()) {  // Begins when at least one part found
      numROMs = 0;

      do {
        numROMs++;

        for(m = 0; m < 8; m++) {
          FoundROM[numROMs][m] = RomBytes[m];
        }

        /*        putchar(254);
                putchar(128);
                printf("Device No.%u address ", numROMs);
                putchar(254);
                putchar(192);
                printf("%X%X%X%X%X%X%X%X\n\r",
                       FoundROM[numROMs][7], FoundROM[numROMs][6], FoundROM[numROMs][5],
                       FoundROM[numROMs][4], FoundROM[numROMs][3], FoundROM[numROMs][2],
                       FoundROM[numROMs][1], FoundROM[numROMs][0]);
        */
      } while(ow_next() && (numROMs < 10));  // Continues until no additional

      // devices found.
    }
  }

  //printf("\n");
}

// ---------------------------------------------------------------------------
// Sends Match ROM command to bus then device address
// ---------------------------------------------------------------------------
char
ow_access(uint8_t actNumROM) {
  uint8_t i;

  if(ow_reset())
    return 0;           // 0 if device present

  ow_write_byte(0x55, 0);                     // Match ROM

  for(i = 0; i < 8; i++)
    ow_write_byte(FoundROM[actNumROM][i], 0);  // Send ROM code

  return 1;
}
 

