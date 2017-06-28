#include "shell.h"
#include "softser.h"
#include "uart.h"

#include <string.h>

#define TOUPPER(CH) \
  (((CH) >= 'a' && (CH) <= 'z') ? ((CH) - 'a' + 'A') : (CH))

void putbinary(void (*putch)(char), uint8_t b) {
	uint8_t test = 0x80;
	putch((b & test) ? '1' : '0'); test >>= 1;
	putch((b & test) ? '1' : '0'); test >>= 1;
	putch((b & test) ? '1' : '0'); test >>= 1;
	putch((b & test) ? '1' : '0'); test >>= 1;
	putch((b & test) ? '1' : '0'); test >>= 1;
	putch((b & test) ? '1' : '0'); test >>= 1;
	putch((b & test) ? '1' : '0'); test >>= 1;
	putch((b & test) ? '1' : '0');
}

int
stricmp (const char *s1, const char *s2)
{
  while (*s2 != 0 && TOUPPER (*s1) == TOUPPER (*s2))
    s1++, s2++;
  return (int) (TOUPPER (*s1) - TOUPPER (*s2));
}

struct cmd;

typedef int (cmdfn)(const struct cmd*, char*);

static int cmd_set(const struct cmd *, char* arg);
static int cmd_get(const struct cmd *, char* arg);
static int cmd_bitop(const struct cmd *, char* arg);

typedef const struct cmd {
	const char* name;
	cmdfn* fn;
} cmd_t;


const cmd_t cmds[] = {
	{ "set", &cmd_set },
	{ "get", &cmd_get },
	{ "bitop", &cmd_bitop },
};

void
shell_puts(shell_t* sh, const char* s)
{
	while(*s) {
		sh->putch(*s++);
	}
}

void
shell_init(shell_t* sh, get_fn* get, put_fn* put)
{
	sh->pos = sh->len = 0;
	sh->getch = get;
	sh->putch = put;

	shell_puts(sh, "pictest shell v1.0\n");
}

void
shell_read(shell_t* sh, uint16_t timeout) {
	char *p;
	int ch;
	uint8_t i;
	while((ch = sh->getch(timeout)) >= 0) {

		sh->putch(0x0d);
		sh->putch(0x0a);
		 putbinary(sh->putch, ch);

		if(ch == '\r' || ch == '\n') {

shell_puts(sh, "-- ok --\n");

			sh->buf[sh->pos] = '\0';

			p = sh->buf;
			while(*p != '\0' && *p != ' ')
			  ++p;

			for(i = 0; i < sizeof(cmds) / sizeof(cmds[0]); ++i) {


				if(!stricmp((const char*)sh->buf, cmds[i].name)) {
					cmds[i].fn(&cmds[i], p);
					break;
				}
			}

			shell_puts(sh, "no such command: ");
			shell_puts(sh, sh->buf);
			sh->putch('\n');
			break;
		}

		sh->buf[sh->pos++] = (uint8_t)ch;
	}
}


int cmd_set(const cmd_t *cmd, char* arg) {
	return 0;
}
int cmd_get(const cmd_t *cmd, char* arg) {
	return 0;
}
int cmd_bitop(const cmd_t *cmd, char* arg) {
	return 0;
}
 

