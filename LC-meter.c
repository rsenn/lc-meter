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
static uint32 tmr0_overflow = 0;

void interrupt
isr() {
  if(T0IF) {
    tmr0_overflow++;
    T0IF = 0;
  }  
}  

void
main(void) {
  initialize();
  
   lcd_set_cursor(0,0);
  lcd_print("l33t");
     
#if 0
  relay_tris();
  for(int i = 0; i < 10; i++) {
    RC5 = HIGH;
    __delay_ms(500);
    RC5 = LOW;
  __delay_ms(500);
  }
#endif
    
  for(;;) {
    lcd_set_cursor(5,0);
    lcd_print_number(measure_freq(), 16, 4);
  }  
}

void
initialize(void) {
  //setup comparator
  CMCONbits.CM = 0b101;
  TRISA = 0b11001111;
  //setup timer0 for frequency counter
  T0CS = 1;  //Transition on T0CKI pin
  T0SE = 1;  //Increment on high-to-low transition on T0CKI pin
  
  
  //PSA = 0;  //Prescaler is assigned to the Timer0 module
  PSA = 1;  //Prescaler isn't assigned to the Timer0 module
  OPTION_REGbits.PS = 0b111;//PS2:PS0 -> Prescaler Rate = divide by 256

  //initialize 3310 lcd
#ifdef __LCD3310_H__
  lcd_init();
  lcd_clear();
#elif defined(LCD44780_H)
  lcd_init(true);
  lcd_begin(2, 1);
#endif // defined(__LCD3310_H__)
  //others
  lc_tris();
  NOT_RBPU = 1;  // enable portB internal pullup
  
  PEIE = 1;
  GIE = 1;
}

uint16
measure_freq(void) {  //16-bit freq
  
  TRISA4 = 0;    //Enable RA4 output to T0CKI
 
  tmr0_overflow = 0;
  TMR0 = 0x00;
  TMR0IF = 0;    //clear timer0 interrupt flag
  TMR0IE = 1;

  delay_ms(1000);
  
  TRISA4 = 1;    //Disable RA4 output to T0CKI
   TMR0IE = 0;
  
  return (tmr0_overflow << 8) | TMR0;
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

