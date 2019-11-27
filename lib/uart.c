#include "delay.h"
#include "uart.h"
#include "typedef.h"

#if USE_UART

#ifndef UART_BRG
#if HIGH_SPEED == 1
#define UART_BRG ((uint16_t)((double)(_XTAL_FREQ) / (16 * (double)(UART_BAUD))) - 1)
#else
#define UART_BRG ((uint16_t)((double)(_XTAL_FREQ) / (64 * (double)(UART_BAUD))) - 1)
#endif
#endif
#define UART_TIMEOUT UART_BAUD

const uint8_t uart_brg = UART_BRG;

/**
 * Re-target POSIX function uart_putch
 */
void
uart_putch(uint8_t byte) {
  /* output one byte */
  while(!(PIR1 & 0b00010000)) {
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
    PIR1 &= ~0b00100000; //  RCIF = 0;
    return (int)ch;
  }
  return -1;
}

// returns 1 when start bit received or 0 when timeout
//---------------------------------------------------------
bool
uart_poll(uint8_t bauds) {
  // TMR0 -= UART_BRG;            // load corrected baud value
  TMR0 = (256 - UART_BRG_FN(bauds));
  while(TMR0 & (1 << 7)) {
    if((PIR1 & 0b00100000))
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
    if((PIR1 & 0b00100000)) {
    PIR1 &= ~0b00100000; //  RCIF = 0;
    return RCREG;
  }
  return 0;
}

void
uart_enable(void) {
  RX_TRIS();
  TX_TRIS();
  TX_SET(0);
  TXSTA |= 0b00100000; //  TXEN = 1;
  RCSTA |= 0x80; // SPEN = 1;
  PIE1 &= ~0b100000; //RCIE = 0;
}

void
uart_disable(void) {
  TXSTA &= ~0b00100000; //  TXEN = 0;
  RCSTA &= ~0b10000000; // SPEN = 0;
  PIE1 &= ~0b100000; //RCIE = 0;
  RX_TRIS();
  TX_TRIS();
  TX_SET(0);
}

void
uart_init(void) {
  /* Initilize baudrate generator and pins */
  RX_TRIS();
  TX_TRIS();
  TX_SET(0);
  SPBRG = UART_BRG; // UART_BRG;
  RCSTA |= 0x90 // CREN = 1;
           | /*RX9D =*/(NINE == 1 ? 0b1 : 0);
  TXSTA |= /*
  BRGH =  */ (HIGH_SPEED == 1)
               ? 0b100
               : 0b000;
  TXSTA |= (NINE == 1) ? 0b01000000 : 0;
  uart_enable();
}

void
uart_puts(const char* s) {
  while(*s) uart_putch(*s++);
}

void
uart_puts2(uint8_t* s) {
  while(*s) uart_putch(*s++);
}

#endif // USE_UART
