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
	global	_calibrate
	global	_measure_freq
	global	_measure_capacitance
	global	_measure_inductance

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
	extern	_F1
	extern	_F2
	extern	_F3
	extern	_CCal
	extern	_dvar
	extern	_putchar_ptr
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
	extern	_delay10ms
	extern	_delay_ms
	extern	_uart_puts
	extern	_lcd_clear
	extern	_lcd_gotoxy
	extern	_lcd_send
	extern	_put_str
	extern	_output_putch
	extern	_print_unit
	extern	_print_reading
	extern	_format_number
	extern	_timer0_read_ps
	extern	___uint2fs
	extern	___fslt
	extern	___fsmul
	extern	___fssub
	extern	___fsdiv
	extern	___fs2uint
	extern	_uart_brg
	extern	_logo_image

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR1H	equ	0xfe2
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
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
r0x0a	res	1
r0x0b	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_measure__measure_inductance	code
_measure_inductance:
;	.line	196; ../../../src/measure.c	measure_inductance() {
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
;	.line	203; ../../../src/measure.c	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	204; ../../../src/measure.c	put_str("Inductivity ");
	MOVLW	HIGH(___str_5)
	MOVWF	r0x01
	MOVLW	LOW(___str_5)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_put_str
	MOVLW	0x03
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	206; ../../../src/measure.c	var = measure_freq();
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
;	.line	208; ../../../src/measure.c	F3 = (double)var;
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___uint2fs
	BANKSEL	_F3
	MOVWF	_F3, B
	MOVFF	PRODL, (_F3 + 1)
	MOVFF	PRODH, (_F3 + 2)
	MOVFF	FSR0L, (_F3 + 3)
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BANKSEL	(_F3 + 3)
;	.line	209; ../../../src/measure.c	if(F3 > F1)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 3)
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x00, W
	BZ	_00149_DS_
;	.line	210; ../../../src/measure.c	F3 = F1; // max freq is F1;
	MOVFF	_F1, _F3
	MOVFF	(_F1 + 1), (_F3 + 1)
	MOVFF	(_F1 + 2), (_F3 + 2)
	MOVFF	(_F1 + 3), (_F3 + 3)
_00149_DS_:
	BANKSEL	(_F1 + 3)
;	.line	212; ../../../src/measure.c	numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (GATE_PERIOD * GATE_PERIOD);
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 3)
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F3 + 3)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 3)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x46
	MOVWF	POSTDEC1
	MOVLW	0x1c
	MOVWF	POSTDEC1
	MOVLW	0x40
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F1 + 3)
;	.line	214; ../../../src/measure.c	denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	MOVLW	0x42
	MOVWF	POSTDEC1
	MOVLW	0x1d
	MOVWF	POSTDEC1
	MOVLW	0xe9
	MOVWF	POSTDEC1
	MOVLW	0xe6
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F1 + 3)
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F2 + 3)
	MOVF	(_F2 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 2)
	MOVF	(_F2 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 1)
	MOVF	(_F2 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F2
	MOVF	_F2, W, B
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F2 + 3)
	MOVF	(_F2 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 2)
	MOVF	(_F2 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 1)
	MOVF	(_F2 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F2
	MOVF	_F2, W, B
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F3 + 3)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F3 + 3)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_CCal + 3)
	MOVF	(_CCal + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_CCal + 2)
	MOVF	(_CCal + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_CCal + 1)
	MOVF	(_CCal + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_CCal
	MOVF	_CCal, W, B
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	216; ../../../src/measure.c	Lin = (numerator / denominator) * 1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x58
	MOVWF	POSTDEC1
	MOVLW	0x63
	MOVWF	POSTDEC1
	MOVLW	0x5f
	MOVWF	POSTDEC1
	MOVLW	0xa9
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	218; ../../../src/measure.c	if(Lin > 999) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x44
	MOVWF	POSTDEC1
	MOVLW	0x79
	MOVWF	POSTDEC1
	MOVLW	0xc0
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00157_DS_
;	.line	219; ../../../src/measure.c	if(Lin > (999e+03l)) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x49
	MOVWF	POSTDEC1
	MOVLW	0x73
	MOVWF	POSTDEC1
	MOVLW	0xe5
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00154_DS_
;	.line	220; ../../../src/measure.c	if(Lin > (999e+06l)) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x4e
	MOVWF	POSTDEC1
	MOVLW	0x6e
	MOVWF	POSTDEC1
	MOVLW	0x2e
	MOVWF	POSTDEC1
	MOVLW	0x1f
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x04, W
	BZ	_00151_DS_
;	.line	221; ../../../src/measure.c	Lin = Lin / (1e+09l);
	MOVLW	0x4e
	MOVWF	POSTDEC1
	MOVLW	0x6e
	MOVWF	POSTDEC1
	MOVLW	0x6b
	MOVWF	POSTDEC1
	MOVLW	0x28
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	222; ../../../src/measure.c	unit = 0; // "H"
	CLRF	r0x04
	BRA	_00158_DS_
_00151_DS_:
;	.line	224; ../../../src/measure.c	Lin = Lin / (1e+06l);
	MOVLW	0x49
	MOVWF	POSTDEC1
	MOVLW	0x74
	MOVWF	POSTDEC1
	MOVLW	0x24
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	225; ../../../src/measure.c	unit = 1; // "mH"
	MOVLW	0x01
	MOVWF	r0x04
	BRA	_00158_DS_
_00154_DS_:
;	.line	228; ../../../src/measure.c	Lin = Lin / 1e+03l;
	MOVLW	0x44
	MOVWF	POSTDEC1
	MOVLW	0x7a
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	229; ../../../src/measure.c	unit = 2; // "uH"
	MOVLW	0x02
	MOVWF	r0x04
	BRA	_00158_DS_
_00157_DS_:
;	.line	232; ../../../src/measure.c	unit = 3; // "nH"
	MOVLW	0x03
	MOVWF	r0x04
_00158_DS_:
;	.line	234; ../../../src/measure.c	Lin = Lin * 100; // scale to 2 decimal place
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x42
	MOVWF	POSTDEC1
	MOVLW	0xc8
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	235; ../../../src/measure.c	var = (uint16_t)Lin;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2uint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	237; ../../../src/measure.c	print_reading(var);
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_print_reading
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	238; ../../../src/measure.c	print_unit(unit);
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_print_unit
	MOVF	POSTINC1, F
;	.line	239; ../../../src/measure.c	}
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
S_measure__measure_capacitance	code
_measure_capacitance:
;	.line	118; ../../../src/measure.c	measure_capacitance() {
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
;	.line	126; ../../../src/measure.c	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	127; ../../../src/measure.c	put_str("Capacity ");
	MOVLW	HIGH(___str_4)
	MOVWF	r0x01
	MOVLW	LOW(___str_4)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_put_str
	MOVLW	0x03
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	129; ../../../src/measure.c	var = measure_freq();
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
;	.line	131; ../../../src/measure.c	F3 = (double)var;
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___uint2fs
	BANKSEL	_F3
	MOVWF	_F3, B
	MOVFF	PRODL, (_F3 + 1)
	MOVFF	PRODH, (_F3 + 2)
	MOVFF	FSR0L, (_F3 + 3)
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	154; ../../../src/measure.c	putchar_ptr = &output_putch;
	MOVLW	LOW(_output_putch)
	BANKSEL	_putchar_ptr
	MOVWF	_putchar_ptr, B
	MOVLW	HIGH(_output_putch)
	BANKSEL	(_putchar_ptr + 1)
	MOVWF	(_putchar_ptr + 1), B
	BANKSEL	(_F3 + 3)
;	.line	156; ../../../src/measure.c	if(F3 > F1)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 3)
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x00, W
	BZ	_00133_DS_
;	.line	157; ../../../src/measure.c	F3 = F1; // max freq is F1;
	MOVFF	_F1, _F3
	MOVFF	(_F1 + 1), (_F3 + 1)
	MOVFF	(_F1 + 2), (_F3 + 2)
	MOVFF	(_F1 + 3), (_F3 + 3)
_00133_DS_:
	BANKSEL	(_F2 + 3)
;	.line	159; ../../../src/measure.c	Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	MOVF	(_F2 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 2)
	MOVF	(_F2 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 1)
	MOVF	(_F2 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F2
	MOVF	_F2, W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 3)
	MOVF	(_F2 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 2)
	MOVF	(_F2 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F2 + 1)
	MOVF	(_F2 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F2
	MOVF	_F2, W, B
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F1 + 3)
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 3)
	MOVF	(_F1 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 2)
	MOVF	(_F1 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F1 + 1)
	MOVF	(_F1 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F1
	MOVF	_F1, W, B
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_F3 + 3)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 3)
	MOVF	(_F3 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 2)
	MOVF	(_F3 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_F3 + 1)
	MOVF	(_F3 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_F3
	MOVF	_F3, W, B
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	BANKSEL	(_CCal + 3)
	MOVF	(_CCal + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_CCal + 2)
	MOVF	(_CCal + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_CCal + 1)
	MOVF	(_CCal + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_CCal
	MOVF	_CCal, W, B
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	169; ../../../src/measure.c	if(Cin > 999) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x44
	MOVWF	POSTDEC1
	MOVLW	0x79
	MOVWF	POSTDEC1
	MOVLW	0xc0
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00141_DS_
;	.line	170; ../../../src/measure.c	if(Cin > (999e+03l)) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x49
	MOVWF	POSTDEC1
	MOVLW	0x73
	MOVWF	POSTDEC1
	MOVLW	0xe5
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00138_DS_
;	.line	171; ../../../src/measure.c	if(Cin > (999e+06l)) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x4e
	MOVWF	POSTDEC1
	MOVLW	0x6e
	MOVWF	POSTDEC1
	MOVLW	0x2e
	MOVWF	POSTDEC1
	MOVLW	0x1f
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	MOVF	r0x04, W
	BZ	_00135_DS_
;	.line	172; ../../../src/measure.c	Cin = Cin / (1e+09);
	MOVLW	0x4e
	MOVWF	POSTDEC1
	MOVLW	0x6e
	MOVWF	POSTDEC1
	MOVLW	0x6b
	MOVWF	POSTDEC1
	MOVLW	0x28
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	173; ../../../src/measure.c	unit = 4; //"mF"
	MOVLW	0x04
	MOVWF	r0x04
	BRA	_00142_DS_
_00135_DS_:
;	.line	175; ../../../src/measure.c	Cin = Cin / (1e+06);
	MOVLW	0x49
	MOVWF	POSTDEC1
	MOVLW	0x74
	MOVWF	POSTDEC1
	MOVLW	0x24
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	176; ../../../src/measure.c	unit = 5; //"uF"
	MOVLW	0x05
	MOVWF	r0x04
	BRA	_00142_DS_
_00138_DS_:
;	.line	179; ../../../src/measure.c	Cin = Cin / 1e+03;
	MOVLW	0x44
	MOVWF	POSTDEC1
	MOVLW	0x7a
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	180; ../../../src/measure.c	unit = 6; //"nF"
	MOVLW	0x06
	MOVWF	r0x04
	BRA	_00142_DS_
_00141_DS_:
;	.line	183; ../../../src/measure.c	unit = 7; //"pF"
	MOVLW	0x07
	MOVWF	r0x04
_00142_DS_:
;	.line	185; ../../../src/measure.c	Cin = Cin * 100; // scale to 2 decimal place
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x42
	MOVWF	POSTDEC1
	MOVLW	0xc8
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	186; ../../../src/measure.c	var = (uint16_t)Cin;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2uint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	188; ../../../src/measure.c	print_reading(var);
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_print_reading
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	189; ../../../src/measure.c	print_unit(unit);
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_print_unit
	MOVF	POSTINC1, F
;	.line	190; ../../../src/measure.c	}
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
S_measure__measure_freq	code
_measure_freq:
;	.line	69; ../../../src/measure.c	measure_freq() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
;	.line	72; ../../../src/measure.c	INTCON &= ~0b100; // TMR0IF = 0;
	BCF	_INTCON, 2
;	.line	76; ../../../src/measure.c	TRISA &= ~0b00010000;
	BCF	_TRISA, 4
;	.line	78; ../../../src/measure.c	__delay_ms(20); // stablize oscillator
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x14
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	81; ../../../src/measure.c	TMR0 = 0x00;
	CLRF	_TMR0
;	.line	83; ../../../src/measure.c	SET_LED(1);
	BCF	_LATC, 1
	BSF	_LATC, 1
;	.line	86; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	87; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	88; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	89; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	90; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	91; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	92; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	93; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	94; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	95; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	97; ../../../src/measure.c	SET_LED(0);
	BCF	_LATC, 1
;	.line	100; ../../../src/measure.c	TRISA |= 0b00010000;
	BSF	_TRISA, 4
;	.line	103; ../../../src/measure.c	count = timer0_read_ps();
	CALL	_timer0_read_ps
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
;	.line	106; ../../../src/measure.c	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	107; ../../../src/measure.c	put_str("Freq=");
	MOVLW	HIGH(___str_3)
	MOVWF	r0x03
	MOVLW	LOW(___str_3)
	MOVWF	r0x02
	CLRF	r0x04
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_put_str
	MOVLW	0x03
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	108; ../../../src/measure.c	format_number(/*lcd_putch,*/ count, 10, 5);
	MOVLW	0x05
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
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	111; ../../../src/measure.c	return count;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
;	.line	112; ../../../src/measure.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
S_measure__calibrate	code
_calibrate:
;	.line	24; ../../../src/measure.c	calibrate() {
	MOVFF	FSR2H, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1H, FSR2H
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	28; ../../../src/measure.c	lcd_clear();
	CALL	_lcd_clear
;	.line	30; ../../../src/measure.c	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	31; ../../../src/measure.c	put_str("Calibrating");
	MOVLW	HIGH(___str_0)
	MOVWF	r0x01
	MOVLW	LOW(___str_0)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_put_str
	MOVLW	0x03
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	33; ../../../src/measure.c	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	34; ../../../src/measure.c	uart_puts("\r\n");
	MOVLW	HIGH(___str_1)
	MOVWF	r0x01
	MOVLW	LOW(___str_1)
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
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	35; ../../../src/measure.c	put_str("please wait...");
	MOVLW	HIGH(___str_2)
	MOVWF	r0x01
	MOVLW	LOW(___str_2)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_put_str
	MOVLW	0x03
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	38; ../../../src/measure.c	REMOVE_CCAL();
	BCF	_LATC, 5
;	.line	40; ../../../src/measure.c	F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___uint2fs
	BANKSEL	_F1
	MOVWF	_F1, B
	MOVFF	PRODL, (_F1 + 1)
	MOVFF	PRODH, (_F1 + 2)
	MOVFF	FSR0L, (_F1 + 3)
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	41; ../../../src/measure.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	43; ../../../src/measure.c	F1 = (double)measure_freq();
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___uint2fs
	BANKSEL	_F1
	MOVWF	_F1, B
	MOVFF	PRODL, (_F1 + 1)
	MOVFF	PRODH, (_F1 + 2)
	MOVFF	FSR0L, (_F1 + 3)
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	44; ../../../src/measure.c	ADD_CCAL();
	BSF	_LATC, 5
;	.line	46; ../../../src/measure.c	F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___uint2fs
	BANKSEL	_F2
	MOVWF	_F2, B
	MOVFF	PRODL, (_F2 + 1)
	MOVFF	PRODH, (_F2 + 2)
	MOVFF	FSR0L, (_F2 + 3)
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	47; ../../../src/measure.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	49; ../../../src/measure.c	F2 = (double)measure_freq();
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___uint2fs
	BANKSEL	_F2
	MOVWF	_F2, B
	MOVFF	PRODL, (_F2 + 1)
	MOVFF	PRODH, (_F2 + 2)
	MOVFF	FSR0L, (_F2 + 3)
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	50; ../../../src/measure.c	REMOVE_CCAL();
	BCF	_LATC, 5
;	.line	54; ../../../src/measure.c	lcd_gotoxy(11, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0b
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	56; ../../../src/measure.c	for(i = 0; i < 6; i++) { // show progress bar
	CLRF	r0x00
_00106_DS_:
;	.line	57; ../../../src/measure.c	lcd_putch('=');
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	59; ../../../src/measure.c	delay10ms(28);
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	56; ../../../src/measure.c	for(i = 0; i < 6; i++) { // show progress bar
	INCF	r0x00, F
	MOVLW	0x06
	SUBWF	r0x00, W
	BNC	_00106_DS_
;	.line	62; ../../../src/measure.c	uart_puts("\r\n");
	MOVLW	HIGH(___str_1)
	MOVWF	r0x01
	MOVLW	LOW(___str_1)
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
	BTFSC	STATUS, 0
	INCF	FSR1H, F
;	.line	63; ../../../src/measure.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, FSR2H
	RETURN	

; ; Starting pCode block
___str_0:
	DB	0x43, 0x61, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x74, 0x69, 0x6e, 0x67, 0x00
; ; Starting pCode block
___str_1:
	DB	0x0d, 0x0a, 0x00
; ; Starting pCode block
___str_2:
	DB	0x70, 0x6c, 0x65, 0x61, 0x73, 0x65, 0x20, 0x77, 0x61, 0x69, 0x74, 0x2e
	DB	0x2e, 0x2e, 0x00
; ; Starting pCode block
___str_3:
	DB	0x46, 0x72, 0x65, 0x71, 0x3d, 0x00
; ; Starting pCode block
___str_4:
	DB	0x43, 0x61, 0x70, 0x61, 0x63, 0x69, 0x74, 0x79, 0x20, 0x00
; ; Starting pCode block
___str_5:
	DB	0x49, 0x6e, 0x64, 0x75, 0x63, 0x74, 0x69, 0x76, 0x69, 0x74, 0x79, 0x20
	DB	0x00


; Statistics:
; code size:	 3644 (0x0e3c) bytes ( 2.78%)
;           	 1822 (0x071e) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   12 (0x000c) bytes


	end
