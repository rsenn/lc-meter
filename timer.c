void
setup_timer1() {
  
  tmr1_overflow = 0;

  T1CONbits.T1CKPS = 0b00; // 1:1 prescaler
  T1CONbits.T1OSCEN = 0;
//  T1CONbits.TMR1CS = 0; // Internal clock source
//  T1CONbits.T1SYNC = 1;
  
  TMR1IE = 1;
  TMR1IF = 0;

  TMR1 = 0;
//  TMR1H = 0xff;

  T1CONbits.TMR1ON = 1;
}

void
setup_timer2() {
  
  tmr2_overflow = 0;

    // set up TMR2
  T2CONbits.TOUTPS = 0b0000;    // Set timer 2 prescaler to 1:1
  T2CONbits.T2CKPS = 0b00;      // Set timer 2 prescaler to 1:1.

  TMR2IE = 1;
  TMR2IF = 0;

  T2CONbits.TMR2ON = 1;       // Enable timer 2.
}
