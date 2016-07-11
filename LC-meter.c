//#include "LC-meter.h"
#include "main.h"
#include "delay.h"
#include "lcd44780.h"
#include "display.h"

#ifdef SDCC
__code uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#ifdef __XC__
# pragma config WDTE = OFF, PWRTE = ON, CP = OFF, BOREN = ON, DEBUG = OFF, LVP = OFF, CPD = OFF, WRT = OFF, FOSC = HS
#endif

#ifdef  HI_TECH_C
__CONFIG(CONFIG_WORD);
#endif

#define SET_LED(b) do { LED_PIN = !(b); } while(0);

volatile uint32 bres;
volatile  unsigned int seconds;

float F1, F2, F3;
static uint32 tmr0_overflow = 0;

INTERRUPT(void isr()) {
  if(T0IF) {
    tmr0_overflow++;
    T0IF = 0;
  }  

  if(TMR1IF) {
   // TMR1 = ~ticks;

    bres += 256;
  if(bres >= 5000000)	// if reached 1 second!
	{
		bres -= 5000000;	// subtract 1 second, retain error
		seconds++;	// update clock, etc
		  	
		  	  	SET_LED(seconds & 1);
	//	SET_LED(led = !led);
	}
	//TMR1L =  0x00;
	TMR1H = 0xff;

    // Clear timer interrupt bit
    TMR1IF = 0;
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
setup_timer1() {
	
  T1SYNC = 0;

  T1CKPS0 = 0;
  T1CKPS1 = 0; // 1:1 prescaler
  
  // Set up timer0 interrupt
  T1OSCEN = 1;
  TMR1CS = 0; // Internal clock source
  TMR1ON = 1;
  //PSA = 0;  // Enable TMR1 prescaler
  
  //tmr0_set_psbit(0);
  


  //TMR1 = ~ticks;
  TMR1IF = 0;
  TMR1IE = 1;
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

 
  LED_PIN = LOW;
  LED_TRIS = OUTPUT;

  setup_timer1();
  
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

