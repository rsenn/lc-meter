#include "delay.h"
#include "uart.h"
#include "softser.h"
#include "typedef.h"


#if USE_UART

#ifndef UART_BRG
# if HIGH_SPEED == 1
#  define UART_BRG ((uint16_t)((double)(_XTAL_FREQ) / (16 * (double)(UART_BAUD))) - 1)
# else
#  define UART_BRG ((uint16_t)((double)(_XTAL_FREQ) / (64 * (double)(UART_BAUD))) - 1)
# endif
#endif
#define UART_TIMEOUT UART_BAUD

const uint8_t uart_brg = UART_BRG;

/**
 * Re-target POSIX function uart_putch
 */
void
uart_putch(uint8_t byte) {
  /* output one byte */
  while(!TXIF) {
    /* set when register is empty */
    continue;
  }
  TXREG = (uint8_t)byte;
}

int
uart_getch(void) {

	if(uart_poll(UART_TIMEOUT)) {
      uint8_t ch;
	  ch = RCREG;
	  RCIF = 0;
	  return (int)ch;
  }
 return -1;
}


// returns 1 when start bit received or 0 when timeout
//---------------------------------------------------------
BOOL
uart_poll(uint8_t bauds) {

    // TMR0 -= SOFTSER_BRG;            // load corrected baud value


    TMR0 = (256 - SOFTSER_BRG_FN(bauds));
    while( TMR0&(1<<7) ) {
      if(RCIF)
        return 1;
    }

  return 0;
}

/**
 * ISR for UART receive
 *
 * @return received character or 0 if it's not UART interrupt
 */
uint8_t
uart_isr(void) {
  if(RCIF) {
    RCIF = 0;
    return RCREG;
  }
  return 0;
}

void
uart_enable(void) {
  RX_TRIS = 1;
  TX_TRIS = TX_PIN = 0;
  TXEN = 1;
  SPEN = 1;
  RCIE = 0;
}

void
uart_disable(void) {
  TXEN = 0;
  SPEN = 0;
  RCIE = 0;
  RX_TRIS = 1;
  TX_PIN = TX_TRIS = 0;
}

void
uart_init(void) {
  /* Initilize baudrate generator and pins */

  RX_TRIS = 1;
  TX_TRIS = 0;
  TX_PIN = 0;
  SPBRG = UART_BRG; //UART_BRG;

  CREN = 1;
  RX9D = (NINE == 1);

  BRGH = (HIGH_SPEED == 1);
  TX9 = (NINE == 1);

  uart_enable();
}


#endif // USE_UART

void
uart_puts(const char * s) {
  while(*s)
    uart_putch(*s++);
}

void
uart_puts2(uint8_t * s) {
  while(*s)
    uart_putch(*s++);
}
 

