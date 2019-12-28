#include "oscillator.h"
#include "interrupt.h"
#include "delay.h"
#include "timer.h"
#if USE_SER
#include "ser.h"
#endif
#include "config-bits.h"

#if(defined(__SDCC) || defined(SDCC)) && !PIC18
uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define CYCLES_FOR_MSEC ((unsigned long)((double)OSC_4 / 1000))

/*
 * Delay using milliseconds count
 */
void
delay10ms(unsigned char period_10ms) {
  /*	short i,j = period_10ms;
    for(i = 0; i < j; ++i)
      __delay_ms(10);*/
}

void main();

void
clockOut(int ntimes) {
  static int state;
  for(int i = 0; i < ntimes; i++) {
    state = !state;
    RC2 = state;
    delay10ms(50);
  }
}

/**
 * @brief      { function_description }
 */
void
main() {
  TRISA = 0b11001111;
  TRISC = 0b11110000;

  // Two Common Reference Comparators with Outputs
  // CM2:CM0 = 101
  CMCONbits.CM = 0b101;

  // setup timer0 for frequency counter
  timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_EXTCLK | EDGE_HIGH_LOW | TIMER0_FLAGS_8BIT);

  T0SE = 1;

  // others
#if(_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80) && !defined(__XC8__)
  RBPU = 1;
#else
  NOT_RBPU = 0;
#endif

#ifdef USE_SER
  ser_init();
#endif

  PEIE = 1;
  GIE = 1;

#ifdef _DEBUG
  delay10ms(5);
#else
  delay10ms(200);
#endif

  /* main loop:
   *
   * Continuously measure capacity/inductance according to switch position.
   * Blink the print_indicator (-*-) sign after each measurement.
   */
  for(;;) {
    ser_puts("...\n");

    TMR0 = 0;

    clockOut(10);

    delay10ms(1);

    unsigned short time_ps = timer0_read_ps();

    ser_puts("PS: ");
    ser_puthex(time_ps & 0xff);
    ser_puts("\n");
    ser_puts("TMR0: ");
    ser_puthex(time_ps >> 8);
    ser_puts("\n");

    delay10ms(100);
  }
}
