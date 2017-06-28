#include "7segment.h"
#include "stdlib.h"

#ifdef USE_7SEGMENT

volatile uint8_t button_state, button_flags;
volatile uint8_t display_buffer[DISPLAY_DIGITS];
volatile uint8_t display_multiplex = 0;

static const uint8_t display_digits[] = {
	DISPLAY_DIGIT_0, DISPLAY_DIGIT_1, DISPLAY_DIGIT_2, DISPLAY_DIGIT_3, DISPLAY_DIGIT_4, DISPLAY_DIGIT_5, DISPLAY_DIGIT_6, DISPLAY_DIGIT_7, DISPLAY_DIGIT_8, DISPLAY_DIGIT_9,
	DISPLAY_LETTER_A, DISPLAY_LETTER_B, DISPLAY_LETTER_C, DISPLAY_LETTER_D, DISPLAY_LETTER_E, DISPLAY_LETTER_F,
};

void
display_init() {
	DISPLAY_SELECT_TRIS &= ~DISPLAY_SELECT_MASK;
	DISPLAY_DATA_TRIS &= ~DISPLAY_DATA_MASK;
	DISPLAY_DATA_PORT &= ~DISPLAY_DATA_MASK;
	BUTTON_TRIS = 1;
	button_state = 0;
	button_flags = 0;
}

void
display_set(uint8_t index, uint8_t segs) {
  display_buffer[index] = segs;
}
void
display_number(int16_t n) {
  int8_t i;

  for(i = DISPLAY_DIGITS-1; i >= 0; --i) {
  	display_set(i, display_digits[n & 0x0f]);
  	n >>= 4;
  }
}

#endif
 

