/*
 * On-target check of the real display path: links src/measure.c (fixed
 * point Thomson calculation), src/print.c and lib/fixedmath.c unchanged and
 * replaces only the HD44780 driver by a RAM shadow of the 16x2 screen. Each
 * scenario leaves the top line in shot[n] for the simulator to read back.
 * Build + run: tests/run_mdb_display.sh
 */
#include "../lib/device.h"

#pragma config FOSC = HS, WDTE = OFF, PWRTE = ON, BOREN = OFF, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF
#include "../src/measure.h"
#include "../src/print.h"

/* top line per scenario, NUL terminated; separate arrays so each fits a RAM bank */
#if !USE_SER /* serial-only variant has no screen to capture; saves RAM */
/* 0 and 1 hold the whole top line, 2..7 only columns 8..15 (reading + unit) */
volatile char shot0[17], shot1[17], shot2[9], shot3[9], shot4[9], shot5[9], shot6[9], shot7[9];
#endif
volatile uint8_t done;

#if USE_SER
/* stub UART: records what goes out for ONE scenario (SER_LOG_SCEN, 0 =
 * capacitance, 1 = inductance) - a single array is all the RAM banks allow */
#ifndef SER_LOG_SCEN
#define SER_LOG_SCEN 0
#endif
volatile char serlog[50];
static uint8_t ser_sel, ser_n;
void
ser_putch(char c) {
  if(ser_sel == SER_LOG_SCEN && ser_n < 49)
    serlog[ser_n++] = c;
}
void
ser_puts(const char* s) {
  while(*s) ser_putch(*s++);
}
#endif

static char screen[16]; /* top line only, to save RAM */
static uint8_t cx, cy;

void
lcd_gotoxy(uint8_t col, uint8_t row) {
  cx = col;
  cy = row;
}
void
lcd_putch(char c) {
  if(cx < 16 && cy == 0)
    screen[cx] = c;
  cx++;
}
void
lcd_puts(const char* s) {
  while(*s) lcd_putch(*s++);
}
void
lcd_clear(void) {
  uint8_t i;
  for(i = 0; i < 16; i++) screen[i] = ' ';
  cx = cy = 0;
}
void
delay10ms(unsigned char n) {}

static void
capture(uint8_t n) {
#if USE_SER
  (void)n;
#else
  volatile char* d = n == 0 ? shot0 : n == 1 ? shot1 : n == 2 ? shot2 : n == 3 ? shot3 : n == 4 ? shot4 : n == 5 ? shot5 : n == 6 ? shot6 : shot7;
  uint8_t i, first = n < 2 ? 0 : 8;
  for(i = first; i < 16; i++) d[i - first] = screen[i];
  d[16 - first] = 0;
#endif
  lcd_clear();
}

void
main(void) {
  lcd_clear();
  CCal = 1000;
  F1 = 30000;
  F2 = 21300;

  measure_capacitance(29500); /* known case: 34.75 pF */
  capture(0);
#if USE_SER
  ser_sel = 1;
#endif
  measure_inductance(29500); /* known case: 9464.95 nH -> 9.46 uH */
  capture(1);
  measure_capacitance(0); /* no oscillation: range error */
  capture(2);
  measure_capacitance(1000); /* ~0.91 uF: unit switch pF->nF->uF */
  capture(3);
  measure_inductance(10000); /* large inductor */
  capture(4);
  measure_capacitance(30000); /* F3 == F1: 0 pF */
  capture(5);
  F1 = 50000; /* 100 uH + 1 nF rings at ~500 kHz: counts above the old 46340 limit */
  F2 = 35500;
  measure_capacitance(48000);
  capture(6);
  F1 = 30000;
  F2 = 21300;
  measure_inductance(2000); /* ~61.8 mH: above 42.9 mH, needs the uH fallback */
  capture(7);
  done = 1;
  for(;;) {
  }
}
