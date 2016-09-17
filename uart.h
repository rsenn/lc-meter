#ifndef UART_H
#define UART_H

#include "device.h"
#include "types.h"

#ifndef UART_BAUD
#define UART_BAUD 38400      /** Baudrate */
//#define UART_BAUD 19200      /** Baudrate */
//#define UART_BAUD 31250      /** Baudrate */
#endif

#define NINE 0          /** Use 9bit communication? 0=8bit */

#if OSC_4 == 5000000
# if UART_BAUD == 38400
#  define UART_BRG  31
#  define HIGH_SPEED 1            // (5Mhz/2/38400 baud) = 66
# endif
#endif

#ifndef HIGH_SPEED
#define HIGH_SPEED 1    /** Set for high speed communicatin (see BRGH bit) */
#endif

#ifdef __16f628a
#define TX_PIN RB2
#define TX_TRIS TRISB2
#define RX_PIN RB1
#define RX_TRIS TRISB1
#else
#define TX_PIN RC6
#define TX_TRIS TRISC6
#define RX_PIN RC7
#define RX_TRIS TRISC7
#endif


#ifndef UART_BRG_FN
# if HIGH_SPEED == 1
#  define UART_BRG_FN(baud) ((uint16)((double)(_XTAL_FREQ) / (16 * (double)(baud))) - 1)
# else
#  define UART_BRG_FN(baud) ((uint16)((double)(_XTAL_FREQ) / (64 * (double)(baud))) - 1)
# endif
#endif

//#define UART_BRG_FN(baud) ( (OSC_4/(16*(baud))) - 1 )

void uart_putch(unsigned char byte);
void uart_puts(const unsigned char * s);
void uart_puts2(unsigned char *s);

int uart_getch(uint16 timeout);
bool uart_poll(unsigned char bauds);
/**
 * Initialize UART module
 */
void uart_init(void);

/**
 * ISR for UART. Called from each interrupt
 *
 * @return 1 if there was UART receive interrupt, 0 otherwise
 */
uint8 uart_isr(void);

/**
 * Enable UART (used for power managed mode)
 */
void uart_enable(void);

/**
 * Disable UART (used for power managed mode)
 */
void uart_disable(void);

#endif /* UART_H */
