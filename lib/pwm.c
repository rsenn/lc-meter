#include "pwm.h"

#ifdef USE_PWM

void
pwm_init(char ps) {
  T2CONbits.T2CKPS = ps & 0b11; // Set timer 2 prescaler
  T2CONbits.TOUTPS = 0b0000;
  TMR2ON = 1;  // Enable timer 2.
  PR2 = 0xff;
}

#endif // USE_PWM
 

