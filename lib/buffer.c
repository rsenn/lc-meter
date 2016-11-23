#include "buffer.h"
#include <string.h>

extern int
buffer_stubborn(void (*op)(char), const char* buf, len_t len);

extern int
buffer_stubborn_read(void (*op)(char), const char* buf, len_t len);

/*int
buffer_feed() {
  if(buffer.p == buffer.n) {
    int w;
    if((w = buffer_stubborn_read(buffer.op, buffer.x, BUFFER_SIZE)) < 0)
      return -1;
    buffer.n = (len_t)w;
    buffer.p = 0;
  }
  return (int)(buffer.n - buffer.p);
}
*/

void
buffer_init(void (*op)(char)) {
  buffer.p = 0;
  buffer.n = 0;
  buffer.op = op;
}

int
buffer_flush() {
  len_t p;
  int r;

  if(!(p = buffer.p))
    return 0; // buffer already empty

  buffer.p = 0;
  r = buffer_stubborn(buffer.op, buffer.x, p);

  if(r > 0)
    r = 0;

  return (int)r;
}

/*
int
buffer_get(char* x, len_t len) {
  int done;
  int blen;
  done = 0;
  if((signed)len < 0)
    len = (int)(((len_t)-1) >> 1);
  while (len) {
    if((blen = buffer_feed()) < 0)
      return blen;
    if(blen == 0)
      break;
    if(blen >= (int)len)
      blen = (int)len;
    memcpy(x, buffer.x + buffer.p, (len_t)blen);
    buffer.p += (len_t)blen;
    len -= (len_t)blen;
    x += blen;
    done += blen;
  }
  return done;
}

int
buffer_getc(char* x) {
  if(buffer.p == buffer.n) {
    int blen;
    if((blen = buffer_feed()) <= 0)
      return blen;
  }
  *x = buffer.x[buffer.p];
  ++buffer.p;
  return 1;
}

int
buffer_getn(char* x, len_t len) {
  len_t blen;

  if((int)len < 0)
    len = ((len_t)-1) >> 1;

  for(blen = 0; blen < len; ++blen) {
    int r;

    if((r = buffer_getc(x)) < 0)
      return r;

    if(r == 0)
      break;

    ++x;
  }
  return (int)blen;
}*/

int
buffer_put(const char* buf, len_t len) {
  if(len > BUFFER_SIZE - buffer.p) { // doesn't fit

    if(buffer_flush() == -1)
      return -1;

    if(len > buffer.n) {
      if(buffer_stubborn(buffer.op, buf, len) < 0)
        return -1;
      return 0;
    }
  }

  memcpy(buffer.x + buffer.p, buf, len);
  buffer.p += len;
  return 0;
}

int
buffer_putalign(const char* buf, len_t len) {
  len_t tmp;
  while (len > (tmp = BUFFER_SIZE - buffer.p)) {

    memcpy(buffer.x + buffer.p, buf, tmp);

    buffer.p += tmp;
    buf += tmp;
    len -= tmp;

    if(buffer_flush() < 0)
      return -1;
  }

  memcpy(buffer.x + buffer.p, buf, len);
  buffer.p += len;
  return 0;
}

int
buffer_putflush(const char* x, len_t len) {
  // Since we know we are going to flush anyway, let's see if we can optimize a bit
  if(!buffer.p) // if the buffer is empty, just call buffer_stubborn directly
    return buffer_stubborn(buffer.op, x, len);

  if(buffer_put(x, len) < 0)
    return -1;

  if(buffer_flush() < 0)
    return -1;

  return 0;
}

int
buffer_putnlflush() {
  static char nl = '\n';
  buffer_PUTC('\r');
  return buffer_putflush(&nl, 1);
}

int
buffer_puts(const char *x) {
  while(*x) {
    if(buffer_PUTC(*x))
      return 1;
    
    ++x;
  }
  return 0;
}

int
buffer_putsalign(const char *x) {
 return buffer_putalign(x, strlen(x));
}

int
buffer_putsflush(const char *x) {
 return buffer_putflush(x, strlen(x));
}

int
buffer_putspace() {
  static char space = ' ';
  return buffer_put(&space, 1);
}
