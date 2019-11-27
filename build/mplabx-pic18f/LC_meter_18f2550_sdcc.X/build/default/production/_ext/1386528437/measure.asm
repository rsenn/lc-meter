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
	global	_calibrate
	global	_measure_freq
	global	_measure_capacitance
	global	_measure_inductance

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
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
	extern	_F1
	extern	_F2
	extern	_F3
	extern	_CCal
	extern	_dvar
	extern	_rxfifo
	extern	_rxiptr
	extern	_rxoptr
	extern	_txfifo
	extern	_txiptr
	extern	_txoptr
	extern	_ser_tmp
	extern	_ser_brg
	extern	_buffer
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
	extern	_delay10ms
	extern	_delay_ms
	extern	_ser_putch
	extern	_ser_puts
	extern	_lcd_clear
	extern	_lcd_gotoxy
	extern	_lcd_send
	extern	_put_str
	extern	_print_unit
	extern	_print_reading
	extern	_print_buffer
	extern	_format_number
	extern	_format_xint32
	extern	_format_double
	extern	_timer0_read_ps
	extern	_buffer_init
	extern	_buffer_puts
	extern	___uint2fs
	extern	___fslt
	extern	___fsmul
	extern	___fssub
	extern	___fsdiv
	extern	___fs2uint
	extern	_logo_image

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
POSTINC0	equ	0xfee
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

udata_measure_0	udata
_measure_capacitance_Cin_65536_79	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_measure__measure_inductance	code
_measure_inductance:
;	.line	197; ../../../src/measure.c	measure_inductance() {
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
;	.line	204; ../../../src/measure.c	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	205; ../../../src/measure.c	put_str("Inductivity ");
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
	CALL	_put_str
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	207; ../../../src/measure.c	var = measure_freq();
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
;	.line	209; ../../../src/measure.c	F3 = (double)var;
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
;	.line	210; ../../../src/measure.c	if(F3 > F1)
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
	MOVF	r0x00, W
	BZ	_00149_DS_
;	.line	211; ../../../src/measure.c	F3 = F1; // max freq is F1;
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
	BANKSEL	(_F1 + 3)
;	.line	213; ../../../src/measure.c	denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
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
;	.line	214; ../../../src/measure.c	Lin = (numerator / denominator) * 1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }
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
;	.line	216; ../../../src/measure.c	if(Lin > 999) {
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
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00157_DS_
;	.line	217; ../../../src/measure.c	if(Lin > (999e+03l)) {
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
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00154_DS_
;	.line	218; ../../../src/measure.c	if(Lin > (999e+06l)) {
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
	MOVF	r0x04, W
	BZ	_00151_DS_
;	.line	219; ../../../src/measure.c	Lin = Lin / (1e+09l);
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
;	.line	220; ../../../src/measure.c	unit = 0; // "H"
	CLRF	r0x04
	BRA	_00158_DS_
_00151_DS_:
;	.line	222; ../../../src/measure.c	Lin = Lin / (1e+06l);
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
;	.line	223; ../../../src/measure.c	unit = 1; // "mH"
	MOVLW	0x01
	MOVWF	r0x04
	BRA	_00158_DS_
_00154_DS_:
;	.line	226; ../../../src/measure.c	Lin = Lin / 1e+03l;
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
;	.line	227; ../../../src/measure.c	unit = 2; // "uH"
	MOVLW	0x02
	MOVWF	r0x04
	BRA	_00158_DS_
_00157_DS_:
;	.line	230; ../../../src/measure.c	unit = 3; // "nH"
	MOVLW	0x03
	MOVWF	r0x04
_00158_DS_:
;	.line	232; ../../../src/measure.c	Lin = Lin * 100; // scale to 2 decimal place
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
;	.line	233; ../../../src/measure.c	var = (uint16_t)Lin;
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
;	.line	235; ../../../src/measure.c	print_reading(var);
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_print_reading
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	236; ../../../src/measure.c	print_unit(unit);
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_print_unit
	MOVF	POSTINC1, F
;	.line	237; ../../../src/measure.c	}
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
S_measure__measure_capacitance	code
_measure_capacitance:
;	.line	119; ../../../src/measure.c	measure_capacitance() {
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
;	.line	127; ../../../src/measure.c	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	128; ../../../src/measure.c	put_str("Capacity ");
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
;	.line	130; ../../../src/measure.c	var = measure_freq();
	CALL	_measure_freq
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
;	.line	132; ../../../src/measure.c	F3 = (double)var;
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
;	.line	135; ../../../src/measure.c	ser_puts("var=");
	MOVLW	HIGH(___str_5)
	MOVWF	r0x03
	MOVLW	LOW(___str_5)
	MOVWF	r0x02
	CLRF	r0x04
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	136; ../../../src/measure.c	format_xint32(var);
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
	CALL	_format_xint32
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	137; ../../../src/measure.c	ser_puts("\r\nF1=");
	MOVLW	HIGH(___str_6)
	MOVWF	r0x01
	MOVLW	LOW(___str_6)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_F1 + 3)
;	.line	138; ../../../src/measure.c	format_double(F1);
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
	CALL	_format_double
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	139; ../../../src/measure.c	ser_putch(' ');
	MOVLW	0x20
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
;	.line	140; ../../../src/measure.c	format_xint32(*(uint32_t*)&F1);
	MOVLW	LOW(_F1)
	MOVWF	r0x00
	MOVLW	HIGH(_F1)
	MOVWF	r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	POSTINC0, r0x00
	MOVFF	POSTINC0, r0x01
	MOVFF	POSTINC0, r0x02
	MOVFF	INDF0, r0x03
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_format_xint32
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	141; ../../../src/measure.c	ser_puts("\r\nF2=");
	MOVLW	HIGH(___str_7)
	MOVWF	r0x01
	MOVLW	LOW(___str_7)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_F2 + 3)
;	.line	142; ../../../src/measure.c	format_double(F2);
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
	CALL	_format_double
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	143; ../../../src/measure.c	ser_putch(' ');
	MOVLW	0x20
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
;	.line	144; ../../../src/measure.c	format_xint32(*(uint32_t*)&F2);
	MOVLW	LOW(_F2)
	MOVWF	r0x00
	MOVLW	HIGH(_F2)
	MOVWF	r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	POSTINC0, r0x00
	MOVFF	POSTINC0, r0x01
	MOVFF	POSTINC0, r0x02
	MOVFF	INDF0, r0x03
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_format_xint32
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	145; ../../../src/measure.c	ser_puts("\r\nF3=");
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
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_F3 + 3)
;	.line	146; ../../../src/measure.c	format_double(F3);
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
	CALL	_format_double
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	147; ../../../src/measure.c	ser_putch(' ');
	MOVLW	0x20
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
;	.line	148; ../../../src/measure.c	format_xint32(*(uint32_t*)&F3);
	MOVLW	LOW(_F3)
	MOVWF	r0x00
	MOVLW	HIGH(_F3)
	MOVWF	r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	POSTINC0, r0x00
	MOVFF	POSTINC0, r0x01
	MOVFF	POSTINC0, r0x02
	MOVFF	INDF0, r0x03
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_format_xint32
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	149; ../../../src/measure.c	ser_puts("\r\nCCal=");
	MOVLW	HIGH(___str_9)
	MOVWF	r0x01
	MOVLW	LOW(___str_9)
	MOVWF	r0x00
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_CCal + 3)
;	.line	150; ../../../src/measure.c	format_double(CCal);
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
	CALL	_format_double
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	151; ../../../src/measure.c	ser_putch(' ');
	MOVLW	0x20
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
;	.line	152; ../../../src/measure.c	format_xint32(*(uint32_t*)&CCal);
	MOVLW	LOW(_CCal)
	MOVWF	r0x00
	MOVLW	HIGH(_CCal)
	MOVWF	r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	POSTINC0, r0x00
	MOVFF	POSTINC0, r0x01
	MOVFF	POSTINC0, r0x02
	MOVFF	INDF0, r0x03
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_format_xint32
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	153; ../../../src/measure.c	ser_puts("\r\n");
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
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_F3 + 3)
;	.line	157; ../../../src/measure.c	if(F3 > F1)
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
	MOVF	r0x00, W
	BZ	_00133_DS_
;	.line	158; ../../../src/measure.c	F3 = F1; // max freq is F1;
	MOVFF	_F1, _F3
	MOVFF	(_F1 + 1), (_F3 + 1)
	MOVFF	(_F1 + 2), (_F3 + 2)
	MOVFF	(_F1 + 3), (_F3 + 3)
_00133_DS_:
	BANKSEL	(_F2 + 3)
;	.line	160; ../../../src/measure.c	Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
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
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVWF	_measure_capacitance_Cin_65536_79, B
	MOVFF	PRODL, (_measure_capacitance_Cin_65536_79 + 1)
	MOVFF	PRODH, (_measure_capacitance_Cin_65536_79 + 2)
	MOVFF	FSR0L, (_measure_capacitance_Cin_65536_79 + 3)
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	164; ../../../src/measure.c	ser_puts("Cin=");
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
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
;	.line	165; ../../../src/measure.c	format_double(Cin);
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
	MOVWF	POSTDEC1
	CALL	_format_double
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	166; ../../../src/measure.c	ser_putch(' ');
	MOVLW	0x20
	MOVWF	POSTDEC1
	CALL	_ser_putch
	MOVF	POSTINC1, F
;	.line	167; ../../../src/measure.c	format_xint32(*(uint32_t*)&Cin);
	MOVLW	LOW(_measure_capacitance_Cin_65536_79)
	MOVWF	r0x00
	MOVLW	HIGH(_measure_capacitance_Cin_65536_79)
	MOVWF	r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	POSTINC0, r0x00
	MOVFF	POSTINC0, r0x01
	MOVFF	POSTINC0, r0x02
	MOVFF	INDF0, r0x03
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_format_xint32
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	168; ../../../src/measure.c	ser_puts("\r\n");
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
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
;	.line	170; ../../../src/measure.c	if(Cin > 999) {
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
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
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_00141_DS_
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
;	.line	171; ../../../src/measure.c	if(Cin > (999e+03l)) {
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
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
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_00138_DS_
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
;	.line	172; ../../../src/measure.c	if(Cin > (999e+06l)) {
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
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
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x00, W
	BZ	_00135_DS_
;	.line	173; ../../../src/measure.c	Cin = Cin / (1e+09);
	MOVLW	0x4e
	MOVWF	POSTDEC1
	MOVLW	0x6e
	MOVWF	POSTDEC1
	MOVLW	0x6b
	MOVWF	POSTDEC1
	MOVLW	0x28
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
	MOVWF	POSTDEC1
	CALL	___fsdiv
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVWF	_measure_capacitance_Cin_65536_79, B
	MOVFF	PRODL, (_measure_capacitance_Cin_65536_79 + 1)
	MOVFF	PRODH, (_measure_capacitance_Cin_65536_79 + 2)
	MOVFF	FSR0L, (_measure_capacitance_Cin_65536_79 + 3)
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	174; ../../../src/measure.c	unit = 4; //"mF"
	MOVLW	0x04
	MOVWF	r0x00
	BRA	_00142_DS_
_00135_DS_:
;	.line	176; ../../../src/measure.c	Cin = Cin / (1e+06);
	MOVLW	0x49
	MOVWF	POSTDEC1
	MOVLW	0x74
	MOVWF	POSTDEC1
	MOVLW	0x24
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
	MOVWF	POSTDEC1
	CALL	___fsdiv
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVWF	_measure_capacitance_Cin_65536_79, B
	MOVFF	PRODL, (_measure_capacitance_Cin_65536_79 + 1)
	MOVFF	PRODH, (_measure_capacitance_Cin_65536_79 + 2)
	MOVFF	FSR0L, (_measure_capacitance_Cin_65536_79 + 3)
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	177; ../../../src/measure.c	unit = 5; //"uF"
	MOVLW	0x05
	MOVWF	r0x00
	BRA	_00142_DS_
_00138_DS_:
;	.line	180; ../../../src/measure.c	Cin = Cin / 1e+03;
	MOVLW	0x44
	MOVWF	POSTDEC1
	MOVLW	0x7a
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
	MOVWF	POSTDEC1
	CALL	___fsdiv
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVWF	_measure_capacitance_Cin_65536_79, B
	MOVFF	PRODL, (_measure_capacitance_Cin_65536_79 + 1)
	MOVFF	PRODH, (_measure_capacitance_Cin_65536_79 + 2)
	MOVFF	FSR0L, (_measure_capacitance_Cin_65536_79 + 3)
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	181; ../../../src/measure.c	unit = 6; //"nF"
	MOVLW	0x06
	MOVWF	r0x00
	BRA	_00142_DS_
_00141_DS_:
;	.line	184; ../../../src/measure.c	unit = 7; //"pF"
	MOVLW	0x07
	MOVWF	r0x00
_00142_DS_:
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
;	.line	186; ../../../src/measure.c	Cin = Cin * 100; // scale to 2 decimal place
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
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
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVWF	_measure_capacitance_Cin_65536_79, B
	MOVFF	PRODL, (_measure_capacitance_Cin_65536_79 + 1)
	MOVFF	PRODH, (_measure_capacitance_Cin_65536_79 + 2)
	MOVFF	FSR0L, (_measure_capacitance_Cin_65536_79 + 3)
	MOVLW	0x08
	ADDWF	FSR1L, F
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 3)
;	.line	187; ../../../src/measure.c	var = (uint16_t)Cin;
	MOVF	(_measure_capacitance_Cin_65536_79 + 3), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 2)
	MOVF	(_measure_capacitance_Cin_65536_79 + 2), W, B
	MOVWF	POSTDEC1
	BANKSEL	(_measure_capacitance_Cin_65536_79 + 1)
	MOVF	(_measure_capacitance_Cin_65536_79 + 1), W, B
	MOVWF	POSTDEC1
	BANKSEL	_measure_capacitance_Cin_65536_79
	MOVF	_measure_capacitance_Cin_65536_79, W, B
	MOVWF	POSTDEC1
	CALL	___fs2uint
	MOVWF	r0x01
	MOVFF	PRODL, r0x02
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	189; ../../../src/measure.c	print_reading(var);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_print_reading
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	190; ../../../src/measure.c	print_unit(unit);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_print_unit
	MOVF	POSTINC1, F
;	.line	191; ../../../src/measure.c	}
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
S_measure__measure_freq	code
_measure_freq:
;	.line	68; ../../../src/measure.c	measure_freq() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
;	.line	71; ../../../src/measure.c	INTCON &= ~0b100; // TMR0IF = 0;
	BCF	_INTCON, 2
;	.line	75; ../../../src/measure.c	TRISA &= ~0b00010000;
	BCF	_TRISA, 4
;	.line	77; ../../../src/measure.c	__delay_ms(20); // stablize oscillator
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x14
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	80; ../../../src/measure.c	TMR0 = 0x00;
	CLRF	_TMR0
;	.line	85; ../../../src/measure.c	__delay_ms(10);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay_ms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
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
;	.line	99; ../../../src/measure.c	TRISA |= 0b00010000;
	BSF	_TRISA, 4
;	.line	102; ../../../src/measure.c	count = timer0_read_ps();
	CALL	_timer0_read_ps
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
;	.line	105; ../../../src/measure.c	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	107; ../../../src/measure.c	buffer_init();
	CALL	_buffer_init
;	.line	108; ../../../src/measure.c	buffer_puts("Freq=");
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
	CALL	_buffer_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	109; ../../../src/measure.c	format_number(count, 10, 5);
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
;	.line	110; ../../../src/measure.c	print_buffer();
	CALL	_print_buffer
;	.line	112; ../../../src/measure.c	return count;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
;	.line	113; ../../../src/measure.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_measure__calibrate	code
_calibrate:
;	.line	25; ../../../src/measure.c	calibrate() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	29; ../../../src/measure.c	lcd_clear();
	CALL	_lcd_clear
;	.line	31; ../../../src/measure.c	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	32; ../../../src/measure.c	put_str("Calibrating");
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
;	.line	34; ../../../src/measure.c	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	35; ../../../src/measure.c	ser_puts("\r\n");
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
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	36; ../../../src/measure.c	put_str("please wait...");
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
;	.line	39; ../../../src/measure.c	REMOVE_CCAL();
	BCF	_LATC, 2
;	.line	41; ../../../src/measure.c	F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
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
;	.line	42; ../../../src/measure.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	44; ../../../src/measure.c	F1 = (double)measure_freq();
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
;	.line	45; ../../../src/measure.c	ADD_CCAL();
	BSF	_LATC, 2
;	.line	47; ../../../src/measure.c	F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
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
;	.line	48; ../../../src/measure.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	50; ../../../src/measure.c	F2 = (double)measure_freq();
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
;	.line	51; ../../../src/measure.c	REMOVE_CCAL();
	BCF	_LATC, 2
;	.line	54; ../../../src/measure.c	lcd_gotoxy(11, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0b
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	55; ../../../src/measure.c	for(i = 0; i < 6; i++) { // show progress bar
	CLRF	r0x00
_00106_DS_:
;	.line	56; ../../../src/measure.c	lcd_putch('=');
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	CALL	_lcd_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	58; ../../../src/measure.c	delay10ms(28);
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	55; ../../../src/measure.c	for(i = 0; i < 6; i++) { // show progress bar
	INCF	r0x00, F
	MOVLW	0x06
	SUBWF	r0x00, W
	BNC	_00106_DS_
;	.line	61; ../../../src/measure.c	ser_puts("\r\n");
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
	CALL	_ser_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	62; ../../../src/measure.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
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
	DB	0x76, 0x61, 0x72, 0x3d, 0x00
; ; Starting pCode block
___str_6:
	DB	0x0d, 0x0a, 0x46, 0x31, 0x3d, 0x00
; ; Starting pCode block
___str_7:
	DB	0x0d, 0x0a, 0x46, 0x32, 0x3d, 0x00
; ; Starting pCode block
___str_8:
	DB	0x0d, 0x0a, 0x46, 0x33, 0x3d, 0x00
; ; Starting pCode block
___str_9:
	DB	0x0d, 0x0a, 0x43, 0x43, 0x61, 0x6c, 0x3d, 0x00
; ; Starting pCode block
___str_10:
	DB	0x43, 0x69, 0x6e, 0x3d, 0x00
; ; Starting pCode block
___str_11:
	DB	0x49, 0x6e, 0x64, 0x75, 0x63, 0x74, 0x69, 0x76, 0x69, 0x74, 0x79, 0x20
	DB	0x00


; Statistics:
; code size:	 4246 (0x1096) bytes ( 3.24%)
;           	 2123 (0x084b) words
; udata size:	    4 (0x0004) bytes ( 0.22%)
; access size:	   12 (0x000c) bytes


	end
