#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "/opt/microchip/xc8/v1.45/include/pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);
#include <errata.h>
	
#line 42 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 135 "/opt/microchip/xc8/v1.45/include/pic18.h"
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
#line 155 "/opt/microchip/xc8/v1.45/include/pic18.h"
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
#line 163 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 165 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 167 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
#include <stdint.h>
#line 53 "/home/roman/Projects/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 5 "/home/roman/Projects/lc-meter/lib/format.h"
typedef void(*putch_t)(char);

void format_number(putch_t fn, uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn, uint32_t x);
void format_double(putch_t fn, double num);
void format_float(putch_t fn, float num);
#include <xc.h>
#include <float.h>
#line 12 "/home/roman/Projects/lc-meter/lib/buffer.h"
typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4; 
  unsigned n : 4; 
} buffer_t;
#line 26 "/home/roman/Projects/lc-meter/lib/buffer.h"
extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putc(char ch);
void buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
#include <math.h>
#include <float.h>
#line 12 "/home/roman/Projects/lc-meter/obj/../lib/format.c"
static void
format_putchar(char c) {
  return;
}
#line 20 "/home/roman/Projects/lc-meter/obj/../lib/format.c"
void
format_number(putch_t fn, uint16_t n, uint8_t base, int8_t pad ) {
  char buf[8 * sizeof(long)]; 
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 37 "/home/roman/Projects/lc-meter/obj/../lib/format.c"
do {
    
    #line 41 "/home/roman/Projects/lc-meter/obj/../lib/format.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  } while(n > 0);
  
while(pad-- > i) buffer_putch(padchar);
  
for(unsigned j = 0; j < i; j++)
    (*fn)(buf[j]);
    
}
#line 55 "/home/roman/Projects/lc-meter/obj/../lib/format.c"
void
format_xint32(putch_t fn, uint32_t x) {
  fn('0');
  fn('x');
  format_number(fn, (uint16_t)(x >> 16), 16, -4);
  format_number(fn, (uint16_t)(x & 0xffff), 16, -4);
}

void
format_float(putch_t fn, float num) {
  short m = (int)log10f(num);
  char digit;
  
  
while(num > 0 + FLT_EPSILON) {
    float weight = pow(10.0l, m);
    digit = (char)floor(num / weight);
    num -= (digit * weight);
    fn('0' + digit);
    if(m == 0)
      fn('.');
    m--;
  }
}
#line 82 "/home/roman/Projects/lc-meter/obj/../lib/format.c"
void
format_double(putch_t fn, double num) {
  short m = (short)log10f(num);
  short digit;
  
  
while(num > 0 + FLT_EPSILON) {
    double weight = pow(10.0l, m);
    digit = (short)floor(num / weight);
    num -= (digit * weight);
    fn((char)('0' + digit));
    if(m == 0)
      fn('.');
    m--;
  }
}
