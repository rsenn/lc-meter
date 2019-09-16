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
	global	_delay_us
	global	_delay_ms

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
	extern	_dvar
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
FSR1L	equ	0xfe1
FSR1H	equ	0xfe2
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


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
S_delay__delay_ms	code
_delay_ms:
;	.line	13; ../../../lib/delay.c	delay_ms(unsigned int x) {
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
	MOVLW	0x04
	MOVFF	PLUSW2, r0x01
;	.line	14; ../../../lib/delay.c	unsigned char i = 255;
	MOVLW	0xff
	MOVWF	r0x02
_00130_DS_:
;	.line	15; ../../../lib/delay.c	for(x; x > 0; x--) {
	MOVF	r0x00, W
	IORWF	r0x01, W
	BZ	_00132_DS_
;	.line	16; ../../../lib/delay.c	while(i > 0) {
	MOVFF	r0x02, r0x03
_00113_DS_:
	MOVF	r0x03, W
	BZ	_00115_DS_
;	.line	17; ../../../lib/delay.c	i--;
	DECF	r0x03, F
	BRA	_00113_DS_
_00115_DS_:
;	.line	20; ../../../lib/delay.c	while(i > 0) {
	MOVLW	0xff
	MOVWF	r0x03
_00116_DS_:
	MOVF	r0x03, W
	BZ	_00118_DS_
;	.line	21; ../../../lib/delay.c	i--;
	DECF	r0x03, F
	BRA	_00116_DS_
_00118_DS_:
;	.line	24; ../../../lib/delay.c	while(i > 0) {
	MOVLW	0xff
	MOVWF	r0x03
_00119_DS_:
	MOVF	r0x03, W
	BZ	_00121_DS_
;	.line	25; ../../../lib/delay.c	i--;
	DECF	r0x03, F
	BRA	_00119_DS_
_00121_DS_:
;	.line	28; ../../../lib/delay.c	while(i > 0) {
	MOVLW	0xff
	MOVWF	r0x03
_00122_DS_:
	MOVF	r0x03, W
	BZ	_00124_DS_
;	.line	29; ../../../lib/delay.c	i--;
	DECF	r0x03, F
	BRA	_00122_DS_
_00124_DS_:
;	.line	32; ../../../lib/delay.c	while(i > 0) {
	MOVLW	0x32
	MOVWF	r0x03
_00125_DS_:
	MOVF	r0x03, W
	BZ	_00152_DS_
;	.line	33; ../../../lib/delay.c	i--;
	DECF	r0x03, F
	BRA	_00125_DS_
_00152_DS_:
	MOVFF	r0x03, r0x02
;	.line	15; ../../../lib/delay.c	for(x; x > 0; x--) {
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
	BRA	_00130_DS_
_00132_DS_:
;	.line	36; ../../../lib/delay.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_delay__delay_us	code
_delay_us:
;	.line	5; ../../../lib/delay.c	delay_us(unsigned char x) {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, r0x00
_00105_DS_:
;	.line	6; ../../../lib/delay.c	while(x > 0) {
	MOVF	r0x00, W
	BZ	_00107_DS_
;	.line	7; ../../../lib/delay.c	x--;
	DECF	r0x00, F
	BRA	_00105_DS_
_00107_DS_:
	nop	
;	.line	10; ../../../lib/delay.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	



; Statistics:
; code size:	  202 (0x00ca) bytes ( 0.15%)
;           	  101 (0x0065) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    4 (0x0004) bytes


	end
