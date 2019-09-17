#include "oscillator.h"
#include "LC-meter.h"
#include "delay.h"

#if USE_UART
#include "uart.h"
#endif
#if USE_SER
#include "ser.h"
#endif

#if USE_HD44780_LCD
#include "lcd44780.h"
#endif
#include "measure.h"
#include "print.h"
#include "format.h"
#include "timer.h"
#include "buffer.h"

/*
 * Calibrate by adding the calibration capacitor into the circuit (by relay)
 */
void
calibrate() {
  uint8_t i;

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
  lcd_clear();

  lcd_gotoxy(0, 0);
  put_str("Calibrating");

  lcd_gotoxy(0, 1);
  ser_puts("\r\n");
  put_str("please wait...");
#endif

  REMOVE_CCAL();

  F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);

  F1 = (double)measure_freq();
  ADD_CCAL();

  F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);

  F2 = (double)measure_freq();
  REMOVE_CCAL();

#if USE_HD44780_LCD || USE_NOKIA5110_LCD

  lcd_gotoxy(11, 0);

  for(i = 0; i < 6; i++) { // show progress bar
    lcd_putch('=');
    /*    lcd_send(0xfc, LCD_TDATA);*/
    delay10ms(28);
  }
#endif
  ser_puts("\r\n");
}

/*
 * Measure frequency on comparator output via T0CKI
 */
unsigned short
measure_freq() {
  uint16_t count;

  INTCON &= ~0b100; // TMR0IF = 0;

  // Enable RA4 output to T0CKI:
  // If pin is set as output, C1OUT will connnect to T0CKI
  TRISA &= ~0b00010000;

  __delay_ms(20); // stablize oscillator

  // reset timer0 & prescaler
  TMR0 = 0x00;

//  SET_LED(1);

  // Wait fixed period (100ms)
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);

//  SET_LED(0);

  // Disable RA4 output to T0CKI
  TRISA |= 0b00010000;

  // Read out Timer 0 incl prescaler
  count = timer0_read_ps();

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
  lcd_gotoxy(0, 1);
#endif
  buffer_init();
  buffer_puts("Freq=");
  format_number(count, 10, 5);
  print_buffer();

  return count;
}

/*
 * Calculate capacitance from oscillating frequency (Thompson formula)
 */
void
measure_capacitance() {
  uint8_t unit;
  uint16_t var;

  double Cin;

#if USE_HD44780_LCD || USE_NOKIA5110_LCD

  lcd_gotoxy(0, 0);
  put_str("Capacity ");
#endif
  var = measure_freq();

  F3 = (double)var;
#if USE_SER
  //  putchar_ptr = &ser_putch;
  ser_puts("var=");
  format_xint32(var);
  ser_puts("\r\nF1=");
  format_double(F1);
  ser_putch(' ');
  format_xint32(*(uint32_t*)&F1);
  ser_puts("\r\nF2=");
  format_double(F2);
  ser_putch(' ');
  format_xint32(*(uint32_t*)&F2);
  ser_puts("\r\nF3=");
  format_double(F3);
  ser_putch(' ');
  format_xint32(*(uint32_t*)&F3);
  ser_puts("\r\nCCal=");
  format_double(CCal);
  ser_putch(' ');
  format_xint32(*(uint32_t*)&CCal);
  ser_puts("\r\n");
#endif
//  putchar_ptr = &output_putch;

  if(F3 > F1)
    F3 = F1; // max freq is F1;

  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
  //  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal / (F3 * F3 * (F1 * F1 - F2 * F2));

#if USE_SER
  ser_puts("Cin=");
  format_double(Cin);
  ser_putch(' ');
  format_xint32(*(uint32_t*)&Cin);
  ser_puts("\r\n");
#endif
  if(Cin > 999) {
    if(Cin > (999e+03l)) {
      if(Cin > (999e+06l)) {
        Cin = Cin / (1e+09);
        unit = 4; //"mF"
      } else {
        Cin = Cin / (1e+06);
        unit = 5; //"uF"
      }
    } else {
      Cin = Cin / 1e+03;
      unit = 6; //"nF"
    }
  } else
    unit = 7; //"pF"

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
#if USE_HD44780_LCD || USE_NOKIA5110_LCD

  lcd_gotoxy(0, 0);
  put_str("Inductivity ");
#endif
  var = measure_freq();

  F3 = (double)var;
  if(F3 > F1)
    F3 = F1; // max freq is F1;

  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (GATE_PERIOD * GATE_PERIOD);

  denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;

  Lin = (numerator / denominator) * 1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }

  if(Lin > 999) {
    if(Lin > (999e+03l)) {
      if(Lin > (999e+06l)) {
        Lin = Lin / (1e+09l);
        unit = 0; // "H"
      } else {
        Lin = Lin / (1e+06l);
        unit = 1; // "mH"
      }
    } else {
      Lin = Lin / 1e+03l;
      unit = 2; // "uH"
    }
  } else
    unit = 3; // "nH"

  Lin = Lin * 100; // scale to 2 decimal place
  var = (uint16_t)Lin;

  print_reading(var);
  print_unit(unit);
}
