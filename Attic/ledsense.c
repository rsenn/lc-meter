#include "ledsense.h"
#include "typedef.h"
#include "const.h"
#include "adc.h"
#include "lcd44780.h"
#include "ds18b20.h"

//-----------------------------------------------------------------------------
#define LS_A_PIN OUTA2
#define LS_A_TRIS TRISA2
#define LS_K_PIN OUTA1
#define LS_K_TRIS TRISA1

// -------------------------------------------------------------------------
void
ledsense_emit(bool on) {
  LS_A_TRIS = LS_K_TRIS = OUTPUT;

  LS_A_PIN = on;
  LS_K_PIN = LOW;
}

// -------------------------------------------------------------------------
void
ledsense_charge() {
  LS_A_TRIS = LS_K_TRIS = OUTPUT;

  LS_A_PIN = LOW;
  LS_K_PIN = HIGH;
}

// -------------------------------------------------------------------------
uint16_t
ledsense_read() {
  LS_K_TRIS = INPUT;

  return adc_read(1);
}

extern volatile bool control;

// -------------------------------------------------------------------------
void
ledsense_loop() {}
