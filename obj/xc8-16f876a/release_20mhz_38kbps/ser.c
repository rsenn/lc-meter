#include <htc.h>
#include <pic_chip_select.h>
#line 28 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 152 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 154 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 193 "/opt/microchip/xc8/v1.45/include/pic.h"
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
#include <xc.h>
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 48 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
extern uint8_t ser_tmp;

char ser_isrx(void);
unsigned char ser_rxsize(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);

uint8_t ser_rxat(unsigned char at);
unsigned char ser_size(void);
#line 68 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
#line 24 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/ser.c"
uint8_t ser_brg = ((uint16_t)((double)(20000000) / (16 * (double)(38400))) - 1);

uint8_t ser_rxfifo[(uint8_t)16];
volatile uint8_t ser_rxiptr, ser_rxoptr;
uint8_t ser_txfifo[(uint8_t)16];
volatile uint8_t ser_txiptr, ser_txoptr;
uint8_t ser_tmp;

char
ser_isrx(void) {
  if(RCSTAbits.OERR) {
    RCSTAbits.CREN = 0;
    RCSTAbits.CREN = 1;
    return 0;
  }
  return (ser_rxiptr != ser_rxoptr);
}

unsigned char
ser_rxsize(void) {
  unsigned char ret;
  (INTCON &= 0x7f);;
  ret = ser_rxiptr < ser_rxoptr ? (uint8_t)16 - ser_rxiptr + ser_rxoptr : ser_rxiptr - ser_rxoptr;
  (INTCON |= 0x80);;
  return ret;
}

uint8_t
ser_rxat(unsigned char at) {
  return ser_rxfifo[at & ((uint8_t)16 - 1)];
}

uint8_t
ser_getch(void) {
  uint8_t c;
  
while(ser_isrx() == 0) continue;
  
GIE = 0;
  c = ser_rxfifo[ser_rxoptr];
  ++ser_rxoptr;
  ser_rxoptr &= ((uint8_t)16 - 1);
  GIE = 1;
  return c;
}

void
ser_putch(char c) {
  while(((ser_txiptr + 1) & ((uint8_t)16 - 1)) == ser_txoptr) continue;
  GIE = 0;
  ser_txfifo[ser_txiptr] = c;
  ser_txiptr = (ser_txiptr + 1) & ((uint8_t)16 - 1);
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
  
TXSTAbits.BRGH = 1; 
  
  
  
  
  
  SPBRG = ser_brg; 
  
  
TXSTAbits.TX9 = 0; 
  RCSTAbits.RX9 = 0; 
  
TXSTAbits.SYNC = 0; 
  RCSTAbits.SPEN = 1;
  RCSTAbits.CREN = 1;
  TXIE = 0;
  
  TXSTAbits.TXEN = 1;
  PEIE = 1;
  
ser_rxiptr = ser_rxoptr = ser_txiptr = ser_txoptr = 0;
}
