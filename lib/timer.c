#include "timer.h"

/* ----------------------- Timer 0 ----------------------- */
#if USE_TIMER0

void
timer0_init(uint8_t ps_mode) {
  uint8_t prescaler = ps_mode & PRESCALE_MASK;

  TIMER0_VALUE = 0;

  // 0: Internal instruction cycle clock (CLKO) or 1: Transition on T0CKI pin
 OPTION_REG |= (!!(ps_mode & TIMER0_FLAGS_EXTCLK)) ? 0x20 : 0x00; 

  // T0CKI pin: Increment on 1->0 or on 0->1 transition 
  OPTION_REG |= (!!(ps_mode  & EDGE_HIGH_LOW)) ? 0x10 : 0x00;

  // If a prescaler is to be assigned to the Timer0 module
  OPTION_REG &= (!!prescaler) ? ~0x08 : ~0x00; 

#if PIC18
  if(prescaler > 0) {
    T0PS = (prescaler - 1);
  }
#else
  OPTION_REG &= ~0b111;

  if(prescaler > 0) {
    OPTION_REG |= (prescaler - 1) & 0b111;
    //#if TIMER0_PRESCALER != 0
    /*  --prescaler;
      PS0 = prescaler&1;   prescaler >>= 1;
      PS1 = prescaler&1;   prescaler >>= 1;
      PS2 = prescaler&1; */
  }
  //  T0PS = prescaler - 1;
  //#endif
#endif

INTCON &= ~0x40; // TMR0IF = 0;
  INTCON |= (!!(ps_mode & TIMER0_FLAGS_INTR)) ? 0x20 : 0x00;
}

unsigned short
timer0_read_ps(void) {
  uint8_t prev = TMR0;
  uint16_t count = 0;

    OPTION_REG |= 0x20; // T0CS = 1;

  do {
    /* self-clocking */
    OPTION_REG |= 0x10; // T0SE = 1;

    NOP();
    NOP();

     OPTION_REG &= ~0x10; //T0SE = 0;
    
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

  /*T1CONbits.*/ T1CKPS0 = (ps_mode & PRESCALE_MASK) & 1; // 1:1 prescaler
  /*T1CONbits.*/ T1CKPS1 = (ps_mode & PRESCALE_MASK) >> 1;

  TMR1CS = !!(ps_mode & TIMER1_FLAGS_EXTCLK); // Internal clock source

  if(TMR1CS) {
#if defined(__12f1840) || defined(__16f628a)
    nT1SYNC = !!(ps_mode & TIMER1_FLAGS_SYNC);
#else
    /*T1CONbits.*/ T1SYNC = !(ps_mode & TIMER1_FLAGS_SYNC);
#endif
  }

  T1OSCEN = 0;

  TMR1H = 0;
  TMR1L = 0;

  /*T1CONbits.*/ TMR1ON = 1;

  TMR1IF = 0;
  TMR1IE = !!(ps_mode & TIMER1_FLAGS_INTR);
}

#endif // USE_TIMER1

/* ----------------------- Timer 2 ----------------------- */
#if USE_TIMER2

void
timer2_init(uint8_t ps_mode) {
  uint8_t ps = ps_mode & PRESCALE_MASK;
  uint8_t postscaler = TIMER2_POSTSCALER;

  // Set timer 2 postscaler
  TOUTPS0 = postscaler & 1;
  TOUTPS1 = (postscaler >> 1) & 1;
  TOUTPS2 = (postscaler >> 2) & 1;

  /*T2CONbits.*/ T2CKPS0 = (ps >> 1) & 1; // Set timer 2 prescaler to 1:1.
  /*T2CONbits.*/ T2CKPS1 = (ps >> 2) & 1; // Set timer 2 prescaler to 1:1.

  TIMER2_VALUE = 0;

  /*T2CONbits.*/ TMR2ON = 1; // Enable timer 2.

  TMR2IF = 0;
  TMR2IE = !!(ps_mode & TIMER2_FLAGS_INTR);
}
#endif // USE_TIMER2
