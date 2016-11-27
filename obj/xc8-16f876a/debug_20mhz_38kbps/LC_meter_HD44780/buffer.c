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
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef uint8_t len_t;
#line 15 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef struct {
  char x[16];
  unsigned p:4; 
  unsigned n:4; 
  putchar_p op; 
} buffer_t;
#line 27 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
extern buffer_t buffer;

void buffer_init(putchar_p op);
char buffer_flush();
char buffer_putch(char ch);
char buffer_put(const char *x, len_t len);
char buffer_puts(const char *x);
#include <string.h>
#line 5 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/buffer.c"
void
buffer_init(putchar_p op) {
  buffer.p = 0;
  buffer.n = 0;
  buffer.op = op;
}

char
buffer_flush() {
  while(buffer.p < buffer.n) {
    buffer.op(buffer.x[buffer.p++]);
  }
  buffer.p=0,buffer.n=0,0;
  return 0;
}

char
buffer_putch(char ch) {
  if(16 - buffer.n <= 0) {
    return 0;
  }
  buffer.x[buffer.n++] = ch;
  return 1;
}

char
buffer_put(const char* buf, len_t len) {
  if(len > 16 - buffer.n) { 
    #line 42 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/buffer.c"
return -1;
  }
  
memcpy(buffer.x + buffer.n, buf, len);
  buffer.n += len;
  return 0;
}

char
buffer_puts(const char *x) {
  while(*x) {
    buffer_putch(*x);
    ++x;
  }
  return 0;
}
