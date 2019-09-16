#include "tsmdelay.h"

#ifdef SDCC
void
delay_us(unsigned char x) {
  while(x > 0) {
    x--;
  }
  __asm nop __endasm;
}

void
delay_ms(unsigned int x) {
  unsigned char i = 255;
  for(x; x > 0; x--) {
    while(i > 0) {
      i--;
    }
    i = 255;
    while(i > 0) {
      i--;
    }
    i = 255;
    while(i > 0) {
      i--;
    }
    i = 255;
    while(i > 0) {
      i--;
    }
    i = 50;
    while(i > 0) {
      i--;
    }
  }
}
#endif
