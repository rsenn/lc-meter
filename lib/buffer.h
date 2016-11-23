#ifndef BUFFER_H
#define BUFFER_H 1

#include "typedef.h"

#define BUFFER_SIZE 16

#if BUFFER_SIZE == 16
#define BUFFER_PTRSIZE 4
#endif

typedef struct {
  char x[BUFFER_SIZE];
  unsigned int p:BUFFER_PTRSIZE;		/* current position */
  unsigned int n:BUFFER_PTRSIZE;		/* current size of string in buffer */
  int (*op)();	/* putch() or getch() function */
} buffer_t;

#define BUFFER_INIT(op) { {}, 0, 0, op }

extern buffer_t buffer;

int buffer_flush();
int buffer_putch(char ch);
int buffer_put(const char* x,unsigned len);
int buffer_putalign(const char* x,unsigned len);
int buffer_putflush(const char* x,unsigned len);
int buffer_puts(const char* x);
int buffer_putsalign(const char* x);
int buffer_putsflush(const char* x);

int buffer_putspace();
int buffer_putnlflush(); /* put \n and flush */

#define buffer_PUTC(c) \
  ( (buffer.n != buffer.p) \
    ? ( buffer.x[buffer.p++] = (c), 0 ) \
    : buffer_putch(c) \
  )

int buffer_get(char* x,unsigned len);
int buffer_feed();
int buffer_getc(char* x);
int buffer_getn(char* x,unsigned len);

#endif // defined BUFFER_H
