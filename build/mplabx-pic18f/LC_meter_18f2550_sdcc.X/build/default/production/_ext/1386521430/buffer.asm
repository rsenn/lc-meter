;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_buffer_init
	global	_buffer_flush
	global	_buffer_putch
	global	_buffer_put
	global	_buffer_puts
	global	_buffer

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
PRODH	equ	0xff4


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

udata_buffer_0	udata
_buffer	res	17

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_buffer__buffer_puts	code
_buffer_puts:
;	.line	57; ../../../lib/buffer.c	buffer_puts(const char* x) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
_00155_DS_:
;	.line	58; ../../../lib/buffer.c	while(*x) {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
	MOVF	r0x03, W
	BZ	_00157_DS_
;	.line	59; ../../../lib/buffer.c	buffer_putch(*x);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_buffer_putch
	MOVF	POSTINC1, F
;	.line	60; ../../../lib/buffer.c	++x;
	INCF	r0x00, F
	BNC	_00155_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00169_DS_:
	BRA	_00155_DS_
_00157_DS_:
;	.line	62; ../../../lib/buffer.c	return 0;
	CLRF	WREG
;	.line	63; ../../../lib/buffer.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_put	code
_buffer_put:
;	.line	39; ../../../lib/buffer.c	buffer_put(const char* buf, len_t len) {
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
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	BANKSEL	(_buffer + 16)
;	.line	41; ../../../lib/buffer.c	if(len > BUFFER_SIZE - buffer.n) // doesn't fit
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x04
	CLRF	r0x05
	MOVF	r0x04, W
	SUBLW	0x10
	MOVWF	r0x04
	MOVLW	0x00
	SUBFWB	r0x05, F
	MOVFF	r0x03, r0x06
	CLRF	r0x07
	MOVF	r0x05, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x07, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00149_DS_
	MOVF	r0x06, W
	SUBWF	r0x04, W
_00149_DS_:
	BC	_00138_DS_
;	.line	42; ../../../lib/buffer.c	return -1;
	SETF	WREG
	BRA	_00134_DS_
_00138_DS_:
;	.line	43; ../../../lib/buffer.c	for(i = 0; i < len; i++)
	CLRF	r0x04
_00132_DS_:
	MOVF	r0x03, W
	SUBWF	r0x04, W
	BC	_00130_DS_
	BANKSEL	(_buffer + 16)
;	.line	44; ../../../lib/buffer.c	buffer.x[buffer.n + i] = buf[i];
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x05
	MOVF	r0x04, W
	MOVWF	r0x06
	MOVF	r0x06, W
	ADDWF	r0x05, F
	CLRF	r0x06
	BTFSC	r0x05, 7
	SETF	r0x06
	MOVLW	LOW(_buffer)
	ADDWF	r0x05, F
	MOVLW	HIGH(_buffer)
	ADDWFC	r0x06, F
	MOVF	r0x04, W
	ADDWF	r0x00, W
	MOVWF	r0x07
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x08
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVWF	r0x09
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrget1
	MOVWF	r0x07
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x07, INDF0
;	.line	43; ../../../lib/buffer.c	for(i = 0; i < len; i++)
	INCF	r0x04, F
	BRA	_00132_DS_
_00130_DS_:
	BANKSEL	(_buffer + 16)
;	.line	45; ../../../lib/buffer.c	buffer.n += len;
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x00
	MOVF	r0x00, W
	ADDWF	r0x03, F
	MOVF	r0x03, W
	ANDLW	0x0f
	SWAPF	WREG, W
	MOVWF	PRODH
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	IORWF	PRODH, W
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	46; ../../../lib/buffer.c	return 0;
	CLRF	WREG
_00134_DS_:
;	.line	47; ../../../lib/buffer.c	}
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
S_buffer__buffer_putch	code
_buffer_putch:
;	.line	30; ../../../lib/buffer.c	buffer_putch(char ch) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	BANKSEL	(_buffer + 16)
;	.line	31; ../../../lib/buffer.c	if(BUFFER_SIZE - buffer.n <= 0)
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x01
	CLRF	r0x02
	MOVF	r0x01, W
	SUBLW	0x10
	MOVWF	r0x01
	MOVLW	0x00
	SUBFWB	r0x02, F
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00123_DS_
	MOVLW	0x01
	SUBWF	r0x01, W
_00123_DS_:
	BC	_00116_DS_
;	.line	32; ../../../lib/buffer.c	return 0;
	CLRF	WREG
	BRA	_00117_DS_
_00116_DS_:
	BANKSEL	(_buffer + 16)
;	.line	33; ../../../lib/buffer.c	buffer.x[buffer.n] = ch;
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_buffer)
	ADDWF	r0x01, F
	MOVLW	HIGH(_buffer)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x00, INDF0
	BANKSEL	(_buffer + 16)
;	.line	34; ../../../lib/buffer.c	buffer.n++;
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x00
	INCF	r0x00, F
	MOVF	r0x00, W
	ANDLW	0x0f
	SWAPF	WREG, W
	MOVWF	PRODH
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	IORWF	PRODH, W
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	35; ../../../lib/buffer.c	return 1;
	MOVLW	0x01
_00117_DS_:
;	.line	36; ../../../lib/buffer.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_flush	code
_buffer_flush:
;	.line	21; ../../../lib/buffer.c	buffer_flush() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	BANKSEL	(_buffer + 16)
;	.line	25; ../../../lib/buffer.c	BUFFER_CLEAR();
	MOVF	(_buffer + 16), W, B
	ANDLW	0xf0
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	26; ../../../lib/buffer.c	return 0;
	CLRF	WREG
;	.line	27; ../../../lib/buffer.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_init	code
_buffer_init:
;	.line	10; ../../../lib/buffer.c	buffer_init(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	BANKSEL	(_buffer + 16)
;	.line	11; ../../../lib/buffer.c	buffer.p = 0;
	MOVF	(_buffer + 16), W, B
	ANDLW	0xf0
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
	BANKSEL	(_buffer + 16)
;	.line	12; ../../../lib/buffer.c	buffer.n = 0;
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	13; ../../../lib/buffer.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  622 (0x026e) bytes ( 0.47%)
;           	  311 (0x0137) words
; udata size:	   17 (0x0011) bytes ( 0.95%)
; access size:	   10 (0x000a) bytes


	end
