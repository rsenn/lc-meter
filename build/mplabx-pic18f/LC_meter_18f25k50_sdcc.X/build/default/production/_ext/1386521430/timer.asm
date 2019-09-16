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
	global	_timer0_init
	global	_timer0_read_ps
	global	_timer1_init
	global	_timer2_init

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
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

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR1L	equ	0xfe1
FSR1H	equ	0xfe2
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_timer__timer2_init	code
_timer2_init:
;	.line	125; ../../../lib/timer.c	timer2_init(uint8_t ps_mode) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
;	.line	126; ../../../lib/timer.c	uint8_t ps = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f
	ANDWF	r0x00, W
	MOVWF	r0x01
;	.line	130; ../../../lib/timer.c	T2CON &= ~0b01111111;
	MOVLW	0x80
	ANDWF	_T2CON, F
;	.line	132; ../../../lib/timer.c	T2CON |= (postscaler & 0b1111) << 3;
	CLRF	r0x02
	MOVLW	0x0f
	ANDWF	r0x02, F
	SWAPF	r0x02, W
	RRNCF	WREG, W
	ANDLW	0xf8
	MOVWF	r0x03
	MOVF	_T2CON, W
	MOVWF	r0x02
	MOVF	r0x03, W
	IORWF	r0x02, W
	MOVWF	_T2CON
;	.line	133; ../../../lib/timer.c	T2CON |= (ps & 0b11); // Set timer 2 prescaler to 1:1.
	MOVLW	0x03
	ANDWF	r0x01, F
	MOVF	r0x01, W
	IORWF	_T2CON, F
;	.line	135; ../../../lib/timer.c	TIMER2_VALUE = 0;
	CLRF	_TMR2
;	.line	137; ../../../lib/timer.c	T2CON |= 0b100; // TMR2ON = 1; // Enable timer 2.
	BSF	_T2CON, 2
;	.line	140; ../../../lib/timer.c	PIR1 &= ~0b10;
	BCF	_PIR1, 1
;	.line	141; ../../../lib/timer.c	PIE1 = (!!(ps_mode & TIMER2_FLAGS_INTR)) << 1;
	MOVF	r0x00, W
	ANDLW	0x80
	RLNCF	WREG, W
	MOVWF	r0x00
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	RLNCF	r0x00, W
	ANDLW	0xfe
	MOVWF	_PIE1
;	.line	142; ../../../lib/timer.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_timer__timer1_init	code
_timer1_init:
;	.line	92; ../../../lib/timer.c	timer1_init(uint8_t ps_mode) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
;	.line	94; ../../../lib/timer.c	T1CON &= ~0b00111110;
	MOVLW	0xc1
	ANDWF	_T1CON, F
;	.line	96; ../../../lib/timer.c	T1CON |= (ps_mode & PRESCALE_MASK) << 4;
	MOVF	r0x00, W
	MOVWF	r0x01
	MOVLW	0x0f
	ANDWF	r0x01, F
	SWAPF	r0x01, W
	ANDLW	0xf0
	MOVWF	r0x02
	MOVF	_T1CON, W
	MOVWF	r0x01
	MOVF	r0x02, W
	IORWF	r0x01, W
	MOVWF	_T1CON
;	.line	98; ../../../lib/timer.c	T1CON |= (!!(ps_mode & TIMER1_FLAGS_EXTCLK)) << 1; // Internal clock source
	MOVF	r0x00, W
	ANDLW	0x40
	BTFSS	STATUS, 2
	MOVLW	0x01
	MOVWF	r0x01
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	RLNCF	r0x01, W
	ANDLW	0xfe
	MOVWF	r0x02
	MOVF	_T1CON, W
	MOVWF	r0x01
	MOVF	r0x02, W
	IORWF	r0x01, W
	MOVWF	_T1CON
;	.line	100; ../../../lib/timer.c	if(T1CON & 0b00000010) {
	MOVFF	_T1CON, r0x01
	BTFSS	r0x01, 1
	BRA	_00147_DS_
;	.line	104; ../../../lib/timer.c	T1CON |= (!(ps_mode & TIMER1_FLAGS_SYNC)) << 2;
	MOVF	r0x00, W
	ANDLW	0x20
	BTFSS	STATUS, 2
	MOVLW	0x01
	MOVWF	r0x01
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	RLNCF	r0x01, W
	RLNCF	WREG, W
	ANDLW	0xfc
	MOVWF	r0x02
	MOVF	_T1CON, W
	MOVWF	r0x01
	MOVF	r0x02, W
	IORWF	r0x01, W
	MOVWF	_T1CON
_00147_DS_:
;	.line	108; ../../../lib/timer.c	TMR1H = 0;
	CLRF	_TMR1H
;	.line	109; ../../../lib/timer.c	TMR1L = 0;
	CLRF	_TMR1L
;	.line	111; ../../../lib/timer.c	T1CON |= 0b1; // TMR1ON = 1;
	BSF	_T1CON, 0
;	.line	113; ../../../lib/timer.c	PIR1 &= ~0b1; //  TMR1IF = 0;
	BCF	_PIR1, 0
;	.line	115; ../../../lib/timer.c	PIE1 &= ~0b1;
	BCF	_PIE1, 0
;	.line	116; ../../../lib/timer.c	PIE1 |= !!(ps_mode & TIMER1_FLAGS_INTR);
	MOVF	r0x00, W
	ANDLW	0x80
	RLNCF	WREG, W
	MOVWF	r0x00
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	_PIE1, W
	MOVWF	r0x01
	MOVF	r0x00, W
	IORWF	r0x01, W
	MOVWF	_PIE1
;	.line	117; ../../../lib/timer.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_timer__timer0_read_ps	code
_timer0_read_ps:
;	.line	59; ../../../lib/timer.c	timer0_read_ps(void) {
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
;	.line	60; ../../../lib/timer.c	uint8_t prev = TMR0;
	MOVFF	_TMR0, r0x00
;	.line	63; ../../../lib/timer.c	T0CON |= 0x20; // T0CS = 1;
	BSF	_T0CON, 5
;	.line	65; ../../../lib/timer.c	do {
	CLRF	r0x01
	CLRF	r0x02
_00122_DS_:
;	.line	67; ../../../lib/timer.c	T0CON |= 0x10; // T0SE = 1;
	BSF	_T0CON, 4
	nop	
	nop	
;	.line	72; ../../../lib/timer.c	T0CON &= ~0x10; // T0SE = 0;
	BCF	_T0CON, 4
	nop	
	nop	
;	.line	77; ../../../lib/timer.c	++count;
	INFSNZ	r0x01, F
	INCF	r0x02, F
;	.line	80; ../../../lib/timer.c	} while(prev == TMR0 && count <= 255);
	MOVF	r0x00, W
	XORWF	_TMR0, W
	BNZ	_00124_DS_
	MOVLW	0x01
	SUBWF	r0x02, W
	BNZ	_00141_DS_
	MOVLW	0x00
	SUBWF	r0x01, W
_00141_DS_:
	BNC	_00122_DS_
_00124_DS_:
;	.line	82; ../../../lib/timer.c	count = ((prev << 8) + (256 - count));
	CLRF	r0x03
	MOVF	r0x00, W
	MOVWF	r0x05
	CLRF	r0x04
	MOVF	r0x01, W
	SUBLW	0x00
	MOVWF	r0x01
	MOVLW	0x01
	SUBFWB	r0x02, F
	MOVF	r0x04, W
	ADDWF	r0x01, F
	MOVF	r0x05, W
	ADDWFC	r0x02, F
;	.line	83; ../../../lib/timer.c	return count;
	MOVFF	r0x02, PRODL
	MOVF	r0x01, W
;	.line	84; ../../../lib/timer.c	}
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
S_timer__timer0_init	code
_timer0_init:
;	.line	27; ../../../lib/timer.c	timer0_init(uint8_t ps_mode) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
;	.line	28; ../../../lib/timer.c	uint8_t prescaler = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f
	ANDWF	r0x00, W
	MOVWF	r0x01
;	.line	30; ../../../lib/timer.c	TIMER0_VALUE = 0;
	CLRF	_TMR0
;	.line	33; ../../../lib/timer.c	T0CON |= (!!(ps_mode & TIMER0_FLAGS_EXTCLK)) ? 0x20 : 0x00;
	MOVF	r0x00, W
	ANDLW	0x40
	BTFSS	STATUS, 2
	MOVLW	0x01
	MOVWF	r0x02
	MOVF	r0x02, W
	BZ	_00109_DS_
	MOVLW	0x20
	MOVWF	r0x02
	CLRF	r0x03
	BRA	_00110_DS_
_00109_DS_:
	CLRF	r0x02
	CLRF	r0x03
_00110_DS_:
	MOVFF	_T0CON, r0x04
	MOVF	r0x02, W
	IORWF	r0x04, W
	MOVWF	_T0CON
;	.line	36; ../../../lib/timer.c	T0CON |= (!!(ps_mode & EDGE_HIGH_LOW)) ? 0x10 : 0x00;
	MOVF	r0x00, W
	ANDLW	0x10
	SWAPF	WREG, W
	MOVWF	r0x02
	MOVF	r0x02, W
	BZ	_00111_DS_
	MOVLW	0x10
	MOVWF	r0x02
	CLRF	r0x03
	BRA	_00112_DS_
_00111_DS_:
	CLRF	r0x02
	CLRF	r0x03
_00112_DS_:
	MOVFF	_T0CON, r0x04
	MOVF	r0x02, W
	IORWF	r0x04, W
	MOVWF	_T0CON
;	.line	39; ../../../lib/timer.c	T0CON &= (!!prescaler) ? ~0x08 : ~0x00;
	MOVF	r0x01, W
	BZ	_00113_DS_
	MOVLW	0xf7
	MOVWF	r0x02
	BRA	_00114_DS_
_00113_DS_:
	MOVLW	0xff
	MOVWF	r0x02
_00114_DS_:
	MOVF	_T0CON, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_T0CON
;	.line	41; ../../../lib/timer.c	T0CON &= ~0b111;
	MOVLW	0xf8
	ANDWF	_T0CON, F
;	.line	43; ../../../lib/timer.c	if(prescaler > 0) {
	MOVF	r0x01, W
	BZ	_00106_DS_
;	.line	44; ../../../lib/timer.c	T0CON |= (prescaler - 1) & 0b111;
	DECF	r0x01, F
	MOVLW	0x07
	ANDWF	r0x01, F
	MOVF	r0x01, W
	IORWF	_T0CON, F
_00106_DS_:
;	.line	54; ../../../lib/timer.c	INTCON &= ~0x40; // TMR0IF = 0;
	BCF	_INTCON, 6
;	.line	55; ../../../lib/timer.c	INTCON |= (!!(ps_mode & TIMER0_FLAGS_INTR)) ? 0x20 : 0x00;
	MOVF	r0x00, W
	ANDLW	0x80
	RLNCF	WREG, W
	MOVWF	r0x00
	MOVF	r0x00, W
	BZ	_00115_DS_
	MOVLW	0x20
	MOVWF	r0x00
	CLRF	r0x01
	BRA	_00116_DS_
_00115_DS_:
	CLRF	r0x00
	CLRF	r0x01
_00116_DS_:
	MOVFF	_INTCON, r0x02
	MOVF	r0x00, W
	IORWF	r0x02, W
	MOVWF	_INTCON
;	.line	56; ../../../lib/timer.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	



; Statistics:
; code size:	  762 (0x02fa) bytes ( 0.58%)
;           	  381 (0x017d) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    6 (0x0006) bytes


	end
