n called:    4
 This function calls:
		_lcd_send
 This function is called by:
		_lcd_set_cursor
		_lcd_begin
 This function uses a non-reentrant model


 *************** function _lcd_send *****************
 Defined at:
		line 128 in file "../../../lib/lcd44780.c"
 Parameters:    Size  Location     Type
  value           1    wreg     unsigned char 
  mode            1    5[COMMON] unsigned char 
 Auto vars:     Size  Location     Type
  value           1    6[COMMON] unsigned char 
 Return value:  Size  Location     Type
		None               void
 Registers used:
		wreg, status,2, status,0, pclath, cstack
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         1       0       0       0       0
      Locals:         1       0       0       0       0
      Temps:          0       0       0       0       0
      Totals:         2       0       0       0       0
Total ram usage:        2 bytes
 Hardware stack levels used:    1
 Hardware stack levels required when called:    3
 This function calls:
		_lcd_write4bits
 This function is called by:
		_lcd_putch
		_lcd_command
 This function uses a non-reentrant model


 *************** function _lcd_write4bits *****************
 Defined at:
		line 61 in file "../../../lib/lcd44780.c"
 Parameters:    Size  Location     Type
  value           1    wreg     unsigned char 
 Auto vars:     Size  Location     Type
  value           1    4[COMMON] unsigned char 
 Return value:  Size  Location     Type
		None               void
 Registers used:
		wreg, status,2, status,0, pclath, cstack
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         0       0       0       0       0
      Locals:         1       0       0       0       0
      Temps:          0       0       0       0       0
      Totals:         1       0       0       0       0
Total ram usage:        1 bytes
 Hardware stack levels used:    1
 Hardware stack levels required when called:    2
 This function calls:
		_lcd_pulse_enable
 This function is called by:
		_lcd_send
		_lcd_begin
 This function uses a non-reentrant model


 *************** function _lcd_pulse_enable *****************
 Defined at:
		line 48 in file "../../../lib/lcd44780.c"
 Parameters:    Size  Location     Type
		None
 Auto vars:     Size  Location     Type
		None
 Return value:  Size  Location     Type
		None               void
 Registers used:
		wreg
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         0       0       0       0       0
      Locals:         0       0       0       0       0
      Temps:          1       0       0       0       0
      Totals:         1       0       0       0       0
Total ram usage:        1 bytes
 Hardware stack levels used:    1
 Hardware stack levels required when called:    1
 This function calls:
		Nothing
 This function is called by:
		_lcd_write4bits
 This function uses a non-reentrant model


 *************** function _delay_ms *****************
 Defined at:
		line 10 in file "../../../lib/delay.c"
 Parameters:    Size  Location     Type
  milliseconds    2   21[BANK0 ] unsigned int 
 Auto vars:     Size  Location     Type
		None
 Return value:  Size  Location     Type
		None               void
 Registers used:
		wreg, status,2, status,0, pclath, cstack
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         0       2       0       0       0
      Locals:         0       4       0       0       0
      Temps:          0       0       0       0       0
      Totals:         0       6       0       0       0
Total ram usage:        6 bytes
 Hardware stack levels used:    1
 Hardware stack levels required when called:    2
 This function calls:
		_Delay100TCYx
		___lldiv
		___lmul
 This function is called by:
		_lcd_begin
		_loop
 This function uses a non-reentrant model


 *************** function ___lmul *****************
 Defined at:
		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul32.c"
 Parameters:    Size  Location     Type
  multiplier      4    0[BANK0 ] unsigned long 
  multiplicand    4    4[BANK0 ] unsigned long 
 Auto vars:     Size  Location     Type
  product         4    3[COMMON] unsigned long 
 Return value:  Size  Location     Type
                  4    0[BANK0 ] unsigned long 
 Registers used:
		wreg, status,2, status,0
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         0       8       0       0       0
      Locals:         4       0       0       0       0
      Temps:          0       0       0       0       0
      Totals:         4       8       0       0       0
Total ram usage:       12 bytes
 Hardware stack levels used:    1
 Hardware stack levels required when called:    1
 This function calls:
		Nothing
 This function is called by:
		_delay_ms
 This function uses a non-reentrant model


 *************** function ___lldiv *****************
 Defined at:
		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lldiv.c"
 Parameters:    Size  Location     Type
  divisor         4    8[BANK0 ] unsigned long 
  dividend        4   12[BANK0 ] unsigned long 
 Auto vars:     Size  Location     Type
  quotient        4   16[BANK0 ] unsigned long 
  counter         1   20[BANK0 ] unsigned char 
 Return value:  Size  Location     Type
                  4    8[BANK0 ] unsigned long 
 Registers used:
		wreg, status,2, status,0
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         0       8       0       0       0
      Locals:         0       5       0       0       0
      Temps:          0       0       0       0       0
      Totals:         0      13       0       0       0
Total ram usage:       13 bytes
 Hardware stack levels used:    1
 Hardware stack levels required when called:    1
 This function calls:
		Nothing
 This function is called by:
		_delay_ms
 This function uses a non-reentrant model


 *************** function _Delay100TCYx *****************
 Defined at:
		line 67 in file "../../../lib/delay.c"
 Parameters:    Size  Location     Type
  unit            1    wreg     unsigned char 
 Auto vars:     Size  Location     Type
  unit            1    4[COMMON] unsigned char 
 Return value:  Size  Location     Type
		None               void
 Registers used:
		wreg
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         0       0       0       0       0
      Locals:         1       0       0       0       0
      Temps:          1       0       0       0       0
      Totals:         2       0       0       0       0
Total ram usage:        2 bytes
 Hardware stack levels used:    1
 Hardware stack levels required when called:    1
 This function calls:
		Nothing
 This function is called by:
		_delay_ms
 This function uses a non-reentrant model


 *************** function _isr *****************
 Defined at:
		line 54 in file "../../../src/LC-meter.c"
 Parameters:    Size  Location     Type
		None
 Auto vars:     Size  Location     Type
		None
 Return value:  Size  Location     Type
                  2  392[None  ] int 
 Registers used:
		wreg, fsr0l, fsr0h, status,2, status,0
 Tracked objects:
		On entry : 
		On exit  : 
		Unchanged: 
 Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
      Params:         0       0       0       0       0
      Locals:         0       0       0       0       0
      Temps:          3       0       0       0       0
      Totals:         3       0       0       0       0
Total ram usage:        3nsigned) &CVRCON)*8) + 0;

extern volatile __bit CVR1 @ (((unsigned) &CVRCON)*8) + 1;

extern volatile __bit CVR2 @ (((unsigned) &CVRCON)*8) + 2;

extern volatile __bit CVR3 @ (((unsigned) &CVRCON)*8) + 3;

extern volatile __bit CVREN @ (((unsigned) &CVRCON)*8) + 7;

extern volatile __bit CVROE @ (((unsigned) &CVRCON)*8) + 6;

extern volatile __bit CVRR @ (((unsigned) &CVRCON)*8) + 5;

extern volatile __bit DATA_ADDRESS @ (((unsigned) &SSPSTAT)*8) + 5;

extern volatile __bit DC @ (((unsigned) &STATUS)*8) + 1;

extern volatile __bit D_A @ (((unsigned) &SSPSTAT)*8) + 5;

extern volatile __bit D_nA @ (((unsigned) &SSPSTAT)*8) + 5;

extern volatile __bit EEIE @ (((unsigned) &PIE2)*8) + 4;

extern volatile __bit EEIF @ (((unsigned) &PIR2)*8) + 4;

extern volatile __bit EEPGD @ (((unsigned) &EECON1)*8) + 7;

extern volatile __bit FERR @ (((unsigned) &RCSTA)*8) + 2;

extern volatile __bit GCEN @ (((unsigned) &SSPCON2)*8) + 7;

extern volatile __bit GIE @ (((unsigned) &INTCON)*8) + 7;

extern volatile __bit GO @ (((unsigned) &ADCON0)*8) + 2;

extern volatile __bit GO_DONE @ (((unsigned) &ADCON0)*8) + 2;

extern volatile __bit GO_nDONE @ (((unsigned) &ADCON0)*8) + 2;

extern volatile __bit I2C_DATA @ (((unsigned) &SSPSTAT)*8) + 5;

extern volatile __bit I2C_READ @ (((unsigned) &SSPSTAT)*8) + 2;

extern volatile __bit I2C_START @ (((unsigned) &SSPSTAT)*8) + 3;

extern volatile __bit I2C_STOP @ (((unsigned) &SSPSTAT)*8) + 4;

extern volatile __bit INTE @ (((unsigned) &INTCON)*8) + 4;

extern volatile __bit INTEDG @ (((unsigned) &OPTION_REG)*8) + 6;

extern volatile __bit INTF @ (((unsigned) &INTCON)*8) + 1;

extern volatile __bit IRP @ (((unsigned) &STATUS)*8) + 7;

extern volatile __bit OERR @ (((unsigned) &RCSTA)*8) + 1;

extern volatile __bit PCFG0 @ (((unsigned) &ADCON1)*8) + 0;

extern volatile __bit PCFG1 @ (((unsigned) &ADCON1)*8) + 1;

extern volatile __bit PCFG2 @ (((unsigned) &ADCON1)*8) + 2;

extern volatile __bit PCFG3 @ (((unsigned) &ADCON1)*8) + 3;

extern volatile __bit PEIE @ (((unsigned) &INTCON)*8) + 6;

extern volatile __bit PEN @ (((unsigned) &SSPCON2)*8) + 2;

extern volatile __bit PS0 @ (((unsigned) &OPTION_REG)*8) + 0;

extern volatile __bit PS1 @ (((unsigned) &OPTION_REG)*8) + 1;

extern volatile __bit PS2 @ (((unsigned) &OPTION_REG)*8) + 2;

extern volatile __bit PSA @ (((unsigned) &OPTION_REG)*8) + 3;

extern volatile __bit RA0 @ (((unsigned) &PORTA)*8) + 0;

extern volatile __bit RA1 @ (((unsigned) &PORTA)*8) + 1;

extern volatile __bit RA2 @ (((unsigned) &PORTA)*8) + 2;

extern volatile __bit RA3 @ (((unsigned) &PORTA)*8) + 3;

extern volatile __bit RA4 @ (((unsigned) &PORTA)*8) + 4;

extern volatile __bit RA5 @ (((unsigned) &PORTA)*8) + 5;

extern volatile __bit RB0 @ (((unsigned) &PORTB)*8) + 0;

extern volatile __bit RB1 @ (((unsigned) &PORTB)*8) + 1;

extern volatile __bit RB2 @ (((unsigned) &PORTB)*8) + 2;

extern volatile __bit RB3 @ (((unsigned) &PORTB)*8) + 3;

extern volatile __bit RB4 @ (((unsigned) &PORTB)*8) + 4;

extern volatile __bit RB5 @ (((unsigned) &PORTB)*8) + 5;

extern volatile __bit RB6 @ (((unsigned) &PORTB)*8) + 6;

extern volatile __bit RB7 @ (((unsigned) &PORTB)*8) + 7;

extern volatile __bit RBIE @ (((unsigned) &INTCON)*8) + 3;

extern volatile __bit RBIF @ (((unsigned) &INTCON)*8) + 0;

extern volatile __bit RC0 @ (((unsigned) &PORTC)*8) + 0;

extern volatile __bit RC1 @ (((unsigned) &PORTC)*8) + 1;

extern volatile __bit RC2 @ (((unsigned) &PORTC)*8) + 2;

extern volatile __bit RC3 @ (((unsigned) &PORTC)*8) + 3;

extern volatile __bit RC4 @ (((unsigned) &PORTC)*8) + 4;

extern volatile __bit RC5 @ (((unsigned) &PORTC)*8) + 5;

extern volatile __bit RC6 @ (((unsigned) &PORTC)*8) + 6;

extern volatile __bit RC7 @ (((unsigned) &PORTC)*8) + 7;

extern volatile __bit RC8_9 @ (((unsigned) &RCSTA)*8) + 6;

extern volatile __bit RC9 @ (((unsigned) &RCSTA)*8) + 6;

extern volatile __bit RCD8 @ (((unsigned) &RCSTA)*8) + 0;

extern volatile __bit RCEN @ (((unsigned) &SSPCON2)*8) + 3;

extern volatile __bit RCIE @ (((unsigned) &PIE1)*8) + 5;

extern volatile __bit RCIF @ (((unsigned) &PIR1)*8) + 5;

extern volatile __bit RD @ (((unsigned) &EECON1)*8) + 0;

extern volatile __bit READ_WRITE @ (((unsigned) &SSPSTAT)*8) + 2;

extern volatile __bit RP0 @ (((unsigned) &STATUS)*8) + 5;

extern volatile __bit RP1 @ (((unsigned) &STATUS)*8) + 6;

extern volatile __bit RSEN @ (((unsigned) &SSPCON2)*8) + 1;

extern volatile __bit RX9 @ (((unsigned) &RCSTA)*8) + 6;

extern volatile __bit RX9D @ (((unsigned) &RCSTA)*8) + 0;

extern volatile __bit R_W @ (((unsigned) &SSPSTAT)*8) + 2;

extern volatile __bit R_nW @ (((unsigned) &SSPSTAT)*8) + 2;

extern volatile __bit SEN @ (((unsigned) &SSPCON2)*8) + 0;

extern volatile __bit SMP @ (((unsigned) &SSPSTAT)*8) + 7;

extern volatile __bit SPEN @ (((unsigned) &RCSTA)*8) + 7;

extern volatile __bit SREN @ (((unsigned) &RCSTA)*8) + 5;

extern volatile __bit SSPEN @ (((unsigned) &SSPCON)*8) + 5;

extern volatile __bit SSPIE @ (((unsigned) &PIE1)*8) + 3;

extern volatile __bit SSPIF @ (((unsigned) &PIR1)*8) + 3;

extern volatile __bit SSPM0 @ (((unsigned) &SSPCON)*8) + 0;

extern volatile __bit SSPM1 @ (((unsigned) &SSPCON)*8) + 1;

extern volatile __bit SSPM2 @ (((unsigned) &SSPCON)*8) + 2;

extern volatile __bit SSPM3 @ (((unsigned) &SSPCON)*8) + 3;

extern volatile __bit SSPOV @ (((unsigned) &SSPCON)*8) + 6;

extern volatile __bit SYNC @ (((unsigned) &TXSTA)*8) + 4;

extern volatile __bit T0CS @ (((unsigned) &OPTION_REG)*8) + 5;

extern volatile __bit T0IE @ (((unsigned) &INTCON)*8) + 5;

extern volatile __bit T0IF @ (((unsigned) &INTCON)*8) + 2;

extern volatile __bit T0SE @ (((unsigned) &OPTION_REG)*8) + 4;

extern volatile __bit T1CKPS0 @ (((unsigned) &T1CON)*8) + 4;

extern volatile __bit T1CKPS1 @ (((unsigned) &T1CON)*8) + 5;

extern volatile __bit T1INSYNC @ (((unsigned) &T1CON)*8) + 2;

extern volatile __bit T1OSCEN @ (((unsigned) &T1CON)*8) + 3;

extern volatile __bit T1SYNC @ (((unsigned) &T1CON)*8) + 2;

extern volatile __bit T2CKPS0 @ (((unsigned) &T2CON)*8) + 0;

extern volatile __bit T2CKPS1 @ (((unsigned) &T2CON)*8) + 1;

extern volatile __bit TMR0IE @ (((unsigned) &INTCON)*8) + 5;

extern volatile __bit TMR0IF @ (((unsigned) &INTCON)*8) + 2;

extern volatile __bit TMR1CS @ (((unsigned) &T1CON)*8) + 1;

extern volatile __bit TMR1IE @ (((unsigned) &PIE1)*8) + 0;

extern volatile __bit TMR1IF @ (((unsigned) &PIR1)*8) + 0;

extern volatile __bit TMR1ON @ (((unsigned) &T1CON)*8) + 0;

extern volatile __bit TMR2IE @ (((unsigned) &PIE1)*8) + 1;

extern volatile __bit TMR2IF @ (((unsigned) &PIR1)*8) + 1;

extern volatile __bit TMR2ON @ (((unsigned) &T2CON)*8) + 2;

extern volatile __bit TOUTPS0 @ (((unsigned) &T2CON)*8) + 3;

extern volatile __bit TOUTPS1 @ (((unsigned) &T2CON)*8) + 4;

extern volatile __bit TOUTPS2 @ (((unsigned) &T2CON)*8) + 5;

extern volatile __bit TOUTPS3 @ (((unsigned) &T2CON)*8) + 6;

extern volatile __bit TRISA0 @ (((unsigned) &TRISA)*8) + 0;

extern volatile __bit TRISA1 @ (((unsigned) &TRISA)*8) + 1;

extern volatile __bit TRISA2 @ (((unsigned) &TRISA)*8) + 2;

extern volatile __bit TRISA3 @ (((unsigned) &TRISA)*8) + 3;

extern volatile __bit TRISA4 @ (((unsigned) &TRISA)*8) + 4;

extern volatile __bit TRISA5 @ (((unsigned) &TRISA)*8) + 5;

extern volatile __bit TRISB0 @ (((unsigned) &TRISB)*8) + 0;

extern volatile __bit TRISB1 @ (((unsigned) &TRISB)*8) + 1;

extern volatile __bit TRISB2 @ (((unsigned) &TRISB)*8) + 2;

extern volatile __bit TRISB3 @ (((unsigned) &TRISB)*8) + 3;

extern volatile __bit TRISB4 @ (((unsigned) &TRISB)*8) + 4;

extern volatile __bit TRISB5 @ (((unsigned) &TRISB)*8) + 5;

extern volatile __bit TRISB6 @ (((unsigned) &TRISB)*8) + 6;

extern volatile __bit TRISB7 @ (((unsigned) &TRISB)*8) + 7;

extern volatile __bit TRISC0 @ (((unsigned) &TRISC)*8) + 0;

extern volatile __bit TRISC1 @ (((unsigned) &TRISC)*8) + 1;

extern volatile __bit TRISC2 @ (((unsigned) &TRISC)*8) + 2;

extern volatile __bit TRISC3 @ (((unsigned) &TRISC)*8) + 3;

extern volatile __bit TRISC4 @ (((unsigned) &TRISC)*8) + 4;

extern volatile __bit TRISC5 @ (((unsigned) &TRISC)*8) + 5;

extern volatile __bit TRISC6 @ (((unsigned) &TRISC)*8) + 6;

extern volatile __bit TRISC7 @ (((unsigned) &TRISC)*8) + 7;

extern volatile __bit TRMT @ (((unsigned) &TXSTA)*8) + 1;

extern volatile __bit TX8_9 @ (((unsigned) &TXSTA)*8) + 6;

extern volatile __bit TX9 @ (((unsigned) &TXSTA)*8) + 6;

extern volatile __bit TX9D @ (((unsigned) &TXSTA)*8) + 0;

extern volatile __bit TXD8 @ (((unsigned) &TXSTA)*8) + 0;

extern volatile __bit TXEN @ (((unsigned) &TXSTA)*8) + 5;

extern volatile __bit TXIE @ (((unsigned) &PIE1)*8) + 4;

extern volatile __bit TXIF @ (((unsigned) &PIR1)*8) + 4;

extern volatile __bit UA @ (((unsigned) &SSPSTAT)*8) + 1;

extern volatile __bit WCOL @ (((unsigned) &SSPCON)*8) + 7;

extern volatile __bit WR @ (((unsigned) &EECON1)*8) + 1;

extern volatile __bit WREN @ (((unsigned) &EECON1)*8) + 2;

extern volatile __bit WRERR @ (((unsigned) &EECON1)*8) + 3;

extern volatile __bit ZERO @ (((unsigned) &STATUS)*8) + 2;

extern volatile __bit nA @ (((unsigned) &SSPSTAT)*8) + 5;

extern volatile __bit nADDRESS @ (((unsigned) &SSPSTAT)*8) + 5;

extern volatile __bit nBO @ (((unsigned) &PCON)*8) + 0;

extern volatile __bit nBOR @ (((unsigned) &PCON)*8) + 0;

extern volatile __bit nDONE @ (((unsigned) &ADCON0)*8) + 2;

extern volatile __bit nPD @ (((unsigned) &STATUS)*8) + 3;

extern volatile __bit nPOR @ (((unsigned) &PCON)*8) + 1;

extern volatile __bit nRBPU @ (((unsigned) &OPTION_REG)*8) + 7;

extern volatile __bit nRC8 @ (((unsigned) &RCSTA)*8) + 6;

extern volatile __bit nT1SYNC @ (((unsigned) &T1CON)*8) + 2;

extern volatile __bit nTO @ (((unsigned) &STATUS)*8) + 4;

extern volatile __bit nTX8 @ (((unsigned) &TXSTA)*8) + 6;

extern volatile __bit nW @ (((unsigned) &SSPSTAT)*8) + 2;

extern volatile __bit nWRITE @ (((unsigned) &SSPSTAT)*8) + 2;


# 27 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);

# 76
extern unsigned int flash_read(unsigned short addr);

# 41 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\eeprom_routines.h"
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
extern void eecpymem(volatile unsigned char *to, __eeprom unsigned char *from, unsigned char size);
extern void memcpyee(__eeprom unsigned char *to, const unsigned char *from, unsigned char size);


# 149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);

# 184
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;

# 12 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\stdbool.h"
typedef unsigned char bool;

# 13 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef signed short long int int24_t;

# 36
typedef signed long int int32_t;

# 43
typedef unsigned char uint8_t;

# 49
typedef unsigned int uint16_t;

# 56
typedef unsigned short long int uint24_t;

# 63
typedef unsigned long int uint32_t;

# 71
typedef signed char int_least8_t;

# 78
typedef signed int int_least16_t;

# 90
typedef signed short long int int_least24_t;

# 98
typedef signed long int int_least32_t;

# 105
typedef unsigned char uint_least8_t;

# 111
typedef unsigned int uint_least16_t;

# 121
typedef unsigned short long int uint_least24_t;

# 128
typedef unsigned long int uint_least32_t;

# 137
typedef signed char int_fast8_t;

# 144
typedef signed int int_fast16_t;

# 156
typedef signed short long int int_fast24_t;

# 164
typedef signed long int int_fast32_t;

# 171
typedef unsigned char uint_fast8_t;

# 177
typedef unsigned int uint_fast16_t;

# 187
typedef unsigned short long int uint_fast24_t;

# 194
typedef unsigned long int uint_fast32_t;

# 200
typedef int32_t intmax_t;




typedef uint32_t uintmax_t;




typedef int16_t intptr_t;




typedef uint16_t uintptr_t;

# 43 "../../../lib/typedef.h"
typedef char BOOL;

# 49 "../../../lib/tsmdelay.h"
typedef struct dvars {
uint8_t loop_x, loop_b, loop_c;
} dvars;

# 67
extern dvars dvar;

# 77
void cycle_eater(void);

# 22 "../../../lib/delay.h"
void delay_ms(uint16_t milliseconds);
void delay_us(uint16_t microseconds);

void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);

# 9 "../../../lib/delay.c"
void
delay_ms(uint16_t milliseconds) {

# 17
Delay100TCYx((((milliseconds * 1000lu)*(((20000000)/1000)))/4000LU) / 100);

}

void
delay_us(uint16_t microseconds) {

# 30
Delay10TCYx((((microseconds)*(((20000000)/1000)))/4000LU) / 10);


}

# 66
void
Delay100TCYx(uint8_t unit) {
do {

_delay(100);

# 74
} while(--unit != 0);
}

# 81
void
Delay10KTCYx(uint8_t unit) {
do {

_delay(10000);

# 89
} while(--unit != 0);
}

# 96
void
Delay10TCYx(uint8_t unit) {
do {


_delay(10);

# 107
} while(--unit != 0);
}

# 114
void
Delay1KTCYx(uint8_t unit) {
do {

_delay(1000);

# 122
} while(--unit != 0);
}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           at=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-HD44780.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-HD44780.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-HD44780.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-HD44780.X.${IMAGE_TYPE}.map  --double=32 --float=24 --opt=default,+asm,+asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_HD44780_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -V --warn=3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,-osccal,-resetbits,+download,+stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-HD44780.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/release
	${RM} -r dist/release

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
