#include <htc.h>
#include <pic_chip_select.h>
#line 28 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 193 "/opt/microchip/xc8/v1.45/include/pic.h"
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
#include <stdint.h>
#line 53 "/home/roman/Projects/lc-meter/lib/typedef.h"
typedef char BOOL;
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
#include <string.h>
#line 4 "/home/roman/Projects/lc-meter/obj/../lib/buffer.c"
buffer_t buffer;
#line 9 "/home/roman/Projects/lc-meter/obj/../lib/buffer.c"
void
buffer_init(void) {
  buffer.p = 0;
  buffer.n = 0;
}
#line 20 "/home/roman/Projects/lc-meter/obj/../lib/buffer.c"
char
buffer_flush() {
  
  #line 25 "/home/roman/Projects/lc-meter/obj/../lib/buffer.c"
buffer.p = 0, buffer.n = 0, 0;
  return 0;
}

char
buffer_putc(char ch) {
  if(16 - buffer.n <= 0)
    return 0;
  buffer.x[buffer.n] = ch;
  buffer.n++;
  return 1;
}

void
buffer_putch(char ch) {
  buffer_putc(ch);
}

char
buffer_put(const char* buf, len_t len) {
  len_t i;
  if(len > 16 - buffer.n) 
    return -1;
  for(i = 0; i < len; i++) buffer.x[buffer.n + i] = buf[i];
  buffer.n += len;
  return 0;
}
#line 60 "/home/roman/Projects/lc-meter/obj/../lib/buffer.c"
char
buffer_puts(const char* x) {
  while(*x) {
    buffer_putch(*x);
    ++x;
  }
  return 0;
}
