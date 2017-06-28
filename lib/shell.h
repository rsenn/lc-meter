#ifndef PICLIB_SHELL_H
#define PICLIB_SHELL_H

#include "typedef.h"

typedef int(get_fn)(uint16_t timeout);
typedef void(put_fn)(uint8_t);

typedef struct shell {
	char buf[32];
	uint8_t len, pos;
	get_fn* getch;
	put_fn* putch;
} shell_t;

void shell_init(shell_t* sh, get_fn* get, put_fn* put);
void shell_read(shell_t* sh, uint16_t timeout);

#endif
 

