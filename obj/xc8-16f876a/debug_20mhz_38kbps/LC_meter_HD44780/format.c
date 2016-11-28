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
#line 63 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(putchar_p putchar, uint16_t n, uint8_t base, int8_t pad);
void
format_double(putchar_p putchar, double n);

void
format_xint32(putchar_p putchar, uint32_t x);
#include <math.h>
#line 5 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
void
format_number(putchar_p putchar, uint16_t n, uint8_t base, int8_t pad )
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
  
  #line 24 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
do
  {
    
    #line 29 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  }
  while(n > 0);
  
while(pad-- > i)
    putchar(padchar);
  
for(; i > 0; i--)
    putchar((char)buf[(int16_t)i - 1]);
  
}

void
format_xint32(putchar_p putchar, uint32_t x)
{
  putchar('0');
  putchar('x');
  format_number(putchar, x >> 16, 16, -4);
  format_number(putchar, x & 0xffff, 16, -4);
}
#line 54 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
void
format_double(putchar_p putchar, double n) {
  int exponent = 0;
  double mantissa = frexp(n, &exponent);
  
if(mantissa >= 1) putchar('1');
  putchar('.');
  format_number(putchar, mantissa*10000, 10, 4);
  putchar('E');
  format_number(putchar, exponent, 10, -2);
}
