/*
 * softser.h
 *
 * Interrupt Driven Serial Routines with Circular FIFO
 * Copyright (c) 2006, Regulus Berdin
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT.  IN NO EVENT SHALL REGULUS BERDIN BE LIABLE FOR
 * ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
*/

#ifndef _SOFTSER_H_
#define _SOFTSER_H_

#include "types.h"
#include "oscillator.h"

// a bit banged serial function, sends INVERTED serial data
// to PC serial port using just 2 resistors.
#define SOFTSER_INVERT 1


#define SOFTSER_IN_PIN   RC3          // pin for serial input
#define SOFTSER_IN_TRIS  TRISC3

#define SOFTSER_OUT_PIN  RC4          // pin for serial out
#define SOFTSER_OUT_TRIS TRISC4

//#define SOFTSER_BAUD 19200


//#define SOFTSER_BRG 51            // TMR1 (1Mhz/2/19200 baud) = 52
// tested; works from 49 to 53, using 51



/*#define SOFTSER_PS 0b001             // prescaler 1:4
//#define SOFTSER_BRG 65            // TMR1 (5Mhz/4/19200 baud) = 66
#define SOFTSER_BRG 31              // TMR1 (5Mhz/4/38400 baud) = 33
*/
#if OSC_4 == 5000000
# if UART_BAUD == 9600
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 126            // TMR1 (5Mhz/4/31250 baud) = 40
# elif UART_BAUD == 19200
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 63            // TMR1 (5Mhz/4/31250 baud) = 40
# elif UART_BAUD == 31250
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 40            // TMR1 (5Mhz/4/31250 baud) = 40
# elif UART_BAUD == 38400
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 63            // TMR1 (5Mhz/2/38400 baud) = 66
# elif UART_BAUD == 57600
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 40	              // TMR1 (5Mhz/2/57600 baud) = 87
# endif
#elif OSC_4 == 6000000
# if UART_BAUD == 9600
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 102            // TMR1 (5Mhz/4/31250 baud) = 40
# elif UART_BAUD == 19200
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 51            // TMR1 (5Mhz/4/31250 baud) = 40
# elif UART_BAUD == 31250
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 32            // TMR1 (5Mhz/4/31250 baud) = 40
# elif UART_BAUD == 38400
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 52            // TMR1 (5Mhz/2/38400 baud) = 66
# elif UART_BAUD == 57600
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 33	              // TMR1 (5Mhz/2/57600 baud) = 87
# endif
#endif

//#define SOFTSER_BRG 7             // TMR1 (1Mhz/4/31250 baud) =  8

/*#define SOFTSER_PS 0b010           // prescaler 1:8
//#define SOFTSER_BRG 65            // TMR1 (5Mhz/8/ 9600 baud) = 66
#define SOFTSER_BRG 32              // TMR1 (5Mhz/8/19200 baud) = 33
//#define SOFTSER_BRG 19            // TMR1 (5Mhz/8/31250 baud) = 20
*/

/*#define SOFTSER_PS 0b011           // prescaler 1:16
#define SOFTSER_BRG 65              // TMR1 (5Mhz/16/4800 baud) = 66
//#define SOFTSER_BRG 32            // TMR1 (5Mhz/16/9600 baud) = 33
*/



#define SOFTSER_BRG_FN(baud) ((OSC_4/(1<<(SOFTSER_PS+1))/(baud)) - 1)
//#define SOFTSER_BRG ((OSC_4/(1<<(SOFTSER_PS+1))/SOFTSER_BAUD) - 1)

#define SOFTSER_OUTB(b) do { SOFTSER_OUT_PIN = b^(SOFTSER_INVERT)^1; } while(0)

#define SOFTSER_INB() ((SOFTSER_IN_PIN)^(SOFTSER_INVERT)^1)

bit softser_poll(unsigned char ticks);
void softser_recv(void);

unsigned char softser_getch(void);
void softser_putch(unsigned char byte);
void softser_puts(const char * s);
void softser_puts2(unsigned char * s);
void softser_puthex(unsigned char v);
void softser_init(void);

extern unsigned char softser_rdata;

#endif
