/*
 * Distributed by www.microchipC.com - one of the web's largest
 * repositories of C source code for Microchip PIC micros.
 *
 * softser.c
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
 *
*/

#define _SOFTSER_C_
#include "softser.h"
#include "const.h"
#include "timer.h"

#ifdef USE_SOFTSER

// this function receives a single serial byte from the PC
// the function main must first detect the start bit, then
// call receive_serial_byte()

uint8_t softser_rdata;            // holds the serial byte that was received


void
softser_init(void) {
  //T0CS = 0;
  //PSA = 0;
//  PS0 = 0; PS1 = 0; PS2 = 0; // prescaler 1:2
//  PS0 = 0;  PS1 = 1; PS2 = 0; // prescaler 1:4
  //T0PS = SOFTSER_PS;

#if SOFTSER_TIMER == 0
  timer0_init(SOFTSER_PS);
#elif SOFTSER_TIMER == 1
  timer1_init(SOFTSER_PS);
#elif SOFTSER_TIMER == 2
  timer2_init(SOFTSER_PS);
#else
  #warning No timer setup for soft serial!
#endif  

  SOFTSER_IN_TRIS = INPUT;
  SOFTSER_OUT_TRIS = OUTPUT;
  SOFTSER_OUTB(LOW);
}




// returns 1 when start bit received or 0 when timeout
//---------------------------------------------------------
BOOL
softser_poll(uint8_t bauds) {
  int i = bauds;

  while(i--) {
    // SOFTSER_TMR -= SOFTSER_BRG;            // load corrected baud value


    SOFTSER_TMR = (256 - SOFTSER_BRG);
    while( SOFTSER_TMR&(1<<7) ) {
      if(SOFTSER_INB())
        return 1;
    }
  }
  return 0;
}

//---------------------------------------------------------
void
softser_recv(void) {
  // this manually receives a serial byte in any PIC pin.
  // NOTE! serial is inverted to connect direct to PC serial port.
  // baud timing is done by using SOFTSER_TMR and removing
  // timer error after each baud. Starts with 1.5 baud delay,
  // so each bit is sampled in middle of baud.
  uint8_t i;

  i = 8;                          // 8 data bits to receive

  SOFTSER_TMR = 256 - SOFTSER_BRG - ((SOFTSER_BRG>>1) - 1);  // load TMR value for ~1.5 baud
  while( SOFTSER_TMR&(1<<7) );            // wait for baud

  while(i) {                      // receive 8 serial bits, LSB first
    softser_rdata = (softser_rdata >> 1);         // rotate right to store each bit
    if(SOFTSER_INB())
      softser_rdata &= ~(1<<7); // invert and save data bit
    else
      softser_rdata |= (1<<7);
    i--;

    SOFTSER_TMR -= SOFTSER_BRG;            // load corrected baud value
    while( SOFTSER_TMR&(1<<7) );          // wait for baud
  }

  SOFTSER_TMR -= SOFTSER_BRG;              // wait for stop bit, ensure serial port is free
  while( SOFTSER_TMR&(1<<7) );

}

//---------------------------------------------------------
uint8_t
softser_getch(void) {
  softser_rdata = 0;
  softser_recv();
  return softser_rdata;
}

//---------------------------------------------------------
void
softser_putch(uint8_t data) {
  // this manually sends a serial byte out any PIC pin.
  // NOTE! serial is inverted to connect direct to PC serial port.
  // baud timing is done by using SOFTSER_TMR and removing
  // timer error after each baud.
  uint8_t i;

  i = 8;                          // 8 data bits to send

  SOFTSER_OUTB(HIGH);                // make start bit
  SOFTSER_TMR = (256 - SOFTSER_BRG);       // load TMR value for first baud;
  while( SOFTSER_TMR&(1<<7) );        // wait for baud

  while(i) {                      // send 8 serial bits, LSB first
    if(data & 0x01)
      SOFTSER_OUTB(LOW);  // invert and send data bit
    else
      SOFTSER_OUTB(HIGH);

    data = (data >> 1);           // rotate right to get next bit
    i--;
    SOFTSER_TMR -= SOFTSER_BRG;            // load corrected baud value
    while( SOFTSER_TMR&(1<<7) );      // wait for baud
  }

  SOFTSER_OUTB(LOW);                // make stop bit
  SOFTSER_TMR -= SOFTSER_BRG;              // wait a couple of baud for safety
  while( SOFTSER_TMR&(1<<7) );

  SOFTSER_TMR -= SOFTSER_BRG;
  while( SOFTSER_TMR&(1<<7) );

}

void
softser_puts(const char * s) {
  while(*s)
    softser_putch(*s++);
}

void
softser_puts2(uint8_t * s) {
  while(*s)
    softser_putch(*s++);
}

void
softser_puthex(uint8_t v) {
  uint8_t c;

  c = v >> 4;
  if(c > 9) {
    softser_putch('A' - 10 + c);
  } else {
    softser_putch('0' + c);
  }

  c = v & 0x0F;
  if(c > 9) {
    softser_putch('A' - 10 + c);
  } else {
    softser_putch('0' + c);
  }
}

#endif
 

