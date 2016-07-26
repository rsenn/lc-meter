#include "LC-meter-HD44780.h"
#include "uart.h"
#include "delay.h"
#include "lcd44780.h"
//#include "display.h"

#ifdef SDCC
__code uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#ifdef __XC8__
__PROG_CONFIG(1, 0x3f72);
//#pragma config WDTE = OFF, PWRTE = ON, CP = OFF, BOREN = ON, DEBUG = OFF, LVP = OFF, CPD = OFF, WRT = OFF, FOSC = HS
#endif

#ifdef  HI_TECH_C
__CONFIG(CONFIG_WORD);
#endif

#define SET_LED(b) do { LED_PIN = !(b); } while(0);

volatile uint32 bres;
volatile  unsigned int seconds;

float F1, F2, F3;
static uint32 tmr0_overflow = 0;
float calc_freq();

INTERRUPT(void isr()) {
  if(T0IF) {
    tmr0_overflow++;
    T0IF = 0;
  }  
  
//    uart_int();

}  

void
main(void) {
  int led = 0;

  uart_init();
  uart_putch('I');
  
  initialize();
  
  LED_TRIS = OUTPUT;
  
   lcd_set_cursor(0,0);
  lcd_print("LC-meter");
     
     uart_puts("\r\n");
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
   LED_PIN = led; led ^= 1;
   uart_puts(".\r\n");

    lcd_set_cursor(10,0);
    lcd_print_float(calc_capacitance(), 10);
//    lcd_print_number(calc_capacitance(), 10, 6);
    
    __delay_ms(100);
  }  
}

void
initialize(void) {
  //setup comparator
  /*CMCONbits.*/CM0 = 1;
  /*CMCONbits.*/CM1 = 0;
  /*CMCONbits.*/CM2 = 1;
  TRISA = 0b11001111;
  //setup timer0 for frequency counter
  T0CS = 1;  //Transition on T0CKI pin
  T0SE = 1;  //Increment on high-to-low transition on T0CKI pin
  
  
  //PSA = 0;  //Prescaler is assigned to the Timer0 module
  PSA = 1;  //Prescaler isn't assigned to the Timer0 module
  /*OPTION_REGbits.*/PS0 = 1;//PS2:PS0 -> Prescaler Rate = divide by 256
  /*OPTION_REGbits.*/PS1 = 1;//PS2:PS0 -> Prescaler Rate = divide by 256
  /*OPTION_REGbits.*/PS2 = 1;//PS2:PS0 -> Prescaler Rate = divide by 256

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

uint32
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

float
calc_freq() {
   uint32 t = measure_freq();

   return t / 1000.0;
}

float
calc_capacitance() {
   float f = measure_freq();
   return 1.0 / (M_4_PI_PI * f * f * L_PH);
}

float
calc_inductance() {
  float f = measure_freq();
  return 1 / (M_4_PI_PI * f * f * C_PF);
}

void
delay10ms(uint16 period_10ms) {
  do {
    __delay_ms(10);
  } while(--period_10ms);
}

