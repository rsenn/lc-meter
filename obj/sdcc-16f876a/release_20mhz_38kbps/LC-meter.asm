;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"LC-meter.c"
	list	p=16f876a
	radix dec
	include "p16f876a.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3f32
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__divuint
	extern	_format_float
	extern	_format_number
	extern	_print_indicator
	extern	_lcd_puts
	extern	_measure_inductance
	extern	_measure_capacitance
	extern	_calibrate
	extern	_ser_init
	extern	_ser_puts
	extern	_ser_putch
	extern	_timer2_init
	extern	_timer0_init
	extern	_lcd_putch
	extern	_lcd_gotoxy
	extern	_lcd_clear
	extern	_lcd_begin
	extern	_lcd_init
	extern	_CMCON
	extern	_TRISC
	extern	_TRISB
	extern	_TRISA
	extern	_OPTION_REG
	extern	_RCREG
	extern	_TXREG
	extern	_INTCON
	extern	_PORTC
	extern	_ser_tmp
	extern	_ser_txoptr
	extern	_ser_txiptr
	extern	_ser_txfifo
	extern	_ser_rxoptr
	extern	_ser_rxiptr
	extern	_ser_rxfifo
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_PORTCbits
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_isr
	global	_blink
	global	_CCal
	global	_F3
	global	_F2
	global	_F1
	global	_timer1of
	global	_msecs
	global	_seconds
	global	_led_interval
	global	_led_cycle
	global	_msecpart
	global	_bres
	global	_delay10ms
	global	_main
	global	_testloop

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_LC_meter_0	udata
_bres	res	4

UD_LC_meter_1	udata
_msecpart	res	2

UD_LC_meter_2	udata
_led_cycle	res	2

UD_LC_meter_3	udata
_led_interval	res	2

UD_LC_meter_4	udata
_seconds	res	4

UD_LC_meter_5	udata
_msecs	res	4

UD_LC_meter_6	udata
_timer1of	res	4

UD_LC_meter_7	udata
_F1	res	4

UD_LC_meter_8	udata
_F2	res	4

UD_LC_meter_9	udata
_F3	res	4

UD_LC_meter_10	udata
_CCal	res	4

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_LC_meter_0	udata
r0x104A	res	1
r0x104B	res	1
r0x104C	res	1
r0x104D	res	1
r0x1045	res	1
r0x1044	res	1
r0x1046	res	1
r0x1048	res	1
r0x1049	res	1
r0x103F	res	1
r0x1040	res	1
r0x1042	res	1
r0x1041	res	1
r0x1043	res	1
___sdcc_saved_fsr	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

IDD_LC_meter_0	idata
_mode
	db	0xff	; 255


IDD_LC_meter_1	idata
_blink
	db	0x00, 0x00	; 0


IDD_LC_meter_2	idata
_testloop_led_65536_71
	db	0x00	; 0


IDD_LC_meter_3	idata
_testloop_prev_s_65536_71
	db	0x00, 0x00	; 0


IDC_LC_meter_4	code
___str_0
	retlw 0x4c ; 'L'
	retlw 0x43 ; 'C'
	retlw 0x2d ; '-'
	retlw 0x6d ; 'm'
	retlw 0x65 ; 'e'
	retlw 0x74 ; 't'
	retlw 0x65 ; 'e'
	retlw 0x72 ; 'r'
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_LC_meter_5	code
___str_1
	retlw 0x2d ; '-'
	retlw 0x20 ; ' '
	retlw 0x43 ; 'C'
	retlw 0x20 ; ' '
	retlw 0x28 ; '('
	retlw 0x55 ; 'U'
	retlw 0x6e ; 'n'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x3a ; ':'
	retlw 0x20 ; ' '
	retlw 0x46 ; 'F'
	retlw 0x29 ; ')'
	retlw 0x20 ; ' '
	retlw 0x2d ; '-'
	retlw 0x00 ; '.'

IDC_LC_meter_6	code
___str_2
	retlw 0x2d ; '-'
	retlw 0x20 ; ' '
	retlw 0x4c ; 'L'
	retlw 0x20 ; ' '
	retlw 0x28 ; '('
	retlw 0x55 ; 'U'
	retlw 0x6e ; 'n'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x3a ; ':'
	retlw 0x20 ; ' '
	retlw 0x48 ; 'H'
	retlw 0x29 ; ')'
	retlw 0x20 ; ' '
	retlw 0x2d ; '-'
	retlw 0x00 ; '.'

IDC_LC_meter_7	code
___str_3
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'

IDC_LC_meter_8	code
___str_4
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_LC_meter_9	code
___str_5
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_LC_meter_10	code
___str_6
	retlw 0x52 ; 'R'
	retlw 0x43 ; 'C'
	retlw 0x34 ; '4'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x0004
__sdcc_interrupt:
;***
;  pBlock Stats: dbName = I
;***
;functions called:
;   __divuint
;   __divuint
;7 compiler assigned registers:
;   r0x104A
;   r0x104B
;   STK02
;   STK01
;   STK00
;   r0x104C
;   r0x104D
;; Starting pCode block
_isr:
; 0 exit points
;	.line	84; "LC-meter.c"	INTERRUPT_FN() {
	MOVWF	WSAVE
	SWAPF	STATUS,W
	CLRF	STATUS
	MOVWF	SSAVE
	MOVF	PCLATH,W
	CLRF	PCLATH
	MOVWF	PSAVE
	MOVF	FSR,W
	BANKSEL	___sdcc_saved_fsr
	MOVWF	___sdcc_saved_fsr
;	.line	85; "LC-meter.c"	if(TMR2IF) {
	BANKSEL	_PIR1bits
	BTFSS	_PIR1bits,1
	GOTO	_00114_DS_
;	.line	86; "LC-meter.c"	bres += 256;
	BANKSEL	_bres
	INCF	(_bres + 1),F
	BTFSC	STATUS,2
	INCF	(_bres + 2),F
	BTFSC	STATUS,2
	INCF	(_bres + 3),F
;;unsigned compare: left < lit(0x1388=5000), size=4
;	.line	87; "LC-meter.c"	if(bres >= CYCLES_FOR_MSEC) {
	MOVLW	0x00
	SUBWF	(_bres + 3),W
	BTFSS	STATUS,2
	GOTO	_00165_DS_
	MOVLW	0x00
	SUBWF	(_bres + 2),W
	BTFSS	STATUS,2
	GOTO	_00165_DS_
	MOVLW	0x13
	SUBWF	(_bres + 1),W
	BTFSS	STATUS,2
	GOTO	_00165_DS_
	MOVLW	0x88
	SUBWF	_bres,W
_00165_DS_:
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;;genSkipc:3307: created from rifx:0x7ffc41b017a0
;	.line	88; "LC-meter.c"	bres -= CYCLES_FOR_MSEC;
	MOVLW	0x78
	BANKSEL	_bres
	ADDWF	_bres,F
	MOVLW	0xec
	BTFSC	STATUS,0
	MOVLW	0xed
	ADDWF	(_bres + 1),F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	(_bres + 2),F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	(_bres + 3),F
;	.line	89; "LC-meter.c"	msecpart++;
	BANKSEL	_msecpart
	MOVF	_msecpart,W
	BANKSEL	r0x104A
	MOVWF	r0x104A
	BANKSEL	_msecpart
	MOVF	(_msecpart + 1),W
	BANKSEL	r0x104B
	MOVWF	r0x104B
	MOVLW	0x01
	ADDWF	r0x104A,W
	BANKSEL	_msecpart
	MOVWF	_msecpart
	CLRF	(_msecpart + 1)
	RLF	(_msecpart + 1),F
	BANKSEL	r0x104B
	MOVF	r0x104B,W
	BANKSEL	_msecpart
	ADDWF	(_msecpart + 1),F
;	.line	90; "LC-meter.c"	led_cycle++;
	BANKSEL	_led_cycle
	MOVF	_led_cycle,W
	BANKSEL	r0x104A
	MOVWF	r0x104A
	BANKSEL	_led_cycle
	MOVF	(_led_cycle + 1),W
	BANKSEL	r0x104B
	MOVWF	r0x104B
	MOVLW	0x01
	ADDWF	r0x104A,W
	BANKSEL	_led_cycle
	MOVWF	_led_cycle
	CLRF	(_led_cycle + 1)
	RLF	(_led_cycle + 1),F
	BANKSEL	r0x104B
	MOVF	r0x104B,W
	BANKSEL	_led_cycle
	ADDWF	(_led_cycle + 1),F
;	.line	92; "LC-meter.c"	SET_LED(led_cycle >= 0 && led_cycle < led_interval / 6);
	BANKSEL	_PORTC
	BCF	_PORTC,2
	BANKSEL	_led_interval
	MOVF	_led_interval,W
	BANKSEL	r0x104A
	MOVWF	r0x104A
	BANKSEL	_led_interval
	MOVF	(_led_interval + 1),W
	BANKSEL	r0x104B
	MOVWF	r0x104B
	MOVLW	0x06
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVF	r0x104A,W
	MOVWF	STK00
	MOVF	r0x104B,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x104B
	MOVWF	r0x104B
	MOVF	STK00,W
	MOVWF	r0x104A
	BANKSEL	_led_cycle
	MOVF	_led_cycle,W
	BANKSEL	r0x104C
	MOVWF	r0x104C
	BANKSEL	_led_cycle
	MOVF	(_led_cycle + 1),W
	BANKSEL	r0x104D
	MOVWF	r0x104D
	MOVF	r0x104B,W
	SUBWF	r0x104D,W
	BTFSS	STATUS,2
	GOTO	_00166_DS_
	MOVF	r0x104A,W
	SUBWF	r0x104C,W
_00166_DS_:
	BTFSS	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3307: created from rifx:0x7ffc41b017a0
	BANKSEL	r0x104A
	CLRF	r0x104A
	GOTO	_00128_DS_
_00127_DS_:
	MOVLW	0x01
	BANKSEL	r0x104A
	MOVWF	r0x104A
_00128_DS_:
	BANKSEL	r0x104A
	MOVF	r0x104A,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x104B
	MOVF	r0x104B,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x104A
	MOVWF	r0x104B
	BCF	STATUS,0
	RLF	r0x104B,W
	MOVWF	r0x104A
	BCF	STATUS,0
	RLF	r0x104A,F
	MOVF	r0x104A,W
	BANKSEL	_PORTC
	IORWF	_PORTC,F
;	.line	95; "LC-meter.c"	if(msecpart >= 1000) {
	BANKSEL	_msecpart
	MOVF	_msecpart,W
	BANKSEL	r0x104A
	MOVWF	r0x104A
	BANKSEL	_msecpart
	MOVF	(_msecpart + 1),W
	BANKSEL	r0x104B
	MOVWF	r0x104B
;;unsigned compare: left < lit(0x3E8=1000), size=2
	MOVLW	0x03
	SUBWF	r0x104B,W
	BTFSS	STATUS,2
	GOTO	_00167_DS_
	MOVLW	0xe8
	SUBWF	r0x104A,W
_00167_DS_:
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;;genSkipc:3307: created from rifx:0x7ffc41b017a0
;	.line	97; "LC-meter.c"	seconds++;
	BANKSEL	_seconds
	MOVF	_seconds,W
	BANKSEL	r0x104A
	MOVWF	r0x104A
	BANKSEL	_seconds
	MOVF	(_seconds + 1),W
	BANKSEL	r0x104B
	MOVWF	r0x104B
	BANKSEL	_seconds
	MOVF	(_seconds + 2),W
	BANKSEL	r0x104C
	MOVWF	r0x104C
	BANKSEL	_seconds
	MOVF	(_seconds + 3),W
	BANKSEL	r0x104D
	MOVWF	r0x104D
	MOVLW	0x01
	ADDWF	r0x104A,W
	BANKSEL	_seconds
	MOVWF	_seconds
	CLRF	(_seconds + 1)
	RLF	(_seconds + 1),F
	BANKSEL	r0x104B
	MOVF	r0x104B,W
	BANKSEL	_seconds
	ADDWF	(_seconds + 1),F
	CLRF	(_seconds + 2)
	RLF	(_seconds + 2),F
	BANKSEL	r0x104C
	MOVF	r0x104C,W
	BANKSEL	_seconds
	ADDWF	(_seconds + 2),F
	CLRF	(_seconds + 3)
	RLF	(_seconds + 3),F
	BANKSEL	r0x104D
	MOVF	r0x104D,W
	BANKSEL	_seconds
	ADDWF	(_seconds + 3),F
;	.line	98; "LC-meter.c"	msecpart -= 1000;
	BANKSEL	_msecpart
	MOVF	_msecpart,W
	BANKSEL	r0x104A
	MOVWF	r0x104A
	BANKSEL	_msecpart
	MOVF	(_msecpart + 1),W
	BANKSEL	r0x104B
	MOVWF	r0x104B
	MOVLW	0x18
	ADDWF	r0x104A,F
	MOVLW	0xfc
	BTFSC	STATUS,0
	MOVLW	0xfd
	ADDWF	r0x104B,F
	MOVF	r0x104A,W
	BANKSEL	_msecpart
	MOVWF	_msecpart
	BANKSEL	r0x104B
	MOVF	r0x104B,W
	BANKSEL	_msecpart
	MOVWF	(_msecpart + 1)
_00112_DS_:
;	.line	102; "LC-meter.c"	TMR2IF = 0;
	BANKSEL	_PIR1bits
	BCF	_PIR1bits,1
_00114_DS_:
;	.line	105; "LC-meter.c"	ser_int();
	BANKSEL	_PIR1bits
	BTFSS	_PIR1bits,5
	GOTO	_00118_DS_
	BANKSEL	_ser_rxiptr
	MOVF	_ser_rxiptr,W
	ADDLW	(_ser_rxfifo + 0)
	BANKSEL	r0x104A
	MOVWF	r0x104A
	MOVLW	high (_ser_rxfifo + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x104B
	MOVF	r0x104A,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x104B
	BTFSC	r0x104B,0
	BSF	STATUS,7
	BANKSEL	_RCREG
	MOVF	_RCREG,W
	MOVWF	INDF
	BANKSEL	_ser_rxiptr
	MOVF	_ser_rxiptr,W
	BANKSEL	r0x104A
	MOVWF	r0x104A
	INCF	r0x104A,F
	MOVLW	0x0f
	ANDWF	r0x104A,W
	BANKSEL	_ser_tmp
	MOVWF	_ser_tmp
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
	BANKSEL	_ser_tmp
	XORWF	_ser_tmp,W
	BTFSC	STATUS,2
	GOTO	_00118_DS_
	MOVF	_ser_tmp,W
	BANKSEL	_ser_rxiptr
	MOVWF	_ser_rxiptr
_00118_DS_:
	BANKSEL	_PIR1bits
	BTFSS	_PIR1bits,4
	GOTO	_00124_DS_
	BANKSEL	_PIE1bits
	BTFSS	_PIE1bits,4
	GOTO	_00124_DS_
	BANKSEL	_ser_txoptr
	MOVF	_ser_txoptr,W
	ADDLW	(_ser_txfifo + 0)
	BANKSEL	r0x104A
	MOVWF	r0x104A
	MOVLW	high (_ser_txfifo + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x104B
	MOVF	r0x104A,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x104B
	BTFSC	r0x104B,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	MOVWF	_TXREG
	BANKSEL	_ser_txoptr
	INCF	_ser_txoptr,F
	MOVLW	0x0f
	ANDWF	_ser_txoptr,F
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
	BANKSEL	_ser_txoptr
	XORWF	_ser_txoptr,W
	BTFSS	STATUS,2
	GOTO	_00001_DS_
	BANKSEL	_PIE1bits
	BCF	_PIE1bits,4
_00001_DS_:
	BANKSEL	_PIR1bits
	BCF	_PIR1bits,4
_00124_DS_:
;	.line	110; "LC-meter.c"	}
	BANKSEL	___sdcc_saved_fsr
	MOVF	___sdcc_saved_fsr,W
	BANKSEL	FSR
	MOVWF	FSR
	MOVF	PSAVE,W
	MOVWF	PCLATH
	CLRF	STATUS
	SWAPF	SSAVE,W
	MOVWF	STATUS
	SWAPF	WSAVE,F
	SWAPF	WSAVE,W
END_OF_INTERRUPT:
	RETFIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_LC_meter	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _timer0_init
;   _timer2_init
;   _timer2_init
;   _lcd_init
;   _lcd_begin
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _ser_init
;   _lcd_gotoxy
;   _lcd_puts
;   _format_float
;   _delay10ms
;   _calibrate
;   _lcd_clear
;   _ser_puts
;   _ser_puts
;   _measure_capacitance
;   _measure_inductance
;   _print_indicator
;   _delay10ms
;   _print_indicator
;   _delay10ms
;   _timer0_init
;   _timer2_init
;   _timer2_init
;   _lcd_init
;   _lcd_begin
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _ser_init
;   _lcd_gotoxy
;   _lcd_puts
;   _format_float
;   _delay10ms
;   _calibrate
;   _lcd_clear
;   _ser_puts
;   _ser_puts
;   _measure_capacitance
;   _measure_inductance
;   _print_indicator
;   _delay10ms
;   _print_indicator
;   _delay10ms
;11 compiler assigned registers:
;   STK00
;   r0x1044
;   r0x1045
;   r0x1046
;   STK01
;   STK04
;   STK03
;   STK02
;   r0x1047
;   r0x1048
;   r0x1049
;; Starting pCode block
S_LC_meter__main	code
_main:
; 2 exit points
;	.line	117; "LC-meter.c"	bres = msecpart = msecs = seconds = 0;
	BANKSEL	_seconds
	CLRF	_seconds
	CLRF	(_seconds + 1)
	CLRF	(_seconds + 2)
	CLRF	(_seconds + 3)
	BANKSEL	_msecs
	CLRF	_msecs
	CLRF	(_msecs + 1)
	CLRF	(_msecs + 2)
	CLRF	(_msecs + 3)
	BANKSEL	_msecpart
	CLRF	_msecpart
	CLRF	(_msecpart + 1)
	BANKSEL	_bres
	CLRF	_bres
	CLRF	(_bres + 1)
	CLRF	(_bres + 2)
	CLRF	(_bres + 3)
;	.line	118; "LC-meter.c"	mode = -1;
	MOVLW	0xff
	BANKSEL	_mode
	MOVWF	_mode
;	.line	120; "LC-meter.c"	CCal = C_CAL;
	BANKSEL	_CCal
	CLRF	_CCal
	CLRF	(_CCal + 1)
	MOVLW	0x7a
	MOVWF	(_CCal + 2)
	MOVLW	0x44
	MOVWF	(_CCal + 3)
;	.line	122; "LC-meter.c"	led_cycle = 0;
	BANKSEL	_led_cycle
	CLRF	_led_cycle
	CLRF	(_led_cycle + 1)
;	.line	123; "LC-meter.c"	led_interval = 500;
	MOVLW	0xf4
	BANKSEL	_led_interval
	MOVWF	_led_interval
	MOVLW	0x01
	MOVWF	(_led_interval + 1)
;	.line	131; "LC-meter.c"	CMCON = 0b00000101;
	MOVLW	0x05
	BANKSEL	_CMCON
	MOVWF	_CMCON
;	.line	133; "LC-meter.c"	TRISA = 0b11001111;
	MOVLW	0xcf
	MOVWF	_TRISA
;	.line	135; "LC-meter.c"	TRISB &= 0b00001111;
	MOVLW	0x0f
	ANDWF	_TRISB,F
;	.line	138; "LC-meter.c"	timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_EXTCLK | TIMER0_FLAGS_8BIT);
	MOVLW	0x68
	PAGESEL	_timer0_init
	CALL	_timer0_init
	PAGESEL	$
;	.line	139; "LC-meter.c"	timer2_init(TIMER2_PRESCALER | TIMER2_FLAGS_INTR);
	MOVLW	0x84
	PAGESEL	_timer2_init
	CALL	_timer2_init
	PAGESEL	$
;	.line	148; "LC-meter.c"	OPTION_REG &= ~0b100000;
	BANKSEL	_OPTION_REG
	BCF	_OPTION_REG,5
;	.line	154; "LC-meter.c"	TRISC = 0b10110011;
	MOVLW	0xb3
	MOVWF	_TRISC
;	.line	158; "LC-meter.c"	RC3 = HIGH;
	BANKSEL	_PORTCbits
	BSF	_PORTCbits,3
;	.line	161; "LC-meter.c"	INIT_LED();
	BANKSEL	_TRISC
	BCF	_TRISC,2
;	.line	162; "LC-meter.c"	SET_LED(1);
	BANKSEL	_PORTC
	BCF	_PORTC,2
	BSF	_PORTC,2
;	.line	164; "LC-meter.c"	timer2_init(PRESCALE_1_1 | TIMER2_FLAGS_INTR);
	MOVLW	0x80
	PAGESEL	_timer2_init
	CALL	_timer2_init
	PAGESEL	$
;	.line	171; "LC-meter.c"	lcd_init(1);
	MOVLW	0x01
	PAGESEL	_lcd_init
	CALL	_lcd_init
	PAGESEL	$
;	.line	172; "LC-meter.c"	lcd_begin(2, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x02
	PAGESEL	_lcd_begin
	CALL	_lcd_begin
	PAGESEL	$
;	.line	175; "LC-meter.c"	LC_TRIS();
	BANKSEL	_TRISC
	BSF	_TRISC,4
;	.line	176; "LC-meter.c"	RELAY_TRIS();
	BCF	_TRISC,5
;	.line	178; "LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;	.line	179; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	180; "LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC
	BSF	_PORTC,5
;	.line	181; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	182; "LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;	.line	183; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	184; "LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC
	BSF	_PORTC,5
;	.line	185; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	186; "LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;	.line	189; "LC-meter.c"	ser_init();
	PAGESEL	_ser_init
	CALL	_ser_init
	PAGESEL	$
;	.line	196; "LC-meter.c"	INTCON |= 0xc0; // PEIE = 1; GIE = 1;
	MOVLW	0xc0
	BANKSEL	_INTCON
	IORWF	_INTCON,F
;	.line	202; "LC-meter.c"	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	204; "LC-meter.c"	lcd_puts("LC-meter ");
	MOVLW	high (___str_0 + 0)
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVLW	(___str_0 + 0)
	MOVWF	r0x1045
	MOVLW	0x80
	MOVWF	r0x1046
	MOVF	r0x1045,W
	MOVWF	STK01
	MOVF	r0x1044,W
	MOVWF	STK00
	MOVF	r0x1046,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
;	.line	205; "LC-meter.c"	format_float(&lcd_putch, CCal);
	BANKSEL	_CCal
	MOVF	_CCal,W
	MOVWF	STK04
	MOVF	(_CCal + 1),W
	MOVWF	STK03
	MOVF	(_CCal + 2),W
	MOVWF	STK02
	MOVF	(_CCal + 3),W
	MOVWF	STK01
	MOVLW	low (_lcd_putch+0)
	MOVWF	STK00
	MOVLW	high (_lcd_putch+0)
	PAGESEL	_format_float
	CALL	_format_float
	PAGESEL	$
;	.line	211; "LC-meter.c"	delay10ms(200);
	MOVLW	0xc8
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	214; "LC-meter.c"	calibrate();
	PAGESEL	_calibrate
	CALL	_calibrate
	PAGESEL	$
;	.line	217; "LC-meter.c"	lcd_clear();
	PAGESEL	_lcd_clear
	CALL	_lcd_clear
	PAGESEL	$
_00181_DS_:
;	.line	226; "LC-meter.c"	char new_mode = LC_SELECT;
	BANKSEL	_PORTC
	MOVF	_PORTC,W
	ANDLW	0x10
	BTFSS	STATUS,2
	MOVLW	0x01
	BANKSEL	r0x1045
	MOVWF	r0x1045
	MOVF	r0x1045,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x1044
	MOVF	r0x1044,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x1045
;	.line	228; "LC-meter.c"	if(new_mode != mode) {
	MOVWF	r0x1044
;	.line	230; "LC-meter.c"	ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
	BANKSEL	_mode
	XORWF	_mode,W
	BTFSC	STATUS,2
	GOTO	_00174_DS_
	MOVF	_mode,W
	BTFSC	STATUS,2
	GOTO	_00185_DS_
	MOVLW	(___str_1 + 0)
	BANKSEL	r0x1045
	MOVWF	r0x1045
	MOVLW	high (___str_1 + 0)
	MOVWF	r0x1046
	GOTO	_00186_DS_
_00185_DS_:
	MOVLW	(___str_2 + 0)
	BANKSEL	r0x1045
	MOVWF	r0x1045
	MOVLW	high (___str_2 + 0)
	MOVWF	r0x1046
;;101	MOVF	r0x1046,W
;;99	MOVWF	r0x1047
;;103	MOVF	r0x1045,W
_00186_DS_:
	MOVLW	0x80
	BANKSEL	r0x1049
	MOVWF	r0x1049
;;102	MOVF	r0x1048,W
	MOVF	r0x1045,W
	MOVWF	r0x1048
	MOVWF	STK01
;;100	MOVF	r0x1047,W
	MOVF	r0x1046,W
	MOVWF	STK00
	MOVF	r0x1049,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	231; "LC-meter.c"	ser_puts("\r\n");
	MOVLW	high (___str_3 + 0)
	BANKSEL	r0x1046
	MOVWF	r0x1046
	MOVLW	(___str_3 + 0)
	MOVWF	r0x1045
	MOVLW	0x80
	MOVWF	r0x1048
	MOVF	r0x1045,W
	MOVWF	STK01
	MOVF	r0x1046,W
	MOVWF	STK00
	MOVF	r0x1048,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	233; "LC-meter.c"	mode = new_mode;
	BANKSEL	r0x1044
	MOVF	r0x1044,W
	BANKSEL	_mode
	MOVWF	_mode
_00174_DS_:
;	.line	236; "LC-meter.c"	if(led_cycle >= led_interval)
	BANKSEL	_led_interval
	MOVF	(_led_interval + 1),W
	BANKSEL	_led_cycle
	SUBWF	(_led_cycle + 1),W
	BTFSS	STATUS,2
	GOTO	_00208_DS_
	BANKSEL	_led_interval
	MOVF	_led_interval,W
	BANKSEL	_led_cycle
	SUBWF	_led_cycle,W
_00208_DS_:
	BTFSS	STATUS,0
	GOTO	_00176_DS_
;;genSkipc:3307: created from rifx:0x7ffc41b017a0
;	.line	237; "LC-meter.c"	led_cycle = 0;
	BANKSEL	_led_cycle
	CLRF	_led_cycle
	CLRF	(_led_cycle + 1)
_00176_DS_:
;	.line	239; "LC-meter.c"	if(mode)
	BANKSEL	_mode
	MOVF	_mode,W
	BTFSC	STATUS,2
	GOTO	_00178_DS_
;	.line	240; "LC-meter.c"	measure_capacitance();
	PAGESEL	_measure_capacitance
	CALL	_measure_capacitance
	PAGESEL	$
	GOTO	_00179_DS_
_00178_DS_:
;	.line	242; "LC-meter.c"	measure_inductance();
	PAGESEL	_measure_inductance
	CALL	_measure_inductance
	PAGESEL	$
_00179_DS_:
;	.line	244; "LC-meter.c"	print_indicator(1);
	MOVLW	0x01
	PAGESEL	_print_indicator
	CALL	_print_indicator
	PAGESEL	$
;	.line	245; "LC-meter.c"	delay10ms(30);
	MOVLW	0x1e
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	247; "LC-meter.c"	print_indicator(0);
	MOVLW	0x00
	PAGESEL	_print_indicator
	CALL	_print_indicator
	PAGESEL	$
;	.line	248; "LC-meter.c"	delay10ms(20);
	MOVLW	0x14
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
	GOTO	_00181_DS_
;	.line	250; "LC-meter.c"	}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _delay10ms
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _format_number
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_putch
;   _format_number
;   _ser_puts
;   _delay10ms
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _format_number
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_putch
;   _format_number
;   _ser_puts
;10 compiler assigned registers:
;   r0x103F
;   r0x1040
;   STK00
;   r0x1041
;   r0x1042
;   r0x1043
;   STK01
;   STK04
;   STK03
;   STK02
;; Starting pCode block
S_LC_meter__testloop	code
_testloop:
; 2 exit points
;	.line	259; "LC-meter.c"	delay10ms(10);
	MOVLW	0x0a
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	261; "LC-meter.c"	INTCON &= ~0x80; // GIE = 0;
	BANKSEL	_INTCON
	BCF	_INTCON,7
;	.line	262; "LC-meter.c"	s = seconds;
	BANKSEL	_seconds
	MOVF	_seconds,W
	BANKSEL	r0x103F
	MOVWF	r0x103F
	BANKSEL	_seconds
	MOVF	(_seconds + 1),W
	BANKSEL	r0x1040
	MOVWF	r0x1040
;	.line	263; "LC-meter.c"	INTCON |= 0x80; // GIE = 1;
	BANKSEL	_INTCON
	BSF	_INTCON,7
;	.line	273; "LC-meter.c"	lcd_gotoxy(10, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x0a
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	274; "LC-meter.c"	lcd_puts("      ");
	MOVLW	high (___str_4 + 0)
	BANKSEL	r0x1041
	MOVWF	r0x1041
	MOVLW	(___str_4 + 0)
	MOVWF	r0x1042
	MOVLW	0x80
	MOVWF	r0x1043
	MOVF	r0x1042,W
	MOVWF	STK01
	MOVF	r0x1041,W
	MOVWF	STK00
	MOVF	r0x1043,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
;	.line	275; "LC-meter.c"	lcd_gotoxy(10, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x0a
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	277; "LC-meter.c"	format_number(&lcd_putch, s, 10, 5);
	MOVLW	0x05
	MOVWF	STK04
	MOVLW	0x0a
	MOVWF	STK03
	BANKSEL	r0x103F
	MOVF	r0x103F,W
	MOVWF	STK02
	MOVF	r0x1040,W
	MOVWF	STK01
	MOVLW	low (_lcd_putch+0)
	MOVWF	STK00
	MOVLW	high (_lcd_putch+0)
	PAGESEL	_format_number
	CALL	_format_number
	PAGESEL	$
;	.line	279; "LC-meter.c"	lcd_gotoxy(10, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x0a
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	280; "LC-meter.c"	lcd_puts("      ");
	MOVLW	high (___str_4 + 0)
	BANKSEL	r0x1041
	MOVWF	r0x1041
	MOVLW	(___str_4 + 0)
	MOVWF	r0x1042
	MOVLW	0x80
	MOVWF	r0x1043
	MOVF	r0x1042,W
	MOVWF	STK01
	MOVF	r0x1041,W
	MOVWF	STK00
	MOVF	r0x1043,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
;	.line	281; "LC-meter.c"	lcd_gotoxy(10, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x0a
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	284; "LC-meter.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	285; "LC-meter.c"	lcd_puts("     ");
	MOVLW	high (___str_5 + 0)
	BANKSEL	r0x1041
	MOVWF	r0x1041
	MOVLW	(___str_5 + 0)
	MOVWF	r0x1042
	MOVLW	0x80
	MOVWF	r0x1043
	MOVF	r0x1042,W
	MOVWF	STK01
	MOVF	r0x1041,W
	MOVWF	STK00
	MOVF	r0x1043,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
;	.line	286; "LC-meter.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	287; "LC-meter.c"	lcd_puts("RC4=");
	MOVLW	high (___str_6 + 0)
	BANKSEL	r0x1041
	MOVWF	r0x1041
	MOVLW	(___str_6 + 0)
	MOVWF	r0x1042
	MOVLW	0x80
	MOVWF	r0x1043
	MOVF	r0x1042,W
	MOVWF	STK01
	MOVF	r0x1041,W
	MOVWF	STK00
	MOVF	r0x1043,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
;	.line	290; "LC-meter.c"	lcd_putch(LC_SELECT != 0 ? '1' : '0');
	BANKSEL	_PORTC
	MOVF	_PORTC,W
	ANDLW	0x10
	BTFSS	STATUS,2
	MOVLW	0x01
	BANKSEL	r0x1042
	MOVWF	r0x1042
	MOVF	r0x1042,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x1041
	MOVF	r0x1041,W
	BTFSS	STATUS,2
	GOTO	_00217_DS_
	MOVLW	0x31
	MOVWF	r0x1042
	CLRF	r0x1041
	GOTO	_00218_DS_
_00217_DS_:
	MOVLW	0x30
	BANKSEL	r0x1042
	MOVWF	r0x1042
	CLRF	r0x1041
_00218_DS_:
	BANKSEL	r0x1042
	MOVF	r0x1042,W
	MOVWF	r0x1043
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
;	.line	294; "LC-meter.c"	if(s != prev_s) {
	BANKSEL	_testloop_prev_s_65536_71
	MOVF	_testloop_prev_s_65536_71,W
	BANKSEL	r0x103F
	XORWF	r0x103F,W
	BTFSS	STATUS,2
	GOTO	_00227_DS_
	BANKSEL	_testloop_prev_s_65536_71
	MOVF	(_testloop_prev_s_65536_71 + 1),W
;	.line	296; "LC-meter.c"	format_number(&ser_putch, s, 10, 0);
	BANKSEL	r0x1040
	XORWF	r0x1040,W
	BTFSC	STATUS,2
	GOTO	_00215_DS_
_00227_DS_:
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x0a
	MOVWF	STK03
	BANKSEL	r0x103F
	MOVF	r0x103F,W
	MOVWF	STK02
	MOVF	r0x1040,W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_number
	CALL	_format_number
	PAGESEL	$
;	.line	298; "LC-meter.c"	ser_puts("\r\n");
	MOVLW	high (___str_3 + 0)
	BANKSEL	r0x1041
	MOVWF	r0x1041
	MOVLW	(___str_3 + 0)
	MOVWF	r0x1042
	MOVLW	0x80
	MOVWF	r0x1043
	MOVF	r0x1042,W
	MOVWF	STK01
	MOVF	r0x1041,W
	MOVWF	STK00
	MOVF	r0x1043,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	301; "LC-meter.c"	prev_s = s;
	BANKSEL	r0x103F
	MOVF	r0x103F,W
	BANKSEL	_testloop_prev_s_65536_71
	MOVWF	_testloop_prev_s_65536_71
	BANKSEL	r0x1040
	MOVF	r0x1040,W
	BANKSEL	_testloop_prev_s_65536_71
	MOVWF	(_testloop_prev_s_65536_71 + 1)
_00215_DS_:
;	.line	303; "LC-meter.c"	}
	RETURN	
; exit point of _testloop

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
S_LC_meter__delay10ms	code
_delay10ms:
; 2 exit points
;	.line	68; "LC-meter.c"	}
	RETURN	
; exit point of _delay10ms


;	code size estimation:
;	  567+  227 =   794 instructions ( 2042 byte)

	end
