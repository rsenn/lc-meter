#include "../lib/device.h"
#include "../lib/oscillator.h"
#include "../LC-meter.h"
#include "../lib/delay.h"

#if USE_UART
#include "../lib/uart.h"
#endif
#if USE_SER
#include "../lib/ser.h"
#endif

#if USE_HD44780_LCD
#include "../lib/lcd44780.h"
#endif
#include "measure.h"
#include "print.h"
#include "../lib/format.h"
#include "../lib/timer.h"
#include "../lib/buffer.h"

#ifdef USE_FIXED
#include "../lib/fixedmath.h"
/* raw Timer0 counts over the gate window; CCal in pF */
uint16_t F1, F2, F3;
uint32_t CCal;
#else
double F1, F2, F3, CCal;
#endif

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
#if USE_SER
  ser_puts("\r\n");
#endif
  put_str("please wait...");
#endif

#if USE_SER
  ser_puts("calibrating...\r\n");
#endif

  REMOVE_CCAL();

  F1 = measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);

  F1 = measure_freq();
  ADD_CCAL();

  F2 = measure_freq(); // dummy reading to stabilize oscillator
  delay10ms(50);

  F2 = measure_freq();
  REMOVE_CCAL();

#if USE_HD44780_LCD || USE_NOKIA5110_LCD
  lcd_gotoxy(11, 0);
  for(i = 0; i < 6; i++) { // show progress bar
    lcd_putch('=');
    /*    lcd_send(0xfc, LCD_TDATA);*/
    delay10ms(28);
  }
#endif
#if USE_SER
  ser_puts("\r\n");
#endif
}

/*
 * Measure frequency on comparator output via T0CKI
 */
uint16_t
measure_freq() {
  uint16_t count;

  TMR0IF = 0;

  // Enable RA4 output to T0CKI:
  // If pin is set as output, C1OUT will connnect to T0CKI
  TRISA &= ~0b00010000;

  delay_ms(20); // stablize oscillator

  // reset timer0 & prescaler
  TMR0 = 0x00;

  //  SET_LED(1);

  // Wait fixed period (100ms)
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);
  delay_ms(10);

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
  format_number(&buffer_putch, count, 10, 5);
  print_buffer();

  return count;
}
#if USE_SER
void
buf_to_ser() {
  ser_put(buffer.x, buffer.n);
  BUFFER_CLEAR();
}
#endif

#ifdef USE_FIXED
/*
 * Fixed point (uint32_t only) Thomson calculation, see tests/test_fixed32.c
 * and TODO.md for the derivation. No float/double anywhere in this path.
 */
#define F_MAX_SAFE 65535u /* full 16-bit counter range: F*F < 2^32 still fits a uint32_t */

/* (F1/Fx)^2 - 1 as an adaptively scaled Q(fb) value */
static void
ratio_sq_minus_1_q(uint16_t Fa, uint16_t Fx, qval_t* r) {
  uint32_t f1sq, fxsq;
  r->m = 0;
  r->fb = 0;
  r->fault = 1;
  if(Fa > F_MAX_SAFE || Fx > F_MAX_SAFE || Fx == 0)
    return;
  f1sq = (uint32_t)Fa * Fa;
  fxsq = (uint32_t)Fx * Fx;
  if(f1sq < fxsq)
    return;
  fixed_div_u32(f1sq - fxsq, fxsq, r);
}

/* capacitance in pF * 100 */
static uint32_t
capacitance_x100(uint8_t* fault) {
  qval_t r13, r12;
  uint8_t common_fb;
  uint32_t n13, n12;

  *fault = 0;
  ratio_sq_minus_1_q(F1, F3, &r13);
  ratio_sq_minus_1_q(F1, F2, &r12);
  if(r13.fault || r12.fault) {
    *fault = 1;
    return 0;
  }
  common_fb = r13.fb < r12.fb ? r13.fb : r12.fb;
  n13 = fixed_align_to(&r13, common_fb);
  n12 = fixed_align_to(&r12, common_fb);
  if(n12 == 0) {
    *fault = 1;
    return 0;
  }
  return muldiv_u32(n13, CCal * 100, n12, fault);
}

/*
 * inductance in nH * 100; above 42.9 mH that no longer fits 32 bits, so the
 * result is then given in uH * 100 and *unit is lowered from 3 (nH) to 2 (uH)
 */
static uint32_t
inductance_x100(uint8_t* fault, uint8_t* unit) {
  uint32_t r;
  qval_t r13, r12;
  uint32_t r13_q20, r12_q20, prod_q20, f1sq, step1, tmp;
  const uint32_t LSCALE_X1e7 = 2533030450uL; /* GATE_PERIOD^2/(4*pi^2) * 1e7 for GATE_PERIOD = 100ms */

  *fault = 0;
  ratio_sq_minus_1_q(F1, F3, &r13);
  ratio_sq_minus_1_q(F1, F2, &r12);
  if(r13.fault || r12.fault) {
    *fault = 1;
    return 0;
  }
  r13_q20 = fixed_align_to(&r13, r13.fb < 20 ? r13.fb : 20);
  r12_q20 = fixed_align_to(&r12, r12.fb < 20 ? r12.fb : 20);

  prod_q20 = muldiv_u32(r13_q20, r12_q20, 1048576uL, fault);
  if(*fault)
    return 0;
  f1sq = (uint32_t)F1 * F1;
  if(f1sq == 0 || CCal == 0) {
    *fault = 1;
    return 0;
  }
  step1 = muldiv_u32(prod_q20, LSCALE_X1e7, f1sq, fault);
  if(*fault)
    return 0;
  tmp = muldiv_u32(step1, 100000uL, 1048576uL, fault);
  if(*fault)
    return 0;
  r = muldiv_u32(tmp, 100000uL, CCal, fault);
  if(*fault) { /* > 42.9 mH: redo one unit up */
    *fault = 0;
    *unit = 2;
    r = muldiv_u32(tmp, 100uL, CCal, fault);
  }
  return r;
}

/*
 * Bring value v (given in the smallest unit * 100) into the 0..655.35 range
 * by stepping up to the next unit (x1000) while it does not fit in 16 bits.
 * unit counts down: 7..4 for pF..mF, 3..0 for nH..H.
 */
static uint16_t
scale_reading(uint32_t v, uint8_t* unit, uint8_t lowest) {
  while(v > 65535uL && *unit > lowest) {
    v = v / 1000 + ((v % 1000) >= 500);
    (*unit)--;
  }
  return v > 65535uL ? 65535u : (uint16_t)v;
}

#if USE_SER
static void
dump_counts(void) {
  ser_puts("F1=");
  format_number(&ser_putch, F1, 10, 0);
  ser_puts(" F2=");
  format_number(&ser_putch, F2, 10, 0);
  ser_puts(" F3=");
  format_number(&ser_putch, F3, 10, 0);
  ser_puts("\r\n");
}
#endif

void
measure_capacitance(uint16_t var) {
  uint8_t unit = 7, fault;
  uint32_t v;

  print_label("Capacity");
  F3 = var > F1 ? F1 : var; // max freq is F1
#if USE_SER
  dump_counts();
#endif
  v = capacitance_x100(&fault);
  if(fault) {
    print_error();
    return;
  }
  print_reading(scale_reading(v, &unit, 4));
  print_unit(unit);
}

void
measure_inductance(uint16_t var) {
  uint8_t unit = 3, fault;
  uint32_t v;

  print_label("Induct.");
  F3 = var > F1 ? F1 : var; // max freq is F1
#if USE_SER
  dump_counts();
#endif
  v = inductance_x100(&fault, &unit);
  if(fault) {
    print_error();
    return;
  }
  print_reading(scale_reading(v, &unit, 0));
  print_unit(unit);
}

#else /* !USE_FIXED */
/*
 * Largest value printed in one unit. The reading is scaled by 100 and passed
 * to print_reading() as uint16_t, so it must stay below 655.35.
 */
#define READING_MAX 655

/*
 * Calculate capacitance from oscillating frequency (Thompson formula)
 */
void
measure_capacitance(uint16_t var) {
  uint8_t unit;
  //  uint16_t var;

  double Cin;

  print_label("Capacity");
  //  var = measure_freq();

  F3 = (double)var;

#if USE_SER
  //  putchar_ptr = &ser_putch;
  ser_puts("var=");
  format_xint32(&ser_putch, var);
  ser_puts("\r\nF1=");
  format_float(&ser_putch, F1);
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&F1);
  ser_puts("\r\nF2=");
  format_float(&ser_putch, F2);
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&F2);
  ser_puts("\r\nF3=");
  format_float(&ser_putch, F3);
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&F3);
  ser_puts("\r\nCCal=");
  format_float(&ser_putch, CCal);
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&CCal);
  ser_puts("\r\n");
#endif
  //  putchar_ptr = &output_putch;

  if(F3 > F1)
    F3 = F1; // max freq is F1;

  //Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal / (F3 * F3 * (F1 * F1 - F2 * F2));

#if USE_SER
  ser_puts("Cin=");
  format_float(&ser_putch, Cin);
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&Cin);
  ser_puts("\r\n");
#endif
  if(Cin > READING_MAX) {
    if(Cin > (READING_MAX * 1e+03l)) {
      if(Cin > (READING_MAX * 1e+06l)) {
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
measure_inductance(uint16_t var) {
  uint8_t unit;
  // uint16_t var;

  double Lin, numerator, denominator;
  print_label("Induct.");
  //  var = measure_freq();

  F3 = (double)var;
  if(F3 > F1)
    F3 = F1; // max freq is F1;
  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 * F2)) * (GATE_PERIOD * GATE_PERIOD);
  denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
  Lin = (numerator / denominator) * 1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }

  if(Lin > READING_MAX) {
    if(Lin > (READING_MAX * 1e+03l)) {
      if(Lin > (READING_MAX * 1e+06l)) {
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

#endif /* !USE_FIXED */
