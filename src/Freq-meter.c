//---------------------------------------------
// FREQUENCY COUNTER
// www.circuit-projects.com
// Y.Erol
//---------------------------------------------

#include "Freq-meter.h"
#include "format.h"
#include "buffer.h"

#if USE_HD44780_LCD
#include "lcd44780.h"
#endif
#if USE_NOKIA5110_LCD
#include "lcd5110.h"
#endif

#if USE_SER
#include "ser.h"
#endif

#include "config-bits.h"

static char
output_putch(char c) {
  lcd_putch(c);
#ifdef USE_SER
  ser_putch(c);
#endif
  return 1;
}


buffer_t buffer = BUFFER_STATIC(output_putch);

//__CONFIG(WDTDIS& PWRTEN& LVPDIS& XT);

uint8_t control;

//---------------------------------------------
//	     CCP1 INTERRUPT
//---------------------------------------------
INTERRUPT_HANDLER()
{
#if USE_SER
  ser_int();
#endif

  if(CCP1IF) {
    TMR1H = 0; TMR1L = 0;
    GIE = 0;

    control = 1;

    CCP1IF = 0;
    GIE = 1;
  }
}

//-----------------------------------------------------------------------------
int initialize()
{
  TRISA = 0x00;
  TRISB = 0x08;
  CMCON = 0x07;

  control = 0;
  PORTA = 0; PORTB = 0;

  CCP1IE = 1;

  CCP1CON = 0b00000110;

  T1CON = 0b00100001;

#if USE_SER
  ser_init();
#endif

  GIE = 1;
  PEIE = 1;

  //initialize 5110 lcd
#if USE_NOKIA5110_LCD
  lcd_init();
  lcd_clear();
#elif USE_HD44780_LCD
  lcd_init(TRUE);
  lcd_begin(2, 1);
#endif
}

//-----------------------------------------------------------------------------
int main()
{
  const uint8_t number[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F };
  uint8_t select[4] = {1, 2, 4, 8};
  uint32_t counter, value, remainder1, remainder2;
  float frequency;
  uint8_t a, i, display[5], data;

  initialize();
  ser_puts("Freq-meter READY.\r\n");

  for(;;) {
    static uint32_t prev_frequency = 0;

    counter = 256 * CCPR1H + CCPR1L;

    if(control == 1) frequency = 100000000 / counter;
    if(control == 0) frequency = 0;

    if(counter < 10000) frequency = 0;

    control = 0;


    if(frequency != prev_frequency) {

      format_number(ser_putch, frequency, 10, 0);
      ser_putch('\r');
      ser_putch('\n');

        __delay_ms(3);

     prev_frequency = frequency;
    }
/*
    for(a = 0; a < 25; a++) {

      value = (int)frequency;

      display[1] = value / 1000;
      remainder1 = value - display[1] * 1000;

      display[2] = remainder1 / 100;
      remainder2 = remainder1 - display[2] * 100;

      display[3] = remainder2 / 10;
      display[4] = remainder2 - display[3] * 10;


      for(i = 0; i < 4; i++) {
        PORTB = 0;
        PORTA = 0;

        data = number[display[i + 1]];
        PORTB = data & 0x07;
        data = data << 1;
        PORTB = PORTB | (data & 0xF0);

        PORTA = select[i];
        __delay_ms(3);
      }
    }*/
  }
}
