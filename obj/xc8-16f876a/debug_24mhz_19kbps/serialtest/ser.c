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
 
#line 46 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(uint8_t byte);
void ser_puts(const char * s);
void ser_puts2(uint8_t * s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 55 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern uint8_t rxfifo[16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
 
#line 48 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
uint8_t ser_brg = ((24000000) / (16 * (19200))) - 1;
#line 51 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
uint8_t rxfifo[16];
volatile uint8_t rxiptr, rxoptr;
 uint8_t txfifo[16];
volatile uint8_t txiptr, txoptr;
uint8_t ser_tmp;

bit ser_isrx(void) {
  if(OERR) {
    CREN = 0;
    CREN = 1;
    return 0;
  }
  return (rxiptr != rxoptr);
}

uint8_t ser_getch(void) {
  uint8_t c;
  
while(ser_isrx() == 0)
    continue;
  
GIE = 0;
  c = rxfifo[rxoptr];
  ++rxoptr;
  rxoptr &= (16-1);
  GIE = 1;
  return c;
}

void ser_putch(uint8_t c) {
  while(((txiptr + 1) & (16-1)) == txoptr)
    continue;
  GIE = 0;
  txfifo[txiptr] = c;
  txiptr = (txiptr + 1) & (16-1);
  TXIE = 1;
  GIE = 1;
}

void ser_puts(const char * s) {
  while(*s)
    ser_putch(*s++);
}

void ser_puts2(uint8_t * s) {
  while(*s)
    ser_putch(*s++);
}

void ser_puthex(uint8_t v) {
  uint8_t c;
  
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
#line 119 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
void ser_init(void) {
  BRGH = 1; 
  #line 125 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
SPBRG = ser_brg; 
  #line 128 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/ser.c"
TX9 = 0; 
  RX9 = 0; 
  
SYNC = 0; 
  SPEN = 1;
  CREN = 1;
  TXIE = 0;
  RCIE = 1;
  TXEN = 1;
  PEIE = 1;
  
rxiptr = rxoptr = txiptr = txoptr = 0;
}
 
