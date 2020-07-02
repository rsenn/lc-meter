#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "/opt/microchip/xc8/v1.34/include/pic18.h"
__attribute__((__unsupported__("The flash_write routine is no longer supported. Please use the peripheral library functions: WriteBytesFlash, WriteBlockFlash or WriteWordFlash"))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
#include <errata.h>
	
#line 41 "/opt/microchip/xc8/v1.34/include/pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 160 "/opt/microchip/xc8/v1.34/include/pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 162 "/opt/microchip/xc8/v1.34/include/pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 164 "/opt/microchip/xc8/v1.34/include/pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
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
  if(RCSTAbits.OERR) {
    RCSTAbits.CREN = 0;
    RCSTAbits.CREN = 1;
    return 0;
  }
  return (rxiptr != rxoptr);
}

uint8_t
ser_getch(void) {
  uint8_t c;
  
while(ser_isrx() == 0) continue;
  
INTCONbits.GIE = 0;
  c = rxfifo[rxoptr];
  ++rxoptr;
  rxoptr &= ((uint8_t)16 - 1);
  INTCONbits.GIE = 1;
  return c;
}

void
ser_putch(char c) {
  while(((txiptr + 1) & ((uint8_t)16 - 1)) == txoptr) continue;
  INTCONbits.GIE = 0;
  txfifo[txiptr] = c;
  txiptr = (txiptr + 1) & ((uint8_t)16 - 1);
  PIE1bits.TXIE = 1;
  INTCONbits.GIE = 1;
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
  PIE1bits.TXIE = 0;
  
  TXSTAbits.TXEN = 1;
  INTCONbits.PEIE = 1;
  
rxiptr = rxoptr = txiptr = txoptr = 0;
}
