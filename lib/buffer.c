#include "buffer.h"
#include <string.h>

buffer_t buffer;

void
buffer_init(putchar_p op) {
  buffer.p = 0;
  buffer.n = 0;
  buffer.op = op;
}

char
buffer_flush() {
  while(buffer.p < buffer.n) {
    buffer.op(buffer.x[buffer.p++]);
  }
  BUFFER_CLEAR();
  return 0;
}

char
buffer_putch(char ch) {
  if(BUFFER_SIZE - buffer.n <= 0) {
    return 0;
  }
  buffer.x[buffer.n] = ch;
  buffer.n++;
  return 1;
}

char
buffer_put(const char* buf, len_t len) {
  if(len > BUFFER_SIZE - buffer.n) { // doesn't fit

    /*    if(buffer_flush() == -1)
          return -1;

        if(len > buffer.n) {
          if(buffer_stubborn(buffer.op, buf, len) < 0)
            return -1;
          return 0;
        }*/
    return -1;
  }

  memcpy(buffer.x + buffer.n, buf, len);
  buffer.n += len;
  return 0;
}

char
buffer_puts(const char* x) {
  while(*x) {
    buffer_putch(*x);
    ++x;
  }
  return 0;
}
