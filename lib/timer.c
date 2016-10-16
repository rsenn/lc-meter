  #include "timer.h"

/* ----------------------- Timer 0 ----------------------- */
#if USE_TIMER_0
volatile uint16_t tmr0_overflow;

void setup_timer0()
{

  //setup timer0 for internal clock
  T0CS = 0;  // Internal instruction cycle clock (CLKO)



  //setup timer0 for frequency counter
  //T0CS = 1;  //Transition on T0CKI pin
  //  T0SE = 1;  //Increment on high-to-low transition on T0CKI pin


  //PSA = 0;  //Prescaler is assigned to the Timer0 module

  PSA = (TMR0_PRESCALER == 0);  //Prescaler isn't assigned to the Timer0 module

//#if TMR0_PRESCALER != 0
  T0PS = TMR0_PRESCALER - 1;
//#endif

}
#endif // USE_TIMER_0

/* ----------------------- Timer 1 ----------------------- */
#if USE_TIMER_1
volatile uint16_t tmr1_overflow;

void
setup_timer1(uint8_t ps)
{

  tmr1_overflow = 0;

  T1CONbits.T1CKPS = ps; // 1:1 prescaler
  TMR1CS = 0; // Internal clock source
  T1OSCEN = 0;
  //  T1CONbits.T1SYNC = 1;

  TMR1 = 0;

  T1CONbits.TMR1ON = 1;

//  TMR1IE = 1;
//  TMR1IF = 0;
}

#endif // USE_TIMER_1


/* ----------------------- Timer 2 ----------------------- */
#if USE_TIMER_2
volatile uint16_t tmr2_overflow;

void
setup_timer2()
{

  tmr2_overflow = 0;

  // set up TMR2
  T2CONbits.TOUTPS = TMR2_POSTSCALER;    // Set timer 2 postscaler to 1:1
  T2CONbits.T2CKPS = TMR2_PRESCALER >> 1;    // Set timer 2 prescaler to 1:1.

  TMR2IE = 1;
  TMR2IF = 0;

  TMR2 = 0;

  T2CONbits.TMR2ON = 1;       // Enable timer 2.

}
#endif // USE_TIMER_2
 
