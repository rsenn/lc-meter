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
	global	_uart_putch
	global	_uart_getch
	global	_uart_poll
	global	_uart_isr
	global	_uart_enable
	global	_uart_disable
	global	_uart_init
	global	_uart_puts
	global	_uart_puts2
	global	_uart_brg

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
	extern	__divslong

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
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_uart__uart_puts2	code
_uart_puts2:
;	.line	120; ../../../lib/uart.c	uart_puts2(uint8_t* s) {
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
_00212_DS_:
;	.line	121; ../../../lib/uart.c	while(*s) uart_putch(*s++);
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
	MOVF	r0x03, W
	BZ	_00215_DS_
	INCF	r0x00, F
	BNC	_00226_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00226_DS_:
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_uart_putch
	MOVF	POSTINC1, F
	BRA	_00212_DS_
_00215_DS_:
;	.line	122; ../../../lib/uart.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_puts	code
_uart_puts:
;	.line	115; ../../../lib/uart.c	uart_puts(const char* s) {
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
_00193_DS_:
;	.line	116; ../../../lib/uart.c	while(*s) uart_putch(*s++);
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
	MOVF	r0x03, W
	BZ	_00196_DS_
	INCF	r0x00, F
	BNC	_00207_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00207_DS_:
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_uart_putch
	MOVF	POSTINC1, F
	BRA	_00193_DS_
_00196_DS_:
;	.line	117; ../../../lib/uart.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_init	code
_uart_init:
;	.line	94; ../../../lib/uart.c	uart_init(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	97; ../../../lib/uart.c	RX_TRIS();
	BSF	_TRISC, 7
;	.line	98; ../../../lib/uart.c	TX_TRIS();
	BCF	_TRISC, 6
;	.line	99; ../../../lib/uart.c	TX_SET(0);
	MOVLW	0x40
	ANDWF	_LATC, F
;	.line	100; ../../../lib/uart.c	SPBRG = UART_BRG; // UART_BRG;
	MOVLW	0x41
	MOVWF	_SPBRG
;	.line	103; ../../../lib/uart.c	| /*RX9D =*/(NINE == 1 ? 0b1 : 0);
	MOVLW	0x90
	IORWF	_RCSTA, F
;	.line	108; ../../../lib/uart.c	: 0b000;
	BSF	_TXSTA, 2
;	.line	111; ../../../lib/uart.c	uart_enable();
	CALL	_uart_enable
;	.line	112; ../../../lib/uart.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_disable	code
_uart_disable:
;	.line	84; ../../../lib/uart.c	uart_disable(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	85; ../../../lib/uart.c	TXSTA &= ~0b00100000; //  TXEN = 0;
	BCF	_TXSTA, 5
;	.line	86; ../../../lib/uart.c	RCSTA &= ~0b10000000; // SPEN = 0;
	BCF	_RCSTA, 7
;	.line	87; ../../../lib/uart.c	PIE1 &= ~0b100000; //RCIE = 0;
	BCF	_PIE1, 5
;	.line	88; ../../../lib/uart.c	RX_TRIS();
	BSF	_TRISC, 7
;	.line	89; ../../../lib/uart.c	TX_TRIS();
	BCF	_TRISC, 6
;	.line	90; ../../../lib/uart.c	TX_SET(0);
	MOVLW	0x40
	ANDWF	_LATC, F
;	.line	91; ../../../lib/uart.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_enable	code
_uart_enable:
;	.line	74; ../../../lib/uart.c	uart_enable(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	75; ../../../lib/uart.c	RX_TRIS();
	BSF	_TRISC, 7
;	.line	76; ../../../lib/uart.c	TX_TRIS();
	BCF	_TRISC, 6
;	.line	77; ../../../lib/uart.c	TX_SET(0);
	MOVLW	0x40
	ANDWF	_LATC, F
;	.line	78; ../../../lib/uart.c	TXSTA |= 0b00100000; //  TXEN = 1;
	BSF	_TXSTA, 5
;	.line	79; ../../../lib/uart.c	RCSTA |= 0x80; // SPEN = 1;
	BSF	_RCSTA, 7
;	.line	80; ../../../lib/uart.c	PIE1 &= ~0b100000; //RCIE = 0;
	BCF	_PIE1, 5
;	.line	81; ../../../lib/uart.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_isr	code
_uart_isr:
;	.line	65; ../../../lib/uart.c	uart_isr(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
;	.line	66; ../../../lib/uart.c	if((PIR1 & 0b00100000)) {
	MOVFF	_PIR1, r0x00
	BTFSS	r0x00, 5
	BRA	_00157_DS_
;	.line	67; ../../../lib/uart.c	PIR1 &= ~0b00100000; //  RCIF = 0;
	BCF	_PIR1, 5
;	.line	68; ../../../lib/uart.c	return RCREG;
	MOVF	_RCREG, W
	BRA	_00158_DS_
_00157_DS_:
;	.line	70; ../../../lib/uart.c	return 0;
	CLRF	WREG
_00158_DS_:
;	.line	71; ../../../lib/uart.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_poll	code
_uart_poll:
;	.line	46; ../../../lib/uart.c	uart_poll(uint8_t bauds) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	50; ../../../lib/uart.c	TMR0 = (256 - UART_BRG_FN(bauds));
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x26
	MOVWF	POSTDEC1
	MOVLW	0x25
	MOVWF	POSTDEC1
	MOVLW	0xa0
	MOVWF	POSTDEC1
	CALL	__divslong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	INCF	r0x00, F
	COMF	r0x00, W
	MOVWF	_TMR0
	INCF	_TMR0, F
_00132_DS_:
;	.line	51; ../../../lib/uart.c	while(TMR0 & (1 << 7)) {
	BTFSS	_TMR0, 7
	BRA	_00134_DS_
;	.line	52; ../../../lib/uart.c	if((PIR1 & 0b00100000))
	MOVFF	_PIR1, r0x00
	BTFSS	r0x00, 5
	BRA	_00132_DS_
;	.line	53; ../../../lib/uart.c	return 1;
	MOVLW	0x01
	BRA	_00135_DS_
_00134_DS_:
;	.line	56; ../../../lib/uart.c	return 0;
	CLRF	WREG
_00135_DS_:
;	.line	57; ../../../lib/uart.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_getch	code
_uart_getch:
;	.line	32; ../../../lib/uart.c	uart_getch(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
;	.line	34; ../../../lib/uart.c	if(uart_poll(UART_TIMEOUT)) {
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_uart_poll
	MOVWF	r0x00
	MOVF	POSTINC1, F
	MOVF	r0x00, W
	BZ	_00124_DS_
;	.line	36; ../../../lib/uart.c	ch = RCREG;
	MOVFF	_RCREG, r0x00
;	.line	37; ../../../lib/uart.c	PIR1 &= ~0b00100000; //  RCIF = 0;
	BCF	_PIR1, 5
;	.line	38; ../../../lib/uart.c	return (int)ch;
	CLRF	r0x01
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00125_DS_
_00124_DS_:
;	.line	40; ../../../lib/uart.c	return -1;
	SETF	PRODL
	SETF	WREG
_00125_DS_:
;	.line	41; ../../../lib/uart.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_uart__uart_putch	code
_uart_putch:
;	.line	22; ../../../lib/uart.c	uart_putch(uint8_t byte) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
_00105_DS_:
;	.line	24; ../../../lib/uart.c	while(!(PIR1 & 0b00010000)) {
	MOVFF	_PIR1, r0x01
	BTFSS	r0x01, 4
	BRA	_00105_DS_
;	.line	28; ../../../lib/uart.c	TXREG = (uint8_t)byte;
	MOVFF	r0x00, _TXREG
;	.line	29; ../../../lib/uart.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block for Ival
	code
_uart_brg:
	DB	0x41


; Statistics:
; code size:	  594 (0x0252) bytes ( 0.45%)
;           	  297 (0x0129) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    4 (0x0004) bytes


	end
