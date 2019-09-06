
#include "config-bits.h"
#include "oscillator.h"
#include "interrupt.h"

#include "LC-meter.h"
//#include "main.h"
#include "delay.h"

#if USE_HD44780_LCD
#include "lcd44780.h"
#endif

#if USE_NOKIA5110_LCD
#include "lcd5110.h"
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

#include "measure.h"
#include "print.h"
#include "format.h"
//#include "buffer.h"

#if defined(__SDCC) || defined(SDCC)
uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define CCP1_EDGE() (CCP1M0)

volatile uint16_t bres;           // bresenham count
volatile uint16_t msecpart;       // milliseconds modulo 1000
volatile uint32_t seconds, msecs; // seconds and milliseconds counters
volatile uint32_t timer1of;       // timer 1 overflows

// volatile uint32_t ccp1t_lr, ccp1t[2];

/*
 * Delay using milliseconds count
 */
void
delay10ms(int16_t period_10ms) {

  while(period_10ms-- > 0) {
    delay_ms(10);
  }
}

// buffer_t buffer = BUFFER_STATIC(output_putch);

double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
uint16_t measure_freq();
uint32_t milliseconds();
void delay10ms(int16_t period_10ms);

void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos */);

volatile uint16_t blink = 0;

/* Interrupt routine */

INTERRUPT_FN() {

  if(TMR2IF) {

    bres += 256;

    if(bres >= 5000) {
      bres -= 5000;
      msecpart++;
      msecs++;

      SET_LED((blink > 200));
      if(blink >= 400)
        blink -= 400;
      ++blink;

      /* if reached 1 second... */
      if(msecpart >= 1000) {
        /* ...update clock, etc */
        seconds++;
        msecpart -= 1000;
      }
    }
    // Clear timer interrupt bit
    TMR2IF = 0;
  }
#ifdef USE_SER
  ser_int();
#endif
#if USE_UART
  uart_isr();
#endif
}

/* main routine */
void
main() {
  bres = msecpart = msecs = seconds = 0;

  CCal = C_CAL;

  // setup comparator
  /*
  CMCON &= 0b11111000;
  CMCON |= 0b00000101;*/
#ifdef __16f876a
  CMCON = 0b00000101;
#endif
  TRISA = 0b11001111;

  // setup timer0 for frequency counter
  timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_EXTCLK);

  ///T0CS = 1; // Transition on T0CKI pin
  T0SE = 1; // Increment on high-to-low transition on T0CKI pin

  /*
  CM0 = 1;
   CM1 = 0;
   CM2 = 1;
  */
  // others
#if(_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80) && !defined(__XC8__)
  RBPU = 1;
#else
  NOT_RBPU = 0; // enable portB internal pullup
#endif

  INIT_LED();
  SET_LED(1);

  SSPEN = 0;

  // timer1_init(PRESCALE_1_1 | TIMER1_FLAGS_EXTCLK);
  //  timer1of = 0;

  timer2_init(PRESCALE_1_1 | TIMER2_FLAGS_INTR);

#if !NO_PORTC
  //  TRISC &= 0b11110101;  /* RC1 and RC3 -> outputs */
  //  TRISC |= 0b00000101;  /* RC0 and RC2 -> inputs */
  TRISC1 = OUTPUT;
#endif
#if !PIC18_USB
  TRISC3 = OUTPUT;
#endif
  TRISC0 = INPUT;
  TRISC2 = INPUT;
// initialize 5110 lcd
#if USE_NOKIA5110_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(TRUE);
  lcd_begin(2, 1);
#endif

  LC_TRIS();
  RELAY_TRIS();

  REMOVE_CCAL();
  delay10ms(50);
  ADD_CCAL();
  delay10ms(50);
  REMOVE_CCAL();
  delay10ms(50);
  ADD_CCAL();
  delay10ms(50);
  REMOVE_CCAL();

#ifdef USE_SER
  ser_init();
#endif
#if USE_UART
  uart_init();
#endif
  TRISC &= ~0b01000000;

  PEIE = 1;
  GIE = 1;

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
  putchar_ptr = &lcd_putch;
#endif

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
#if USE_NOKIA5110_LCD
  lcd_gotoxy(0, 0);
#else
  lcd_gotoxy(0, 0);
#endif
  lcd_puts("LC-meter ");
  format_double(/*&lcd_putch,*/ CCal);
#endif

#ifdef _DEBUG
  delay10ms(5);
#else
  delay10ms(200);
#endif

  calibrate();
#if USE_HD44780_LCD || USE_NOKIA5110_LCD
  lcd_clear();
#endif

  /* main loop:
   *
   * Continuously measure capacity/inductance according to switch position.
   * Blink the indicator (-*-) sign after each measurement.
   */

  for(;;) {

    ser_puts("...\r\n");
    if(LC_SELECT)
      measure_capacitance();
    else
      measure_inductance();

    indicator(1);
    delay10ms(30);
    indicator(0);
    delay10ms(20);
  }
}

void
testloop() {

  static char led = 0;
  static uint16_t prev_s = 0;
  uint16_t s;

  delay10ms(10);

  GIE = 0;
  s = seconds;
  GIE = 1;

#ifdef USE_SOFTSER
  softser_puts("XXXX\r\n");
#endif

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
#if USE_NOKIA5110_LCD
  lcd_gotoxy(0, 0);
#else
  lcd_gotoxy(10, 0);
  lcd_puts("      ");
  lcd_gotoxy(10, 0);
#endif
  format_number(/*lcd_putch,*/ s, 10, 5);

  lcd_gotoxy(10, 1);
  lcd_puts("      ");
  lcd_gotoxy(10, 1);
  format_number(/*lcd_putch,*/ TIMER1_VALUE, 10, 5);

  lcd_gotoxy(0, 1);
  lcd_puts("     ");
  lcd_gotoxy(0, 1);
  lcd_puts("RC4=");

  lcd_putch(LC_SELECT != 0 ? '1' : '0');

//    print_print_number(measure_freq(), 16, 4);
#endif
  if(s != prev_s) {
#if USE_SER
    format_number(/*ser_putch,*/ s, 10, 0);
    // ser_putch(' ');    put_number(/*ser_putch,*/ bres / 5000, 10, 0);
    ser_puts("\r\n");
#endif

    prev_s = s;
  }
}

/*
 * Get the milliseconds count
 */
#define get_milliseconds(v)                                                                                            \
  do {                                                                                                                 \
    GIE = 0, v = msecs, GIE = 1;                                                                                       \
  } while(0);
/*uint32_t
milliseconds() {
  uint32_t ms;

  GIE = 0;
  ms = msecs;
  GIE = 1;
  return ms;
}*/
