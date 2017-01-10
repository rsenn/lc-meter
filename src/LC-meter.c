#include "interrupt.h"
#include "LC-meter.h"
#include "config-bits.h"
//#include "main.h"
#include "delay.h"

#if USE_HD44780_LCD
# include "lcd44780.h"
#endif

#if USE_NOKIA5110_LCD
# include "lcd5110.h"
#endif

#include "timer.h"

#ifdef USE_UART
# include "uart.h"
#endif

#if USE_SER
# include "ser.h"
#endif

#if USE_SOFTSER
# include "softser.h"
#endif

#include "print.h"
#include "format.h"
#include "buffer.h"


#if defined(__SDCC) || defined(SDCC)
uint16_t
__at (_CONFIG)
  __configword = CONFIG_WORD;
#endif

#define CCP1_EDGE() (CCP1M0)

volatile uint16_t bres;      // bresenham count
volatile uint16_t msecpart;  // milliseconds modulo 1000
volatile uint32_t seconds, msecs; // seconds and milliseconds counters
volatile uint32_t timer1of;  // timer 1 overflows

// volatile uint32_t ccp1t_lr, ccp1t[2];

static char
output_putch(char c) {
  lcd_putch(c);
#ifdef USE_SER
  ser_putch(c);
#endif
  return 1;
}


buffer_t buffer = BUFFER_STATIC(output_putch);


double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
uint16_t measure_freq();
void calibrate();
void measure_capacitance();
void measure_inductance();
uint32_t milliseconds();
void delay10ms(uint16_t period_10ms);


void put_str(const char*);

void put_number(void (*putchar)(char), uint16_t n, uint8_t base,
                int8_t pad /*, int8_t pointpos */);


/* Interrupt routine */
INTERRUPT_HANDLER() {

  if(TMR2IF) {

    bres += 256;

    if(bres >= 5000) {
      bres -= 5000;
      msecpart++;
      msecs++;

      SET_LED(msecpart < 500);
    }

    /* if reached 1 second... */
    if(msecpart >= 1000) {
      /* ...update clock, etc */
      seconds++;
      msecpart -= 1000;
    }

    // Clear timer interrupt bit
    TMR2IF = 0;
  }

  if(TMR1IF) {
    ++timer1of;
    TMR1IF = 0;
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
  /*CMCONbits. */ CM0 = 1;
  /*CMCONbits. */ CM1 = 0;
  /*CMCONbits. */ CM2 = 1;


  // others
#if (_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80)
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
  TRISC1 = OUTPUT; TRISC3 = OUTPUT;
  TRISC0 = INPUT; TRISC2 = INPUT;
#endif



#if USE_SER
  ser_init();
  ser_puts("LC-meter\r\n");
#endif

// initialize 5110 lcd
#if USE_NOKIA5110_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(TRUE);
  lcd_begin(2, 1);
#endif
n
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

  PEIE = 1;
  GIE = 1;

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
#if USE_NOKIA5110_LCD
  lcd_gotoxy(0, 0);
#else
  lcd_gotoxy(0, 0);
#endif
  lcd_print("LC-meter ");
 format_double(lcd_putch, CCal);
#endif


#ifdef _DEBUG
  delay10ms(5);
#else
  delay10ms(200);
#endif

  calibrate();
  lcd_clear();

  /* main loop:
   *
   * Continuously measure capacity/inductance according to switch position.
   * Blink the indicator (-*-) sign after each measurement.
   */

  for (;;) {
    if (LC_SELECT)
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

  static BOOL led = 0;
  static uint32_t prev_s = 0;
  uint32_t s;

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
  lcd_print("      ");
  lcd_gotoxy(10, 0);
#endif
  format_number(lcd_putch, s, 10, 5);

  lcd_gotoxy(10, 1);
  lcd_print("      ");
  lcd_gotoxy(10, 1);
  format_number(lcd_putch, TIMER1_VALUE, 10, 5);

  lcd_gotoxy(0, 1);
  lcd_print("     ");
  lcd_gotoxy(0, 1);
  lcd_print("RC4=");

  lcd_putch(RC4 != 0 ? '1' : '0');


//    print_print_number(measure_freq(), 16, 4);
#endif
  if(s != prev_s) {
#if USE_SER
    format_number(ser_putch, s, 10, 0);
    // ser_putch(' ');    put_number(ser_putch, bres / 5000, 10, 0);
    ser_puts("\r\n");
#endif

    prev_s = s;
  }
}

/*
 * Measure frequency on comparator output via T0CKI
 */
uint16_t
measure_freq() {
  uint8_t prev;
  uint16_t count;

  TMR0IF = 0; // clear timer0 interrupt flag
  TRISA4 = 0; // Enable RA4 output to T0CKI

  __delay_ms(20); // stablize oscillator

  TMR0 = 0x00; // reset timer0 count (including prescaler)

  delay_ms(100);

  TRISA4 = 1; // Disable RA4 output to T0CKI

  prev = TMR0;
  count = 0;

  do {
    /* self-clocking */
    T0SE = 1;
    NOP();
    NOP();

    T0SE = 0;
    NOP();
    NOP();
    count++;                              // count until TMR0 incremented
  } while (prev == TMR0 && count <= 255); // test if timer0 has incremented

  //}while(prev==TMR0);  //test if timer0 has incremented
  count = ((prev << 8) + (256 - count));



  return count;
}

/*
 * Calibrate by adding the calibration capacitor into the circuit (by relay)
 */
void
calibrate() {
  uint8_t i;

  lcd_clear();

  lcd_gotoxy(0, 0);
  put_str("Calibrating");

  lcd_gotoxy(0, 1);
  ser_puts("\r\n");
  put_str("please wait...");

  REMOVE_CCAL();

  F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);

  F1 = (double)measure_freq();
  ADD_CCAL();

  F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);

  F2 = (double)measure_freq();
  REMOVE_CCAL();

  lcd_gotoxy(11, 0);

  for(i = 0; i < 6; i++) { // show progress bar
    lcd_putch('=');
    /*    lcd_send(0xfc, LCD_TDATA);*/
    delay10ms(28);
  }

  ser_puts("\r\n");
}

/*
 * Calculate capacitance from oscillating frequency (Thompson formula)
 */
void
measure_capacitance() {
  uint8_t unit;
  uint16_t var;

  double Cin;

  lcd_gotoxy(0, 0);
  put_str("Capacity ");

  var = measure_freq();
  F3 = (double)var;
#if USE_SER
  ser_puts("var=");
  format_xint32(ser_putch, var);
  ser_puts("\r\nF1=");
  format_double(ser_putch, F1);
  ser_putch(' '); format_xint32(ser_putch, *(uint32_t*)&F1);
  ser_puts("\r\nF2=");
  format_double(ser_putch, F2);
  ser_putch(' '); format_xint32(ser_putch, *(uint32_t*)&F2);
  ser_puts("\r\nF3=");
  format_double(ser_putch, F3);
  ser_putch(' '); format_xint32(ser_putch, *(uint32_t*)&F3);
  ser_puts("\r\nCCal=");
  format_double(ser_putch, CCal);
  ser_putch(' '); format_xint32(ser_putch, *(uint32_t*)&CCal);
  ser_puts("\r\n");
#endif

  if(F3 > F1)
    F3 = F1; // max freq is F1;

  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
//  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal / (F3 * F3 * (F1 * F1 - F2 * F2));


#if USE_SER
  ser_puts("Cin=");
  format_double(ser_putch, Cin);
  ser_putch(' '); format_xint32(ser_putch, *(uint32_t*)&Cin);
  ser_puts("\r\n");
#endif
  if(Cin > 999) {
    if(Cin > (999e+03l)) {
      if(Cin > (999e+06l)) {
        Cin = Cin / (1e+09l);
        unit = 4; //"mF"
      } else {
        Cin = Cin / (1e+06l);
        unit = 5; //"uF"
      }
    } else {
      Cin = Cin / 1e+03l;
      unit = 6; //"nF"
    }
  } else
    unit = 7;      //"pF"

  Cin = Cin * 100; // scale to 2 decimal place
  var = (uint16_t)Cin;
  print_reading(var);
  print_unit(unit);
}

/*
 * Calculate inductance from oscillating frequency (Thompson formula)
 */
void
measure_inductance() {
  uint8_t unit;
  uint16_t var;

  double Lin, numerator, denominator;

  lcd_gotoxy(0, 0);
  put_str("Inductivity ");

  var = measure_freq();

  F3 = (double)var;
  if(F3 > F1)
    F3 = F1; // max freq is F1;

  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) *
              (GATE_PERIOD * GATE_PERIOD);

  denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;

  Lin = (numerator / denominator) *
        1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }

  if(Lin > 999) {
    if(Lin > (999e+03l)) {
      if(Lin > (999e+06l)) {
        Lin = Lin / (1e+09l);
        unit = 0;  // "H"
      } else {
        Lin = Lin / (1e+06l);
        unit = 1;  // "mH"
      }
    } else {
      Lin = Lin / 1e+03l;
      unit = 2;    // "uH"
    }
  } else
    unit = 3;      // "nH"

  Lin = Lin * 100; // scale to 2 decimal place
  var = (uint16_t)Lin;

  print_reading(var);
  print_unit(unit);
}

/*
 * Get the milliseconds count
 */
#define get_milliseconds(v) GIE=0,v=msecs,GIE=1
/*uint32_t
milliseconds() {
  uint32_t ms;

  GIE = 0;
  ms = msecs;
  GIE = 1;
  return ms;
}*/

/*
 * Delay using milliseconds count
 */
void
delay10ms(uint16_t period_10ms) {
    /*while(period_10ms--) {
        __delay_ms(10);
    }
  */uint32_t ms;
  BOOL run = 1;

  get_milliseconds(ms);

#ifdef _DEBUG
  ms += period_10ms >> 2;
#else
  ms += period_10ms * 10;
#endif

  do {
    GIE=0;
    if(ms <= msecs)
      run = 0;
    GIE=1;
  } while (run);
}

/*
 * Put a string to the LCD and serial (if supported)
 */
void
put_str(const char* s) {
  uint8_t i;

  for(i = 0; s[i]; i++) {
    lcd_putch(s[i]);
#ifdef USE_SER
    ser_putch(s[i]);
#endif
  }
/*#ifdef USE_SER
  ser_putch('\r');
  ser_putch('\n');
#endif*/
};


