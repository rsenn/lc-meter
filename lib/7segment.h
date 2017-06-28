#ifndef PICLIB_7SEGMENT_H__
#define PICLIB_7SEGMENT_H__

#include "typedef.h"

#define SEG_A 0x80
#define SEG_B 0x40
#define SEG_C 0x20
#define SEG_D 0x10
#define SEG_E 0x08
#define SEG_F 0x04
#define SEG_G 0x02
#define SEG_H 0x01


#define DISPLAY_DIGIT_0 (SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F)
#define DISPLAY_DIGIT_1 (SEG_B|SEG_C)
#define DISPLAY_DIGIT_2 (SEG_A|SEG_B|SEG_D|SEG_E|SEG_G)
#define DISPLAY_DIGIT_3 (SEG_A|SEG_B|SEG_C|SEG_D|SEG_G)
#define DISPLAY_DIGIT_4 (SEG_B|SEG_C|SEG_F|SEG_G)
#define DISPLAY_DIGIT_5 (SEG_A|SEG_C|SEG_D|SEG_F|SEG_G)
#define DISPLAY_DIGIT_6 (SEG_A|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G)
#define DISPLAY_DIGIT_7 (SEG_A|SEG_B|SEG_C)
#define DISPLAY_DIGIT_8 (SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G)
#define DISPLAY_DIGIT_9 (SEG_A|SEG_B|SEG_C|SEG_D|SEG_F|SEG_G)


/*
 *   aaaaaa
 *   aaaaaa
 *  ff    bb
 *  ff    bb
 *  ff    bb
 *   gggggg
 *   gggggg
 *  ee    cc
 *  ee    cc
 *  ee    cc
 *   dddddd
 *   dddddd  hh
 *           hh
 */
//                         afebgcdh
#define DISPLAY_LETTER_A (SEG_A|SEG_B|SEG_C|SEG_E|SEG_F|SEG_G)
#define DISPLAY_LETTER_B (SEG_C|SEG_D|SEG_E|SEG_F|SEG_G)
#define DISPLAY_LETTER_C (SEG_A|SEG_D|SEG_E|SEG_F)
#define DISPLAY_LETTER_D (SEG_B|SEG_C|SEG_D|SEG_E|SEG_G)
#define DISPLAY_LETTER_E (SEG_A|SEG_D|SEG_E|SEG_F|SEG_G)
#define DISPLAY_LETTER_F (SEG_A|SEG_E|SEG_F|SEG_G)
#define DISPLAY_LETTER_G (SEG_A|SEG_C|SEG_D|SEG_F|SEG_G)
#define DISPLAY_LETTER_H (SEG_B|SEG_C|SEG_E|SEG_F|SEG_G)
#define DISPLAY_LETTER_I (SEG_B|SEG_C)
#define DISPLAY_LETTER_J (SEG_B|SEG_C|SEG_D|SEG_E)
#define DISPLAY_LETTER_L (SEG_D|SEG_E|SEG_F)
#define DISPLAY_LETTER_N (SEG_C|SEG_E|SEG_G)
#define DISPLAY_LETTER_O (SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F)
#define DISPLAY_LETTER_P (SEG_A|SEG_B|SEG_E|SEG_F|SEG_G)
#define DISPLAY_LETTER_Q (SEG_A|SEG_B|SEG_C|SEG_F|SEG_G)
#define DISPLAY_LETTER_R (SEG_E|SEG_G)
#define DISPLAY_LETTER_S (SEG_A|SEG_C|SEG_D|SEG_F|SEG_G)
#define DISPLAY_LETTER_T (SEG_D|SEG_E|SEG_F|SEG_G)
#define DISPLAY_LETTER_U (SEG_B|SEG_C|SEG_D|SEG_E|SEG_F)
#define DISPLAY_LETTER_V (SEG_C|SEG_D|SEG_E)
#define DISPLAY_LETTER_Y (SEG_B|SEG_C|SEG_F|SEG_G)
#define DISPLAY_LETTER_Z (SEG_A|SEG_B|SEG_D|SEG_E|SEG_G)
#define DISPLAY_DEGREE   (SEG_A|SEG_B|SEG_F|SEG_G)

#define DISPLAY_EXCLAM   (SEG_B|SEG_H)
#define DISPLAY_DASH     (SEG_G)

#define DISPLAY_DIGITS 4
#define DISPLAY_DATA_PORT   PORTB
#define DISPLAY_DATA_TRIS   TRISB
#define DISPLAY_DATA_MASK (SEG_A|SEG_F|SEG_E|SEG_B|SEG_G|SEG_C|SEG_D|SEG_H)

#define DISPLAY_SELECT_PORT PORTC
#define DISPLAY_SELECT_TRIS TRISC
#define DISPLAY_SELECT_SHIFT 4

#define DISPLAY_SELECT_MASK (((1<<DISPLAY_DIGITS)-1)<<DISPLAY_SELECT_SHIFT)
#define DISPLAY_SELECT_BIT(b) (1<<((b)+DISPLAY_SELECT_SHIFT))

#define BUTTON_PIN RB0
#define BUTTON_TRIS TRISB0

#define DISPLAY_INTERRUPT() { \
   DISPLAY_SELECT_PORT &= ~DISPLAY_SELECT_MASK; \
   DISPLAY_DATA_PORT &= ~DISPLAY_DATA_MASK; \
   DISPLAY_DATA_PORT |= display_buffer[display_multiplex]; \
   DISPLAY_SELECT_PORT |= DISPLAY_SELECT_BIT(display_multiplex); \
   display_multiplex = (display_multiplex + 1) % DISPLAY_DIGITS; \
  }


#define BUTTON_INT() { \
   	 if(button_state & (1 << display_multiplex) == 0) \
   	   button_flags |= (1 << display_multiplex); \
   	 button_state |= (1 << display_multiplex);

#define BUTTON_RBINT()) { \
   if(BUTTON_PIN == 0) { \
   	 if(button_state & (1 << display_multiplex) == 0) { \
   	   button_state |= (1 << display_multiplex); \
   	   button_flags |= (1 << display_multiplex); \
     } \
   } else { \
   	  button_state &= ~(1 << display_multiplex); \
   } \
  }

extern volatile uint8_t display_buffer[DISPLAY_DIGITS];
extern volatile uint8_t display_multiplex;
extern volatile uint8_t button_state, button_flags;


static uint8_t
button_pressed(uint8_t b) {
  uint8_t st;
  st = (button_state & b);
  if(st) {
    button_state = 0;
  }
  return st;
}

void display_init();
void display_set(uint8_t index, char segs);
void display_number(short n);

#endif // PICLIB_7SEGMENT_H__
 

