#ifndef PICLIB_BUFFER_H
#define PICLIB_BUFFER_H 1

#include "typedef.h"

#define BUFFER_SIZE 16

#if BUFFER_SIZE == 16
#define BUFFER_PTRSIZE 4
#endif

typedef uint8_t len_t;


typedef struct {
  char x[BUFFER_SIZE];
  unsigned p:BUFFER_PTRSIZE;        /* current position */
  unsigned n:BUFFER_PTRSIZE;        /* current size of string in buffer */
  putchar_p op;    /* putch() function */
} buffer_t;

#define BUFFER_STATIC(op) { {0}, 0, 0, op }
#define BUFFER_CLEAR() buffer.p=0,buffer.n=0,0
#define BUFFER_INIT(op) buffer.op=&(op),BUFFER_CLEAR()
#define BUFFER_LEN() (buffer.n-buffer.p)

extern buffer_t buffer;

void buffer_init(putchar_p op);
char buffer_flush();
char buffer_putch(char ch);
char buffer_put(const char *x, len_t len);
char buffer_puts(const char *x);


#define buffer_PUTC(c) \
  ( (buffer.n  < BUFFER_SIZE) \
    ? ( buffer.x[buffer.n++] = (c), 0 ) \
    : buffer_putch(c) \
  )

/*int buffer_get(char *x, len_t len);
int buffer_feed();
int buffer_getc(char *x);
int buffer_getn(char *x, len_t len);*/

#endif // defined PICLIB_BUFFER_H

