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
#include <xc.h>
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 48 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
char ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 58 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
extern uint8_t rxfifo[(uint8_t)16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[(uint8_t)16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
#line 23 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/ser.c"
uint8_t ser_brg = ((uint16_t)((double)(20000000) / (16 * (double)(38400))) - 1);

uint8_t rxfifo[(uint8_t)16];
volatile uint8_t rxiptr, rxoptr;
 uint8_t txfifo[(uint8_t)16];
volatile uint8_t txiptr, txoptr;
uint8_t ser_tmp;

char
ser_isrx(void) {
  if(OERR) {
    CREN = 0;
    CREN = 1;
    return 0;
  }
  return (rxiptr != rxoptr);
}

uint8_t
ser_getch(void) {
  uint8_t c;
  
while(ser_isrx() == 0) continue;
  
GIE = 0;
  c = rxfifo[rxoptr];
  ++rxoptr;
  rxoptr &= ((uint8_t)16 - 1);
  GIE = 1;
  return c;
}

void
ser_putch(char c) {
  while(((txiptr + 1) & ((uint8_t)16 - 1)) == txoptr) continue;
  GIE = 0;
  txfifo[txiptr] = c;
  txiptr = (txiptr + 1) & ((uint8_t)16 - 1);
  TXIE = 1;
  GIE = 1;
}

void
ser_puts(const char* s) {
  while(*s) ser_putch(*s++);
}
void
ser_put(const char* s, unsigned n) {
  while(n--) ser_putch(*s++);
}

void
ser_puts2(uint8_t* s) {
  while(*s) ser_putch(*s++);
}

void
ser_puthex(uint8_t v) {
  uint8_t c;
  
c = v >> 4;
  if(c > 9) {
    ser_putch((char)('A' - 10 + c));
  } else {
    ser_putch((char)('0' + c));
  }
  
c = v & 0x0F;
  if(c > 9) {
    ser_putch((char)('A' - 10 + c));
  } else {
    ser_putch((char)('0' + c));
  }
}

void
ser_init(void) {
  TRISC &= ~0x40;
  
  TRISC |= 0x80;
  
BRGH = 1; 
  
  
  
  
  
  SPBRG = ser_brg; 
  
  
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
