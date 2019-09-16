;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2550
	radix	dec
	__config 0x300001, 0x7c
	__config 0x300006, 0x3b


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_F3
	global	_F2
	global	_F1
	global	_timer1of
	global	_delay10ms
	global	_main
	global	_testloop
	global	_bres
	global	_msecpart
	global	_seconds
	global	_msecs
	global	_CCal
	global	_blink
	global	_isr

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
	extern	_dvar
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
	extern	_lcd_init
	extern	_lcd_begin
	extern	_lcd_clear
	extern	_lcd_gotoxy
	extern	_lcd_putch
	extern	_timer0_init
	extern	_timer2_init
	extern	_uart_init
	extern	_uart_puts
	extern	_calibrate
	extern	_measure_capacitance
	extern	_measure_inductance
	extern	_lcd_puts
	extern	_indicator
	extern	_format_number
	extern	_format_double
	extern	_uart_brg
	extern	_logo_image

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
PCLATH	equ	0xffa
PCLATU	equ	0xffb
WREG	equ	0xfe8
BSR	equ	0xfe0
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PRODL	equ	0xff3
PRODH	equ	0xff4


	idata
_blink	db	0x00, 0x00
_testloop_led_65536_83	db	0x00
_testloop_prev_s_65536_83	db	0x00, 0x00


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1

udata_LC_meter_0	udata
_timer1of	res	4

udata_LC_meter_1	udata
_F1	res	4

udata_LC_meter_2	udata
_F2	res	4

udata_LC_meter_3	udata
_F3	res	4

udata_LC_meter_4	udata
_bres	res	2

udata_LC_meter_5	udata
_msecpart	res	2

udata_LC_meter_6	udata
_msecs	res	4

udata_LC_meter_7	udata
_seconds	res	4

udata_LC_meter_8	udata
_CCal	res	4

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block for absolute section
; ;-----------------------------------------
S_LC_meter_ivec_0x0_isr	code	0X000000
ivec_0x0_isr:
	GOTO	_isr

; I code from now on!
; ; Starting pCode block
S_LC_meter__main	code
_main:
	BANKSEL	_seconds
;	.line	112; ../../../LC-meter.c	bres = msecpart = msecs = seconds = 0;
	CLRF	_seconds, B
	BANKSEL	(_seconds + 1)
	CLRF	(_seconds + 1), B
	BANKSEL	(_seconds + 2)
	CLRF	(_seconds + 2), B
	BANKSEL	(_seconds + 3)
	CLRF	(_seconds + 3), B
	BANKSEL	_msecs
	CLRF	_msecs, B
	BANKSEL	(_msecs + 1)
	CLRF	(_msecs + 1), B
	BANKSEL	(_msecs + 2)
	CLRF	(_msecs + 2), B
	BANKSEL	(_msecs + 3)
	CLRF	(_msecs + 3), B
	BANKSEL	_msecpart
	CLRF	_msecpart, B
	BANKSEL	(_msecpart + 1)
	CLRF	(_msecpart + 1), B
	BANKSEL	_bres
	CLRF	_bres, B
	BANKSEL	(_bres + 1)
	CLRF	(_bres + 1), B
	BANKSEL	_CCal
;	.line	114; ../../../LC-meter.c	CCal = C_CAL;
	CLRF	_CCal, B
	BANKSEL	(_CCal + 1)
	CLRF	(_CCal + 1), B
	MOVLW	0x7a
	BANKSEL	(_CCal + 2)
	MOVWF	(_CCal + 2), B
	MOVLW	0x44
	BANKSEL	(_CCal + 3)
	MOVWF	(_CCal + 3), B
;	.line	123; ../../../LC-meter.c	TRISA = 0b11001111;
	MOVLW	0xcf
	MOVWF	_TRISA
;	.line	126; ../../../LC-meter.c	timer0_init(PRESCALE_1_16 | TIMER0_FLAGS_EXTCLK);
	MOVLW	0x44
	MOVWF	POSTDEC1
	CALL	_timer0_init
	MOVF	POSTINC1, F
;	.line	142; ../../../LC-meter.c	INTCON2 &= ~0b10000000; //   NOT_RBPU = 0; // enable portB internal pullup
	BCF	_INTCON2, 7
;	.line	148; ../../../LC-meter.c	INIT_LED();
	BCF	_TRISC, 1
;	.line	149; ../../../LC-meter.c	SET_LED(1);
	BCF	_LATC, 1
	BSF	_LATC, 1
;	.line	152; ../../../LC-meter.c	SSPCON1 &= ~0b00100000; //  SSPEN = 0;
	BCF	_SSPCON1, 5
;	.line	160; ../../../LC-meter.c	timer2_init(PRESCALE_1_1 | TIMER2_FLAGS_INTR);
	MOVLW	0x80
	MOVWF	POSTDEC1
	CALL	_timer2_init
	MOVF	POSTINC1, F
;	.line	165; ../../../LC-meter.c	TRISC &= 0b10110101;
	MOVLW	0xb5
	ANDWF	_TRISC, F
;	.line	177; ../../../LC-meter.c	lcd_init(true);
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_lcd_init
	MOVF	POSTINC1, F
;	.line	178; ../../../LC-meter.c	lcd_begin(2, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_lcd_begin
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	181; ../../../LC-meter.c	LC_TRIS();
	BSF	_TRISC, 0
;	.line	182; ../../../LC-meter.c	RELAY_TRIS();
	BCF	_TRISC, 5
;	.line	184; ../../../LC-meter.c	REMOVE_CCAL();
	BCF	_LATC, 2
;	.line	185; ../../../LC-meter.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	186; ../../../LC-meter.c	ADD_CCAL();
	BSF	_LATC, 2
;	.line	187; ../../../LC-meter.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	188; ../../../LC-meter.c	REMOVE_CCAL();
	BCF	_LATC, 2
;	.line	189; ../../../LC-meter.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	190; ../../../LC-meter.c	ADD_CCAL();
	BSF	_LATC, 2
;	.line	191; ../../../LC-meter.c	delay10ms(50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	192; ../../../LC-meter.c	REMOVE_CCAL();
	BCF	_LATC, 2
;	.line	198; ../../../LC-meter.c	uart_init();
	CALL	_uart_init
;	.line	202; ../../../LC-meter.c	INTCON |= 0xc0; // PEIE = 1; GIE = 1;
	MOVLW	0xc0
	IORWF	_INTCON, F
;	.line	205; ../../../LC-meter.c	putchar_ptr = &lcd_putch;
	MOVLW	LOW(_lcd_putch)
	BANKSEL	_putchar_ptr
	MOVWF	_putchar_ptr, B
	MOVLW	HIGH(_lcd_putch)
	BANKSEL	(_putchar_ptr + 1)
	MOVWF	(_putchar_ptr + 1), B
;	.line	212; ../../../LC-meter.c	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	214; ../../../LC-meter.c	lcd_puts("LC-meter ");
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
	CALL	_lcd_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
	BANKSEL	(_CCal + 3)
;	.line	215; ../../../LC-meter.c	format_double(/*&lcd_putch,*/ CCal);
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
;	.line	221; ../../../LC-meter.c	delay10ms(200);
	MOVLW	0xc8
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	224; ../../../LC-meter.c	calibrate();
	CALL	_calibrate
;	.line	226; ../../../LC-meter.c	lcd_clear();
	CALL	_lcd_clear
_00152_DS_:
;	.line	237; ../../../LC-meter.c	uart_puts("...\r\n");
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
;	.line	238; ../../../LC-meter.c	if(PORTC & (1 << 4))
	BTFSS	_PORTC, 4
	BRA	_00149_DS_
;	.line	239; ../../../LC-meter.c	measure_capacitance();
	CALL	_measure_capacitance
	BRA	_00150_DS_
_00149_DS_:
;	.line	241; ../../../LC-meter.c	measure_inductance();
	CALL	_measure_inductance
_00150_DS_:
;	.line	243; ../../../LC-meter.c	indicator(1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_indicator
	MOVF	POSTINC1, F
;	.line	244; ../../../LC-meter.c	delay10ms(30);
	MOVLW	0x1e
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	245; ../../../LC-meter.c	indicator(0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_indicator
	MOVF	POSTINC1, F
;	.line	246; ../../../LC-meter.c	delay10ms(20);
	MOVLW	0x14
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
	BRA	_00152_DS_
;	.line	248; ../../../LC-meter.c	}
	RETURN	

; ; Starting pCode block
S_LC_meter__testloop	code
_testloop:
;	.line	251; ../../../LC-meter.c	testloop() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	257; ../../../LC-meter.c	delay10ms(10);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_delay10ms
	MOVF	POSTINC1, F
;	.line	259; ../../../LC-meter.c	INTCON &= ~0x80; // GIE = 0;
	BCF	_INTCON, 7
	BANKSEL	_seconds
;	.line	260; ../../../LC-meter.c	s = seconds;
	MOVF	_seconds, W, B
	MOVWF	r0x00
	BANKSEL	(_seconds + 1)
	MOVF	(_seconds + 1), W, B
	MOVWF	r0x01
;	.line	261; ../../../LC-meter.c	INTCON |= 0x80; // GIE = 1;
	BSF	_INTCON, 7
;	.line	271; ../../../LC-meter.c	lcd_gotoxy(10, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	272; ../../../LC-meter.c	lcd_puts("      ");
	MOVLW	HIGH(___str_2)
	MOVWF	r0x03
	MOVLW	LOW(___str_2)
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
;	.line	273; ../../../LC-meter.c	lcd_gotoxy(10, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	275; ../../../LC-meter.c	format_number(/*lcd_putch,*/ s, 10, 5);
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
;	.line	277; ../../../LC-meter.c	lcd_gotoxy(10, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	278; ../../../LC-meter.c	lcd_puts("      ");
	MOVLW	HIGH(___str_2)
	MOVWF	r0x03
	MOVLW	LOW(___str_2)
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
;	.line	279; ../../../LC-meter.c	lcd_gotoxy(10, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	280; ../../../LC-meter.c	format_number(/*lcd_putch,*/ TIMER1_VALUE, 10, 5);
	MOVFF	_TMR1H, r0x02
	CLRF	r0x03
	MOVF	r0x02, W
	MOVWF	r0x05
	CLRF	r0x04
	MOVFF	_TMR1L, r0x02
	CLRF	r0x03
	MOVF	r0x02, W
	IORWF	r0x04, F
	MOVF	r0x03, W
	IORWF	r0x05, F
	MOVLW	0x05
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_format_number
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	282; ../../../LC-meter.c	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	283; ../../../LC-meter.c	lcd_puts("     ");
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
	CALL	_lcd_puts
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	284; ../../../LC-meter.c	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	CALL	_lcd_gotoxy
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	285; ../../../LC-meter.c	lcd_puts("RC4=");
	MOVLW	HIGH(___str_4)
	MOVWF	r0x03
	MOVLW	LOW(___str_4)
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
;	.line	287; ../../../LC-meter.c	lcd_putch(LC_SELECT != 0 ? '1' : '0');
	MOVF	_LATC, W
	ANDLW	0x01
	MOVWF	r0x02
	MOVF	r0x02, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x02
	RLCF	r0x02, F
	MOVF	r0x02, W
	BNZ	_00187_DS_
	MOVLW	0x31
	MOVWF	r0x02
	CLRF	r0x03
	BRA	_00188_DS_
_00187_DS_:
	MOVLW	0x30
	MOVWF	r0x02
	CLRF	r0x03
_00188_DS_:
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_lcd_putch
	MOVF	POSTINC1, F
;	.line	291; ../../../LC-meter.c	if(s != prev_s) {
	MOVF	r0x00, W
	BANKSEL	_testloop_prev_s_65536_83
	XORWF	_testloop_prev_s_65536_83, W, B
	BNZ	_00201_DS_
	MOVF	r0x01, W
	BANKSEL	(_testloop_prev_s_65536_83 + 1)
	XORWF	(_testloop_prev_s_65536_83 + 1), W, B
	BZ	_00185_DS_
_00201_DS_:
;	.line	298; ../../../LC-meter.c	prev_s = s;
	MOVFF	r0x00, _testloop_prev_s_65536_83
	MOVFF	r0x01, (_testloop_prev_s_65536_83 + 1)
_00185_DS_:
;	.line	300; ../../../LC-meter.c	}
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_LC_meter__isr	code
_isr:
;	.line	75; ../../../LC-meter.c	INTERRUPT_FN() {
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	77; ../../../LC-meter.c	if(PIR1 & 0b10) {
	MOVFF	_PIR1, r0x00
	BTFSS	r0x00, 1
	BRA	_00118_DS_
	BANKSEL	(_bres + 1)
;	.line	79; ../../../LC-meter.c	bres += 256;
	INCF	(_bres + 1), F, B
;	.line	81; ../../../LC-meter.c	if(bres >= 5000) {
	MOVLW	0x13
	BANKSEL	(_bres + 1)
	SUBWF	(_bres + 1), W, B
	BNZ	_00137_DS_
	MOVLW	0x88
	BANKSEL	_bres
	SUBWF	_bres, W, B
_00137_DS_:
	BTFSS	STATUS, 0
	BRA	_00115_DS_
;	.line	82; ../../../LC-meter.c	bres -= 5000;
	MOVLW	0x78
	BANKSEL	_bres
	ADDWF	_bres, F, B
	MOVLW	0xec
	BANKSEL	(_bres + 1)
	ADDWFC	(_bres + 1), F, B
;	.line	83; ../../../LC-meter.c	msecpart++;
	MOVFF	_msecpart, r0x00
	MOVFF	(_msecpart + 1), r0x01
	MOVF	r0x00, W
	ADDLW	0x01
	BANKSEL	_msecpart
	MOVWF	_msecpart, B
	MOVLW	0x00
	ADDWFC	r0x01, W
	BANKSEL	(_msecpart + 1)
	MOVWF	(_msecpart + 1), B
;	.line	84; ../../../LC-meter.c	msecs++;
	MOVFF	_msecs, r0x00
	MOVFF	(_msecs + 1), r0x01
	MOVFF	(_msecs + 2), r0x02
	MOVFF	(_msecs + 3), r0x03
	MOVF	r0x00, W
	ADDLW	0x01
	BANKSEL	_msecs
	MOVWF	_msecs, B
	MOVLW	0x00
	ADDWFC	r0x01, W
	BANKSEL	(_msecs + 1)
	MOVWF	(_msecs + 1), B
	MOVLW	0x00
	ADDWFC	r0x02, W
	BANKSEL	(_msecs + 2)
	MOVWF	(_msecs + 2), B
	MOVLW	0x00
	ADDWFC	r0x03, W
	BANKSEL	(_msecs + 3)
	MOVWF	(_msecs + 3), B
;	.line	86; ../../../LC-meter.c	SET_LED((blink > 200));
	BCF	_LATC, 1
	MOVLW	0x00
	BANKSEL	(_blink + 1)
	SUBWF	(_blink + 1), W, B
	BNZ	_00140_DS_
	MOVLW	0xc9
	BANKSEL	_blink
	SUBWF	_blink, W, B
_00140_DS_:
	CLRF	r0x00
	RLCF	r0x00, F
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
	MOVWF	r0x01
	MOVF	_LATC, W
	MOVWF	r0x00
	MOVF	r0x01, W
	IORWF	r0x00, W
	MOVWF	_LATC
;	.line	87; ../../../LC-meter.c	if(blink >= 400)
	MOVLW	0x01
	BANKSEL	(_blink + 1)
	SUBWF	(_blink + 1), W, B
	BNZ	_00142_DS_
	MOVLW	0x90
	BANKSEL	_blink
	SUBWF	_blink, W, B
_00142_DS_:
	BNC	_00111_DS_
;	.line	88; ../../../LC-meter.c	blink -= 400;
	MOVLW	0x70
	BANKSEL	_blink
	ADDWF	_blink, F, B
	MOVLW	0xfe
	BANKSEL	(_blink + 1)
	ADDWFC	(_blink + 1), F, B
_00111_DS_:
	BANKSEL	_blink
;	.line	89; ../../../LC-meter.c	++blink;
	INCFSZ	_blink, F, B
	BRA	_10183_DS_
	BANKSEL	(_blink + 1)
	INCF	(_blink + 1), F, B
_10183_DS_:
;	.line	92; ../../../LC-meter.c	if(msecpart >= 1000) {
	MOVLW	0x03
	BANKSEL	(_msecpart + 1)
	SUBWF	(_msecpart + 1), W, B
	BNZ	_00143_DS_
	MOVLW	0xe8
	BANKSEL	_msecpart
	SUBWF	_msecpart, W, B
_00143_DS_:
	BNC	_00115_DS_
;	.line	94; ../../../LC-meter.c	seconds++;
	MOVFF	_seconds, r0x00
	MOVFF	(_seconds + 1), r0x01
	MOVFF	(_seconds + 2), r0x02
	MOVFF	(_seconds + 3), r0x03
	MOVF	r0x00, W
	ADDLW	0x01
	BANKSEL	_seconds
	MOVWF	_seconds, B
	MOVLW	0x00
	ADDWFC	r0x01, W
	BANKSEL	(_seconds + 1)
	MOVWF	(_seconds + 1), B
	MOVLW	0x00
	ADDWFC	r0x02, W
	BANKSEL	(_seconds + 2)
	MOVWF	(_seconds + 2), B
	MOVLW	0x00
	ADDWFC	r0x03, W
	BANKSEL	(_seconds + 3)
	MOVWF	(_seconds + 3), B
;	.line	95; ../../../LC-meter.c	msecpart -= 1000;
	MOVLW	0x18
	BANKSEL	_msecpart
	ADDWF	_msecpart, F, B
	MOVLW	0xfc
	BANKSEL	(_msecpart + 1)
	ADDWFC	(_msecpart + 1), F, B
_00115_DS_:
;	.line	99; ../../../LC-meter.c	PIR1 &= ~0b10; // TMR2IF = 0
	BCF	_PIR1, 1
_00118_DS_:
;	.line	107; ../../../LC-meter.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, PCLATU
	MOVFF	PREINC1, PCLATH
	MOVFF	PREINC1, FSR0H
	MOVFF	PREINC1, FSR0L
	MOVFF	PREINC1, PRODH
	MOVFF	PREINC1, PRODL
	MOVF	PREINC1, W
	MOVFF	PREINC1, BSR
	MOVFF	PREINC1, STATUS
	RETFIE	

; ; Starting pCode block
S_LC_meter__delay10ms	code
_delay10ms:
;	.line	54; ../../../LC-meter.c	delay10ms(unsigned char period_10ms) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	58; ../../../LC-meter.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
___str_0:
	DB	0x4c, 0x43, 0x2d, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x20, 0x00
; ; Starting pCode block
___str_1:
	DB	0x2e, 0x2e, 0x2e, 0x0d, 0x0a, 0x00
; ; Starting pCode block
___str_2:
	DB	0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x00
; ; Starting pCode block
___str_3:
	DB	0x20, 0x20, 0x20, 0x20, 0x20, 0x00
; ; Starting pCode block
___str_4:
	DB	0x52, 0x43, 0x34, 0x3d, 0x00


; Statistics:
; code size:	 1268 (0x04f4) bytes ( 0.97%)
;           	  634 (0x027a) words
; udata size:	   32 (0x0020) bytes ( 1.79%)
; access size:	    6 (0x0006) bytes


	end
