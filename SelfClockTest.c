#include "lib/oscillator.h"
#include "lib/interrupt.h"
#include "lib/delay.h"
#include "lib/timer.h"
#if USE_SER
#include "lib/ser.h"
#endif
#include "config-bits.h"

#if defined(HI_TECH_C)
#warning HTC
__CONFIG(FOSC_HS& WDTE_OFF& PWRTE_ON& LVP_OFF& CPD_OFF& DEBUG_OFF& CP_OFF);
#elif defined(__XC)
#warning XC
#pragma config FOSC = HS, LVP = OFF, CPD = OFF, BOREN = OFF, WDTE = OFF
#endif

#if(defined(__SDCC) || defined(SDCC)) && !PIC18
uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define CYCLES_FOR_MSEC ((unsigned long)((double)OSC_4 / 1000))

/*
 * Delay using milliseconds count
 */
void
delay10ms(unsigned char period_10ms) {
  	short i,j = period_10ms;
    for(i = 0; i < j; ++i)
      delay_ms(10);
}


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
  // setup comparator
  CMCON = 0b00000101;
  TRISA = 0b11001111;
  // setup timer0 for frequency counter
  T0CS = 1; // Transition on T0CKI pin
  T0SE = 1; // Increment on high-to-low transition on T0CKI pin
  PSA = 0;  // Prescaler is assigned to the Timer0 module
  PS2 = 1;  // PS2:PS0 -> Prescaler Rate = divide by 256
  PS1 = 1;
  PS0 = 1;

#ifdef USE_SER
  ser_init();
#endif
#if USE_UART
  uart_init();
#endif
  TRISC &= ~0b01000000;

  PEIE = 1;
  GIE = 1;

#if(_HTC_VER_MINOR_ >= 80) || defined(__XC__)
  nRBPU = 1; // enable portB internal pullup
#else
  RBPU = 0; // enable portB internal pullup
#endif


#ifdef __DEBUG
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
