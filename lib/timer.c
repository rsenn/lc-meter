  #include "timer.h"

/* ----------------------- Timer 0 ----------------------- */
#if USE_TIMER0

void timer0_init(uint8_t ps_mode) {
  uint8_t prescaler = ps_mode & PRESCALE_MASK;

  TIMER0_VALUE = 0;

  // setup timer0 for internal clock
  T0CS = !!(ps_mode & TIMER0_FLAGS_EXTCLK); // Internal instruction cycle clock (CLKO)

  // setup timer0 for frequency counter
  // T0CS = 1;  //Transition on T0CKI pin
    T0SE = 1;  //Increment on high-to-low transition on T0CKI pin

  // PSA = 0;  //Prescaler is assigned to the Timer0 module

  PSA = (prescaler == 0); // Prescaler isn't assigned to the Timer0 module

#if PIC18
  if (prescaler > 0) {
T0PS=(prescaler-1);
  } 
#else
  OPTION_REG &= ~0b111;
  if (prescaler > 0) {
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
  TMR0IF = 0;
  TMR0IE = !!(ps_mode & TIMER0_FLAGS_INTR);
}
#endif // USE_TIMER0

/* ----------------------- Timer 1 ----------------------- */
#if USE_TIMER1

void
timer1_init(uint8_t ps_mode) {

  /*T1CONbits.*/T1CKPS0 = (ps_mode & PRESCALE_MASK) & 1; // 1:1 prescaler
  /*T1CONbits.*/T1CKPS1 = (ps_mode & PRESCALE_MASK) >> 1; 
  
  TMR1CS = !!(ps_mode & TIMER1_FLAGS_EXTCLK);   // Internal clock source

  if (TMR1CS) {
#if defined(__12f1840) || defined(__16f628a) 
    nT1SYNC = !!(ps_mode & TIMER1_FLAGS_SYNC);
#else
    /*T1CONbits.*/T1SYNC = !(ps_mode & TIMER1_FLAGS_SYNC);
#endif
    }

  T1OSCEN = 0;

  TMR1H = 0;
  TMR1L = 0;

  /*T1CONbits.*/TMR1ON = 1;

  TMR1IF = 0;
  TMR1IE = !!(ps_mode & TIMER1_FLAGS_INTR);
}

#endif // USE_TIMER1


/* ----------------------- Timer 2 ----------------------- */
#if USE_TIMER2

void timer2_init(uint8_t ps_mode) {
  uint8_t ps = ps_mode & PRESCALE_MASK;
  uint8_t postscaler = TIMER2_POSTSCALER;

  // Set timer 2 postscaler
  TOUTPS0 = postscaler & 1;
  TOUTPS1 = (postscaler >> 1) & 1;
  TOUTPS2 = (postscaler >> 2) & 1;
  
  /*T2CONbits.*/T2CKPS0 = (ps >> 1) & 1; // Set timer 2 prescaler to 1:1.
  /*T2CONbits.*/T2CKPS1 = (ps >> 2) & 1; // Set timer 2 prescaler to 1:1.

  TIMER2_VALUE = 0;

  /*T2CONbits.*/TMR2ON = 1; // Enable timer 2.

  TMR2IF = 0;
  TMR2IE = !!(ps_mode & TIMER2_FLAGS_INTR);
}
#endif // USE_TIMER2
 

