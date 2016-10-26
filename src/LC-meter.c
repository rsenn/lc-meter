#include "interrupt.h"
#include "LC-meter.h"
#include "config-bits.h"
//#include "main.h"
#include "delay.h"

#if USE_HD44780_LCD
#include "lcd44780.h"
#endif

#if USE_NOKIA3310_LCD
#include "lcd3310.h"
#endif

#include "timer.h"

#ifdef USE_UART
#include "uart.h"
#endif

#if USE_SER
#include "ser.h"
#endif
#include "format.h"


#ifdef SDCC
uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define SET_LED(b) do { LED_PIN = !!(b); } while(0);
#define CCP1_EDGE() (CCP1M0)


volatile uint16_t bres = 0;
volatile  uint16_t seconds = 0;
//volatile uint32_t ccp1t_lr, ccp1t[2];

float F1, F2, F3;

void initialize();
void loop();

void
put_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad/*, int8_t pointpos*/);

INTERRUPT_HANDLER() {

  if(T0IF) {
    //  tmr0_overflow++;
    bres += 256;
    if(bres >= 5000)   // if reached 1 second!
    {
      bres -= 5000;  // subtract 1 second, retain error
      seconds++;  // update clock, etc

      SET_LED(seconds & 1);

    }
    // TMR0 = -64;
    T0IF = 0;
  }

#if 0 //def USE_TIMER_1
  if(CCP1IF) {
    if(CCP1_EDGE() == RISING) {
      ccp1t_lr = ccp1t[RISING];
    }
    ccp1t[CCP1_EDGE()] = CCPR1 + ((uint32_t)tmr1_overflow << 16);
    CCP1IE = 0;
    CCP1_EDGE() = !CCP1_EDGE();
    CCP1IE = 1;
    CCP1IF = 0;
  }
#endif

#if USE_SER
  ser_int();
#endif
}

void
main() {
  initialize();

#if USE_HD44780_LCD     || USE_NOKIA3310_LCD
#if USE_NOKIA3310_LCD
  lcd_gotoxy(0,0);
#else
  lcd_set_cursor(0, 0);
#endif
  lcd_print("LC-meter");
#endif

#if 0
  RELAY_TRIS();
  for(int i = 0; i < 10; i++)
  {
    RC5 = HIGH;
    __delay_ms(500);
    RC5 = LOW;
    __delay_ms(500);
  }
#endif
  PEIE = 1;
  GIE = 1;

  for(;;)
    loop();
}

void
loop() {
  static BOOL led = 0;

  __delay_ms(100);

   led = !led;
   RC1 = led;
 /* static uint16_t prev_seconds = 0xffff;
  
#if USE_HD44780_LCD || USE_NOKIA3310_LCD
#if USE_NOKIA3310_LCD
  lcd_gotoxy(0,0);
#else
  lcd_set_cursor(0, 1);
#endif
  format_number(lcd_putch, seconds, 10, 0);
  //    display_print_number(measure_freq(), 16, 4);
#endif
  if(seconds != prev_seconds) {
#if USE_SER
    format_number(ser_putch, seconds, 10, 0);
    //ser_putch(' ');    put_number(ser_putch, bres / 5000, 10, 0);
    ser_puts("\r\n");
#endif
 
    prev_seconds = seconds;
  }*/
}
/*
void
setup_ccp1() {
  ccp1t_lr = ccp1t[0] = ccp1t[1] = (int16_t) - 1;
  TRISC2 = INPUT;
  CCP1CONbits.CCP1M = 0b0100;
  CCP1IE = 1;
  CCP1IF = 0;
}*/

void
initialize() {
  bres = 0;
  seconds = 0;
  //setup comparator
  /*CMCONbits.*/CM0 = 1;
  /*CMCONbits.*/CM1 = 0;
  /*CMCONbits.*/CM2 = 1;

  TRISA = 0b11001111;

  //others
  LC_TRIS();
  NOT_RBPU = 1;  // enable portB internal pullup

#if USE_SER
  ser_init();
#endif

  RELAY_TRIS();
//  ADD_CCAL();

  SSPEN = 0;

  //initialize 3310 lcd
#if USE_NOKIA3310_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(true);
  lcd_begin(2, 1);
#endif

  //setup_timer0();
  OPTION_REGbits.PS = 0b000;
  T0CS = 0;
  TMR0 = 0;
  T0IE = 1;
  T0IF = 0;
  
  LED_TRIS = 0;
  LED_PIN = 1;
}

/*uint16_t
measure_freq() {   //16-bit freq 
  TRISA4 = 0;    //Enable RA4 output to T0CKI
  tmr0_overflow = 0;
  TMR0 = 0x00;
  TMR0IF = 0;    //clear timer0 interrupt flag
  TMR0IE = 1;
  __delay_ms(1000);
  TRISA4 = 1;    //Disable RA4 output to T0CKI
  TMR0IE = 0;
  return(tmr0_overflow << 8) | TMR0;
}
*/
void
calibrate() {
}

void
measure_capacitance() {
}

void
measure_inductance() {
}

/*void
delay10ms(uint16_t period_10ms) {
  do {
    __delay_ms(10);
  }
  while(--period_10ms);
}
*/