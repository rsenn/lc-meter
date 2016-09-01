#include "LC-meter.h"
//#include "main.h"
#include "delay.h"
#include "interrupt.h"  
#if USE_HD44780_LCD
#include "lcd44780.h"
#endif
#if USE_NOKIA3310_LCD
#include "lcd3310.h"
#endif
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

#define FALLING 0
#define RISING 1

#define CCP1_EDGE() (CCP1M0)

volatile uint32 bres;
volatile  unsigned int seconds;
volatile uint16 ccp1t_lr, ccp1t[2];

float F1, F2, F3;
volatile uint16 tmr_overflow[3];

static  void initialize(void);

INTERRUPT() {

  if(CCP1IF) {

    if(CCP1_EDGE() == RISING) {
      ccp1t_lr = ccp1t[RISING];
    }
    ccp1t[CCP1_EDGE()] = CCPR1;
    CCP1IE = 0;
    CCP1_EDGE() = !CCP1_EDGE();    
    CCP1IE = 1;
    CCP1IF = 0;
  }


  if(T0IF) {
    tmr_overflow[0]++;
    T0IF = 0;
  }  

  if(TMR1IF) {
    tmr_overflow[1]++;

    bres++;
    if(bres >= 5000000) // if reached 1 second!
    {
      bres -= 5000000;  // subtract 1 second, retain error
      seconds++;  // update clock, etc
          
      SET_LED(seconds & 1);
    //  SET_LED(led = !led);
    }
    //TMR1L =  0x00;
    //TMR1H = 0xff;

    // Clear timer interrupt bit
    TMR1IF = 0;
  }

  if(TMR2IF) {
    tmr_overflow[2]++;

    // Clear timer interrupt bit
    TMR2IF = 0;
  }

}  

void
main(void) {
  initialize();
  
#if USE_HD44780_LCD     || USE_NOKIA3310_LCD
   lcd_set_cursor(0,0);
  lcd_print("l33t");
#endif
     
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
#if USE_HD44780_LCD    || USE_NOKIA3310_LCD
    lcd_set_cursor(5,0);
    lcd_print_number(measure_freq(), 16, 4);
#endif
  }  
}

void
setup_timer1() {
  
  tmr_overflow[1] = 0;

  //T1SYNC = 0;

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
setup_timer2() {
  
  tmr_overflow[2] = 0;

    // set up TMR2
  T2CONbits.TOUTPS = 0b0000;    // Set timer 2 prescaler to 1:1
  T2CONbits.T2CKPS = 0b00;      // Set timer 2 prescaler to 1:1.

  TMR2ON = 1;       // Enable timer 2.
  TMR2IE = 1;
  TMR2IF = 0;

}

void
setup_ccp1() {

ccp1t_lr = ccp1t[0] = ccp1t[1] = (int16)-1;

  TRISC2 = INPUT;
  CCP1CONbits.CCP1M = 0b0100;
  CCP1IE = 1;
  CCP1IF = 0;
}

static void initialize(void) {
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
  setup_timer2();

  TMR1 = TMR2 = 0;

  setup_ccp1();
  
  //initialize 3310 lcd
#if USE_NOKIA3310_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(true);
  lcd_begin(2, 1);
#endif
  //others
  lc_tris();
  NOT_RBPU = 1;  // enable portB internal pullup
  
  PEIE = 1;
  GIE = 1;
}

uint16
measure_freq(void) {  //16-bit freq
  
  TRISA4 = 0;    //Enable RA4 output to T0CKI
 
  tmr_overflow[0] = 0;
  TMR0 = 0x00;
  TMR0IF = 0;    //clear timer0 interrupt flag
  TMR0IE = 1;

  __delay_ms(1000);
  
  TRISA4 = 1;    //Disable RA4 output to T0CKI
   TMR0IE = 0;
  
  return (tmr_overflow[0] << 8) | TMR0;
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

