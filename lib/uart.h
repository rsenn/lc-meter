#ifndef PICLIB_UART_H
#define PICLIB_UART_H

#include "oscillator.h"
#include "device.h"
#include "typedef.h"

#ifndef UART_BAUD
#ifdef BAUD_RATE
#define UART_BAUD BAUD_RATE
#else
#define UART_BAUD 38400 /** Baudrate */
#endif
//#define UART_BAUD 19200      /** Baudrate */
//#define UART_BAUD 31250      /** Baudrate */
#endif


#define HIGH_SPEED 0

#if OSC_4 == 5000000
#if UART_BAUD == 9600
#define UART_PS 0b001 // prescaler 1:4
#define UART_BRG 0x7e // TMR1 (5Mhz/4/31250 baud) = 40
#elif UART_BAUD == 19200
#define UART_PS 0b001 // prescaler 1:4
#define UART_BRG 0x3f // TMR1 (5Mhz/4/31250 baud) = 40
#elif UART_BAUD == 31250
#define UART_PS 0b001 // prescaler 1:4
#define UART_BRG 0x28 // TMR1 (5Mhz/4/31250 baud) = 40
#elif UART_BAUD == 38400
#define UART_PS 0b000 // prescaler 1:2
#define UART_BRG 0x41 // TMR1 (5Mhz/2/38400 baud) = 66
#elif UART_BAUD == 57600
#define UART_PS 0b000 // prescaler 1:2
#define UART_BRG 0x28 // TMR1 (5Mhz/2/57600 baud) = 87
#endif
#elif OSC_4 == 6000000
#if UART_BAUD == 9600
#define UART_PS 0b001 // prescaler 1:4
#define UART_BRG 0x66 // TMR1 (5Mhz/4/31250 baud) = 40
#elif UART_BAUD == 19200
#define UART_PS 0b001 // prescaler 1:4
#define UART_BRG 0x33 // TMR1 (5Mhz/4/31250 baud) = 40
#elif UART_BAUD == 31250
#define UART_PS 0b001 // prescaler 1:4
#define UART_BRG 0x20 // TMR1 (5Mhz/4/31250 baud) = 40
#elif UART_BAUD == 38400
#define UART_PS 0b000 // prescaler 1:2
#define UART_BRG 0x34 // TMR1 (5Mhz/2/38400 baud) = 66
#elif UART_BAUD == 57600
#define UART_PS 0b000 // prescaler 1:2
#define UART_BRG 0x21 // TMR1 (5Mhz/2/57600 baud) = 87
#endif
#endif

#define UART_BRG_FN(baud) ((OSC_4 / (1 << (UART_PS + 1)) / (baud)) + 1)

#define NINE 0 /** Use 9bit communication? 0=8bit */

#if 0 // OSC_4 == 5000000
#if UART_BAUD == 38400
#define UART_BRG 31
#define HIGH_SPEED 1 // (5Mhz/2/38400 baud) = 66
#endif
#endif

#ifndef HIGH_SPEED
#define HIGH_SPEED 1 /** Set for high speed communicatin (see BRGH bit) */
#endif

#ifdef __12f1840
#define TX_PIN OUTA0
#define TX_TRIS TRISA0
#define RX_PIN OUTA1
#define RX_TRIS TRISA1
#elif defined(__16f628a)
#define TX_PIN OUTB2
#define TX_TRIS TRISB2
#define RX_PIN OUTB1
#define RX_TRIS TRISB1
#else
#define TX_SET(b)                                                                                                      \
  if(b)                                                                                                                \
    OUTC |= 0b01000000;                                                                                                \
  else                                                                                                                 \
    OUTC &= 0b01000000;
#define TX_TRIS() TRISC &= ~0b01000000
#define RX_PIN OUTC7
#define RX_TRIS() TRISC |= 0b10000000
#endif

extern const uint8_t uart_brg;

void uart_putch(uint8_t byte);

int uart_getch(void);
bool uart_poll(uint8_t bauds);

/**
 * Initialize UART module
 */
void uart_init(void);

/**
 * ISR for UART. Called from each interrupt
 *
 * @return 1 if there was UART receive interrupt, 0 otherwise
 */
uint8_t uart_isr(void);

/**
 * Enable UART (used for power managed mode)
 */
void uart_enable(void);

/**
 * Disable UART (used for power managed mode)
 */
void uart_disable(void);

void uart_puts(const char* s);
void uart_puts2(uint8_t* s);

#endif /* PICLIB_UART_H */
