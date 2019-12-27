#include "buffer.h"
#include <string.h>

buffer_t buffer;

/**
 * @brief      { function_description }
 */
void
buffer_init(void) {
  buffer.p = 0;
  buffer.n = 0;
}

/**
 * @brief      { function_description }
 *
 * @return     { description_of_the_return_value }
 */
char
buffer_flush() {
  /*while(buffer.p < buffer.n)
    buffer.op(buffer.x[buffer.p++]);
    */
  BUFFER_CLEAR();
  return 0;
}

char
buffer_putch(char ch) {
  if(BUFFER_SIZE - buffer.n <= 0)
    return 0;
  buffer.x[buffer.n] = ch;
  buffer.n++;
  return 1;
}

char
buffer_put(const char* buf, len_t len) {
  len_t i;
  if(len > BUFFER_SIZE - buffer.n) // doesn't fit
    return -1;
  for(i = 0; i < len; i++)
    buffer.x[buffer.n + i] = buf[i];
  buffer.n += len;
  return 0;
}

/**
 * @brief      { function_description }
 *
 * @param[in]  x     { parameter_description }
 *
 * @return     { description_of_the_return_value }
 */
char
buffer_puts(const char* x) {
  while(*x) {
    buffer_putch(*x);
    ++x;
  }
  return 0;
}
