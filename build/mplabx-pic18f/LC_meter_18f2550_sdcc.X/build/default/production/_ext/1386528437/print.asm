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
	global	_print_digit
	global	_print_unit
	global	_print_reading
	global	_indicator
	global	_output_putch
	global	_put_str
	global	_lcd_put

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
	extern	_buffer
	extern	_F1
	extern	_F2
	extern	_F3
	extern	_CCal
	extern	_putchar_ptr
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
	extern	_lcd_puts
	extern	_lcd_gotoxy
	extern	_lcd_putch
	extern	_uart_puts
	extern	_format_number
	extern	__divuint
	extern	__moduint
	extern	_logo_image
	extern	_uart_brg

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


	idata
_print_unit_units_65536_65	db	LOW(___str_0), HIGH(___str_0), UPPER(___str_0), LOW(___str_1), HIGH(___str_1), UPPER(___str_1), LOW(___str_2), HIGH(___str_2), UPPER(___str_2), LOW(___str_3), HIGH(___str_3), UPPER(___str_3)
	db	LOW(___str_4), HIGH(___str_4), UPPER(___str_4), LOW(___str_5), HIGH(___str_5), UPPER(___str_5), LOW(___str_6), HIGH(___str_6), UPPER(___str_6), LOW(___str_7), HIGH(___str_7), UPPER(___str_7)


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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_print__put_str	code
_put_str:
;	.line	508; ../../../src/print.c	put_str(const char* s) {
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
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	511; ../../../src/print.c	for(i = 0; s[i]; i++) {
	CLRF	r0x03
	CLRF	r0x04
_00154_DS_:
	MOVF	r0x03, W
	MOVWF	r0x05
	MOVF	r0x04, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVF	r0x00, W
	ADDWF	r0x05, F
	MOVF	r0x01, W
	ADDWFC	r0x06, F
	MOVF	r0x02, W
	ADDWFC	r0x07, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrget1
	MOVWF	r0x05
	MOVF	r0x05, W
	BZ	_00156_DS_
;	.line	512; ../../../src/print.c	output_putch(s[i]);
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	_output_putch
	MOVF	POSTINC1, F
;	.line	511; ../../../src/print.c	for(i = 0; s[i]; i++) {
	INFSNZ	r0x03, F
	INCF	r0x04, F
	BRA	_00154_DS_
_00156_DS_:
;	.line	514; ../../../src/print.c	}
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
S_print__output_putch	code
_output_putch:
;	.line	495; ../../../src/print.c	output_putch(char c) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	497; ../../../src/print.c	lcd_putch(c);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_putch
	MOVF	POSTINC1, F
;	.line	502; ../../../src/print.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_print__indicator	code
_indicator:
;	.line	471; ../../../src/print.c	indicator(uint8_t indicate) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	485; ../../../src/print.c	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	486; ../../../src/print.c	if(indicate) {
	MOVF	r0x00, W
	BZ	_00140_DS_
;	.line	487; ../../../src/print.c	lcd_puts("-*-");
	MOVLW	HIGH(___str_10)
	MOVWF	r0x01
	MOVLW	LOW(___str_10)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BRA	_00142_DS_
_00140_DS_:
;	.line	489; ../../../src/print.c	lcd_puts("   ");
	MOVLW	HIGH(___str_11)
	MOVWF	r0x01
	MOVLW	LOW(___str_11)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
_00142_DS_:
;	.line	492; ../../../src/print.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_print__print_reading	code
_print_reading:
;	.line	431; ../../../src/print.c	print_reading(uint16_t measurement) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	458; ../../../src/print.c	lcd_gotoxy(9, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	459; ../../../src/print.c	lcd_puts("     ");
	MOVLW	HIGH(___str_9)
	MOVWF	r0x03
	MOVLW	LOW(___str_9)
	MOVWF	r0x02
	CLRF	r0x04
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_lcd_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	460; ../../../src/print.c	lcd_gotoxy(9, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	462; ../../../src/print.c	format_number(/*&buffer_putch,*/ measurement / 100, 10, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x02
	MOVFF	PRODL, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_format_number
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	464; ../../../src/print.c	format_number(/*&buffer_putch,*/ measurement % 100, 10, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__moduint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_format_number
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	467; ../../../src/print.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_print__print_unit	code
_print_unit:
;	.line	410; ../../../src/print.c	print_unit(uint8_t unit) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	419; ../../../src/print.c	lcd_gotoxy(14, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0e
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BANKSEL	(_buffer + 16)
;	.line	423; ../../../src/print.c	lcd_gotoxy(16 - BUFFER_LEN(), 0);
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x00
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	MOVWF	r0x01
	MOVF	r0x01, W
	SUBWF	r0x00, F
	MOVF	r0x00, W
	SUBLW	0x10
	MOVWF	r0x00
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	426; ../../../src/print.c	uart_puts("\r\n");
	MOVLW	HIGH(___str_8)
	MOVWF	r0x01
	MOVLW	LOW(___str_8)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_uart_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	428; ../../../src/print.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_print__print_digit	code
_print_digit:
;	.line	388; ../../../src/print.c	print_digit(uint8_t line, uint8_t column, uint8_t digit) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
	MOVLW	0x04
	MOVFF	PLUSW2, r0x01
;	.line	403; ../../../src/print.c	lcd_gotoxy(column, /*line - 1*/ 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	404; ../../../src/print.c	lcd_putch('0' + digit);
	MOVLW	0x30
	ADDWF	r0x01, F
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_lcd_putch
	MOVF	POSTINC1, F
;	.line	406; ../../../src/print.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_print__lcd_put	code
_lcd_put:
;	.line	34; ../../../src/print.c	lcd_put(const char* buf, unsigned n) {
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
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
_00105_DS_:
;	.line	36; ../../../src/print.c	while(n--) lcd_putch(*buf++);
	MOVFF	r0x03, r0x05
	MOVFF	r0x04, r0x06
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
	MOVF	r0x05, W
	IORWF	r0x06, W
	BZ	_00108_DS_
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x05
	INCF	r0x00, F
	BNC	_00119_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00119_DS_:
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	_lcd_putch
	MOVF	POSTINC1, F
	BRA	_00105_DS_
_00108_DS_:
;	.line	37; ../../../src/print.c	}
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
___str_0:
	DB	0x48, 0x00
; ; Starting pCode block
___str_1:
	DB	0x6d, 0x48, 0x00
; ; Starting pCode block
___str_2:
	DB	0x75, 0x48, 0x00
; ; Starting pCode block
___str_3:
	DB	0x6e, 0x48, 0x00
; ; Starting pCode block
___str_4:
	DB	0x6d, 0x46, 0x00
; ; Starting pCode block
___str_5:
	DB	0x75, 0x46, 0x00
; ; Starting pCode block
___str_6:
	DB	0x6e, 0x46, 0x00
; ; Starting pCode block
___str_7:
	DB	0x70, 0x46, 0x00
; ; Starting pCode block
___str_8:
	DB	0x0d, 0x0a, 0x00
; ; Starting pCode block
___str_9:
	DB	0x20, 0x20, 0x20, 0x20, 0x20, 0x00
; ; Starting pCode block
___str_10:
	DB	0x2d, 0x2a, 0x2d, 0x00
; ; Starting pCode block
___str_11:
	DB	0x20, 0x20, 0x20, 0x00


; Statistics:
; code size:	  938 (0x03aa) bytes ( 0.72%)
;           	  469 (0x01d5) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
