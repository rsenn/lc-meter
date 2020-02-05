#include "lib/device.h"
#include "LC-meter.h"

#include "lib/oscillator.h"
#include "lib/interrupt.h"

//#include "main.h"
#include "lib/delay.h"

#if USE_HD44780_LCD
#include "lib/lcd44780.h"
#endif

#if USE_NOKIA5110_LCD
#include "lib/lcd5110.h"
#endif

#include "lib/timer.h"

#ifdef USE_UART
#include "lib/uart.h"
#endif

#if USE_SER
#include "lib/ser.h"
#endif
#if USE_SOFTSER
#include "lib/softser.h"
#endif

#include "src/measure.h"
#include "src/print.h"
#include "lib/format.h"
//#include "lib/buffer.h"

#include "src/config-bits.h"

#if(defined(__SDCC) || defined(SDCC)) && !PIC18
uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define CCP1_EDGE() (CCP1M0)

volatile uint16_t bres;           // bresenham count
volatile uint16_t msecpart;       // milliseconds modulo 1000
volatile uint32_t seconds, msecs; // seconds and milliseconds counters
volatile uint32_t timer1of;       // timer 1 overflows

static char mode = -1;

#define CYCLES_FOR_MSEC ((unsigned long)((double)OSC_4 / 1000))

// volatile uint32_t ccp1t_lr, ccp1t[2];

/*
 * Delay using milliseconds count
 */
void
delay10ms(unsigned char period_10ms) {
  /*	short i,j = period_10ms;
    for(i = 0; i < j; ++i)
      __delay_ms(10);*/
}

// buffer_t buffer = BUFFER_STATIC(output_putch);

double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
uint32_t milliseconds();

void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos */);

volatile uint16_t blink = 0;

/* Interrupt routine */
INTERRUPT_FN() {
   if(T0IF) {
     bres += 256;
     if(bres >= CYCLES_FOR_MSEC) {
       bres -= CYCLES_FOR_MSEC;
       msecpart++;
       SET_LED(msecpart >= 833);
       // if reached 1 second...
       if(msecpart >= 1000) {
         // ...update clock, etc
         seconds++;
         msecpart -= 1000;
       }
     }
     // Clear timer interrupt bit
   T0IF=0;
   }
#ifdef USE_SER
  ser_int();
#endif
#if USE_UART
  // uart_isr();
#endif
}

/**
 * @brief      { function_description }
 */
void
main() {
  bres = msecpart = msecs = seconds = 0;
  mode = -1;

  CCal = C_CAL;

  // setup comparator

  /*  CMCON &= 0b11111000;
    CMCON |= 0b00000101;*/

#ifdef __16f876a
  CMCON = 0b00000101;
#endif
  TRISA = 0b11001111;

  TRISB &= 0b00001111;

  // setup timer0 for frequency counter
  timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_EXTCLK | TIMER0_FLAGS_8BIT | TIMER0_FLAGS_INTR );

  // others
#if(_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80) && !defined(__XC8__)
  RBPU = 1;
#else
#if PIC18
  INTCON2 &= ~0b10000000; //   NOT_RBPU = 0; // enable portB internal pullup
#else
  OPTION_REG &= ~0b100000;
#endif
#endif
#if !NO_PORTC && !defined(__16f628)
  //  TRISC &= 0b11110101;  /* OUTC1 and OUTC3 -> outputs */
  //  TRISC |= 0b00000101;  /* OUTC0 and OUTC2 -> inputs */
  TRISC = 0b10110011;
#endif

#if !defined(__18f2550) && !defined(__18f25k50)
  RC3 = HIGH;
#endif

  INIT_LED();
  SET_LED(1);

  // timer2_init(PRESCALE_1_1 /*| TIMER2_FLAGS_INTR*/);

  // initialize 5110 lcd
#if USE_NOKIA5110_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(1);
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
  //  TRISC &= ~0b01000000;

  INTCON |= 0xc0; // PEIE = 1; GIE = 1;

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
#if USE_NOKIA5110_LCD
  lcd_gotoxy(0, 0);
#else
  lcd_gotoxy(0, 0);
#endif
  lcd_puts("LC-meter ");
  format_double(/*&lcd_putch,*/ CCal);
#endif

#ifdef __DEBUG
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
   * Blink the print_indicator (-*-) sign after each measurement.
   */
  for(;;) {
    char new_mode = LC_SELECT;

    if(new_mode != mode) {
#ifdef USE_SER
      ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
      ser_puts("\r\n");
#endif
      mode = new_mode;
    }

    if(mode)
      measure_capacitance();
    else
      measure_inductance();

    print_indicator(1);
    delay10ms(30);

    print_indicator(0);
    delay10ms(20);
  }
}

void
testloop() {

  static char led = 0;
  static uint16_t prev_s = 0;
  uint16_t s;

  delay10ms(10);

  INTCON &= ~0x80; // GIE = 0;
  s = seconds;
  INTCON |= 0x80; // GIE = 1;

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
  format_number(s, 10, 5);

  lcd_gotoxy(10, 1);
  lcd_puts("      ");
  lcd_gotoxy(10, 1);
  //	 format_number(TIMER1_VALUE, 10, 5);

  lcd_gotoxy(0, 1);
  lcd_puts("     ");
  lcd_gotoxy(0, 1);
  lcd_puts("RC4=");

#ifdef USE_HD44780_LCD
  lcd_putch(LC_SELECT != 0 ? '1' : '0');
#endif
//    print_print_number(measure_freq(), 16, 4);
#endif
  if(s != prev_s) {
#if USE_SER
    format_number(s, 10, 0);
    // ser_putch(' ');    put_number(bres / 5000, 10, 0);
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
