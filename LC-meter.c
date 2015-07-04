#include "main.h"
#include "delay.h"
#include "lcd44780.h"
#include "display.h"

#ifdef SDCC
__code uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#ifdef HI_TECH_C
__CONFIG(CONFIG_WORD);
#endif

double F1, F2, F3;

void
main(void) {
}

void
initialize(void) {
  //setup comparator
  CMCONbits.CM = 0b101;
  TRISA = 0b11001111;
  //setup timer0 for frequency counter
  T0CS = 1;  //Transition on T0CKI pin
  T0SE = 1;  //Increment on high-to-low transition on T0CKI pin
  PSA = 0;  //Prescaler is assigned to the Timer0 module
  PS2 = 1;  //PS2:PS0 -> Prescaler Rate = divide by 256
  PS1 = 1;
  PS0 = 1;
  //initialize 3310 lcd
#ifdef __LCD3310_H__
  lcd_init();
  lcd_clear();
#elif defined(LCD44780_H)
  lcd_init(true);
#endif // defined(__LCD3310_H__)
  //others
  lc_tris();
  NOT_RBPU = 1;  // enable portB internal pullup
}

uint16
measure_freq(void) {  //16-bit freq
  
}

void
calibrate(void) {
 
}

void
measure_capacitance() {

}

void
measure_inductance() {

}

void
delay10ms(uint16 period_10ms) {
  do {
    __delay_ms(10);
  } while(--period_10ms);
}

