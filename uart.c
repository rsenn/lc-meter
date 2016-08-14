#include "delay.h"
#include "uart.h"
#include "types.h"

#ifndef UART_BRG
# if HIGH_SPEED == 1
#  define UART_BRG ((uint16)((double)(_XTAL_FREQ) / (16 * (double)(UART_BAUD))) - 1)
# else
#  define UART_BRG ((uint16)((double)(_XTAL_FREQ) / (64 * (double)(UART_BAUD))) - 1)
# endif
#endif

/**
 * Re-target POSIX function uart_putch
 */
void
uart_putch(unsigned char byte) {
  /* output one byte */
  while(!TXIF) {
    /* set when register is empty */
    continue;
  }
  TXREG = (unsigned char)byte;
}

int
uart_getch(uint16 timeout) {
    
	if(uart_poll(timeout)) {
      uint8 ch;
	  ch = RCREG;
	  RCIF = 0;
	  return (int)ch;
  } 
 return -1;
} 


// returns 1 when start bit received or 0 when timeout
//---------------------------------------------------------
bit
uart_poll(unsigned char bauds) {

    // TMR0 -= UART_BRG;            // load corrected baud value


    TMR0 = (256 - UART_BRG_FN(UART_BAUD));
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
unsigned char
uart_isr(void) {
  if(RCIF) {
    RCIF = 0;
    return RCREG;
  }
  return 0;
}

void
uart_enable(void) {
  TXEN = 1;
  SPEN = 1;
  RCIE = 0;
  RX_TRIS = 1;
  TX_TRIS = 1;
}

void
uart_disable(void) {
  TXEN = 0;
  SPEN = 0;
  RCIE = 0;
  RX_TRIS = 0;
  TX_TRIS = 0;
  TX_PIN = 0;
  RX_PIN = 0;
}

void
uart_init(void) {
  /* Initilize baudrate generator and pins */

  RX_TRIS = 1;
  TX_TRIS = 1;
  SPBRG = UART_BRG; //UART_BRG;

  CREN = 1;
  RX9D = (NINE == 1);

  BRGH = (HIGH_SPEED == 1);
  TX9 = (NINE == 1);

  uart_enable();
}
void uart_puts(const unsigned char * s) {
  while(*s)
    uart_putch(*s++);
}

void uart_puts2(unsigned char * s) {
  while(*s)
    uart_putch(*s++);
}
