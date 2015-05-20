#include "oscillator.h"
#include "tsmdelay.h"
#include "delay.h"

#ifdef HI_TECH_C
#include <pic.h>
#else
dvars dvar;
#endif

void
delay_ms(uint16 milliseconds) {
  /* dvars msecs;
   SAVE_CYCLES_BIG(msecs, US_CYCLES(milliseconds*1000lu));
   CALL_CYCLES_BIG(msecs);*/
#ifndef HI_TECH_C
  __delay_ms(milliseconds);
#else
  Delay100TCYx(US_CYCLES(milliseconds*1000lu)/100);
#endif
}

void
delay_us(uint16 microseconds) {
  /*dvars usecs;
  SAVE_CYCLES_BIG(usecs, US_CYCLES(microseconds));
  CALL_CYCLES_BIG(usecs);*/
#ifndef HI_TECH_C

  __delay_us(microseconds);
#else
  Delay10TCYx(US_CYCLES(microseconds)/10);

#endif
}


#ifndef HI_TECH_C
/**
 *  Fixing x at 191 so b is essentially multiples of cmax
 */
void
cycle_eater(void) {
  __asm
  global correction
  banksel _dvar  // mumblegrumble
  nop
  delay_big:
  movlw   191      // Calibrated for b*764 cycles
  movwf   _dvar+0  // Load W into reg
  delay_inner:
  nop  // To make the inner loop take 4 cycles per
  decfsz  _dvar+0, 1
  goto    delay_inner
  decfsz  _dvar+1, 1
  goto    delay_big
  correction:
  decfsz  _dvar+2, 1
  goto    correction
  __endasm;
}
#endif

/*
 * Delay multiples of 100 Tcy
 * Passing 0 (zero) results in a delay of 25,600 cycles.
 */
void
Delay100TCYx(uint8 unit) {
  do {
#ifdef HI_TECH_C
    _delay(100);
#else
    DELAY_SMALL_TCY(100);
#endif
  }
  while(--unit != 0);
}

/*
 * Delay multiples of 10,000 Tcy
 * Passing 0 (zero) results in a delay of 2,560,000 cycles.
 */
void
Delay10KTCYx(uint8 unit) {
  do {
#ifdef HI_TECH_C
    _delay(10000);
#else
    DELAY_BIG_TCY(10000);
#endif
  }
  while(--unit != 0);
}

/*
 * Delay multiples of 10 Tcy
 * Passing 0 (zero) results in a delay of 2560 cycles.
 */
void
Delay10TCYx(uint8 unit) {
  do {
#ifdef HI_TECH_C
    _delay(10);
#else
   SAVE_CYCLES_SMALL(dvar, 11);
   __asm__("BANKSEL _dvar");
   __asm__("CALL correction");
#endif
  }
  while(--unit != 0);
}

/*
 * Delay multiples of 1000 Tcy
 * Passing 0 (zero) results in a delay of 256,000 cycles.
 */
void
Delay1KTCYx(uint8 unit) {
  do {
#ifdef HI_TECH_C
    _delay(1000);
#else
    DELAY_BIG_TCY(1000);
#endif
  }
  while(--unit != 0);
}
