#include <xc.h>
#include <stdbool.h>
#include <stdint.h>
#line 65 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.h"
extern double F1, F2, F3, CCal;

void delay10ms(unsigned char period_10ms);
#line 50 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
typedef struct dvars {
uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 68 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
extern dvars dvar;
#line 78 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
void cycle_eater(void);
#line 46 "/home/roman/Dokumente/Sources/lc-meter/lib/delay.h"
void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
#line 48 "/home/roman/Dokumente/Sources/lc-meter/lib/lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(uint8_t l, uint8_t ds);
void lcd_no_autoscroll(void);
void lcd_autoscroll(void);
void lcd_right_to_left(void);
void lcd_left_to_right(void);
void lcd_scroll_print_right(void);
void lcd_scroll_print_left(void);
void lcd_blink();
void lcd_no_blink();
void lcd_cursor();
void lcd_no_cursor();
void lcd_display();
void lcd_no_display();
void lcd_clear();
void lcd_home();
void lcd_print_number(uint16_t n, uint8_t base, int8_t pad);
void lcd_print_float(float number, uint8_t digits);
void lcd_puts(const char* string);

void lcd_gotoxy(uint8_t col, uint8_t row);

void lcd_send(uint8_t value, uint8_t mode);
#line 69 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer0_init(uint8_t);
#line 76 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 106 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer1_init(uint8_t ps_mode);
#line 144 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
#line 48 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
bit ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 58 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
extern uint8_t rxfifo[(uint8_t)16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[(uint8_t)16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/measure.h"
void calibrate(void);
unsigned short measure_freq(void);
void measure_capacitance(void);
void measure_inductance(void);
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/print.h"
extern const char logo_image[504];

void put_str(const char*);
void output_putch(char c); void lcd_puts(const char*);
void print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement); 
void print_indicator(uint8_t indicate);
void print_print_float(float number, uint8_t digits);
void print_buffer(void);
#line 6 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
void format_number(uint16_t n, uint8_t base, int8_t pad);
void format_xint32(uint32_t x);
void format_double(double num);
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config FOSC = HS
#line 7 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config PWRT = ON, BOR = ON, BORV = 3
#line 8 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config WDT = OFF
#line 9 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config STVREN = OFF, LVP = OFF
#line 10 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config CP0 = OFF, CP1 = OFF
#line 11 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config CPB = OFF
#line 12 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config WRT0 = OFF, WRT1 = OFF
#line 13 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config WRTB = OFF, WRTC = OFF
#line 14 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config EBTR0 = OFF, EBTR1 = OFF
#line 15 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config EBTRB = OFF
#line 16 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2450.h"
#pragma config XINST = OFF
#line 43 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
volatile uint16_t bres; 
volatile uint16_t msecpart; 
volatile uint32_t seconds, msecs; 
volatile uint32_t timer1of; 

static char mode = -1;
#line 57 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
void
delay10ms(unsigned char period_10ms) {
#line 62 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
}
#line 66 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
uint32_t milliseconds();

void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad );

volatile uint16_t blink = 0;
#line 80 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
void interrupt
global_int(void) {
if(PIR1 & 0x02) {
bres += 256;
if(bres >= ((unsigned long)((double)((20000000) / 4) / 1000))) {
bres -= ((unsigned long)((double)((20000000) / 4) / 1000));
msecpart++;
LATC &= ~0b00000100; LATC |= (!!(msecpart >= 833)) << 2;;
#line 92 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
if(msecpart >= 1000) {

seconds++;
msecpart -= 1000;
}
}

PIR1 &= ~0b10; 
}
if(RCIF) { rxfifo[rxiptr] = RCREG; ser_tmp = (rxiptr + 1) & ((uint8_t)16 - 1); if(ser_tmp != rxoptr) rxiptr = ser_tmp; }; if(TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= ((uint8_t)16 - 1); if(txoptr == txiptr) { TXIE = 0; }; TXIF = 0; };
#line 107 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
}
#line 112 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
void
main() {
bres = msecpart = msecs = seconds = 0;
mode = -1;

CCal = 1000;
#line 127 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
TRISA = 0b11001111;
#line 130 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
timer0_init(0b1000 | 0x20 | 0x40);
#line 137 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
INTCON2 &= ~0b10000000; 
#line 145 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
TRISC = 0b10111011;
#line 149 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
TRISC &= ~0b00000100;
LATC &= ~0b00000100; LATC |= (!!(1)) << 2;;

timer2_init(0b000 | 0x80);
#line 160 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
lcd_init(true);
lcd_begin(2, 1);
#line 164 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
TRISC |= (1 << 4);
TRISC &= ~(1 << 5);

LATC &= ~(1 << 5);
delay10ms(50);
LATC |= (1 << 5);
delay10ms(50);
LATC &= ~(1 << 5);
delay10ms(50);
LATC |= (1 << 5);
delay10ms(50);
LATC &= ~(1 << 5);
#line 178 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
ser_init();
#line 185 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
INTCON |= 0xc0; 
#line 191 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
lcd_gotoxy(0, 0);
lcd_puts("LC-meter ");
format_double( CCal);
#line 200 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
delay10ms(200);
#line 203 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
calibrate();
#line 206 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
lcd_clear();
#line 214 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
for(;;) {
char new_mode = (!!(PORTC & 0b10000));

if(new_mode != mode) {
ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
ser_puts("\r\n");

mode = new_mode;
}

if(mode)
measure_capacitance();
else
measure_inductance();

print_indicator(1);
delay10ms(30);

print_indicator(0);
delay10ms(20);
}
}

void
testloop() {

static char led = 0;
static uint16_t prev_s = 0;
uint16_t s;

delay10ms(10);

INTCON &= ~0x80; 
s = seconds;
INTCON |= 0x80; 
#line 258 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
lcd_gotoxy(10, 0);
lcd_puts("      ");
lcd_gotoxy(10, 0);
format_number(s, 10, 5);
#line 264 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
lcd_gotoxy(10, 1);
lcd_puts("      ");
lcd_gotoxy(10, 1);
format_number(((TMR1H << 8) | TMR1L), 10, 5);

lcd_gotoxy(0, 1);
lcd_puts("     ");
lcd_gotoxy(0, 1);
lcd_puts("RC4=");
#line 275 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
lcd_send(((!!(PORTC & 0b10000)) != 0 ? '1' : '0'), 1);
#line 279 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
if(s != prev_s) {

format_number(s, 10, 0);

ser_puts("\r\n");
#line 286 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.c"
prev_s = s;
}
}
