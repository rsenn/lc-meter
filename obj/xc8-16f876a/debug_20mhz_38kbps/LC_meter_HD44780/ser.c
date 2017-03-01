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
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 68 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 64 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
unsigned char ser_getch(void);
char ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char * s);
void ser_puts2(unsigned char * s);
void ser_puthex(unsigned char v);
void ser_init(void);
#line 74 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern unsigned char rxfifo[16];
extern volatile unsigned char rxiptr, rxoptr;
extern unsigned char txfifo[16];
extern volatile unsigned char txiptr, txoptr;
extern unsigned char ser_tmp;
extern unsigned char ser_brg;
 
#line 48 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
unsigned char ser_brg = ((20000000) / (16 * (38400))) - 1;
#line 51 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
unsigned char rxfifo[16];
volatile unsigned char rxiptr, rxoptr;
 unsigned char txfifo[16];
volatile unsigned char txiptr, txoptr;
unsigned char ser_tmp;

bit
ser_isrx(void) {
  if(OERR) {
    CREN = 0;
    CREN = 1;
    return 0;
  }
  return (rxiptr != rxoptr);
}

unsigned char
ser_getch(void) {
  unsigned char c;
  
while(ser_isrx() == 0)
    continue;
  
GIE = 0;
  c = rxfifo[rxoptr];
  ++rxoptr;
  rxoptr &= (16-1);
  GIE = 1;
  return c;
}

char
ser_putch(char c) {
  while(((txiptr + 1) & (16-1)) == txoptr)
    continue;
  GIE = 0;
  txfifo[txiptr] = c;
  txiptr = (txiptr + 1) & (16-1);
  TXIE = 1;
  GIE = 1;
  return 1;
}

void
ser_puts(const char * s) {
  while(*s)
    ser_putch(*s++);
}
void
ser_put(const char* s, unsigned n) {
  while(n--)
    ser_putch(*s++);
}

void
ser_puts2(unsigned char * s) {
  while(*s)
    ser_putch(*s++);
}

void
ser_puthex(unsigned char v) {
  unsigned char c;
  
c = v >> 4;
  if(c > 9) {
    ser_putch('A' - 10 + c);
  } else {
    ser_putch('0' + c);
  }
  
c = v & 0x0F;
  if(c > 9) {
    ser_putch('A' - 10 + c);
  } else {
    ser_putch('0' + c);
  }
}
#line 131 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
void
ser_init(void) {
#line 135 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
TRISC6 = 1;
RC7 = 1;
  
BRGH = 1; 
  #line 143 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
SPBRG = ser_brg; 
  #line 146 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
TX9 = 0; 
  RX9 = 0; 
  
SYNC = 0; 
  SPEN = 1;
  CREN = 1;
  TXIE = 0;
  
TXEN = 1;
  PEIE = 1;
  
rxiptr = rxoptr = txiptr = txoptr = 0;
}
 
