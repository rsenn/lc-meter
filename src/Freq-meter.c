//---------------------------------------------
// FREQUENCY COUNTER
// www.circuit-projects.com
// Y.Erol
//---------------------------------------------

#include <pic.h>

#include "config-bits.h"

//__CONFIG(WDTDIS& PWRTEN& LVPDIS& XT);

unsigned char control;

//---------------------------------------------
//	     CCP1 INTERRUPT
//---------------------------------------------
INTERRUPT_HANDLER()
{
  TMR1H = 0; TMR1L = 0;
  GIE = 0;

  control = 1;

  CCP1IF = 0;
  GIE = 1;
}

//---------------------------------------------
//		MAIN PROGRAM
//---------------------------------------------
int main()
{
  unsigned const char number[10] = {0x3F, 0x06, 0x5B,
                                    0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F
                                   };
  unsigned char select[4] = {1, 2, 4, 8};
  unsigned int counter, value, remainder1, remainder2;
  float frequency;
  unsigned char a, i, display[5], data;

  TRISA = 0x00;
  TRISB = 0x08;
  CMCON = 0x07;

  control = 0;
  PORTA = 0; PORTB = 0;

  CCP1IE = 1;

  CCP1CON = 0b00000110;

  T1CON = 0b00100001;

  GIE = 1;
  PEIE = 1;

  for(;;) {


    counter = 256 * CCPR1H + CCPR1L;

    if(control == 1)frequency = 100000000 / counter;
    if(control == 0)frequency = 0;

    if(counter < 10000)frequency = 0;

    control = 0;

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
    }
  }
}