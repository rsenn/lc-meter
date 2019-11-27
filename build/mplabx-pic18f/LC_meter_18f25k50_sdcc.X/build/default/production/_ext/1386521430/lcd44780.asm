;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f25k50
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_lcd_send
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
	extern	_SRCON1bits
	extern	_SRCON0bits
	extern	_CCPTMRSbits
	extern	_ANSELAbits
	extern	_ANSELBbits
	extern	_ANSELCbits
	extern	_UCONbits
	extern	_USTATbits
	extern	_UCFGbits
	extern	_UADDRbits
	extern	_UIEbits
	extern	_UIRbits
	extern	_UEIEbits
	extern	_UEIRbits
	extern	_UFRMLbits
	extern	_UFRMHbits
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
	extern	_SLRCONbits
	extern	_VREFCON2bits
	extern	_VREFCON1bits
	extern	_VREFCON0bits
	extern	_PMD0bits
	extern	_PMD1bits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTEbits
	extern	_WPUBbits
	extern	_IOCBbits
	extern	_IOCCbits
	extern	_CTMUICONbits
	extern	_LATAbits
	extern	_LATBbits
	extern	_LATCbits
	extern	_CTMUCON1bits
	extern	_CTMUCONLbits
	extern	_CTMUCON0bits
	extern	_CTMUCONHbits
	extern	_DDRAbits
	extern	_TRISAbits
	extern	_DDRBbits
	extern	_TRISBbits
	extern	_DDRCbits
	extern	_TRISCbits
	extern	_CCP2CONbits
	extern	_ECCP2CONbits
	extern	_CM1CON0bits
	extern	_CM2CON0bits
	extern	_CM2CON1bits
	extern	_OSCTUNEbits
	extern	_HLVDCONbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_PIE3bits
	extern	_PIR3bits
	extern	_IPR3bits
	extern	_EECON1bits
	extern	_RCSTAbits
	extern	_RCSTA1bits
	extern	_TXSTAbits
	extern	_TXSTA1bits
	extern	_SPBRGbits
	extern	_SPBRG1bits
	extern	_SPBRGHbits
	extern	_SPBRGH1bits
	extern	_T3CONbits
	extern	_T3GCONbits
	extern	_ACTCONbits
	extern	_STCONbits
	extern	_ECCP1ASbits
	extern	_ECCP1DELbits
	extern	_PWM1CONbits
	extern	_BAUDCONbits
	extern	_BAUDCON1bits
	extern	_PSTR1CONbits
	extern	_T2CONbits
	extern	_CCP1CONbits
	extern	_ECCP1CONbits
	extern	_ADCON2bits
	extern	_ADCON1bits
	extern	_ADCON0bits
	extern	_SSP1CON2bits
	extern	_SSPCON2bits
	extern	_SSP1CON1bits
	extern	_SSPCONbits
	extern	_SSPCON1bits
	extern	_SSP1STATbits
	extern	_SSPSTATbits
	extern	_SSP1ADDbits
	extern	_SSPADDbits
	extern	_SSP1MSKbits
	extern	_SSPMSKbits
	extern	_SSP1CON3bits
	extern	_SSPCON3bits
	extern	_T1GCONbits
	extern	_T1CONbits
	extern	_RCONbits
	extern	_WDTCONbits
	extern	_OSCCON2bits
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
	extern	_SRCON1
	extern	_SRCON0
	extern	_CCPTMRS
	extern	_VREGCON
	extern	_ANSELA
	extern	_ANSELB
	extern	_ANSELC
	extern	_UCON
	extern	_USTAT
	extern	_UCFG
	extern	_UADDR
	extern	_UIE
	extern	_UIR
	extern	_UEIE
	extern	_UEIR
	extern	_UFRM
	extern	_UFRML
	extern	_UFRMH
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
	extern	_SLRCON
	extern	_VREFCON2
	extern	_VREFCON1
	extern	_VREFCON0
	extern	_PMD0
	extern	_PMD1
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTE
	extern	_WPUB
	extern	_IOCB
	extern	_IOCC
	extern	_CTMUICON
	extern	_LATA
	extern	_LATB
	extern	_LATC
	extern	_CTMUCON1
	extern	_CTMUCONL
	extern	_CTMUCON0
	extern	_CTMUCONH
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_DDRA
	extern	_TRISA
	extern	_DDRB
	extern	_TRISB
	extern	_DDRC
	extern	_TRISC
	extern	_CCP2CON
	extern	_ECCP2CON
	extern	_CM1CON0
	extern	_CM2CON0
	extern	_CM2CON1
	extern	_OSCTUNE
	extern	_HLVDCON
	extern	_PIE1
	extern	_PIR1
	extern	_IPR1
	extern	_PIE2
	extern	_PIR2
	extern	_IPR2
	extern	_PIE3
	extern	_PIR3
	extern	_IPR3
	extern	_EECON1
	extern	_EECON2
	extern	_EEDATA
	extern	_EEADR
	extern	_RCSTA
	extern	_RCSTA1
	extern	_TXSTA
	extern	_TXSTA1
	extern	_TXREG
	extern	_TXREG1
	extern	_RCREG
	extern	_RCREG1
	extern	_SPBRG
	extern	_SPBRG1
	extern	_SPBRGH
	extern	_SPBRGH1
	extern	_T3CON
	extern	_TMR3
	extern	_TMR3L
	extern	_TMR3H
	extern	_T3GCON
	extern	_ACTCON
	extern	_STCON
	extern	_ECCP1AS
	extern	_ECCP1DEL
	extern	_PWM1CON
	extern	_BAUDCON
	extern	_BAUDCON1
	extern	_PSTR1CON
	extern	_T2CON
	extern	_PR2
	extern	_TMR2
	extern	_CCP1CON
	extern	_ECCP1CON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
	extern	_ADRESL
	extern	_ADRESH
	extern	_SSP1CON2
	extern	_SSPCON2
	extern	_SSP1CON1
	extern	_SSPCON
	extern	_SSPCON1
	extern	_SSP1STAT
	extern	_SSPSTAT
	extern	_SSP1ADD
	extern	_SSPADD
	extern	_SSP1BUF
	extern	_SSPBUF
	extern	_SSP1MSK
	extern	_SSPMSK
	extern	_SSP1CON3
	extern	_SSPCON3
	extern	_T1GCON
	extern	_T1CON
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_RCON
	extern	_WDTCON
	extern	_OSCCON2
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
FSR1H	equ	0xfe2
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
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
_lcd_gotoxy_row_offsets_65536_67	res	4

udata_lcd44780_5	udata
_lcd_print_number_buf_65536_73	res	32

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_lcd44780__lcd_init	code
_lcd_init:
;	.line	506; ../../../lib/lcd44780.c	lcd_init(char fourbitmode) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
	BANKSEL	_LCD_ctrl
;	.line	508; ../../../lib/lcd44780.c	LCD_ctrl = 0;
	CLRF	_LCD_ctrl, B
;	.line	509; ../../../lib/lcd44780.c	LCD_function = (fourbitmode ? LCD_4BITMODE : LCD_8BITMODE);
	MOVF	r0x00, W
	BZ	_00283_DS_
	CLRF	r0x00
	CLRF	r0x01
	BRA	_00284_DS_
_00283_DS_:
	MOVLW	0x10
	MOVWF	r0x00
	CLRF	r0x01
_00284_DS_:
	MOVF	r0x00, W
	BANKSEL	_LCD_function
	MOVWF	_LCD_function, B
	BANKSEL	_LCD_lines
;	.line	511; ../../../lib/lcd44780.c	LCD_lines = 0;
	CLRF	_LCD_lines, B
	BANKSEL	_LCD_mode
;	.line	513; ../../../lib/lcd44780.c	LCD_mode = 0;
	CLRF	_LCD_mode, B
;	.line	515; ../../../lib/lcd44780.c	RS_TRIS();
	BCF	_TRISB, 2
;	.line	516; ../../../lib/lcd44780.c	RS_LOW();
	BCF	_LATB, 2
;	.line	521; ../../../lib/lcd44780.c	EN_TRIS();
	BCF	_TRISB, 3
;	.line	522; ../../../lib/lcd44780.c	EN_LOW();
	BCF	_LATB, 3
;	.line	524; ../../../lib/lcd44780.c	DATA_TRIS();
	MOVLW	0x0f
	ANDWF	_LATB, F
;	.line	534; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_begin	code
_lcd_begin:
;	.line	433; ../../../lib/lcd44780.c	lcd_begin(uint8_t lines, uint8_t dotsize) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
	MOVLW	0x04
	MOVFF	PLUSW2, r0x01
;	.line	434; ../../../lib/lcd44780.c	if(lines > 1)
	MOVLW	0x02
	SUBWF	r0x00, W
	BNC	_00244_DS_
	BANKSEL	_LCD_function
;	.line	435; ../../../lib/lcd44780.c	LCD_function |= LCD_2LINE;
	BSF	_LCD_function, 3, B
_00244_DS_:
;	.line	438; ../../../lib/lcd44780.c	LCD_lines = lines;
	MOVFF	r0x00, _LCD_lines
;	.line	442; ../../../lib/lcd44780.c	if((dotsize != 0) && (lines == 1))
	MOVF	r0x01, W
	BZ	_00246_DS_
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00246_DS_
_00272_DS_:
	BANKSEL	_LCD_function
;	.line	443; ../../../lib/lcd44780.c	LCD_function |= LCD_5x10DOTS;
	BSF	_LCD_function, 2, B
_00246_DS_:
;	.line	445; ../../../lib/lcd44780.c	delay_ms(15); // Wait more than 15 ms after VDD rises to 4.5V
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0f
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	448; ../../../lib/lcd44780.c	RS_LOW();
	BCF	_LATB, 2
;	.line	449; ../../../lib/lcd44780.c	EN_LOW();
	BCF	_LATB, 3
;	.line	452; ../../../lib/lcd44780.c	if(!(LCD_function & LCD_8BITMODE)) {
	MOVFF	_LCD_function, r0x00
	BTFSC	r0x00, 4
	BRA	_00249_DS_
;	.line	456; ../../../lib/lcd44780.c	lcd_write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	457; ../../../lib/lcd44780.c	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x05
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	459; ../../../lib/lcd44780.c	lcd_write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	460; ../../../lib/lcd44780.c	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
	MOVWF	POSTDEC1
	CALL	_delay_us
	MOVF	POSTINC1, F
;	.line	462; ../../../lib/lcd44780.c	lcd_write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	463; ../../../lib/lcd44780.c	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
	MOVWF	POSTDEC1
	CALL	_delay_us
	MOVF	POSTINC1, F
;	.line	465; ../../../lib/lcd44780.c	lcd_write4bits(0x02);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
	BRA	_00250_DS_
_00249_DS_:
;	.line	472; ../../../lib/lcd44780.c	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVFF	_LCD_function, r0x00
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	473; ../../../lib/lcd44780.c	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x05
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	476; ../../../lib/lcd44780.c	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVFF	_LCD_function, r0x00
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	477; ../../../lib/lcd44780.c	delay_ms(5); // Wait for more than 4.1 ms
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
_00250_DS_:
;	.line	485; ../../../lib/lcd44780.c	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVFF	_LCD_function, r0x00
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	488; ../../../lib/lcd44780.c	LCD_ctrl = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
	MOVLW	0x04
	BANKSEL	_LCD_ctrl
	MOVWF	_LCD_ctrl, B
;	.line	489; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	492; ../../../lib/lcd44780.c	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	493; ../../../lib/lcd44780.c	delay_ms(2);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	496; ../../../lib/lcd44780.c	LCD_mode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
	MOVLW	0x02
	BANKSEL	_LCD_mode
	MOVWF	_LCD_mode, B
;	.line	498; ../../../lib/lcd44780.c	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	499; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_autoscroll	code
_lcd_autoscroll:
;	.line	414; ../../../lib/lcd44780.c	lcd_autoscroll(void) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_mode
;	.line	415; ../../../lib/lcd44780.c	LCD_mode |= LCD_ENTRYSHIFTINCREMENT;
	BSF	_LCD_mode, 0, B
;	.line	416; ../../../lib/lcd44780.c	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVFF	_LCD_mode, r0x00
	BSF	r0x00, 2
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	417; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_left_to_right	code
_lcd_left_to_right:
;	.line	394; ../../../lib/lcd44780.c	lcd_left_to_right(void) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_mode
;	.line	395; ../../../lib/lcd44780.c	LCD_mode |= LCD_ENTRYLEFT;
	BSF	_LCD_mode, 1, B
;	.line	396; ../../../lib/lcd44780.c	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVFF	_LCD_mode, r0x00
	BSF	r0x00, 2
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	397; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_blink	code
_lcd_blink:
;	.line	367; ../../../lib/lcd44780.c	lcd_blink() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	368; ../../../lib/lcd44780.c	LCD_ctrl |= LCD_BLINKON;
	BSF	_LCD_ctrl, 0, B
;	.line	369; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	370; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_cursor	code
_lcd_cursor:
;	.line	348; ../../../lib/lcd44780.c	lcd_cursor() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	349; ../../../lib/lcd44780.c	LCD_ctrl |= LCD_CURSORON;
	BSF	_LCD_ctrl, 1, B
;	.line	350; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	351; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_no_cursor	code
_lcd_no_cursor:
;	.line	339; ../../../lib/lcd44780.c	lcd_no_cursor() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	340; ../../../lib/lcd44780.c	LCD_ctrl &= ~LCD_CURSORON;
	BCF	_LCD_ctrl, 1, B
;	.line	341; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	342; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_display	code
_lcd_display:
;	.line	329; ../../../lib/lcd44780.c	lcd_display() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	BANKSEL	_LCD_ctrl
;	.line	330; ../../../lib/lcd44780.c	LCD_ctrl |= LCD_DISPLAYON;
	BSF	_LCD_ctrl, 2, B
;	.line	331; ../../../lib/lcd44780.c	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVFF	_LCD_ctrl, r0x00
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	332; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_clear	code
_lcd_clear:
;	.line	309; ../../../lib/lcd44780.c	lcd_clear() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
;	.line	310; ../../../lib/lcd44780.c	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	311; ../../../lib/lcd44780.c	delay_ms(2);                   // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	313; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_home	code
_lcd_home:
;	.line	298; ../../../lib/lcd44780.c	lcd_home() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
;	.line	299; ../../../lib/lcd44780.c	lcd_command(LCD_RETURNHOME);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_lcd_command
	MOVF	POSTINC1, F
;	.line	300; ../../../lib/lcd44780.c	delay_ms(2); // Wait for more than 4.1 ms
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	302; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_print_number	code
_lcd_print_number:
;	.line	214; ../../../lib/lcd44780.c	lcd_print_number(uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
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
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
	MOVLW	0x04
	MOVFF	PLUSW2, r0x01
	MOVLW	0x05
	MOVFF	PLUSW2, r0x02
	MOVLW	0x06
	MOVFF	PLUSW2, r0x03
;	.line	218; ../../../lib/lcd44780.c	char padchar = ' ';
	MOVLW	0x20
	MOVWF	r0x04
;	.line	220; ../../../lib/lcd44780.c	if(pad < 0) {
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	BNC	_00164_DS_
;	.line	221; ../../../lib/lcd44780.c	pad = -pad;
	NEGF	r0x03
;	.line	222; ../../../lib/lcd44780.c	padchar = '0';
	MOVLW	0x30
	MOVWF	r0x04
_00164_DS_:
;	.line	230; ../../../lib/lcd44780.c	do {
	CLRF	r0x05
_00148_DS_:
;	.line	234; ../../../lib/lcd44780.c	di = n % base;
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
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	235; ../../../lib/lcd44780.c	buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	MOVFF	r0x05, r0x09
	INCF	r0x05, F
	CLRF	r0x0a
	BTFSC	r0x09, 7
	SETF	r0x0a
	MOVLW	LOW(_lcd_print_number_buf_65536_73)
	ADDWF	r0x09, F
	MOVLW	HIGH(_lcd_print_number_buf_65536_73)
	ADDWFC	r0x0a, F
	MOVLW	0x0a
	SUBWF	r0x08, W
	BC	_00160_DS_
	MOVLW	0x30
	ADDWF	r0x08, W
	MOVWF	r0x0b
	BRA	_00161_DS_
_00160_DS_:
	MOVLW	0x37
	ADDWF	r0x08, W
	MOVWF	r0x0b
_00161_DS_:
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	r0x0b, INDF0
;	.line	237; ../../../lib/lcd44780.c	n /= base;
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
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	238; ../../../lib/lcd44780.c	} while(n > 0);
	MOVF	r0x00, W
	IORWF	r0x01, W
	BTFSS	STATUS, 2
	BRA	_00148_DS_
;	.line	240; ../../../lib/lcd44780.c	while(pad-- >= i) lcd_putch(padchar);
	MOVFF	r0x05, r0x00
	MOVFF	r0x03, r0x01
_00151_DS_:
	MOVF	r0x01, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x00, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNC	_00156_DS_
	DECF	r0x01, F
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BRA	_00151_DS_
_00156_DS_:
;	.line	242; ../../../lib/lcd44780.c	for(; i > 0; i--) lcd_putch((char)buf[(int16_t)i - 1]);
	MOVF	r0x00, W
	ADDLW	0x80
	ADDLW	0x7f
	BNC	_00158_DS_
	DECF	r0x00, W
	MOVWF	r0x01
	MOVFF	r0x01, r0x02
	CLRF	r0x03
	BTFSC	r0x01, 7
	SETF	r0x03
	MOVLW	LOW(_lcd_print_number_buf_65536_73)
	ADDWF	r0x02, F
	MOVLW	HIGH(_lcd_print_number_buf_65536_73)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVFF	r0x01, r0x00
	BRA	_00156_DS_
_00158_DS_:
;	.line	244; ../../../lib/lcd44780.c	}
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
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_puts	code
_lcd_puts:
;	.line	185; ../../../lib/lcd44780.c	lcd_puts(const char* string) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
	MOVLW	0x04
	MOVFF	PLUSW2, r0x01
	MOVLW	0x05
	MOVFF	PLUSW2, r0x02
;	.line	187; ../../../lib/lcd44780.c	for(i = 0; string[i]; i++) lcd_putch(string[i]);
	CLRF	r0x03
_00139_DS_:
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
	BZ	_00141_DS_
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	INCF	r0x03, F
	BRA	_00139_DS_
_00141_DS_:
;	.line	188; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_gotoxy	code
_lcd_gotoxy:
;	.line	157; ../../../lib/lcd44780.c	lcd_gotoxy(uint8_t col, uint8_t row) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
	MOVLW	0x04
	MOVFF	PLUSW2, r0x01
	BANKSEL	_lcd_gotoxy_row_offsets_65536_67
;	.line	159; ../../../lib/lcd44780.c	uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	CLRF	_lcd_gotoxy_row_offsets_65536_67, B
	MOVLW	0x40
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_67 + 1)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_67 + 1), B
	MOVLW	0x14
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_67 + 2)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_67 + 2), B
	MOVLW	0x54
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_67 + 3)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_67 + 3), B
	BANKSEL	_LCD_lines
;	.line	168; ../../../lib/lcd44780.c	if(LCD_lines == 1) {
	MOVF	_LCD_lines, W, B
	XORLW	0x01
	BNZ	_00124_DS_
;	.line	169; ../../../lib/lcd44780.c	row_offsets[1] = 0x14;
	MOVLW	0x14
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_67 + 1)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_67 + 1), B
;	.line	170; ../../../lib/lcd44780.c	row_offsets[2] = 0x28;
	MOVLW	0x28
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_67 + 2)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_67 + 2), B
;	.line	171; ../../../lib/lcd44780.c	row_offsets[3] = 0x3C;
	MOVLW	0x3c
	BANKSEL	(_lcd_gotoxy_row_offsets_65536_67 + 3)
	MOVWF	(_lcd_gotoxy_row_offsets_65536_67 + 3), B
_00124_DS_:
;	.line	178; ../../../lib/lcd44780.c	lcd_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
	CLRF	r0x02
	MOVLW	LOW(_lcd_gotoxy_row_offsets_65536_67)
	ADDWF	r0x01, F
	MOVLW	HIGH(_lcd_gotoxy_row_offsets_65536_67)
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
;	.line	179; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_command	code
_lcd_command:
;	.line	149; ../../../lib/lcd44780.c	lcd_command(uint8_t value) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
;	.line	150; ../../../lib/lcd44780.c	lcd_send(value, LOW);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	151; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_send	code
_lcd_send:
;	.line	125; ../../../lib/lcd44780.c	lcd_send(uint8_t value, uint8_t mode) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
	MOVLW	0x04
	MOVFF	PLUSW2, r0x01
;	.line	126; ../../../lib/lcd44780.c	if(mode) {
	MOVF	r0x01, W
	BZ	_00111_DS_
;	.line	127; ../../../lib/lcd44780.c	RS_HIGH();
	BSF	_LATB, 2
	BRA	_00112_DS_
_00111_DS_:
;	.line	129; ../../../lib/lcd44780.c	RS_LOW();
	BCF	_LATB, 2
_00112_DS_:
;	.line	138; ../../../lib/lcd44780.c	lcd_write4bits(value >> 4); // Upper 4 bits first
	SWAPF	r0x00, W
	ANDLW	0x0f
	MOVWF	r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	139; ../../../lib/lcd44780.c	lcd_write4bits(value);      // Lower 4 bits second
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_write4bits
	MOVF	POSTINC1, F
;	.line	141; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_lcd44780__lcd_write4bits	code
_lcd_write4bits:
;	.line	56; ../../../lib/lcd44780.c	lcd_write4bits(uint8_t value) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
;	.line	61; ../../../lib/lcd44780.c	OUTB &= 0b00001111;
	MOVLW	0x0f
	ANDWF	_LATB, F
;	.line	62; ../../../lib/lcd44780.c	OUTB |= value << 4;
	SWAPF	r0x00, W
	ANDLW	0xf0
	MOVWF	r0x01
	MOVF	r0x01, W
	MOVWF	r0x00
	MOVF	r0x00, W
	IORWF	_LATB, F
;	.line	77; ../../../lib/lcd44780.c	lcd_pulse_enable();
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
;	.line	82; ../../../lib/lcd44780.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	



; Statistics:
; code size:	 1814 (0x0716) bytes ( 1.38%)
;           	  907 (0x038b) words
; udata size:	   40 (0x0028) bytes ( 2.23%)
; access size:	   12 (0x000c) bytes


	end