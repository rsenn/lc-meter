#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
__attribute__((__unsupported__("The flash_write routine is no longer supported. Please use the peripheral library functions: WriteBytesFlash, WriteBlockFlash or WriteWordFlash"))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
#include <errata.h>
	
#line 41 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 160 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 162 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 164 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
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
