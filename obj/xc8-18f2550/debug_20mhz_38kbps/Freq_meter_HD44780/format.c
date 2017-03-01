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
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 68 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(putchar_p putchar, unsigned short int n, unsigned char base, signed char pad);
void
format_double(putchar_p putchar, double n);

void
format_xint32(putchar_p putchar, unsigned long int x);
#include <math.h>
#include <float.h>
#line 6 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
void
format_number(putchar_p putchar, unsigned short int n, unsigned char base, signed char pad )
{
  unsigned char buf[8 * sizeof(long)]; 
  unsigned char di;
  signed char i = 0;
  char padchar = ' ';
  
if(pad < 0)
  {
    pad = -pad;
    padchar = '0';
  }
  
  #line 25 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
do
  {
    
    #line 30 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
di = n % base;
    buf[i++] = (di < 10 ? (unsigned char)'0' + di : (unsigned char)'A' + di - 10);
    
n /= base;
  }
  while(n > 0);
  
while(pad-- > i)
    putchar(padchar);
  
for(; i > 0; i--)
    putchar((char)buf[(signed short int)i - 1]);
  
}

void
format_xint32(putchar_p putchar, unsigned long int x)
{
  putchar('0');
  putchar('x');
  format_number(putchar, x >> 16, 16, -4);
  format_number(putchar, x & 0xffff, 16, -4);
}
#line 55 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
void
format_double(putchar_p putchar, double num) {
  int m = log10(num);
  int digit;
  #line 61 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/format.c"
while (num > 0 + DBL_EPSILON) {
    double weight = pow(10.0l, m);
    digit = floor(num / weight);
    num -= (digit * weight);
    putchar('0' + digit);
    if (m == 0)
      putchar('.');
    m--;
  }
}
