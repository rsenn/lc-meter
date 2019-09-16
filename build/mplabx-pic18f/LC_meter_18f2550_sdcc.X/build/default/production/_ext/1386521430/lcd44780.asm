;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_lcd_putch
	global	_lcd_gotoxy
	global	_lcd_puts
	global	_lcd_print_number
	global	_lcd_home
	global	_lcd_clear
	global	_lcd_display
	global	_lcd_no_cursor
	global	_lcd_cursor
	global	_lcd_blink
	global	_lcd_left_to_right
	global	_lcd_autoscroll
	global	_lcd_begin
	global	_lcd_init

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	_UFRMLbits
	extern	_UFRMHbits
	extern	_UIRbits
	extern	_UIEbits
	extern	_UEIRbits
	extern	_UEIEbits
	extern	_USTATbits
	extern	_UCONbits
	extern	_UADDRbits
	extern	_UCFGbits
	extern	_UEP0bits
	extern	_UEP1bits
	extern	_UEP2bits
	extern	_UEP3bits
	extern	_UEP4bits
	extern	_UEP5bits
	extern	_UEP6bits
	extern	_UEP7bits
	extern	_UEP8bits
	extern	_UEP9bits
	extern	_UEP10bits
	extern	_UEP11bits
	extern	_UEP12bits
	extern	_UEP13bits
	extern	_UEP14bits
	extern	_UEP15bits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTEbits
	extern	_LATAbits
	extern	_LATBbits
	extern	_LATCbits
	extern	_DDRAbits
	extern	_TRISAbits
	extern	_DDRBbits
	extern	_TRISBbits
	extern	_DDRCbits
	extern	_TRISCbits
	extern	_OSCTUNEbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_EECON1bits
	extern	_RCSTAbits
	extern	_TXSTAbits
	extern	_T3CONbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_CCP1ASbits
	extern	_ECCP1ASbits
	extern	_CCP1DELbits
	extern	_ECCP1DELbits
	extern	_BAUDCONbits
	extern	_BAUDCTLbits
	extern	_CCP2CONbits
	extern	_CCP1CONbits
	extern	_ADCON2bits
	extern	_ADCON1bits
	extern	_ADCON0bits
	extern	_SSPCON2bits
	extern	_SSPCON1bits
	extern	_SSPSTATbits
	extern	_T2CONbits
	extern	_T1CONbits
	extern	_RCONbits
	extern	_WDTCONbits
	extern	_HLVDCONbits
	extern	_LVDCONbits
	extern	_OSCCONbits
	extern	_T0CONbits
	extern	_STATUSbits
	extern	_INTCON3bits
	extern	_INTCON2bits
	extern	_INTCONbits
	extern	_STKPTRbits
	extern	_dvar
	extern	_stdin
	extern	_stdout
	extern	_UFRM
	extern	_UFRML
	extern	_UFRMH
	extern	_UIR
	extern	_UIE
	extern	_UEIR
	extern	_UEIE
	extern	_USTAT
	extern	_UCON
	extern	_UADDR
	extern	_UCFG
	extern	_UEP0
	extern	_UEP1
	extern	_UEP2
	extern	_UEP3
	extern	_UEP4
	extern	_UEP5
	extern	_UEP6
	extern	_UEP7
	extern	_UEP8
	extern	_UEP9
	extern	_UEP10
	extern	_UEP11
	extern	_UEP12
	extern	_UEP13
	extern	_UEP14
	extern	_UEP15
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTE
	extern	_LATA
	extern	_LATB
	extern	_LATC
	extern	_DDRA
	extern	_TRISA
	extern	_DDRB
	extern	_TRISB
	extern	_DDRC
	extern	_TRISC
	extern	_OSCTUNE
	extern	_PIE1
	extern	_PIR1
	extern	_IPR1
	extern	_PIE2
	extern	_PIR2
	extern	_IPR2
	extern	_EECON1
	extern	_EECON2
	extern	_EEDATA
	extern	_EEADR
	extern	_RCSTA
	extern	_TXSTA
	extern	_TXREG
	extern	_RCREG
	extern	_SPBRG
	extern	_SPBRGH
	extern	_T3CON
	extern	_TMR3
	extern	_TMR3L
	extern	_TMR3H
	extern	_CMCON
	extern	_CVRCON
	extern	_CCP1AS
	extern	_ECCP1AS
	extern	_CCP1DEL
	extern	_ECCP1DEL
	extern	_BAUDCON
	extern	_BAUDCTL
	extern	_CCP2CON
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP1CON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
	extern	_ADRES
	extern	_ADRESL
	extern	_ADRESH
	extern	_SSPCON2
	extern	_SSPCON1
	extern	_SSPSTAT
	extern	_SSPADD
	extern	_SSPBUF
	extern	_T2CON
	extern	_PR2
	extern	_TMR2
	extern	_T1CON
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_RCON
	extern	_WDTCON
	extern	_HLVDCON
	extern	_LVDCON
	extern	_OSCCON
	extern	_T0CON
	extern	_TMR0
	extern	_TMR0L
	extern	_TMR0H
	extern	_STATUS
	extern	_FSR2L
	extern	_FSR2H
	extern	_PLUSW2
	extern	_PREINC2
	extern	_POSTDEC2
	extern	_POSTINC2
	extern	_INDF2
	extern	_BSR
	extern	_FSR1L
	extern	_FSR1H
	extern	_PLUSW1
	extern	_PREINC1
	extern	_POSTDEC1
	extern	_POSTINC1
	extern	_INDF1
	extern	_WREG
	extern	_FSR0L
	extern	_FSR0H
	extern	_PLUSW0
	extern	_PREINC0
	extern	_POSTDEC0
	extern	_POSTINC0
	extern	_INDF0
	extern	_INTCON3
	extern	_INTCON2
	extern	_INTCON
	extern	_PROD
	extern	_PRODL
	extern	_PRODH
	extern	_TABLAT
	extern	_TBLPTR
	extern	_TBLPTRL
	extern	_TBLPTRH
	extern	_TBLPTRU
	extern	_PC
	extern	_PCL
	extern	_PCLATH
	extern	_PCLATU
	extern	_STKPTR
	extern	_TOS
	extern	_TOSL
	extern	_TOSH
	extern	_TOSU
	extern	_delay_ms
	extern	_delay_us
	extern	__moduint
	extern	__divuint

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1
r0x0b	res	1

udata_lcd44780_0	udata
_LCD_function	res	1

udata_lcd44780_1	udata
_LCD_ctrl	res	1

udata_lcd44780_2	udata
_LCD_mode	res	1

udata_lcd44780_3	udata
_LCD_lines	res	1

udata_lcd44780_4	udata
_lcd_gotoxy_row_offsets_65536_69	res	4

udata_lcd44780_5	udata
_lcd_print_number_buf_65536_75	res	32

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_lcd44780__lcd_init	code
_lcd_init:
;	.line	511; ../../../lib/lcd44780.c	lcd_init(char fourbitmode) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	BANKSEL	_LCD_ctrl
;	.line	513; ../../../lib/lcd44780.c	LCD_ctrl = 0;
	CLRF	_LCD_ctrl, B
;	.line	514; ../../../lib/lcd44780.c	LCD_function = (fourbitmode ? LCD_4BITMODE : LCD_8BITMODE);
	MOVF	r0x00, W
	BZ	_00288_DS_
	CLRF	r0x00
	CLRF	r0x01
	BRA	_00289_DS_
_00288_DS_:
	MOVLW	0x10
	MOVWF	r0x00
	CLRF	r0x01
_00289_DS_:
	MOVF	r0x00, W
	BANKSEL	_LCD_function
	MOVWF	_LCD_function, B
	BANKSEL	_LCD_lines
;	.line	516; ../../../lib/lcd44780.c	LCD_lines = 0;
	CLRF	_LCD_lines, B
	BANKSEL	_LCD_mode
;	.line	518; ../../../lib/lcd44780.c	LCD_mode = 0;
	CLRF	_LCD_mode, B
;	.line	520; ../../../lib/lcd44780.c	RS_TRIS();
	BCF	_TRISB, 2
;	.line	521; ../../../lib/lcd44780.c	RS_LOW();
	BCF	_LATB, 2
;	.line	526; ../../../lib/lcd44780.c	EN_TRIS();
	BCF	_TRISB, 3
;	.line	527; ../../../lib/lcd44780.c	EN_LOW();
	BCF	_LATB, 3
;	.line	529; ../../../lib/lcd44780.c	DATA_TRIS();
	MOVLW	0x0f
	ANDWF	_LATB, F
;	.line	539; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_begin	code
_lcd_begin:
;	.line	438; ../../../lib/lcd44780.c	lcd_begin(uint8_t lines, uint8_t dotsize) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	439; ../../../lib/lcd44780.c	if(lines > 1)
	MOVLW	0x02
	SUBWF	r0x00, W
	BNC	_00249_DS_
	BANKSEL	_LCD_function
;	.line	440; ../../../lib/lcd44780.c	LCD_function |= LCD_2LINE;
	BSF	_LCD_function, 3, B
_00249_DS_:
;	.line	443; ../../../lib/lcd44780.c	LCD_lines = lines;
	MOVFF	r0x00, _LCD_lines
;	.line	447; ../../../lib/lcd44780.c	if((dotsize != 0) && (lines == 1))
	MOVF	r0x01, W
	BZ	_00251_DS_
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00251_DS_
_00277_DS_:
	BANKSEL	_LCD_function
;	.line	448; ../../../lib/lcd44780.c	LCD_function |= LCD_5x10DOTS;
	BSF	_LCD_function, 2, B
_00251_DS_:
;	.line	450; ../../../lib/lcd44780.c	delay_ms(15); // Wait more than 15 ms after VDD rises to 4.5V
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0f
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	453; ../../../lib/lcd44780.c	RS_LOW();
	BCF	_LATB, 2
;	.line	454; ../../../lib/lcd44780.c	EN_LOW();
	BCF	_LATB, 3
;	.line	457; ../../../lib/lcd44780.c	if(!(LCD_function & LCD_8BITMODE)) {
	MOVFF	_LCD_function, r0x00
	BTFSC	r0x00, 4
	BRA	_00254_DS_
;	.line	461; ../../../lib/lcd44780.c	lcd_write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	462; ../../../lib/lcd44780.c	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x05
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	464; ../../../lib/lcd44780.c	lcd_write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	465; ../../../lib/lcd44780.c	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
	MOVWF	POSTDEC1
	CALL	_delay_us
	MOVF	POSTINC1, F
;	.line	467; ../../../lib/lcd44780.c	lcd_write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	468; ../../../lib/lcd44780.c	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
	MOVWF	POSTDEC1
	CALL	_delay_us
	MOVF	POSTINC1, F
;	.line	470; ../../../lib/lcd44780.c	lcd_write4bits(0x02);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
	BRA	_00255_DS_
_00254_DS_:
;	.line	477; ../../../lib/lcd44780.c	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVFF	_LCD_function, r0x00
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	478; ../../../lib/lcd44780.c	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x05
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	481; ../../../lib/lcd44780.c	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVFF	_LCD_function, r0x00
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	482; ../../../lib/lcd44780.c	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x05
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	486; ../../../lib/lcd44780.c	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVFF	_LCD_function, r0x00
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
_00255_DS_:
;	.line	490; ../../../lib/lcd44780.c	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVFF	_LCD_function, r0x00
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	493; ../../../lib/lcd44780.c	LCD_ctrl = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
	MOVLW	0x04
	BANKSEL	_LCD_ctrl
	MOVWF	_LCD_ctrl, B
;	.line	494; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	497; ../../../lib/lcd44780.c	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	498; ../../../lib/lcd44780.c	delay_ms(2);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	501; ../../../lib/lcd44780.c	LCD_mode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
	MOVLW	0x02
	BANKSEL	_LCD_mode
	MOVWF	_LCD_mode, B
;	.line	503; ../../../lib/lcd44780.c	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	504; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_autoscroll	code
_lcd_autoscroll:
;	.line	419; ../../../lib/lcd44780.c	lcd_autoscroll(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_mode
;	.line	420; ../../../lib/lcd44780.c	LCD_mode |= LCD_ENTRYSHIFTINCREMENT;
	BSF	_LCD_mode, 0, B
;	.line	421; ../../../lib/lcd44780.c	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVFF	_LCD_mode, r0x00
	BSF	r0x00, 2
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	422; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_left_to_right	code
_lcd_left_to_right:
;	.line	399; ../../../lib/lcd44780.c	lcd_left_to_right(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_mode
;	.line	400; ../../../lib/lcd44780.c	LCD_mode |= LCD_ENTRYLEFT;
	BSF	_LCD_mode, 1, B
;	.line	401; ../../../lib/lcd44780.c	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVFF	_LCD_mode, r0x00
	BSF	r0x00, 2
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	402; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_blink	code
_lcd_blink:
;	.line	372; ../../../lib/lcd44780.c	lcd_blink() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	373; ../../../lib/lcd44780.c	LCD_ctrl |= LCD_BLINKON;
	BSF	_LCD_ctrl, 0, B
;	.line	374; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	375; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_cursor	code
_lcd_cursor:
;	.line	353; ../../../lib/lcd44780.c	lcd_cursor() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	354; ../../../lib/lcd44780.c	LCD_ctrl |= LCD_CURSORON;
	BSF	_LCD_ctrl, 1, B
;	.line	355; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	356; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_no_cursor	code
_lcd_no_cursor:
;	.line	344; ../../../lib/lcd44780.c	lcd_no_cursor() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	345; ../../../lib/lcd44780.c	LCD_ctrl &= ~LCD_CURSORON;
	BCF	_LCD_ctrl, 1, B
;	.line	346; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	347; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_display	code
_lcd_display:
;	.line	334; ../../../lib/lcd44780.c	lcd_display() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	335; ../../../lib/lcd44780.c	LCD_ctrl |= LCD_DISPLAYON;
	BSF	_LCD_ctrl, 2, B
;	.line	336; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	337; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_clear	code
_lcd_clear:
;	.line	314; ../../../lib/lcd44780.c	lcd_clear() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	315; ../../../lib/lcd44780.c	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	316; ../../../lib/lcd44780.c	delay_ms(2);                   // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	318; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_home	code
_lcd_home:
;	.line	303; ../../../lib/lcd44780.c	lcd_home() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	304; ../../../lib/lcd44780.c	lcd_command(LCD_RETURNHOME);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	305; ../../../lib/lcd44780.c	delay_ms(2); // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	307; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_print_number	code
_lcd_print_number:
;	.line	219; ../../../lib/lcd44780.c	lcd_print_number(uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	223; ../../../lib/lcd44780.c	char padchar = ' ';
	MOVLW	0x20
	MOVWF	r0x04
;	.line	225; ../../../lib/lcd44780.c	if(pad < 0) {
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	BNC	_00169_DS_
;	.line	226; ../../../lib/lcd44780.c	pad = -pad;
	NEGF	r0x03
;	.line	227; ../../../lib/lcd44780.c	padchar = '0';
	MOVLW	0x30
	MOVWF	r0x04
_00169_DS_:
;	.line	235; ../../../lib/lcd44780.c	do {
	CLRF	r0x05
_00153_DS_:
;	.line	239; ../../../lib/lcd44780.c	di = n % base;
	MOVFF	r0x02, r0x06
	CLRF	r0x07
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__moduint
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	240; ../../../lib/lcd44780.c	buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	MOVFF	r0x05, r0x09
	INCF	r0x05, F
	CLRF	r0x0a
	BTFSC	r0x09, 7
	SETF	r0x0a
	MOVLW	LOW(_lcd_print_number_buf_65536_75)
	ADDWF	r0x09, F
	MOVLW	HIGH(_lcd_print_number_buf_65536_75)
	ADDWFC	r0x0a, F
	MOVLW	0x0a
	SUBWF	r0x08, W
	BC	_00165_DS_
	MOVLW	0x30
	ADDWF	r0x08, W
	MOVWF	r0x0b
	BRA	_00166_DS_
_00165_DS_:
	MOVLW	0x37
	ADDWF	r0x08, W
	MOVWF	r0x0b
_00166_DS_:
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	r0x0b, INDF0
;	.line	242; ../../../lib/lcd44780.c	n /= base;
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	243; ../../../lib/lcd44780.c	} while(n > 0);
	MOVF	r0x00, W
	IORWF	r0x01, W
	BTFSS	STATUS, 2
	BRA	_00153_DS_
;	.line	245; ../../../lib/lcd44780.c	while(pad-- >= i) lcd_putch(padchar);
	MOVFF	r0x05, r0x00
	MOVFF	r0x03, r0x01
_00156_DS_:
	MOVF	r0x01, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x00, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNC	_00161_DS_
	DECF	r0x01, F
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_lcd_putch
	MOVF	POSTINC1, F
	BRA	_00156_DS_
_00161_DS_:
;	.line	247; ../../../lib/lcd44780.c	for(; i > 0; i--) lcd_putch((char)buf[(int16_t)i - 1]);
	MOVF	r0x00, W
	ADDLW	0x80
	ADDLW	0x7f
	BNC	_00163_DS_
	DECF	r0x00, W
	MOVWF	r0x01
	MOVFF	r0x01, r0x02
	CLRF	r0x03
	BTFSC	r0x01, 7
	SETF	r0x03
	MOVLW	LOW(_lcd_print_number_buf_65536_75)
	ADDWF	r0x02, F
	MOVLW	HIGH(_lcd_print_number_buf_65536_75)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_lcd_putch
	MOVF	POSTINC1, F
	MOVFF	r0x01, r0x00
	BRA	_00161_DS_
_00163_DS_:
;	.line	249; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_puts	code
_lcd_puts:
;	.line	190; ../../../lib/lcd44780.c	lcd_puts(const char* string) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	192; ../../../lib/lcd44780.c	for(i = 0; string[i]; i++) lcd_putch(string[i]);
	CLRF	r0x03
_00144_DS_:
	MOVF	r0x03, W
	ADDWF	r0x00, W
	MOVWF	r0x04
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVWF	r0x06
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrget1
	MOVWF	r0x04
	MOVF	r0x04, W
	BZ	_00146_DS_
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_lcd_putch
	MOVF	POSTINC1, F
	INCF	r0x03, F
	BRA	_00144_DS_
_00146_DS_:
;	.line	193; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_gotoxy	code
_lcd_gotoxy:
;	.line	162; ../../../lib/lcd44780.c	lcd_gotoxy(uint8_t col, uint8_t row) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	BANKSEL	_lcd_gotoxy_row_offsets_65536_69
;	.line	164; ../../../lib/lcd44780.c	uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	CLRF	_lcd_gotoxy_row_offsets_65536_69, B
	MOVLW	0x40
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_69 + 1)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_69 + 1), B
	MOVLW	0x14
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_69 + 2)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_69 + 2), B
	MOVLW	0x54
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_69 + 3)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_69 + 3), B
	BANKSEL	_LCD_lines
;	.line	173; ../../../lib/lcd44780.c	if(LCD_lines == 1) {
	MOVF	_LCD_lines, W, B
	XORLW	0x01
	BNZ	_00129_DS_
;	.line	174; ../../../lib/lcd44780.c	row_offsets[1] = 0x14;
	MOVLW	0x14
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_69 + 1)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_69 + 1), B
;	.line	175; ../../../lib/lcd44780.c	row_offsets[2] = 0x28;
	MOVLW	0x28
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_69 + 2)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_69 + 2), B
;	.line	176; ../../../lib/lcd44780.c	row_offsets[3] = 0x3C;
	MOVLW	0x3c
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_69 + 3)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_69 + 3), B
_00129_DS_:
;	.line	183; ../../../lib/lcd44780.c	lcd_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
	CLRF	r0x02
	MOVLW	LOW(_lcd_gotoxy_row_offsets_65536_69)
	ADDWF	r0x01, F
	MOVLW	HIGH(_lcd_gotoxy_row_offsets_65536_69)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x01, W
	ADDWF	r0x00, F
	BSF	r0x00, 7
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	184; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_command	code
_lcd_command:
;	.line	154; ../../../lib/lcd44780.c	lcd_command(uint8_t value) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	155; ../../../lib/lcd44780.c	lcd_send(value, LOW);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	156; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_putch	code
_lcd_putch:
;	.line	147; ../../../lib/lcd44780.c	lcd_putch(char value) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	148; ../../../lib/lcd44780.c	lcd_send((unsigned)value, HIGH);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	149; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_send	code
_lcd_send:
;	.line	126; ../../../lib/lcd44780.c	lcd_send(uint8_t value, uint8_t mode) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	127; ../../../lib/lcd44780.c	if(mode) {
	MOVF	r0x01, W
	BZ	_00111_DS_
;	.line	128; ../../../lib/lcd44780.c	RS_HIGH();
	BSF	_LATB, 2
	BRA	_00112_DS_
_00111_DS_:
;	.line	130; ../../../lib/lcd44780.c	RS_LOW();
	BCF	_LATB, 2
_00112_DS_:
;	.line	139; ../../../lib/lcd44780.c	lcd_write4bits(value >> 4); // Upper 4 bits first
	SWAPF	r0x00, W
	ANDLW	0x0f
	MOVWF	r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	140; ../../../lib/lcd44780.c	lcd_write4bits(value);      // Lower 4 bits second
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	142; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_write4bits	code
_lcd_write4bits:
;	.line	57; ../../../lib/lcd44780.c	lcd_write4bits(uint8_t value) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	62; ../../../lib/lcd44780.c	OUTB &= 0b00001111;
	MOVLW	0x0f
	ANDWF	_LATB, F
;	.line	63; ../../../lib/lcd44780.c	OUTB |= value << 4;
	SWAPF	r0x00, W
	ANDLW	0xf0
	MOVWF	r0x01
	MOVF	r0x01, W
	MOVWF	r0x00
	MOVF	r0x00, W
	IORWF	_LATB, F
;	.line	78; ../../../lib/lcd44780.c	lcd_pulse_enable();
	BSF	_LATB, 3
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	_delay_us
	MOVF	POSTINC1, F
	BCF	_LATB, 3
	MOVLW	0x64
	MOVWF	POSTDEC1
	CALL	_delay_us
	MOVF	POSTINC1, F
;	.line	83; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	 1640 (0x0668) bytes ( 1.25%)
;           	  820 (0x0334) words
; udata size:	   40 (0x0028) bytes ( 2.23%)
; access size:	   12 (0x000c) bytes


	end
