#include "midi.h"
#include "uart.h"



// -------------------------------------------------------------------------
void
midi_send(const putch_ptr putch, uint8_t cmd, uint8_t d1, uint8_t d2, uint8_t chan) {
  putch((cmd & 0b11110000) | (chan & 0b1111));
  putch(d1);
  putch(d2);
}
 

