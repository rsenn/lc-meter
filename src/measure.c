#include "oscillator.h"
#include "LC-meter.h"
#include "config-bits.h"
#include "delay.h"

#if USE_SER
#include "ser.h"
#endif

#if USE_HD44780_LCD
#include "lcd44780.h"
#endif
#include "print.h"
#include "format.h"

/*
 * Measure frequency on comparator output via T0CKI
 */
uint16_t
measure_freq() {
  uint8_t prev;
  uint16_t count;

  TMR0IF = 0; // clear timer0 interrupt flag

  TRISA &= ~0b00010000; // Enable RA4 output to T0CKI
                        //  TRISA4 = 0;

  __delay_ms(20); // stablize oscillator

  TMR0 = 0x00; // reset timer0 count (including prescaler)

  for(char i = 0; i < 10; i++) delay_ms(10);

  TRISA |= 0b00010000; // Disable RA4 output to T0CKI

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
    count++;                             // count until TMR0 incremented
  } while(prev == TMR0 && count <= 255); // test if timer0 has incremented

  //}while(prev==TMR0);  //test if timer0 has incremented
  count = ((prev << 8) + (256 - count));
#if USE_HD44780_LCD || USE_NOKIA5110_LCD

  lcd_gotoxy(0, 1);
  put_str("Freq=");
  format_number(/*lcd_putch,*/ count, 10, 5);
#endif
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
  format_xint32(/*ser_putch,*/ var);
  ser_puts("\r\nF1=");
  format_double(/*ser_putch,*/ F1);
  ser_putch(' ');
  format_xint32(/*ser_putch,*/ *(uint32_t*)&F1);
  ser_puts("\r\nF2=");
  format_double(/*ser_putch,*/ F2);
  ser_putch(' ');
  format_xint32(/*ser_putch,*/ *(uint32_t*)&F2);
  ser_puts("\r\nF3=");
  format_double(/*ser_putch,*/ F3);
  ser_putch(' ');
  format_xint32(/*ser_putch,*/ *(uint32_t*)&F3);
  ser_puts("\r\nCCal=");
  format_double(/*ser_putch,*/ CCal);
  ser_putch(' ');
  format_xint32(/*ser_putch,*/ *(uint32_t*)&CCal);
  ser_puts("\r\n");
#endif
  putchar_ptr = &output_putch;

  if(F3 > F1)
    F3 = F1; // max freq is F1;

  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
  //  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal / (F3 * F3 * (F1 * F1 - F2 * F2));

#if USE_SER
  ser_puts("Cin=");
  format_double(/*ser_putch,*/ Cin);
  ser_putch(' ');
  format_xint32(/*ser_putch,*/ *(uint32_t*)&Cin);
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
