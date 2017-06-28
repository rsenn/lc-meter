#include "delay.h"

#ifdef USE_ADCONVERTER
#include "adc.h"


// -------------------------------------------------------------------------
void
adc_init(void) {
  /* Enable ADC, port config DDDDADAA, Fosc/32 clock */
  ADCON0bits.ADCS = 0b10;
  /*ADCON1bits.*/ADCS2 = 0;

  ADCON0bits.CHS = 0;
  ADCON1bits.PCFG = 0b1110;
  TRISA |= 0b1011;

  ADIE = 0;
  ADFM = 1; // right justified
}

// -------------------------------------------------------------------------
uint16_t
adc_read(uint8_t ch) {

  uint8_t i;
  ADCON0bits.CHS = ch & 0b111;

  ADON = 1;

  for(i = 0; i < 100; i++) {}
//  _delay(100);

  if(ADIE)
    ADIF = 0;

  GO_DONE = 1;

  if(!ADIE) {
	uint16_t result;
	
    while(GO_DONE)
      ;

    result = ADRES;

    ADON = 0;

    return result;
  }
  return 0;
}

// -------------------------------------------------------------------------
//uint8_t
//adc_isr(void) {
//  if(/*PIR1bits.*/ADIF) {
//    /*PIR1bits.*/ADIF = 0;
//    if(ADRES < 45u) {
//      /* Threshold reached */
//      return 1;
//    }
//    adc_start();
//  }
//  return 0;
//}

// -------------------------------------------------------------------------
void
adc_disable(void) {
  /*ADCON0bits.*/ADON = 0;
  /*PIE1bits.*/ADIE = 0;
}


#endif // USE_ADCONVERTER
 

