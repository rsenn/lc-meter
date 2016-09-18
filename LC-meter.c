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
#include "timer.h"
#include "uart.h"

#ifdef SDCC
uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
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
/*
volatile uint32 tcy_per_s = TCY_PER_SECOND;
volatile uint32 tcy_per_ms = TCY_PER_MILLISECOND;
volatile uint32 tcy_per_us = TCY_PER_MICROSECOND;
volatile uint32 ktcy_per_s = KTCY_PER_SECOND;
volatile uint32 ktcy_per_ms = KTCY_PER_MILLISECOND;
*/

volatile uint16 bres;
volatile  uint16 seconds;
volatile uint32 ccp1t_lr, ccp1t[2];

float F1, F2, F3;

static void initialize(void);

INTERRUPT()
{

  /*  if (TMR2IF) {
      tmr2_overflow++;




      // Clear timer interrupt bit
      TMR2IF = 0;
    }*/

  if (T0IF) {
    tmr0_overflow++;

    bres++;
    if (bres >= 500) { // if reached 1 second!
      bres -= 500;  // subtract 1 second, retain error
      seconds++;  // update clock, etc

      SET_LED(seconds & 1);
    }
    TMR0 = -64;
    T0IF = 0;
  }

#ifdef USE_TIMER_1
  if (CCP1IF) {

    if (CCP1_EDGE() == RISING) {
      ccp1t_lr = ccp1t[RISING];
    }
    ccp1t[CCP1_EDGE()] = CCPR1 + ((uint32)tmr1_overflow << 16);
    CCP1IE = 0;
    CCP1_EDGE() = !CCP1_EDGE();
    CCP1IE = 1;
    CCP1IF = 0;
  }
#endif
}

void
main(void)
{
  /*
    tcy_per_s = TCY_PER_SECOND;
  tcy_per_ms = TCY_PER_MILLISECOND;
  tcy_per_us = TCY_PER_MICROSECOND;
  ktcy_per_s = KTCY_PER_SECOND;
  ktcy_per_ms = KTCY_PER_MILLISECOND;
  */
  initialize();

#if USE_HD44780_LCD     || USE_NOKIA3310_LCD
  lcd_set_cursor(0,0);

  lcd_print("LC-meter");

#endif
  uart_puts("LC-meter\r\n");

#if 0
  RELAY_TRIS();
  for (int i = 0; i < 10; i++) {
    RC5 = HIGH;
    __delay_ms(500);
    RC5 = LOW;
    __delay_ms(500);
  }
#endif

  for (;;) {
    bool led_value = 0;
#if USE_HD44780_LCD    || USE_NOKIA3310_LCD

    lcd_set_cursor(0,1);
    display_print_number(ccp1t[1] - ccp1t_lr, 16, -4);
    //    display_print_number(measure_freq(), 16, 4);
#endif
    //  SET_LED(led_value = !led_value);
  }
}

void
setup_ccp1()
{

  ccp1t_lr = ccp1t[0] = ccp1t[1] = (int16)-1;

  TRISC2 = INPUT;
  CCP1CONbits.CCP1M = 0b0100;
  CCP1IE = 1;
  CCP1IF = 0;
}

static void
initialize(void)
{
  //setup comparator
  /*CMCONbits.*/CM0 = 1;
  /*CMCONbits.*/CM1 = 0;
  /*CMCONbits.*/CM2 = 1;

  TRISA = 0b11001111;

  setup_timer0();
  T0IE = 1;
  T0IF = 0;
  // setup_timer1();
  // TMR1H = 0xff;

  // setup_timer2();


  // setup_ccp1();

  //others
  LC_TRIS();
  NOT_RBPU = 1;  // enable portB internal pullup

  LED_TRIS = OUTPUT;
  LED_PIN = HIGH;

  uart_init();

  RELAY_TRIS();
  ADD_CCAL();

  PEIE = 1;
  GIE = 1;

  //initialize 3310 lcd
#if USE_NOKIA3310_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(true);
  lcd_begin(2, 1);
#endif
}

uint16
measure_freq(void)    //16-bit freq
{

  TRISA4 = 0;    //Enable RA4 output to T0CKI

  tmr0_overflow = 0;
  TMR0 = 0x00;
  TMR0IF = 0;    //clear timer0 interrupt flag
  TMR0IE = 1;

  __delay_ms(1000);

  TRISA4 = 1;    //Disable RA4 output to T0CKI
  TMR0IE = 0;

  return (tmr0_overflow << 8) | TMR0;
}

void
calibrate(void)
{

}

void
measure_capacitance()
{

}

void
measure_inductance()
{

}

void
delay10ms(uint16 period_10ms)
{
  do {
    __delay_ms(10);
  } while (--period_10ms);
}

