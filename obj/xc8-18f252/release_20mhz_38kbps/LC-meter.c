#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "/opt/microchip/xc8/v1.45/include/pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);
#include <errata.h>
	
#line 42 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 135 "/opt/microchip/xc8/v1.45/include/pic18.h"
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
#line 155 "/opt/microchip/xc8/v1.45/include/pic18.h"
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
#line 163 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 165 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 167 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
#include <xc.h>
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 49 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 67 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
extern dvars dvar;
#line 77 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
void cycle_eater(void);
#include <pic18.h>
#line 47 "/home/roman/Dokumente/Sources/lc-meter/lib/delay.h"
void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
#line 65 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.h"
extern double F1, F2, F3, CCal;

void delay10ms(unsigned char period_10ms);
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
void lcd_putch(char value);
void lcd_send(uint8_t value, uint8_t mode);
#line 72 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 79 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 111 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 149 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
#line 48 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
extern uint8_t ser_tmp;

char ser_isrx(void);
unsigned char ser_rxsize(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);

uint8_t ser_rxat(unsigned char at);
unsigned char ser_size(void);
#line 68 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
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
void output_putch(char c);
void lcd_puts(const char*);
void print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement); 
void print_indicator(uint8_t indicate);
void print_print_float(float number, uint8_t digits);
void print_buffer(void);
#line 5 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
typedef void(putch_t)(char);

void format_number(putch_t fn, uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn, uint32_t x);
void format_double(putch_t fn, double num);
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config OSC = HSPLL, OSCS = OFF
#line 7 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config PWRT = ON, BOR = ON, BORV = 27
#line 8 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config WDT = OFF
#line 9 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config CCP2MUX = ON
#line 10 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config STVR = OFF
#line 11 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config LVP = OFF
#line 12 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config CPD = OFF
#line 13 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f252.h"
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF, WRTC = OFF, WRTB = OFF, WRTD = OFF, EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF, EBTRB = OFF
#line 48 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
volatile uint32_t bres; 
volatile uint16_t msecpart; 
volatile uint16_t led_cycle; 
volatile uint16_t led_interval; 
volatile uint32_t seconds, msecs; 
volatile uint32_t timer1of; 

static char mode = -1;
#line 64 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
void
delay10ms(unsigned char period_10ms) {
  
#line 69 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
}
#line 73 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
uint32_t milliseconds();

void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad );

volatile uint16_t blink = 0;
#line 85 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
interrupt isr() {
  if(PIR1bits.TMR2IF) {
    bres += 256;
    if(bres >= ((unsigned long)((double)((20000000) / 4) / 1000))) {
      bres -= ((unsigned long)((double)((20000000) / 4) / 1000));
      msecpart++;
      led_cycle++;
      
LATC &= ~(1 << 2); LATC |= (!!(led_cycle >= 0 && led_cycle < led_interval / 6)) << 2;;
      
      
if(msecpart >= 1000) {
        
        seconds++;
        msecpart -= 1000;
      }
    }
    
    PIR1bits.TMR2IF = 0;
  }
  
if(PIR1bits.RCIF) { ser_rxfifo[ser_rxiptr] = RCREG; ser_tmp = (ser_rxiptr + 1) & ((uint8_t)16 - 1); if(ser_tmp != ser_rxoptr) ser_rxiptr = ser_tmp; }; if(PIR1bits.TXIF && PIE1bits.TXIE) { TXREG = ser_txfifo[ser_txoptr]; ++ser_txoptr; ser_txoptr &= ((uint8_t)16 - 1); if(ser_txoptr == ser_txiptr) { PIE1bits.TXIE = 0; }; PIR1bits.TXIF = 0; };
#line 111 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
}
#line 116 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
void
main() {
  bres = msecpart = msecs = seconds = 0;
  mode = -1;
  
CCal = 1000;
  
led_cycle = 0;
  led_interval = 500;
  
  
  #line 134 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
TRISA = 0b11001111;
  
TRISB &= 0b00001111;
  
  
timer0_init(0b1000 | 0x20 | 0x40);
  timer2_init(0b100 | 0x80);
  
  #line 147 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
INTCON2 &= ~0b10000000; 
  
  
  #line 155 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
TRISC = 0b10110011;
  #line 159 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
PORTCbits.RC3 = 1;
  #line 162 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
TRISC &= ~(1 << 2);
  LATC &= ~(1 << 2); LATC |= (!!(1)) << 2;;
  
timer2_init(0b000 | 0x80);
  
  #line 172 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
lcd_init(1);
  lcd_begin(2, 1);
  #line 176 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
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
  #line 190 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
ser_init();
  
  #line 197 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
INTCON |= 0xc0; 
  #line 203 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
lcd_gotoxy(0, 0);
  lcd_puts("LC-meter ");
  format_double(&lcd_putch, CCal);
  #line 212 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
delay10ms(200);
  #line 215 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
calibrate();
  #line 218 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
lcd_clear();
  
  #line 226 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
for(;;) {
    char new_mode = (!!(PORTC & (1 << 4)));
    
if(new_mode != mode) {
      
ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
      ser_puts("\r\n");
      mode = new_mode;
    }
    #line 237 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
if(led_cycle >= led_interval)
      led_cycle = 0;
    
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
  #line 274 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
lcd_gotoxy(10, 0);
  lcd_puts("      ");
  lcd_gotoxy(10, 0);
  format_number(&lcd_putch, s, 10, 5);
  #line 280 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
lcd_gotoxy(10, 1);
  lcd_puts("      ");
  lcd_gotoxy(10, 1);
  
  
lcd_gotoxy(0, 1);
  lcd_puts("     ");
  lcd_gotoxy(0, 1);
  lcd_puts("RC4=");
  #line 291 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
lcd_putch((!!(PORTC & (1 << 4))) != 0 ? '1' : '0');
  #line 295 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
if(s != prev_s) {
    
format_number(&ser_putch, s, 10, 0);
    
    ser_puts("\r\n");
    #line 302 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
prev_s = s;
  }
}
