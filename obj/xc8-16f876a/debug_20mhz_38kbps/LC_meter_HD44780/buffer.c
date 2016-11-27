#include <htc.h>
#include <pic_chip_select.h>
#line 27 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 149 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 184 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <xc.h>
#include <htc.h>
#include <stdbool.h>
#include <stdint.h>
#line 43 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef uint8_t len_t;

typedef void buffer_fn(char);
	typedef buffer_fn* buffer_fnptr;

typedef struct {
  char x[16];
  unsigned p:4; 
  unsigned n:4; 
  buffer_fnptr op; 
} buffer_t;
#line 28 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
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
int buffer_putnlflush(); 
#include <string.h>
#line 4 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/buffer.c"
extern int
buffer_stubborn(void (*op)(char), const char* buf, len_t len);

extern int
buffer_stubborn_read(void (*op)(char), const char* buf, len_t len);
#line 23 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/buffer.c"
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
    return 0; 
  
buffer.p = 0;
  r = buffer_stubborn(buffer.op, buffer.x, p);
  
if(r > 0)
    r = 0;
  
return (int)r;
}
#line 104 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/buffer.c"
int
buffer_put(const char* buf, len_t len) {
  if(len > 16 - buffer.p) { 
    
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
  while (len > (tmp = 16 - buffer.p)) {
    
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
  
  if(!buffer.p) 
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
  ( (buffer.n != buffer.p) ? ( buffer.x[buffer.p++] = ('\r'), 0 ) : buffer_putch('\r') );
  return buffer_putflush(&nl, 1);
}

int
buffer_puts(const char *x) {
  while(*x) {
    if(( (buffer.n != buffer.p) ? ( buffer.x[buffer.p++] = (*x), 0 ) : buffer_putch(*x) ))
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
