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


/**
 * @brief      { function_description }
 */
void
main() {
  TRISA = 0b11001111;

  // setup timer0 for frequency counter
  timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_EXTCLK | TIMER0_FLAGS_8BIT);

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
  TRISC = 0b10111011;
#endif

#ifdef USE_SER
  ser_init();
#endif

  INTCON |= 0xc0; // PEIE = 1; GIE = 1;

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
    delay10ms(30);
  }
}
