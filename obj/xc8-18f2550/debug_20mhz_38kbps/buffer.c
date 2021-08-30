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
