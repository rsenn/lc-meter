#ifndef BUFFER_H
#define BUFFER_H 1

#include "typedef.h"

#define BUFFER_SIZE 16

#if BUFFER_SIZE == 16
#define BUFFER_PTRSIZE 4
#endif

typedef uint8_t len_t;

typedef void buffer_fn(char);
	typedef buffer_fn* buffer_fnptr;

typedef struct {
  char x[BUFFER_SIZE];
  unsigned p:BUFFER_PTRSIZE;        /* current position */
  unsigned n:BUFFER_PTRSIZE;        /* current size of string in buffer */
  buffer_fnptr op;    /* putch() function */
} buffer_t;

#define BUFFER_STATIC(op) { {0}, 0, 0, op }
#define BUFFER_CLEAR() buffer.p=0,buffer.n=0,0
#define BUFFER_INIT(op) buffer.op=&(op),BUFFER_CLEAR()

extern buffer_t buffer;

void buffer_init(void (*op)(char));
int buffer_flush();
int buffer_putch(char ch);
int buffer_put(const char *x, len_t len);
int buffer_putalign(const char *x, len_t len);
int buffer_putflush(const char *x, len_t len);
int buffer_puts(const char *x);
int buffer_putsalign(const char *x);
int buffer_putsflush(const char *x);

int buffer_putspace();
int buffer_putnlflush(); /* put \n and flush */

#define buffer_PUTC(c) \
  ( (buffer.n != buffer.p) \
    ? ( buffer.x[buffer.p++] = (c), 0 ) \
    : buffer_putch(c) \
  )

/*int buffer_get(char *x, len_t len);
int buffer_feed();
int buffer_getc(char *x);
int buffer_getn(char *x, len_t len);*/

#endif // defined BUFFER_H
