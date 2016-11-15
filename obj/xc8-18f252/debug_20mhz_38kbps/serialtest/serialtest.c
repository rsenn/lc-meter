#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
__attribute__((__unsupported__("The flash_write routine is no longer supported. Please use the peripheral library functions: WriteBytesFlash, WriteBlockFlash or WriteWordFlash"))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
#include <errata.h>
	
#line 41 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 160 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 162 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 164 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
#include <xc.h>
#include <htc.h>
 
 
#include <htc.h>
#line 11 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
volatile unsigned char OPTION_REG @ 0x081;

volatile bit nRBPU @((unsigned)&OPTION_REG * 8) + 7;
#include <stdbool.h>
#include <stdint.h>
#line 43 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
 
 
#line 61 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
uint16_t measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(uint16_t period_10ms);
#line 33 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr0_overflow;
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer0();
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr1_overflow;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer1(uint8_t ps);
 
 
#line 46 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(uint8_t byte);
void ser_puts(const char * s);
void ser_puts2(uint8_t * s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 55 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern uint8_t rxfifo[16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
 
#line 43 "C:/Users\\roman\\Documents\\lc-meter\\lib\\uart.h"
extern const uint8_t uart_brg;
#line 46 "C:/Users\\roman\\Documents\\lc-meter\\lib\\uart.h"
void uart_putch(uint8_t byte);

int uart_getch(void);
BOOL uart_poll(uint8_t bauds);
#line 54 "C:/Users\\roman\\Documents\\lc-meter\\lib\\uart.h"
void uart_init(void);
#line 61 "C:/Users\\roman\\Documents\\lc-meter\\lib\\uart.h"
uint8_t uart_isr(void);
#line 66 "C:/Users\\roman\\Documents\\lc-meter\\lib\\uart.h"
void uart_enable(void);
#line 71 "C:/Users\\roman\\Documents\\lc-meter\\lib\\uart.h"
void uart_disable(void);

void uart_puts(const char *s);
void uart_puts2(uint8_t *s);
 
#line 136 "C:/Users\\roman\\Documents\\lc-meter\\lib\\softser.h"
BOOL softser_poll(uint8_t ticks);
void softser_recv(void);

uint8_t softser_getch(void);
void softser_putch(uint8_t byte);
void softser_puts(const char * s);
void softser_puts2(uint8_t * s);
void softser_puthex(uint8_t v);
void softser_init(void);

extern uint8_t softser_rdata;
 
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
extern dvars dvar;
#line 77 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
void cycle_eater(void);
 
#line 22 "C:/Users\\roman\\Documents\\lc-meter\\lib\\delay.h"
void delay_ms(uint16_t milliseconds);
void delay_us(uint16_t microseconds);

void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
 
 
#line 47 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(uint8_t l, uint8_t ds);
void lcd_no_autoscroll(void);
void lcd_autoscroll(void);
void lcd_right_to_left(void);
void lcd_left_to_right(void);
void lcd_scroll_display_right(void);
void lcd_scroll_display_left(void);
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
void lcd_print(const char *string);

void lcd_set_cursor(uint8_t col, uint8_t row);
void lcd_putch(char value);
 
#include <ctype.h>
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f252.h"
#pragma config OSC = HSPLL, OSCS = OFF
#line 7 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f252.h"
#pragma config PWRT = ON, BOR = ON, BORV = 27
#line 8 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f252.h"
#pragma config WDT = OFF
#line 9 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f252.h"
#pragma config CCP2MUX = ON
#line 10 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f252.h"
#pragma config STVR = OFF
#line 11 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f252.h"
#pragma config LVP = OFF
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f252.h"
#pragma config CPD = OFF
 
 
#line 27 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
void loop();
void put_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad);

volatile BOOL run = 1, got_byte = 0;
volatile uint16_t bres;

volatile uint16_t msecs;
volatile uint32_t seconds;

volatile uint8_t serial_in = 0;
volatile uint8_t led_state = 0;

volatile uint16_t tmr1_overflows;

interrupt isr()
{
  if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; } if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; } };
  #line 49 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(T0IF) {
    
bres += 256;
    
if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      
LATC3=((msecs < 500)==0);
    }
    if(msecs >= 1000)	{ 
      seconds++;	
      msecs -= 1000;
          
{ LATC1=(!!(seconds&1))==0; };
    
}
    
    
  
    
    
T0IF = 0;
  }
  
  if(TMR1IF) {
    tmr1_overflows++;
    
    
    
    TMR1IF = 0;
  }
  
if(RCIF) {
    
    RCIF = 0;
  }
}

void
flash_busy_led(uint16_t duration)
{
  
  
}
#line 112 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
int main()
{
  run = bres = msecs = seconds = tmr1_overflows = 0;
  #line 125 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ser_init();
  #line 129 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
nRBPU = 1;
  
  
  PORTA = 0;
  #line 136 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ADON = 1;
  ADCON1 = 0b00000110;
  TRISA = 0x11000111;
  
  LATA3 = LATA5 = 1;
  #line 144 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
setup_timer0();
  T0IF = 0;
  T0IE = 1;
  setup_timer1(0);
  TMR1IF = 0;
  TMR1IE = 1;
  #line 152 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
lcd_init(1);
  lcd_begin(2, 1);
  lcd_clear();
  
lcd_set_cursor(0,0);
  
lcd_print_number(0x41, 16, -1);
   #line 162 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
SSPEN = 0;
  #line 166 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
TRISC3=0;
  { TRISC1=0; };
  
TRISC &= ~0b1100;
  LATC3=((1)==0);
  { LATC1=(!!(1))==0; };
  #line 174 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
PEIE = 1;
  GIE = 1;
  #line 178 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
RCIF = 0;
  RCIE = 1;
  
run = 1;
  
  #line 189 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ser_puts("ZZZZ\r\n");
  
  #line 197 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
for(;;)
    loop();
}
 
void loop() {
  char update_com, update_midi, echo_mode = 0;
  uint8_t c;
  
update_com = 0, update_midi = 0;
  
static int32_t prev = -1;
  
if(seconds != prev) {
	#line 216 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
put_number(ser_putch, seconds, 10, -5);
	ser_putch('\r');
	ser_putch('\n');
	prev = seconds;
  }
  
  #line 225 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(ser_isrx()) {
	c = ser_getch();
	
if(echo_mode) {
	  ser_putch(' ');
	  ser_puthex(c);
	  ser_putch(' ');
	} else {
	}
	#line 238 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
update_com = 1;
	
if(c == 0x1b || c == '\t')
	  echo_mode = !echo_mode;
  }
  #line 245 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(update_com) {
	lcd_set_cursor(12,0);
	lcd_print("COM:");
	lcd_putch(c);
	update_com = 0;
  }
  
  
  #line 273 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(update_midi) {
	
	#line 280 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
update_midi = 0;
  }
#line 289 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
}
#line 314 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
void
put_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad )
{
  uint8_t buf[8 * sizeof(long)]; 
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 332 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
do {
    
    #line 336 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  } while(n > 0);
  
while(pad-- >= i)
    putchar(padchar);
  
for(; i > 0; i--)
    putchar((char)buf[(int16_t)i - 1]);
  
}
