#include <htc.h>
#include <pic_chip_select.h>
#line 27 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 149 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 184 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <xc.h>
#include <htc.h>
 
#include <stdbool.h>
#include <stdint.h>
#line 43 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad);
#line 4 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
void
format_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad )
{
  uint8_t buf[8 * sizeof(long)]; 
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';
  
if(pad < 0)
  {
    pad = -pad;
    padchar = '0';
  }
  
  #line 23 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
do
  {
    
    #line 28 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  }
  while(n > 0);
  
while(pad-- >= i)
    putchar(padchar);
  
for(; i > 0; i--)
    putchar((char)buf[(int16_t)i - 1]);
  
}
