#include "interrupt.h"
#include "LC-meter.h"
#include "config-bits.h"
//#include "main.h"
#include "delay.h"

#if USE_HD44780_LCD
# include "lcd44780.h"
#endif

#if USE_NOKIA3310_LCD
# include "lcd3310.h"
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

#include "display.h"
#include "format.h"


#ifdef SDCC
uint16_t
__at (_CONFIG)
  __configword = CONFIG_WORD;
#endif

#define CCP1_EDGE() (CCP1M0)

volatile uint16_t bres;
volatile uint16_t msecpart;
volatile uint32_t seconds, msecs;
volatile uint32_t tmr1_overflows;

// volatile uint32_t ccp1t_lr, ccp1t[2];

float F1, F2, F3;
void main();
void loop();
void testloop();
void initialize();
uint16_t measure_freq();
void calibrate();
void measure_capacitance();
void measure_inductance();
void delay10ms(uint16_t period_10ms);


void put_str(const char*);

void put_number(void (*putchar)(char), uint16_t n, uint8_t base,
                int8_t pad /*, int8_t pointpos */);

INTERRUPT_HANDLER() {

  if (TMR2IF) {

    bres += 256;

    if (bres >= 5000) {
      bres -= 5000;
      msecpart++;
      msecs++;

      SET_LED(msecpart < 500);
    }
    if (msecpart >= 1000) { // if reached 1 second!
      seconds++;            // update clock, etc
      msecpart -= 1000;

      ////      SET_LED2(seconds&1);
    }

    // TMR1H = 0xff;

    // Clear timer interrupt bit
    TMR2IF = 0;
  }

  if(TMR1IF) {
    ++tmr1_overflows;
    TMR1IF = 0;
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

#if USE_HD44780_LCD || USE_NOKIA3310_LCD
#if USE_NOKIA3310_LCD
  lcd_gotoxy(0, 0);
#else
  lcd_set_cursor(0, 0);
#endif
  lcd_print("LC-meter");
#endif
  delay10ms(200);

  calibrate();
  lcd_clear();


  for (;;)
    loop();
}

void
loop() {
  if (LC_SELECT)
    measure_capacitance();
  else
    measure_inductance();
  indicator(1);
  delay10ms(30);
  indicator(0);
  delay10ms(20);
}

void
testloop() {
  
    static bool led = 0;
    static uint32_t prev_seconds = 0;
    uint32_t s;

    delay10ms(10);

    GIE = 0;
    s = seconds;
    GIE = 1;

  #ifdef USE_SOFTSER
    softser_puts("XXXX\r\n");
  #endif

  #if USE_HD44780_LCD || USE_NOKIA3310_LCD
  #if USE_NOKIA3310_LCD
    lcd_gotoxy(0, 0);
  #else
    lcd_set_cursor(10, 0);
    lcd_print("      ");
    lcd_set_cursor(10, 0);
  #endif
    format_number(lcd_putch, s, 10, 5);

    lcd_set_cursor(10, 1);
    lcd_print("      ");
    lcd_set_cursor(10, 1);
    format_number(lcd_putch, TIMER1_VALUE, 10, 5);

    lcd_set_cursor(0, 1);
    lcd_print("     ");
    lcd_set_cursor(0, 1);
    lcd_print("RC4=");
    lcd_putch(RC4 != 0 ? '1' : '0');



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
  bres = msecpart = msecs = seconds = 0;

  // setup comparator
  /*CMCONbits. */ CM0 = 1;
  /*CMCONbits. */ CM1 = 0;
  /*CMCONbits. */ CM2 = 1;

  TRISA = 0b11001111;

  // others
  NOT_RBPU = 1; // enable portB internal pullup

  INIT_LED();
  SET_LED(1);

  SSPEN = 0;
 
   timer0_init(PRESCALE_1_1);

  timer1_init(PRESCALE_1_1 | TIMER1_FLAGS_EXTCLK);
  tmr1_overflows = 0;

  timer2_init(PRESCALE_1_1 | TIMER2_FLAGS_INTR);

#if !NO_PORTC
  TRISC &= ~0b1010;
  TRISC |= 0b0101;
#endif
  LC_TRIS();
  RELAY_TRIS();
/*
#if USE_SOFTSER
  softser_init();
  timer1_init(PRESCALE_1_1);
#endif*/
#if USE_SER
  ser_init();
  ser_puts("LC-meter\r\n");
#endif

// initialize 3310 lcd
#if USE_NOKIA3310_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(true);
  lcd_begin(2, 1);
#endif


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

uint16_t
measure_freq() {
  uint16_t prev_tmr0, prescaler_cntr;
  TMR0IF = 0;   // clear timer0 interrupt flag
  TRISA4 = 0;   // Enable RA4 output to T0CKI
  delay10ms(2); // stablize oscillator
  TMR0 = 0x00;  // reset timer0 counter (including prescaler)
  delay10ms(10);
  TRISA4 = 1; // Disable RA4 output to T0CKI
  prev_tmr0 = TMR0;
  prescaler_cntr = 0;
  do { // self-clocking
    T0SE = 1;
    NOP();
    NOP();
    T0SE = 0;
    NOP();
    NOP();
    prescaler_cntr++; // count until TMR0 incremented
  } while (prev_tmr0 == TMR0 &&
           prescaler_cntr <= 255); // test if timer0 has incremented
  //}while(prev_tmr0==TMR0);  //test if timer0 has incremented
  return ((prev_tmr0 << 8) + (256 - prescaler_cntr));
}

void
calibrate() {
  uint8_t i;
  lcd_clear();
  lcd_set_cursor(0,0);
  put_str("Calibrating.");
  lcd_set_cursor(0, 1);
  put_str("please wait..");
  REMOVE_CCAL();
  F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);
  F1 = (double)measure_freq();
  ADD_CCAL();
  F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);
  F2 = (double)measure_freq();
  REMOVE_CCAL();
   lcd_set_cursor(14, 0);
  for (i = 0; i < 6; i++) { // show progress bar
    lcd_putch('=');
/*    lcd_send(0xfc, LCD_TDATA);*/
    delay10ms(28);
  }
}

void
measure_capacitance() {
  uint8_t unit;
  uint16_t var;
  double Cin;
  lcd_set_cursor(0, 0);
  put_str("Capact.:");
  var = measure_freq();
  F3 = (double)var;
  if (F3 > F1)
    F3 = F1; // max freq is F1;
  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * C_CAL / (F3 * F3 * (F1 * F1 - F2 * F2));
  if (Cin > 999) {
    if (Cin > (999e+03l)) {
      if (Cin > (999e+06l)) {
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
    unit = 7; //"pF"
  Cin = Cin * 100;   // scale to 2 decimal place
  var = (uint16_t)Cin;
    display_unit(unit);
    display_reading(var);
}

void
measure_inductance() {
  uint8_t unit;
  uint16_t var;
  double Lin, numerator, denominator;
  lcd_set_cursor(0, 0);
  put_str("Induct.:");
  var = measure_freq();
  F3 = (double)var;
  if (F3 > F1)
    F3 = F1; // max freq is F1;
  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) *
              (GATE_PERIOD * GATE_PERIOD);
  denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * C_CAL;
  Lin = (numerator / denominator) *
        1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }
  if (Lin > 999) {
    if (Lin > (999e+03l)) {
      if (Lin > (999e+06l)) {
        Lin = Lin / (1e+09l);
        unit = 0; //"H"
      } else {
        Lin = Lin / (1e+06l);
        unit = 1; //"mH"
      }
    } else {
      Lin = Lin / 1e+03l;
      unit = 2; //"uH"
    }
  } else
    unit = 3; //"nH"
  Lin = Lin * 100;   // scale to 2 decimal place
  var = (uint16_t)Lin;
    display_unit(unit);
    display_reading(var);
}


void delay10ms(uint16_t period_10ms) {
  uint32_t ms = period_10ms * 10;
  bool run = 1;
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

void
put_str(const char* s) {
  uint8_t i;
  for(i = 0; s[i]; i++) {
    lcd_putch(s[i]);
#ifdef USE_SER
    ser_putch(s[i]);
#endif
  }
#ifdef USE_SER
  ser_putch('\r');
  ser_putch('\n');
#endif
}