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
#line 72 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 79 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 111 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 149 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
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
#line 8 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
void format_number(putch_t fn,uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn,uint32_t x);
void format_double(putch_t fn,double num);
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config FOSC = HS
#line 7 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config PWRT = ON, BOR = ON, BORV = 3
#line 8 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config WDT = OFF
#line 9 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config CCP2MX = ON, STVREN = OFF, LVP = OFF
#line 10 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#line 11 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config CPB = OFF, CPD = OFF
#line 12 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#line 13 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#line 14 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#line 15 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config EBTRB = OFF
#line 16 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config XINST = OFF
#line 19 "/home/roman/Dokumente/Sources/lc-meter/src/config-18f2550.h"
#pragma config DEBUG = ON
#line 47 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
volatile uint32_t bres; 
volatile uint16_t msecpart; 
volatile uint16_t led_cycle; 
volatile uint16_t led_interval; 
volatile uint32_t seconds, msecs; 
volatile uint32_t timer1of; 

static char mode = -1;
#line 63 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
void
delay10ms(unsigned char period_10ms) {
  
#line 68 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
}
#line 72 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
uint32_t milliseconds();

void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad );

volatile uint16_t blink = 0;
#line 84 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
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
#line 110 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
}
#line 115 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
void
main() {
  bres = msecpart = msecs = seconds = 0;
  mode = -1;
  
CCal = 1000;
  
led_cycle = 0;
  led_interval = 500;
  
  
  #line 133 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
TRISA = 0b11001111;
  
TRISB &= 0b00001111;
  
  
timer0_init(0b1000 | 0x20 | 0x40);
  timer2_init(0b100 | 0x80);
  
  #line 146 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
INTCON2 &= ~0b10000000; 
  
  
  #line 154 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
TRISC = 0b10110011;
  #line 161 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
TRISC &= ~(1 << 2);
  LATC &= ~(1 << 2); LATC |= (!!(1)) << 2;;
  
timer2_init(0b000 | 0x80);
  
  #line 175 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
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
  
  #line 196 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
INTCON |= 0xc0; 
  #line 209 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
delay10ms(5);
  #line 214 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
calibrate();
  
  #line 225 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
for(;;) {
    char new_mode = (!!(PORTC & (1 << 4)));
    
if(new_mode != mode) {
      #line 233 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
mode = new_mode;
    }
    
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
  #line 294 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
if(s != prev_s) {
    #line 301 "/home/roman/Dokumente/Sources/lc-meter/obj/../LC-meter.c"
prev_s = s;
  }
}
