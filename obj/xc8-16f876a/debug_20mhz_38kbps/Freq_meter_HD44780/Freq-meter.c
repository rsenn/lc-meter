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
 
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 68 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(putchar_p putchar, unsigned short int n, unsigned char base, signed char pad);
void
format_double(putchar_p putchar, double n);

void
format_xint32(putchar_p putchar, unsigned long int x);
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef unsigned char len_t;
#line 15 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef struct {
  char x[16];
  unsigned p:4; 
  unsigned n:4; 
  putchar_p op; 
} buffer_t;
#line 27 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
extern buffer_t buffer;

void buffer_init(putchar_p op);
char buffer_flush();
char buffer_putch(char ch);
char buffer_put(const char *x, len_t len);
char buffer_puts(const char *x);
#line 47 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(unsigned char l, unsigned char ds);
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
void lcd_print_number(unsigned short int n, unsigned char base, signed char pad);
void lcd_print_float(float number, unsigned char digits);
void lcd_print(const char *string);

void lcd_gotoxy(unsigned char col, unsigned char row);
char lcd_putch(char value);
 
#line 64 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
unsigned char ser_getch(void);
char ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char * s);
void ser_puts2(unsigned char * s);
void ser_puthex(unsigned char v);
void ser_init(void);
#line 74 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern unsigned char rxfifo[16];
extern volatile unsigned char rxiptr, rxoptr;
extern unsigned char txfifo[16];
extern volatile unsigned char txiptr, txoptr;
extern unsigned char ser_tmp;
extern unsigned char ser_brg;
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-16f876a.h"
#pragma config FOSC=HS, WDTE=OFF, PWRTE=ON, LVP=OFF, CPD=OFF, WRT=OFF, CP=OFF
#line 24 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
static char
output_putch(char c) {
  lcd_putch(c);
  ser_putch(c);
  return 1;
}
#line 34 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
buffer_t buffer = { {0}, 0, 0, output_putch };
#line 38 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
unsigned char control;
#line 43 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
INTERRUPT_HANDLER()
{
  
if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; }; if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; }; TXIF = 0; };
  #line 49 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
if(CCP1IF) {
    TMR1H = 0; TMR1L = 0;
    GIE = 0;
    
control = 1;
    
CCP1IF = 0;
    GIE = 1;
  }
}
#line 61 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
int initialize()
{
  TRISA = 0x00;
  TRISB = 0x08;
  CMCON = 0x07;
  
control = 0;
  PORTA = 0; PORTB = 0;
  
CCP1IE = 1;
  
CCP1CON = 0b00000110;
  
T1CON = 0b00100001;
  #line 77 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
ser_init();
  #line 80 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
GIE = 1;
  PEIE = 1;
  
  #line 88 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
lcd_init(!0);
  lcd_begin(2, 1);
}
#line 94 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
int main()
{
  const unsigned char number[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F };
  unsigned char select[4] = {1, 2, 4, 8};
  unsigned long int counter, value, remainder1, remainder2;
  float frequency;
  unsigned char a, i, display[5], data;
  
initialize();
  ser_puts("Freq-meter READY.\r\n");
  
for(;;) {
    static unsigned long int prev_frequency = 0;
    
counter = 256 * CCPR1H + CCPR1L;
    
if(control == 1) frequency = 100000000 / counter;
    if(control == 0) frequency = 0;
    
if(counter < 10000) frequency = 0;
    
control = 0;
    #line 118 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
if(frequency != prev_frequency) {
      
format_number(ser_putch, frequency, 10, 0);
      ser_putch('\r');
      ser_putch('\n');
        
_delay((unsigned long)((3)*(20000000/4000.0)));
     
prev_frequency = frequency;
    }
  #line 156 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
}
}
