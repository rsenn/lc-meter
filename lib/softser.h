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

#ifndef PICLIB_SOFTSER_H_
#define PICLIB_SOFTSER_H_

#include "typedef.h"
#include "oscillator.h"

// a bit banged serial function, sends INVERTED serial data
// to PC serial port using just 2 resistors.
#define SOFTSER_INVERT 1

#if NO_PORTB
#define SOFTSER_IN_PIN  RA0          // pin for serial out
#define SOFTSER_IN_TRIS TRISA0
#define SOFTSER_OUT_PIN   RA1          // pin for serial input
#define SOFTSER_OUT_TRIS  TRISA1
#else
#define SOFTSER_IN_PIN  RB0          // pin for serial out
#define SOFTSER_IN_TRIS TRISB0
#define SOFTSER_OUT_PIN   RB1          // pin for serial input
#define SOFTSER_OUT_TRIS  TRISB1
#endif

#ifndef SOFTSER_BAUD
#define SOFTSER_BAUD UART_BAUD //31250
#endif

//#define SOFTSER_BRG 0x33            // TMR1 (1Mhz/2/19200 baud) = 52
// tested; works from 49 to 53, using 51



/*#define SOFTSER_PS 0b001             // prescaler 1:4
//#define SOFTSER_BRG 0x41            // TMR1 (5Mhz/4/19200 baud) = 66
#define SOFTSER_BRG 0x1f              // TMR1 (5Mhz/4/38400 baud) = 33
*/
#if OSC_4 == 5000000
# if SOFTSER_BAUD == 9600
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 0x7e            // TMR1 (5Mhz/4/31250 baud) = 40
# elif SOFTSER_BAUD == 19200
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 0x3f            // TMR1 (5Mhz/4/31250 baud) = 40
# elif SOFTSER_BAUD == 31250
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 0x28            // TMR1 (5Mhz/4/31250 baud) = 40
# elif SOFTSER_BAUD == 38400
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 0x41            // TMR1 (5Mhz/2/38400 baud) = 66
# elif SOFTSER_BAUD == 57600
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 0x28                // TMR1 (5Mhz/2/57600 baud) = 87
# endif
#elif OSC_4 == 6000000
# if SOFTSER_BAUD == 9600
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 0x66            // TMR1 (5Mhz/4/31250 baud) = 40
# elif SOFTSER_BAUD == 19200
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 0x33            // TMR1 (5Mhz/4/31250 baud) = 40
# elif SOFTSER_BAUD == 31250
#  define SOFTSER_PS 0b001             // prescaler 1:4
#  define SOFTSER_BRG 0x20            // TMR1 (5Mhz/4/31250 baud) = 40
# elif SOFTSER_BAUD == 38400
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 0x34            // TMR1 (5Mhz/2/38400 baud) = 66
# elif SOFTSER_BAUD == 57600
#  define SOFTSER_PS 0b000                 // prescaler 1:2
#  define SOFTSER_BRG 0x21                // TMR1 (5Mhz/2/57600 baud) = 87
# endif
#endif

//#define SOFTSER_BRG 0x07             // TMR1 (1Mhz/4/31250 baud) =  8

/*#define SOFTSER_PS 0b010           // prescaler 1:8
//#define SOFTSER_BRG 0x41            // TMR1 (5Mhz/8/ 9600 baud) = 66
#define SOFTSER_BRG 0x20              // TMR1 (5Mhz/8/19200 baud) = 33
//#define SOFTSER_BRG 0x13            // TMR1 (5Mhz/8/31250 baud) = 20
*/

/*#define SOFTSER_PS 0b011           // prescaler 1:16
#define SOFTSER_BRG 0x41              // TMR1 (5Mhz/16/4800 baud) = 66
//#define SOFTSER_BRG 0x20            // TMR1 (5Mhz/16/9600 baud) = 33
*/

#if SOFTSER_TIMER == 0
#define SOFTSER_TMR TMR0
#elif SOFTSER_TIMER == 1
#define SOFTSER_TMR TMR1L
#elif SOFTSER_TIMER == 2
#define SOFTSER_TMR TMR2
#endif


#define SOFTSER_BRG_FN(baud) ((OSC_4/(1<<(SOFTSER_PS+1))/(baud)) + 1)


#if USE_SOFTSER && !defined(SOFTSER_BRG)
#define SOFTSER_PS 0
#define SOFTSER_BRG SOFTSER_BRG_FN(SOFTSER_BAUD)
#endif

#ifndef SOFTSER_TMR
#define SOFTSER_TMR TMR1L
#endif


//#define SOFTSER_BRG ((OSC_4/(1<<(SOFTSER_PS+1))/SOFTSER_BAUD) - 1)

#define SOFTSER_OUTB(b) do { SOFTSER_OUT_PIN = b^(SOFTSER_INVERT)^1; } while(0)

#define SOFTSER_INB() ((SOFTSER_IN_PIN)^(SOFTSER_INVERT)^1)

BOOL softser_poll(uint8_t ticks);
void softser_recv(void);

uint8_t softser_getch(void);
void softser_putch(uint8_t byte);
void softser_puts(const char * s);
void softser_puts2(uint8_t * s);
void softser_puthex(uint8_t v);
void softser_init(void);

extern uint8_t softser_rdata;

#endif
 

