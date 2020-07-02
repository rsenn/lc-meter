#include <htc.h>
#include <pic_chip_select.h>
#line 27 "/opt/microchip/xc8/v1.34/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 149 "/opt/microchip/xc8/v1.34/include/pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 184 "/opt/microchip/xc8/v1.34/include/pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 6 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
void format_number(uint16_t n, uint8_t base, int8_t pad);
void format_xint32(uint32_t x);
void format_double(double num);
#line 12 "/home/roman/Dokumente/Sources/lc-meter/lib/buffer.h"
typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4; 
  unsigned n : 4; 
} buffer_t;
#line 26 "/home/roman/Dokumente/Sources/lc-meter/lib/buffer.h"
extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
#include <math.h>
#include <float.h>
#line 10 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/format.c"
static void
format_putchar(char c) {
  return;
}
#line 18 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/format.c"
void
format_number(uint16_t n, uint8_t base, int8_t pad ) {
  char buf[8 * sizeof(long)]; 
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 35 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/format.c"
do {
    
    #line 39 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/format.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  } while(n > 0);
  
while(pad-- > i) buffer_putch(padchar);
  
for(; i > 0; i--) {
    buffer_putch((char)buf[(int16_t)i - 1]);
    
  }
}
#line 54 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/format.c"
void
format_xint32( uint32_t x) {
  buffer_putch('0');
  buffer_putch('x');
  format_number((uint16_t)(x >> 16), 16, -4);
  format_number((uint16_t)(x & 0xffff), 16, -4);
}

void
format_float( float num) {
  short m = (int)log10(num);
  char digit;
  
  
while(num > 0 + FLT_EPSILON) {
    float weight = pow(10.0l, m);
    digit = (char)floor(num / weight);
    num -= (digit * weight);
    buffer_putch('0' + digit);
    if(m == 0)
      buffer_putch('.');
    m--;
  }
}
#line 80 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/format.c"
void
format_double(double num) {
  short m = (short)log10(num);
  short digit;
  
  
while(num > 0 + FLT_EPSILON) {
    double weight = pow(10.0l, m);
    digit = (short)floor(num / weight);
    num -= (digit * weight);
    buffer_putch((char)('0' + digit));
    if(m == 0)
      buffer_putch('.');
    m--;
  }
}
