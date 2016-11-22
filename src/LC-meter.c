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

#if USE_SOFTSER
#include "softser.h"
#endif

#include "display.h"
#include "format.h"


#ifdef SDCC
uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define CCP1_EDGE() (CCP1M0)


volatile uint16_t bres;
volatile  uint16_t msecpart;
volatile  uint32_t seconds, msecs;

//volatile uint32_t ccp1t_lr, ccp1t[2];

float F1, F2, F3;

void initialize();
void loop();

void
put_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad/*, int8_t pointpos*/);

INTERRUPT_HANDLER()
{

  if(T0IF) {

    bres += 256;

    if(bres >= 5000) {
      bres -= 5000;
      msecpart++;
      msecs++;

      SET_LED(msecpart < 500);
    }
    if(msecpart >= 1000) { // if reached 1 second!
      seconds++;  // update clock, etc
      msecpart -= 1000;

      SET_LED2(seconds&1);

    }

    //TMR1H = 0xff;
    
    
    // Clear timer interrupt bit
    T0IF = 0;
  }
  #ifdef USE_SER
  ser_int();
#endif
#if USE_UART
  uart_isr();
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
    delay_ms(500);
    RC5 = LOW;
    delay_ms(500);
  }
#endif
  PEIE = 1;
  GIE = 1;

  for(;;)
    loop();
}

void loop() {
  static BOOL led = 0;
  static uint32_t prev_seconds = 0;
  uint32_t s;

  delay10ms(10);

  GIE = 0;
  s = seconds;
  GIE = 1;

#ifdef USE_SOFTSER
  softser_puts("XXXX\r\n");
#endif
/* static uint16_t prev_seconds = 0xffff;
 */
#if USE_HD44780_LCD || USE_NOKIA3310_LCD
#if USE_NOKIA3310_LCD
  lcd_gotoxy(0, 0);
#else
  lcd_set_cursor(10, 0);
  lcd_print("      ");
  lcd_set_cursor(10, 0);
#endif
  format_number(lcd_putch, s, 10, 0);
//    display_print_number(measure_freq(), 16, 4);
#endif
  if (s != prev_seconds) {
#if USE_SER
    format_number(ser_putch, s, 10, 0);
    // ser_putch(' ');    put_number(ser_putch, bres / 5000, 10, 0);
    ser_puts("\r\n");
#endif

    prev_seconds = s;
  }
  
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
 bres = msecpart = msecs = seconds  = 0;

  //setup comparator
  /*CMCONbits.*/CM0 = 1;
  /*CMCONbits.*/CM1 = 0;
  /*CMCONbits.*/CM2 = 1;

 TRISA = 0b11001111;

  //others
 LC_TRIS();
  NOT_RBPU = 1;  // enable portB internal pullup


  RELAY_TRIS();
//  ADD_CCAL();


  SSPEN = 0;

  setup_timer0(PRESCALE_1_1);
  /*
  OPTION_REGbits.PS = 0b000;
  T0CS = 0;*/
  TMR0 = 0;
  T0IE = 1;
  T0IF = 0;

  #if USE_SOFTSER
  softser_init();
  setup_timer1(PRESCALE_1_1);
#endif
#if USE_SER
  ser_init();
#endif

  //initialize 3310 lcd
#if USE_NOKIA3310_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(true);
  lcd_begin(2, 1);
#endif



#if !NO_PORTC
  TRISC &= ~0b1100;
#endif
  INIT_LED();
  INIT_LED2();

  SET_LED(1);
  SET_LED2(1);



  PEIE = 1;
  GIE = 1;
}

/*uint16_t
measure_freq() {   //16-bit freq 
  TRISA4 = 0;    //Enable RA4 output to T0CKI
  tmr0_overflow = 0;
  TMR0 = 0x00;
  TMR0IF = 0;    //clear timer0 interrupt flag
  TMR0IE = 1;
  delay_ms(1000);
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

void delay10ms(uint16_t period_10ms) {
  uint32_t ms = period_10ms * 10;
  BOOL run = 1;
  GIE = 0;
  ms += msecs;
  GIE = 1;

  do {
    GIE = 0;
    if (ms <= msecs)
      run = 0;
    GIE = 1;
  } while (run);
}