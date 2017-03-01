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
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef unsigned char len_t;
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
  
}
  buffer.p=0,buffer.n=0,0;
  return 0;
}

char
buffer_putch(char ch) {
  if(16 - buffer.n <= 0) {
    return 0;
  }
  buffer.x[buffer.n] = ch;
  buffer.n++;
  return 1;
}

char
buffer_put(const char* buf, len_t len) {
  if(len > 16 - buffer.n) { 
    #line 43 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/buffer.c"
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
