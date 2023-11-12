;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------

	.ident "SDCC version 4.2.0 #13081 [pic16 port]"
	.file	"lib/ser.c"
	list	p=18f2520
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_ser_tmp
	global	_ser_isrx
	global	_ser_rxsize
	global	_ser_rxat
	global	_ser_getch
	global	_ser_putch
	global	_ser_puts
	global	_ser_put
	global	_ser_puts2
	global	_ser_puthex
	global	_ser_init
	global	_ser_brg
	global	_ser_rxfifo
	global	_ser_rxiptr
	global	_ser_rxoptr
	global	_ser_txfifo
	global	_ser_txiptr
	global	_ser_txoptr

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
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
	extern	_ECCP1ASbits
	extern	_ECCPASbits
	extern	_ECCP1DELbits
	extern	_PWM1CONbits
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
	extern	_ECCP1AS
	extern	_ECCPAS
	extern	_ECCP1DEL
	extern	_PWM1CON
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


	idata
_ser_brg	db	0x1f


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1

udata_ser_0	udata
_ser_tmp	res	1

udata_ser_1	udata
_ser_rxiptr	res	1

udata_ser_2	udata
_ser_rxoptr	res	1

udata_ser_3	udata
_ser_rxfifo	res	16

udata_ser_4	udata
_ser_txiptr	res	1

udata_ser_5	udata
_ser_txoptr	res	1

udata_ser_6	udata
_ser_txfifo	res	16

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_ser__ser_init	code
_ser_init:
	.line	114; lib/ser.c	ser_init(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	.line	115; lib/ser.c	SER_TX_TRIS();
	BCF	_TRISC, 6
	.line	117; lib/ser.c	SER_RX_TRIS();
	BSF	_TRISC, 7
	.line	119; lib/ser.c	BRGH = HIGH_SPEED; // high speed
	BSF	_TXSTAbits, 2
	.line	125; lib/ser.c	SPBRG = ser_brg; // 56.7K @ 20MHz, SPBRG = (20MHz/(16*BAUD_RATE))-1;
	MOVFF	_ser_brg, _SPBRG
	.line	128; lib/ser.c	TX9 = 0; // 8 bits
	BCF	_TXSTAbits, 6
	.line	129; lib/ser.c	RX9 = 0; //
	BCF	_RCSTAbits, 6
	.line	131; lib/ser.c	SYNC = 0; // uart settings
	BCF	_TXSTAbits, 4
	.line	132; lib/ser.c	SPEN = 1;
	BSF	_RCSTAbits, 7
	.line	133; lib/ser.c	CREN = 1;
	BSF	_RCSTAbits, 4
	.line	134; lib/ser.c	TXIE = 0;
	BCF	_PIE1bits, 4
	.line	136; lib/ser.c	TXEN = 1;
	BSF	_TXSTAbits, 5
	.line	137; lib/ser.c	PEIE = 1;
	BSF	_INTCONbits, 6
	BANKSEL	_ser_txoptr
	.line	139; lib/ser.c	ser_rxiptr = ser_rxoptr = ser_txiptr = ser_txoptr = 0;
	CLRF	_ser_txoptr, B
	BANKSEL	_ser_txiptr
	CLRF	_ser_txiptr, B
	BANKSEL	_ser_rxoptr
	CLRF	_ser_rxoptr, B
	BANKSEL	_ser_rxiptr
	CLRF	_ser_rxiptr, B
	.line	140; lib/ser.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_puthex	code
_ser_puthex:
	.line	95; lib/ser.c	ser_puthex(uint8_t v) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	.line	98; lib/ser.c	c = v >> 4;
	SWAPF	r0x00, W
	ANDLW	0x0f
	MOVWF	r0x01
	.line	99; lib/ser.c	if(c > 9) {
	MOVLW	0x0a
	SUBWF	r0x01, W
	BNC	_00229_DS_
	.line	100; lib/ser.c	ser_putch((char)('A' - 10 + c));
	MOVF	r0x01, W
	MOVWF	r0x02
	MOVLW	0x37
	ADDWF	r0x02, F
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
	BRA	_00230_DS_
_00229_DS_:
	.line	102; lib/ser.c	ser_putch((char)('0' + c));
	MOVLW	0x30
	ADDWF	r0x01, F
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
_00230_DS_:
	.line	105; lib/ser.c	c = v & 0x0F;
	MOVLW	0x0f
	ANDWF	r0x00, F
	.line	106; lib/ser.c	if(c > 9) {
	MOVLW	0x0a
	SUBWF	r0x00, W
	BNC	_00232_DS_
	.line	107; lib/ser.c	ser_putch((char)('A' - 10 + c));
	MOVF	r0x00, W
	MOVWF	r0x01
	MOVLW	0x37
	ADDWF	r0x01, F
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
	BRA	_00234_DS_
_00232_DS_:
	.line	109; lib/ser.c	ser_putch((char)('0' + c));
	MOVLW	0x30
	ADDWF	r0x00, F
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
_00234_DS_:
	.line	111; lib/ser.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_puts2	code
_ser_puts2:
	.line	90; lib/ser.c	ser_puts2(uint8_t* s) {
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
_00209_DS_:
	.line	91; lib/ser.c	while(*s) ser_putch(*s++);
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
	MOVF	r0x03, W
	BZ	_00212_DS_
	INCF	r0x00, F
	BNC	_00223_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00223_DS_:
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
	BRA	_00209_DS_
_00212_DS_:
	.line	92; lib/ser.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_put	code
_ser_put:
	.line	85; lib/ser.c	ser_put(const char* s, unsigned n) {
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
_00190_DS_:
	.line	86; lib/ser.c	while(n--) ser_putch(*s++);
	MOVFF	r0x03, r0x05
	MOVFF	r0x04, r0x06
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
	MOVF	r0x05, W
	IORWF	r0x06, W
	BZ	_00193_DS_
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x05
	INCF	r0x00, F
	BNC	_00204_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00204_DS_:
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
	BRA	_00190_DS_
_00193_DS_:
	.line	87; lib/ser.c	}
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
S_ser__ser_puts	code
_ser_puts:
	.line	81; lib/ser.c	ser_puts(const char* s) {
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
_00171_DS_:
	.line	82; lib/ser.c	while(*s) ser_putch(*s++);
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
	MOVF	r0x03, W
	BZ	_00174_DS_
	INCF	r0x00, F
	BNC	_00185_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00185_DS_:
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
	BRA	_00171_DS_
_00174_DS_:
	.line	83; lib/ser.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_putch	code
_ser_putch:
	.line	71; lib/ser.c	ser_putch(char c) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
_00151_DS_:
	.line	72; lib/ser.c	while(((ser_txiptr + 1) & SER_FIFO_MASK) == ser_txoptr) continue;
	MOVFF	_ser_txiptr, r0x01
	CLRF	r0x02
	INFSNZ	r0x01, F
	INCF	r0x02, F
	MOVLW	0x0f
	ANDWF	r0x01, F
	CLRF	r0x02
	MOVFF	_ser_txoptr, r0x03
	CLRF	r0x04
	MOVF	r0x01, W
	XORWF	r0x03, W
	BNZ	_00166_DS_
	MOVF	r0x02, W
	XORWF	r0x04, W
	BZ	_00151_DS_
_00166_DS_:
	.line	73; lib/ser.c	GIE = 0;
	BCF	_INTCONbits, 7
	.line	74; lib/ser.c	ser_txfifo[ser_txiptr] = c;
	MOVLW	LOW(_ser_txfifo)
	BANKSEL	_ser_txiptr
	ADDWF	_ser_txiptr, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_ser_txfifo)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x00, INDF0
	BANKSEL	_ser_txiptr
	.line	75; lib/ser.c	ser_txiptr = (ser_txiptr + 1) & SER_FIFO_MASK;
	MOVF	_ser_txiptr, W, B
	MOVWF	r0x00
	INCF	r0x00, F
	MOVLW	0x0f
	ANDWF	r0x00, W
	BANKSEL	_ser_txiptr
	MOVWF	_ser_txiptr, B
	.line	76; lib/ser.c	TXIE = 1;
	BSF	_PIE1bits, 4
	.line	77; lib/ser.c	GIE = 1;
	BSF	_INTCONbits, 7
	.line	78; lib/ser.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_getch	code
_ser_getch:
	.line	57; lib/ser.c	ser_getch(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
_00143_DS_:
	.line	60; lib/ser.c	while(ser_isrx() == 0) continue;
	CALL	_ser_isrx
	MOVWF	r0x00
	MOVF	r0x00, W
	BZ	_00143_DS_
	.line	62; lib/ser.c	GIE = 0;
	BCF	_INTCONbits, 7
	.line	63; lib/ser.c	c = ser_rxfifo[ser_rxoptr];
	MOVLW	LOW(_ser_rxfifo)
	BANKSEL	_ser_rxoptr
	ADDWF	_ser_rxoptr, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_ser_rxfifo)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	BANKSEL	_ser_rxoptr
	.line	64; lib/ser.c	++ser_rxoptr;
	INCF	_ser_rxoptr, F, B
	.line	65; lib/ser.c	ser_rxoptr &= SER_FIFO_MASK;
	MOVLW	0x0f
	BANKSEL	_ser_rxoptr
	ANDWF	_ser_rxoptr, F, B
	.line	66; lib/ser.c	GIE = 1;
	BSF	_INTCONbits, 7
	.line	67; lib/ser.c	return c;
	MOVF	r0x00, W
	.line	68; lib/ser.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_rxat	code
_ser_rxat:
	.line	52; lib/ser.c	ser_rxat(unsigned char at) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	.line	53; lib/ser.c	return ser_rxfifo[at & SER_FIFO_MASK];
	MOVLW	0x0f
	ANDWF	r0x00, F
	CLRF	r0x01
	MOVLW	LOW(_ser_rxfifo)
	ADDWF	r0x00, F
	MOVLW	HIGH(_ser_rxfifo)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	.line	54; lib/ser.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_rxsize	code
_ser_rxsize:
	.line	43; lib/ser.c	ser_rxsize(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	.line	45; lib/ser.c	INTERRUPT_DISABLE();
	BCF	_INTCONbits, 7
	BANKSEL	_ser_rxoptr
	.line	46; lib/ser.c	ret = ser_rxiptr < ser_rxoptr ? SER_BUFFER_SIZE - ser_rxiptr + ser_rxoptr : ser_rxiptr - ser_rxoptr;
	MOVF	_ser_rxoptr, W, B
	BANKSEL	_ser_rxiptr
	SUBWF	_ser_rxiptr, W, B
	BC	_00127_DS_
	BANKSEL	_ser_rxiptr
	MOVF	_ser_rxiptr, W, B
	SUBLW	0x10
	MOVWF	r0x00
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr, W, B
	ADDWF	r0x00, F
	BRA	_00128_DS_
_00127_DS_:
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr, W, B
	BANKSEL	_ser_rxiptr
	SUBWF	_ser_rxiptr, W, B
	MOVWF	r0x00
_00128_DS_:
	.line	47; lib/ser.c	INTERRUPT_ENABLE();
	BSF	_INTCONbits, 7
	.line	48; lib/ser.c	return ret;
	MOVF	r0x00, W
	.line	49; lib/ser.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_ser__ser_isrx	code
_ser_isrx:
	.line	33; lib/ser.c	ser_isrx(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	.line	34; lib/ser.c	if(OERR) {
	BTFSS	_RCSTAbits, 1
	BRA	_00106_DS_
	.line	35; lib/ser.c	CREN = 0;
	BCF	_RCSTAbits, 4
	.line	36; lib/ser.c	CREN = 1;
	BSF	_RCSTAbits, 4
	.line	37; lib/ser.c	return 0;
	CLRF	WREG
	BRA	_00107_DS_
_00106_DS_:
	.line	39; lib/ser.c	return (ser_rxiptr != ser_rxoptr);
	CLRF	r0x00
	BANKSEL	_ser_rxiptr
	MOVF	_ser_rxiptr, W, B
	BANKSEL	_ser_rxoptr
	XORWF	_ser_rxoptr, W, B
	BNZ	_00114_DS_
	INCF	r0x00, F
_00114_DS_:
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
_00107_DS_:
	.line	40; lib/ser.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  968 (0x03c8) bytes ( 0.74%)
;           	  484 (0x01e4) words
; udata size:	   37 (0x0025) bytes ( 2.89%)
; access size:	    7 (0x0007) bytes


	end
