#include "LC-meter-HD44780.h"
#include "uart.h"
#include "interrupt.h"
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
uint16 tmr1_overflow = 0;
float calc_freq();

INTERRUPT() {
  if(T0IF) {
    tmr0_overflow++;
    T0IF = 0;
  }  

  if(TMR1IF) {
    tmr1_overflow++;
    TMR1IF = 0;
  }  
  
//    uart_int();
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
setup_ccp1() {

ccp1t_lr = ccp1t[0] = ccp1t[1] = (int16)-1;

  TRISC2 = INPUT;
  CCP1CONbits.CCP1M = 0b0100;
  CCP1IE = 1;
  CCP1IF = 0;
}
void
main(void) {
  int led = 0;

  
  LED_TRIS = OUTPUT;
  LED_PIN = 1;

  uart_init();
  uart_putch('I');
  
  initialize();

   lcd_gotoxy(0,0);
  lcd_puts("LC-meter");
     
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
add_ccal();

  for(;;) {

	float f = measure_freq();
   LED_PIN = led; led ^= 1;
   uart_puts(".\r\n");

lcd_clear();
    lcd_gotoxy(0,0);
    lcd_puts("f2=");
//    lcd_print_float(f, 2);
lcd_print_number(measure_freq_tmr1(), 10, 2);
    lcd_gotoxy(7,0);
	lcd_puts("Hz ");
    lcd_puts("C=");
    lcd_print_float(calc_capacitance(f) * 10E+09, 4);
	lcd_gotoxy(18,0);
    lcd_puts("nF");

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
  relay_tris();

setup_timer1();
setup_ccp1();

  NOT_RBPU = 1;  // enable portB internal pullup
  
  PEIE = 1;
  GIE = 1;
}

float
measure_freq(void) {  //16-bit freq
  
  TRISA4 = 0;    //Enable RA4 output to T0CKI
 
  tmr0_overflow = 0;
  TMR0 = 0x00;
  TMR0IF = 0;    //clear timer0 interrupt flag
  TMR0IE = 1;

  __delay_ms(2500);
  
  TRISA4 = 1;    //Disable RA4 output to T0CKI
   TMR0IE = 0;
  
  uint32 r = (tmr0_overflow << 8) | TMR0;
  return (float)r * 102.40000000000000000000;
}


float
measure_freq_tmr1(void) {  //16-bit freq
	TRISC0 = INPUT;
	  TRISA4 = 0;    //Enable RA4 output to T0CKI

	T1CONbits.T1CKPS = 0b11;
	T1CONbits.T1OSCEN = 1;
	T1CONbits.T1SYNC = 1;
	T1CONbits.TMR1CS = 1;
	TMR1 = 0;

	T1CONbits.TMR1ON = 1;
	TMR1IF = 0;
	TMR1IE = 1;

	delay_ms(1000);

	TMR1ON = 0;
	TMR1IE = 0;

   TRISA4 = 1;    //Disable RA4 output to T0CKI

  uint32 r = (tmr1_overflow << 16) | TMR1;
  return (float)r * 8;
}

void
calibrate(void) {	
 
}

float
calc_freq() {
   float t = measure_freq();

   return t;
}

float
calc_capacitance(float f) {
	f *= f;
	f *= M_4_PI_PI;
   return L_H_1 / f;
}

float
calc_inductance(float f) {
  return 1.0l / (M_4_PI_PI * f * f * C_F);
}

void
delay10ms(uint16 period_10ms) {
  do {
    __delay_ms(10);
  } while(--period_10ms);
}

