#include "timer.h"


#ifdef PIC18F2550
#define PIC18 1
#endif
#ifdef __18f14k50
#define PIC18 1
#endif
#ifdef __18f25k50
#define PIC18 1
#endif
#ifdef __18f2550
#define PIC18 1
#ifndef SDCC
extern volatile unsigned char           T0CON               @ 0xFD5;
#endif
#endif

#ifndef PIC18
#define T0CON OPTION_REG
#endif

/* ----------------------- Timer 0 ----------------------- */
#if USE_TIMER0

void
timer0_init(uint8_t ps_mode) {
  uint8_t prescaler = ps_mode & PRESCALE_MASK;

  TIMER0_VALUE = 0;

  // 0: Internal instruction cycle clock (CLKO) or 1: Transition on T0CKI pin
  T0CON |= (!!(ps_mode & TIMER0_FLAGS_EXTCLK)) ? 0x20 : 0x00;

  // T0CKI pin: Increment on 1->0 or on 0->1 transition
  T0CON |= (!!(ps_mode & EDGE_HIGH_LOW)) ? 0x10 : 0x00;

  // If a prescaler is to be assigned to the Timer0 module
  T0CON &= (!!prescaler) ? ~0x08 : ~0x00;

  T0CON &= ~0b111;

  if(prescaler > 0) {
    T0CON |= (prescaler - 1) & 0b111;
    //#if TIMER0_PRESCALER != 0
    /*  --prescaler;
      PS0 = prescaler&1;   prescaler >>= 1;
      PS1 = prescaler&1;   prescaler >>= 1;
      PS2 = prescaler&1; */
  }
  //  T0PS = prescaler - 1;
  //#endif

  INTCON &= ~0x40; // TMR0IF = 0;
  INTCON |= (!!(ps_mode & TIMER0_FLAGS_INTR)) ? 0x20 : 0x00;
}

unsigned short
timer0_read_ps(void) {
  uint8_t prev = TMR0;
  uint16_t count = 0;

  T0CON |= 0x20; // T0CS = 1;

  do {
    /* self-clocking */
    T0CON |= 0x10; // T0SE = 1;

    NOP();
    NOP();

    T0CON &= ~0x10; // T0SE = 0;

    NOP();
    NOP();

    ++count;

    // count until TMR0 incremented
  } while(prev == TMR0 && count <= 255);

  count = ((prev << 8) + (256 - count));
  return count;
}

#endif // USE_TIMER0

/* ----------------------- Timer 1 ----------------------- */
#if USE_TIMER1

void
timer1_init(uint8_t ps_mode) {

  T1CON &= ~0b00111110;

  T1CON |= (ps_mode & PRESCALE_MASK) << 4; 

  T1CON |= (!!(ps_mode & TIMER1_FLAGS_EXTCLK)) << 1; // Internal clock source

  if(T1CON & 0b00000010) {
#if defined(__12f1840) || defined(__16f628a)
    T1CON |= (!(ps_mode & TIMER1_FLAGS_SYNC)) << 2;
#else
    T1CON |= (!(ps_mode & TIMER1_FLAGS_SYNC)) << 2;
#endif
  }

  TMR1H = 0;
  TMR1L = 0;

  T1CON |= 0b1; // TMR1ON = 1;

   PIR1 &= ~0b1; //  TMR1IF = 0;
   
   PIE1 &= ~0b1;
   PIE1 |= !!(ps_mode & TIMER1_FLAGS_INTR);
}

#endif // USE_TIMER1

/* ----------------------- Timer 2 ----------------------- */
#if USE_TIMER2

void
timer2_init(uint8_t ps_mode) {
  uint8_t ps = ps_mode & PRESCALE_MASK;
  uint8_t postscaler = TIMER2_POSTSCALER;

  // Set timer 2 postscaler
  T2CON &= ~0b01111111;

  T2CON |= (postscaler & 0b1111) << 3;
  T2CON |= (ps & 0b11); // Set timer 2 prescaler to 1:1.

  TIMER2_VALUE = 0;

  T2CON |= 0b100; // TMR2ON = 1; // Enable timer 2.

  //TMR2IF = 0;
  PIR1 &= ~0b10; 
  PIE1 = (!!(ps_mode & TIMER2_FLAGS_INTR)) << 1;
}
#endif // USE_TIMER2
