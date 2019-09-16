;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../LC-meter.c"
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
	extern	___uchar2fs
	extern	___schar2fs
	extern	___uint2fs
	extern	___sint2fs
	extern	___ulong2fs
	extern	___slong2fs
	extern	___fs2uchar
	extern	___fs2schar
	extern	___fs2uint
	extern	___fs2sint
	extern	___fs2ulong
	extern	___fs2slong
	extern	___fsadd
	extern	___fssub
	extern	___fsmul
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsgt
	extern	_cycle_eater
	extern	_delay_ms
	extern	_delay_us
	extern	_Delay100TCYx
	extern	_Delay10KTCYx
	extern	_Delay10TCYx
	extern	_Delay1KTCYx
	extern	_lcd_init
	extern	_lcd_begin
	extern	_lcd_no_autoscroll
	extern	_lcd_autoscroll
	extern	_lcd_right_to_left
	extern	_lcd_left_to_right
	extern	_lcd_scroll_print_right
	extern	_lcd_scroll_print_left
	extern	_lcd_blink
	extern	_lcd_no_blink
	extern	_lcd_cursor
	extern	_lcd_no_cursor
	extern	_lcd_display
	extern	_lcd_no_display
	extern	_lcd_clear
	extern	_lcd_home
	extern	_lcd_print_number
	extern	_lcd_print_float
	extern	_lcd_gotoxy
	extern	_lcd_putch
	extern	_timer0_init
	extern	_timer0_read_ps
	extern	_timer1_init
	extern	_timer2_init
	extern	_uart_putch
	extern	_uart_getch
	extern	_uart_poll
	extern	_uart_init
	extern	_uart_isr
	extern	_uart_enable
	extern	_uart_disable
	extern	_uart_puts
	extern	_uart_puts2
	extern	_calibrate
	extern	_measure_freq
	extern	_measure_capacitance
	extern	_measure_inductance
	extern	_put_str
	extern	_output_putch
	extern	_lcd_puts
	extern	_print_digit
	extern	_print_unit
	extern	_print_reading
	extern	_indicator
	extern	_print_print_float
	extern	_format_number
	extern	_format_xint32
	extern	_format_double
	extern	_loop
	extern	_initialize
	extern	_milliseconds
	extern	_put_number
	extern	_STATUSbits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_INTCONbits
	extern	_PIR1bits
	extern	_PIR2bits
	extern	_T1CONbits
	extern	_T2CONbits
	extern	_SSPCONbits
	extern	_CCP1CONbits
	extern	_RCSTAbits
	extern	_CCP2CONbits
	extern	_ADCON0bits
	extern	_OPTION_REGbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TRISCbits
	extern	_PIE1bits
	extern	_PIE2bits
	extern	_PCONbits
	extern	_SSPCON2bits
	extern	_SSPSTATbits
	extern	_TXSTAbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_ADCON1bits
	extern	_EECON1bits
	extern	_dvar
	extern	_putchar_ptr
	extern	_uart_brg
	extern	_logo_image
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP2CON
	extern	_ADRESH
	extern	_ADCON0
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_SSPCON2
	extern	_PR2
	extern	_SSPADD
	extern	_SSPSTAT
	extern	_TXSTA
	extern	_SPBRG
	extern	_CMCON
	extern	_CVRCON
	extern	_ADRESL
	extern	_ADCON1
	extern	_EEDATA
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_EECON1
	extern	_EECON2
	extern	___sdcc_saved_fsr
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_testloop
	global	_main
	global	_delay10ms
	global	_isr
	global	_bres
	global	_msecpart
	global	_seconds
	global	_msecs
	global	_timer1of
	global	_F1
	global	_F2
	global	_F3
	global	_CCal
	global	_blink

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
_bres	res	2

UD_LC_meter_1	udata
_msecpart	res	2

UD_LC_meter_2	udata
_seconds	res	4

UD_LC_meter_3	udata
_msecs	res	4

UD_LC_meter_4	udata
_timer1of	res	4

UD_LC_meter_5	udata
_F1	res	4

UD_LC_meter_6	udata
_F2	res	4

UD_LC_meter_7	udata
_F3	res	4

UD_LC_meter_8	udata
_CCal	res	4

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_LC_meter_0	udata
r0x1021	res	1
r0x1022	res	1
r0x101F	res	1
r0x101E	res	1
r0x1020	res	1
r0x1018	res	1
r0x1019	res	1
r0x101B	res	1
r0x101A	res	1
r0x101C	res	1
r0x101D	res	1
_testloop_prev_s_65536_82	res	2
_testloop_led_65536_82	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_LC_meter_0	idata
_blink
	db	0x00, 0x00


ID_LC_meter_1	code
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

ID_LC_meter_2	code
___str_1
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'

ID_LC_meter_3	code
___str_2
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

ID_LC_meter_4	code
___str_3
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

ID_LC_meter_5	code
___str_4
	retlw 0x52 ; 'R'
	retlw 0x43 ; 'C'
	retlw 0x34 ; '4'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'
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
;2 compiler assigned registers:
;   r0x1021
;   r0x1022
;; Starting pCode block
;<>Start of new flow, seq=0x3f ancestor = 0x3f
;  from: ; to: 041 040 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=0 
;;	-----------------------------------------
;;	 function isr
;;	-----------------------------------------
;_isr:
_isr:	;Function start
; 0 exit points
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2399:genFunction
;; BANKOPT1 BANKSEL dropped; WSAVE present in all of (null)'s banks
;	.line	75; "../../../LC-meter.c"	INTERRUPT_FN() {
	MOVWF	WSAVE	;id=143,key=000,inCond:10,outCond:1,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2400:genFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
	SWAPF	STATUS,W	;id=145,key=001,inCond:1,outCond:10,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2405:genFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
	CLRF	STATUS	;id=147,key=002,inCond:0,outCond:5,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2406:genFunction
;; BANKOPT1 BANKSEL dropped; SSAVE present in all of (null)'s banks
	MOVWF	SSAVE	;id=149,key=003,inCond:10,outCond:1,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2408:genFunction
;; BANKOPT1 BANKSEL dropped; PCLATH present in all of (null)'s banks
	MOVF	PCLATH,W	;id=151,key=004,inCond:1,outCond:14,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2410:genFunction
;; BANKOPT1 BANKSEL dropped; PCLATH present in all of (null)'s banks
	CLRF	PCLATH	;id=153,key=005,inCond:0,outCond:5,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2411:genFunction
;; BANKOPT1 BANKSEL dropped; PSAVE present in all of (null)'s banks
	MOVWF	PSAVE	;id=155,key=006,inCond:10,outCond:1,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2413:genFunction
;; BANKOPT1 BANKSEL dropped; FSR present in all of (null)'s banks
	MOVF	FSR,W	;id=157,key=007,inCond:1,outCond:14,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2414:genFunction
	BANKSEL	___sdcc_saved_fsr	;id=2792,key=008,inCond:0,outCond:0,flow seq=03f
	MOVWF	___sdcc_saved_fsr	;id=159,key=009,inCond:10,outCond:1,flow seq=03f
;push	psw
;mov	psw,#0x00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_PIR1, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _PIR1   offset=0
;	.line	77; "../../../LC-meter.c"	if(PIR1 & 0b10) {
	BANKSEL	_PIR1	;id=2793,key=00a,inCond:0,outCond:0,flow seq=03f
	MOVF	_PIR1,W	;id=178,key=00b,inCond:1,outCond:14,flow seq=03f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x104A 
	BANKSEL	r0x1021	;id=2794,key=00c,inCond:0,outCond:0,flow seq=03f
	MOVWF	r0x1021	;id=181,key=00d,inCond:10,outCond:1,flow seq=03f,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1021
	BTFSS	r0x1021,1	;id=190,key=00e,inCond:21,outCond:0,flow seq=03f
;<>Start of new flow, seq=0x40 ancestor = 0x3f
;  from: 03f ; to: 070 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=9, label offset 8
	GOTO	_00117_DS_	;id=193,key=000,inCond:0,outCond:0,flow seq=040
;<>Start of new flow, seq=0x41 ancestor = 0x3f
;  from: 03f ; to: 043 042 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;;	576
;; 	line = 614 result AOP_DIR=_bres, size=2, left AOP_DIR=_bres, size=2, right AOP_LIT=0x00, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi = 1	genAddLit  350
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:354:genAddLit
;;	998
;;	1016  _bres   offset=1
;	.line	79; "../../../LC-meter.c"	bres += 256;
	BANKSEL	_bres	;id=2796,key=000,inCond:0,outCond:0,flow seq=041
	INCF	(_bres + 1),F	;id=214,key=001,inCond:1,outCond:5,flow seq=041
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0x1388=5000), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	81; "../../../LC-meter.c"	if(bres >= 5000) {
	MOVLW	0x13	;id=226,key=002,inCond:400,outCond:10,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _bres   offset=1
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	SUBWF	(_bres + 1),W	;id=230,key=003,inCond:11,outCond:1e,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=232,key=004,inCond:25,outCond:0,flow seq=041
;<>Start of new flow, seq=0x42 ancestor = 0x41
;  from: 041 ; to: 044 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=27, label offset 8
	GOTO	_00135_DS_	;id=235,key=000,inCond:0,outCond:0,flow seq=042
;<>Start of new flow, seq=0x43 ancestor = 0x41
;  from: 041 ; to: 044 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x88	;id=237,key=000,inCond:400,outCond:10,flow seq=043
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _bres   offset=0
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	SUBWF	_bres,W	;id=241,key=001,inCond:11,outCond:1e,flow seq=043
;<>Start of new flow, seq=0x44 ancestor = 0x42
;  from: 043 042 ; to: 046 045 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00135_DS_:
	BTFSS	STATUS,0	;id=245,key=000,inCond:23,outCond:0,flow seq=044
;<>Start of new flow, seq=0x45 ancestor = 0x44
;  from: 044 ; to: 06f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=6, label offset 8
	GOTO	_00114_DS_	;id=248,key=000,inCond:0,outCond:0,flow seq=045
;<>Start of new flow, seq=0x46 ancestor = 0x44
;  from: 044 ; to: 048 047 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;;	576
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi is generic	236   genAddLit  400
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:415:genAddLit
;	.line	82; "../../../LC-meter.c"	bres -= 5000;
	MOVLW	0x78	;id=265,key=000,inCond:400,outCond:10,flow seq=046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:416:genAddLit
;;	998
;;	1016  _bres   offset=0
	BANKSEL	_bres	;id=2801,key=001,inCond:0,outCond:0,flow seq=046
	ADDWF	_bres,F	;id=269,key=002,inCond:11,outCond:f,flow seq=046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:417:genAddLit
	MOVLW	0xec	;id=271,key=003,inCond:400,outCond:10,flow seq=046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:418:genAddLit
	BTFSC	STATUS,0	;id=273,key=004,inCond:23,outCond:0,flow seq=046
;<>Start of new flow, seq=0x47 ancestor = 0x46
;  from: 046 ; to: 048 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:419:genAddLit
	MOVLW	0xed	;id=275,key=000,inCond:400,outCond:10,flow seq=047
;<>Start of new flow, seq=0x48 ancestor = 0x46
;  from: 047 046 ; to: 04a 049 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:420:genAddLit
;;	998
;;	1016  _bres   offset=1
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	ADDWF	(_bres + 1),F	;id=279,key=000,inCond:11,outCond:f,flow seq=048
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;;	576
;; 	line = 614 result AOP_DIR=_msecpart, size=2, left AOP_DIR=_msecpart, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _msecpart   offset=0
;	.line	83; "../../../LC-meter.c"	msecpart++;
	BANKSEL	_msecpart	;id=2803,key=001,inCond:0,outCond:0,flow seq=048
	INCF	_msecpart,F	;id=297,key=002,inCond:1,outCond:5,flow seq=048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=299,key=003,inCond:25,outCond:0,flow seq=048
;<>Start of new flow, seq=0x49 ancestor = 0x48
;  from: 048 ; to: 04a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecpart   offset=1
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	INCF	(_msecpart + 1),F	;id=303,key=000,inCond:1,outCond:5,flow seq=049
;<>Start of new flow, seq=0x4a ancestor = 0x48
;  from: 049 048 ; to: 04c 04b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _msecs, size = 4
;;	576
;; 	line = 614 result AOP_DIR=_msecs, size=4, left AOP_DIR=_msecs, size=4, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _msecs   offset=0
;	.line	84; "../../../LC-meter.c"	msecs++;
	BANKSEL	_msecs	;id=2805,key=000,inCond:0,outCond:0,flow seq=04a
	INCF	_msecs,F	;id=319,key=001,inCond:1,outCond:5,flow seq=04a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=321,key=002,inCond:25,outCond:0,flow seq=04a
;<>Start of new flow, seq=0x4b ancestor = 0x4a
;  from: 04a ; to: 04c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecs   offset=1
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	INCF	(_msecs + 1),F	;id=325,key=000,inCond:1,outCond:5,flow seq=04b
;<>Start of new flow, seq=0x4c ancestor = 0x4a
;  from: 04b 04a ; to: 04e 04d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=327,key=000,inCond:25,outCond:0,flow seq=04c
;<>Start of new flow, seq=0x4d ancestor = 0x4c
;  from: 04c ; to: 04e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecs   offset=2
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	INCF	(_msecs + 2),F	;id=331,key=000,inCond:1,outCond:5,flow seq=04d
;<>Start of new flow, seq=0x4e ancestor = 0x4c
;  from: 04d 04c ; to: 050 04f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=333,key=000,inCond:25,outCond:0,flow seq=04e
;<>Start of new flow, seq=0x4f ancestor = 0x4e
;  from: 04e ; to: 050 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecs   offset=3
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	INCF	(_msecs + 3),F	;id=337,key=000,inCond:1,outCond:5,flow seq=04f
;<>Start of new flow, seq=0x50 ancestor = 0x4e
;  from: 04f 04e ; to: 052 051 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	86; "../../../LC-meter.c"	SET_LED((blink > 200));
	BANKSEL	_PORTC	;id=2809,key=000,inCond:0,outCond:0,flow seq=050
	BCF	_PORTC,1	;id=347,key=001,inCond:21,outCond:21,flow seq=050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xC9=201), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x00	;id=358,key=002,inCond:400,outCond:10,flow seq=050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _blink   offset=1
	BANKSEL	_blink	;id=2810,key=003,inCond:0,outCond:0,flow seq=050
	SUBWF	(_blink + 1),W	;id=362,key=004,inCond:11,outCond:1e,flow seq=050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=364,key=005,inCond:25,outCond:0,flow seq=050
;<>Start of new flow, seq=0x51 ancestor = 0x50
;  from: 050 ; to: 053 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=28, label offset 8
	GOTO	_00136_DS_	;id=367,key=000,inCond:0,outCond:0,flow seq=051
;<>Start of new flow, seq=0x52 ancestor = 0x50
;  from: 050 ; to: 053 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0xc9	;id=369,key=000,inCond:400,outCond:10,flow seq=052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _blink   offset=0
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	SUBWF	_blink,W	;id=373,key=001,inCond:11,outCond:1e,flow seq=052
;<>Start of new flow, seq=0x53 ancestor = 0x51
;  from: 052 051 ; to: 055 054 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3529:genCmp
;;	1097 rIdx = r0x104A 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00136_DS_:
	BANKSEL	r0x1021	;id=2813,key=000,inCond:0,outCond:0,flow seq=053
	CLRF	r0x1021	;id=377,key=001,inCond:0,outCond:5,flow seq=053,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3538:genCmp
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1021
	RLF	r0x1021,F	;id=380,key=002,inCond:3,outCond:3,flow seq=053,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x104B, size=1, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1021
	MOVF	r0x1021,W	;id=390,key=003,inCond:1,outCond:14,flow seq=053,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=392,key=004,inCond:400,outCond:10,flow seq=053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=394,key=005,inCond:25,outCond:0,flow seq=053
;<>Start of new flow, seq=0x54 ancestor = 0x53
;  from: 053 ; to: 055 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=396,key=000,inCond:400,outCond:10,flow seq=054
;<>Start of new flow, seq=0x55 ancestor = 0x53
;  from: 054 053 ; to: 057 056 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1021
	MOVWF	r0x1022	;id=399,key=000,inCond:10,outCond:1,flow seq=055,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104B, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1021
	MOVF	r0x1022,W	;id=409,key=001,inCond:1,outCond:14,flow seq=055,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=411,key=002,inCond:400,outCond:10,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=413,key=003,inCond:25,outCond:0,flow seq=055
;<>Start of new flow, seq=0x56 ancestor = 0x55
;  from: 055 ; to: 057 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=415,key=000,inCond:400,outCond:10,flow seq=056
;<>Start of new flow, seq=0x57 ancestor = 0x55
;  from: 056 055 ; to: 059 058 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1021
	MOVWF	r0x1021	;id=2588,key=000,inCond:10,outCond:1,flow seq=057,rIdx=r0x104A
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1021
	MOVWF	r0x1022	;id=431,key=001,inCond:10,outCond:1,flow seq=057,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5232:shiftLeft_Left2ResultLit
	BCF	STATUS,0	;id=438,key=002,inCond:23,outCond:23,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5241:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1021
	RLF	r0x1022,W	;id=441,key=003,inCond:3,outCond:12,flow seq=057,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5242:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1021
	MOVWF	r0x1021	;id=444,key=004,inCond:10,outCond:1,flow seq=057,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104B, size=1, left -=-, size=0, right AOP_DIR=_PORTC, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _PORTC   offset=0
	BANKSEL	_PORTC	;id=2822,key=005,inCond:0,outCond:0,flow seq=057
	MOVF	_PORTC,W	;id=456,key=006,inCond:1,outCond:14,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x104B 
	BANKSEL	r0x1022	;id=2823,key=007,inCond:0,outCond:0,flow seq=057
	MOVWF	r0x1022	;id=2589,key=008,inCond:10,outCond:1,flow seq=057,rIdx=r0x104B
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1022
	IORWF	r0x1021,W	;id=2590,key=009,inCond:11,outCond:14,flow seq=057,rIdx=r0x104A
	BANKSEL	_PORTC	;id=2825,key=00a,inCond:0,outCond:0,flow seq=057
	MOVWF	_PORTC	;id=477,key=00b,inCond:10,outCond:1,flow seq=057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0x190=400), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	87; "../../../LC-meter.c"	if(blink >= 400)
	MOVLW	0x01	;id=487,key=00c,inCond:400,outCond:10,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _blink   offset=1
	BANKSEL	_blink	;id=2826,key=00d,inCond:0,outCond:0,flow seq=057
	SUBWF	(_blink + 1),W	;id=491,key=00e,inCond:11,outCond:1e,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=493,key=00f,inCond:25,outCond:0,flow seq=057
;<>Start of new flow, seq=0x58 ancestor = 0x57
;  from: 057 ; to: 05a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=29, label offset 8
	GOTO	_00137_DS_	;id=496,key=000,inCond:0,outCond:0,flow seq=058
;<>Start of new flow, seq=0x59 ancestor = 0x57
;  from: 057 ; to: 05a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x90	;id=498,key=000,inCond:400,outCond:10,flow seq=059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _blink   offset=0
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	SUBWF	_blink,W	;id=502,key=001,inCond:11,outCond:1e,flow seq=059
;<>Start of new flow, seq=0x5a ancestor = 0x58
;  from: 059 058 ; to: 05c 05b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00137_DS_:
	BTFSS	STATUS,0	;id=506,key=000,inCond:23,outCond:0,flow seq=05a
;<>Start of new flow, seq=0x5b ancestor = 0x5a
;  from: 05a ; to: 05f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=2, label offset 8
	GOTO	_00110_DS_	;id=509,key=000,inCond:0,outCond:0,flow seq=05b
;<>Start of new flow, seq=0x5c ancestor = 0x5a
;  from: 05a ; to: 05e 05d 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;;	576
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi is generic	254   genAddLit  400
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:415:genAddLit
;	.line	88; "../../../LC-meter.c"	blink -= 400;
	MOVLW	0x70	;id=526,key=000,inCond:400,outCond:10,flow seq=05c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:416:genAddLit
;;	998
;;	1016  _blink   offset=0
	BANKSEL	_blink	;id=2830,key=001,inCond:0,outCond:0,flow seq=05c
	ADDWF	_blink,F	;id=530,key=002,inCond:11,outCond:f,flow seq=05c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:417:genAddLit
	MOVLW	0xfe	;id=532,key=003,inCond:400,outCond:10,flow seq=05c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:418:genAddLit
	BTFSC	STATUS,0	;id=534,key=004,inCond:23,outCond:0,flow seq=05c
;<>Start of new flow, seq=0x5d ancestor = 0x5c
;  from: 05c ; to: 05e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:419:genAddLit
	MOVLW	0xff	;id=536,key=000,inCond:400,outCond:10,flow seq=05d
;<>Start of new flow, seq=0x5e ancestor = 0x5c
;  from: 05d 05c ; to: 05f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:420:genAddLit
;;	998
;;	1016  _blink   offset=1
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	ADDWF	(_blink + 1),F	;id=540,key=000,inCond:11,outCond:f,flow seq=05e
;<>Start of new flow, seq=0x5f ancestor = 0x5b
;  from: 05e 05b ; to: 061 060 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00110_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;; 	line = 614 result AOP_DIR=_blink, size=2, left AOP_DIR=_blink, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _blink   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00110_DS_:
;	.line	89; "../../../LC-meter.c"	++blink;
	BANKSEL	_blink	;id=2833,key=000,inCond:0,outCond:0,flow seq=05f
	INCF	_blink,F	;id=562,key=001,inCond:1,outCond:5,flow seq=05f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=564,key=002,inCond:25,outCond:0,flow seq=05f
;<>Start of new flow, seq=0x60 ancestor = 0x5f
;  from: 05f ; to: 061 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _blink   offset=1
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	INCF	(_blink + 1),F	;id=568,key=000,inCond:1,outCond:5,flow seq=060
;<>Start of new flow, seq=0x61 ancestor = 0x5f
;  from: 060 05f ; to: 063 062 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0x3E8=1000), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	92; "../../../LC-meter.c"	if(msecpart >= 1000) {
	MOVLW	0x03	;id=578,key=000,inCond:400,outCond:10,flow seq=061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _msecpart   offset=1
	BANKSEL	_msecpart	;id=2835,key=001,inCond:0,outCond:0,flow seq=061
	SUBWF	(_msecpart + 1),W	;id=582,key=002,inCond:11,outCond:1e,flow seq=061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=584,key=003,inCond:25,outCond:0,flow seq=061
;<>Start of new flow, seq=0x62 ancestor = 0x61
;  from: 061 ; to: 064 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=30, label offset 8
	GOTO	_00138_DS_	;id=587,key=000,inCond:0,outCond:0,flow seq=062
;<>Start of new flow, seq=0x63 ancestor = 0x61
;  from: 061 ; to: 064 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0xe8	;id=589,key=000,inCond:400,outCond:10,flow seq=063
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _msecpart   offset=0
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	SUBWF	_msecpart,W	;id=593,key=001,inCond:11,outCond:1e,flow seq=063
;<>Start of new flow, seq=0x64 ancestor = 0x62
;  from: 063 062 ; to: 066 065 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00138_DS_:
	BTFSS	STATUS,0	;id=597,key=000,inCond:23,outCond:0,flow seq=064
;<>Start of new flow, seq=0x65 ancestor = 0x64
;  from: 064 ; to: 06f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=6, label offset 8
	GOTO	_00114_DS_	;id=600,key=000,inCond:0,outCond:0,flow seq=065
;<>Start of new flow, seq=0x66 ancestor = 0x64
;  from: 064 ; to: 068 067 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _seconds, size = 4
;;	576
;; 	line = 614 result AOP_DIR=_seconds, size=4, left AOP_DIR=_seconds, size=4, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _seconds   offset=0
;	.line	94; "../../../LC-meter.c"	seconds++;
	BANKSEL	_seconds	;id=2839,key=000,inCond:0,outCond:0,flow seq=066
	INCF	_seconds,F	;id=618,key=001,inCond:1,outCond:5,flow seq=066
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=620,key=002,inCond:25,outCond:0,flow seq=066
;<>Start of new flow, seq=0x67 ancestor = 0x66
;  from: 066 ; to: 068 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _seconds   offset=1
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	INCF	(_seconds + 1),F	;id=624,key=000,inCond:1,outCond:5,flow seq=067
;<>Start of new flow, seq=0x68 ancestor = 0x66
;  from: 067 066 ; to: 06a 069 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=626,key=000,inCond:25,outCond:0,flow seq=068
;<>Start of new flow, seq=0x69 ancestor = 0x68
;  from: 068 ; to: 06a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _seconds   offset=2
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	INCF	(_seconds + 2),F	;id=630,key=000,inCond:1,outCond:5,flow seq=069
;<>Start of new flow, seq=0x6a ancestor = 0x68
;  from: 069 068 ; to: 06c 06b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=632,key=000,inCond:25,outCond:0,flow seq=06a
;<>Start of new flow, seq=0x6b ancestor = 0x6a
;  from: 06a ; to: 06c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _seconds   offset=3
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	INCF	(_seconds + 3),F	;id=636,key=000,inCond:1,outCond:5,flow seq=06b
;<>Start of new flow, seq=0x6c ancestor = 0x6a
;  from: 06b 06a ; to: 06e 06d 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;;	576
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi is generic	252   genAddLit  400
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:415:genAddLit
;	.line	95; "../../../LC-meter.c"	msecpart -= 1000;
	MOVLW	0x18	;id=651,key=000,inCond:400,outCond:10,flow seq=06c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:416:genAddLit
;;	998
;;	1016  _msecpart   offset=0
	BANKSEL	_msecpart	;id=2843,key=001,inCond:0,outCond:0,flow seq=06c
	ADDWF	_msecpart,F	;id=655,key=002,inCond:11,outCond:f,flow seq=06c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:417:genAddLit
	MOVLW	0xfc	;id=657,key=003,inCond:400,outCond:10,flow seq=06c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:418:genAddLit
	BTFSC	STATUS,0	;id=659,key=004,inCond:23,outCond:0,flow seq=06c
;<>Start of new flow, seq=0x6d ancestor = 0x6c
;  from: 06c ; to: 06e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:419:genAddLit
	MOVLW	0xfd	;id=661,key=000,inCond:400,outCond:10,flow seq=06d
;<>Start of new flow, seq=0x6e ancestor = 0x6c
;  from: 06d 06c ; to: 06f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:420:genAddLit
;;	998
;;	1016  _msecpart   offset=1
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	ADDWF	(_msecpart + 1),F	;id=665,key=000,inCond:11,outCond:f,flow seq=06e
;<>Start of new flow, seq=0x6f ancestor = 0x45
;  from: 06e 065 045 ; to: 070 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
;	.line	99; "../../../LC-meter.c"	PIR1 &= ~0b10; // TMR2IF = 0
	BANKSEL	_PIR1	;id=2846,key=000,inCond:0,outCond:0,flow seq=06f
	BCF	_PIR1,1	;id=682,key=001,inCond:21,outCond:21,flow seq=06f
;<>Start of new flow, seq=0x70 ancestor = 0x40
;  from: 06f 040 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00117_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;pop	psw
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2614:genEndFunction
;; BANKOPT3 drop assumptions: PCI with label or call found
_00117_DS_:
;	.line	107; "../../../LC-meter.c"	}
	BANKSEL	___sdcc_saved_fsr	;id=2848,key=000,inCond:0,outCond:0,flow seq=070
	MOVF	___sdcc_saved_fsr,W	;id=694,key=001,inCond:1,outCond:14,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2615:genEndFunction
	BANKSEL	FSR	;id=2849,key=002,inCond:0,outCond:0,flow seq=070
	MOVWF	FSR	;id=696,key=003,inCond:10,outCond:1,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2617:genEndFunction
;; BANKOPT1 BANKSEL dropped; PSAVE present in all of FSR's banks
	MOVF	PSAVE,W	;id=698,key=004,inCond:1,outCond:14,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2618:genEndFunction
;; BANKOPT1 BANKSEL dropped; PCLATH present in all of FSR's banks
	MOVWF	PCLATH	;id=700,key=005,inCond:10,outCond:1,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2619:genEndFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	CLRF	STATUS	;id=702,key=006,inCond:0,outCond:5,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2621:genEndFunction
;; BANKOPT1 BANKSEL dropped; SSAVE present in all of FSR's banks
	SWAPF	SSAVE,W	;id=704,key=007,inCond:1,outCond:10,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2622:genEndFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	MOVWF	STATUS	;id=706,key=008,inCond:10,outCond:1,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2623:genEndFunction
;; BANKOPT1 BANKSEL dropped; WSAVE present in all of FSR's banks
	SWAPF	WSAVE,F	;id=708,key=009,inCond:1,outCond:1,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2624:genEndFunction
;; BANKOPT1 BANKSEL dropped; WSAVE present in all of FSR's banks
	SWAPF	WSAVE,W	;id=710,key=00a,inCond:1,outCond:10,flow seq=070
;; BANKOPT3 drop assumptions: PCI with label or call found
END_OF_INTERRUPT:
	RETFIE		;id=712,key=00b,inCond:0,outCond:e,flow seq=070
;<>Start of new flow, seq=0x71
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

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
;   _lcd_init
;   _lcd_begin
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _uart_init
;   _lcd_gotoxy
;   _lcd_puts
;   _format_double
;   _delay10ms
;   _calibrate
;   _lcd_clear
;   _uart_puts
;   _measure_capacitance
;   _measure_inductance
;   _indicator
;   _delay10ms
;   _indicator
;   _delay10ms
;   _timer0_init
;   _timer2_init
;   _lcd_init
;   _lcd_begin
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _uart_init
;   _lcd_gotoxy
;   _lcd_puts
;   _format_double
;   _delay10ms
;   _calibrate
;   _lcd_clear
;   _uart_puts
;   _measure_capacitance
;   _measure_inductance
;   _indicator
;   _delay10ms
;   _indicator
;   _delay10ms
;6 compiler assigned registers:
;   STK00
;   r0x101E
;   r0x101F
;   r0x1020
;   STK01
;   STK02
;; Starting pCode block
;<>Start of new flow, seq=0x1f ancestor = 0x1f
;  from: ; to: 020 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=8previous max_key=30 
;;	-----------------------------------------
;;	 function main
;;	-----------------------------------------
;_main:
S_LC_meter__main	code
_main:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _seconds, size = 4
;; 	line = 7046 result AOP_DIR=_seconds, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=0
;	.line	112; "../../../LC-meter.c"	bres = msecpart = msecs = seconds = 0;
	BANKSEL	_seconds	;id=2699,key=000,inCond:0,outCond:0,flow seq=01f
	CLRF	_seconds	;id=738,key=001,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=1
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	CLRF	(_seconds + 1)	;id=743,key=002,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=2
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	CLRF	(_seconds + 2)	;id=748,key=003,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=3
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	CLRF	(_seconds + 3)	;id=753,key=004,inCond:0,outCond:5,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _msecs, size = 4
;; 	line = 7046 result AOP_DIR=_msecs, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=0
	BANKSEL	_msecs	;id=2703,key=005,inCond:0,outCond:0,flow seq=01f
	CLRF	_msecs	;id=764,key=006,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=1
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	CLRF	(_msecs + 1)	;id=769,key=007,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=2
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	CLRF	(_msecs + 2)	;id=774,key=008,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=3
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	CLRF	(_msecs + 3)	;id=779,key=009,inCond:0,outCond:5,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;; 	line = 7046 result AOP_DIR=_msecpart, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecpart   offset=0
	BANKSEL	_msecpart	;id=2707,key=00a,inCond:0,outCond:0,flow seq=01f
	CLRF	_msecpart	;id=790,key=00b,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecpart   offset=1
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	CLRF	(_msecpart + 1)	;id=795,key=00c,inCond:0,outCond:5,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;; 	line = 7046 result AOP_DIR=_bres, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _bres   offset=0
	BANKSEL	_bres	;id=2709,key=00d,inCond:0,outCond:0,flow seq=01f
	CLRF	_bres	;id=806,key=00e,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _bres   offset=1
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	CLRF	(_bres + 1)	;id=811,key=00f,inCond:0,outCond:5,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;; 	line = 7046 result AOP_DIR=_CCal, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _CCal   offset=0
;	.line	114; "../../../LC-meter.c"	CCal = C_CAL;
	BANKSEL	_CCal	;id=2711,key=010,inCond:0,outCond:0,flow seq=01f
	CLRF	_CCal	;id=823,key=011,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _CCal   offset=1
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	CLRF	(_CCal + 1)	;id=828,key=012,inCond:0,outCond:5,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x7a	;id=831,key=013,inCond:400,outCond:10,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _CCal   offset=2
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVWF	(_CCal + 2)	;id=835,key=014,inCond:10,outCond:1,flow seq=01f
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x44	;id=838,key=015,inCond:400,outCond:10,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _CCal   offset=3
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVWF	(_CCal + 3)	;id=842,key=016,inCond:10,outCond:1,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _CMCON, size = 1
;; 	line = 7046 result AOP_DIR=_CMCON, size=1, left -=-, size=0, right AOP_LIT=0x05, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	121; "../../../LC-meter.c"	CMCON = 0b00000101;
	MOVLW	0x05	;id=852,key=017,inCond:400,outCond:10,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _CMCON   offset=0
	BANKSEL	_CMCON	;id=2715,key=018,inCond:0,outCond:0,flow seq=01f
	MOVWF	_CMCON	;id=856,key=019,inCond:10,outCond:1,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _TRISA, size = 1
;; 	line = 7046 result AOP_DIR=_TRISA, size=1, left -=-, size=0, right AOP_LIT=0xcf, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	123; "../../../LC-meter.c"	TRISA = 0b11001111;
	MOVLW	0xcf	;id=866,key=01a,inCond:400,outCond:10,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _TRISA   offset=0
;; BANKOPT2 BANKSEL dropped; _TRISA present in same bank as _CMCON
	MOVWF	_TRISA	;id=870,key=01b,inCond:10,outCond:1,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	126; "../../../LC-meter.c"	timer0_init(PRESCALE_1_16 | TIMER0_FLAGS_EXTCLK);
	MOVLW	0x44	;id=881,key=01c,inCond:400,outCond:10,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_timer0_init	;id=883,key=01d,inCond:0,outCond:0,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_timer0_init	;id=885,key=01e,inCond:10,outCond:1e,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1f
;  from: 01f ; to: 021 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=887,key=000,inCond:0,outCond:0,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	144; "../../../LC-meter.c"	OPTION_REG &= ~0b100000;
	BANKSEL	_OPTION_REG	;id=2718,key=001,inCond:0,outCond:0,flow seq=020
	BCF	_OPTION_REG,5	;id=899,key=002,inCond:21,outCond:21,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _OPTION_REG
;	.line	148; "../../../LC-meter.c"	INIT_LED();
	BCF	_TRISC,1	;id=909,key=003,inCond:21,outCond:21,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	149; "../../../LC-meter.c"	SET_LED(1);
	BANKSEL	_PORTC	;id=2720,key=004,inCond:0,outCond:0,flow seq=020
	BCF	_PORTC,1	;id=919,key=005,inCond:21,outCond:21,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4272 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; _PORTC present in same bank as _PORTC
	BSF	_PORTC,1	;id=929,key=006,inCond:21,outCond:21,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _SSPCON, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_SSPCON, size=1, left AOP_DIR=_SSPCON, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _SSPCON present in same bank as _PORTC
;	.line	154; "../../../LC-meter.c"	SSPCON &= ~0b100;
	BCF	_SSPCON,2	;id=939,key=007,inCond:21,outCond:21,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	160; "../../../LC-meter.c"	timer2_init(PRESCALE_1_1 | TIMER2_FLAGS_INTR);
	MOVLW	0x80	;id=950,key=008,inCond:400,outCond:10,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_timer2_init	;id=952,key=009,inCond:0,outCond:0,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_timer2_init	;id=954,key=00a,inCond:10,outCond:1e,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 022 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=956,key=000,inCond:0,outCond:0,flow seq=021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xb5, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	165; "../../../LC-meter.c"	TRISC &= 0b10110101;
	MOVLW	0xb5	;id=967,key=001,inCond:400,outCond:10,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _TRISC   offset=0
	BANKSEL	_TRISC	;id=2724,key=002,inCond:0,outCond:0,flow seq=021
	ANDWF	_TRISC,F	;id=971,key=003,inCond:11,outCond:5,flow seq=021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	177; "../../../LC-meter.c"	lcd_init(true);
	MOVLW	0x01	;id=982,key=004,inCond:400,outCond:10,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_init	;id=984,key=005,inCond:0,outCond:0,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_init	;id=986,key=006,inCond:10,outCond:1e,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x21
;  from: 021 ; to: 023 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=988,key=000,inCond:0,outCond:0,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	178; "../../../LC-meter.c"	lcd_begin(2, 1);
	MOVLW	0x01	;id=1002,key=001,inCond:400,outCond:10,flow seq=022
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=1006,key=002,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x02	;id=1009,key=003,inCond:400,outCond:10,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_begin	;id=1011,key=004,inCond:0,outCond:0,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_begin	;id=1013,key=005,inCond:10,outCond:1e,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 024 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1015,key=000,inCond:0,outCond:0,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x10, size=1
;; 	line = 4272 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x10, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	181; "../../../LC-meter.c"	LC_TRIS();
	BANKSEL	_TRISC	;id=2728,key=001,inCond:0,outCond:0,flow seq=023
	BSF	_TRISC,4	;id=1028,key=002,inCond:21,outCond:21,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _TRISC
;	.line	182; "../../../LC-meter.c"	RELAY_TRIS();
	BCF	_TRISC,5	;id=1038,key=003,inCond:21,outCond:21,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	184; "../../../LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=2730,key=004,inCond:0,outCond:0,flow seq=023
	BCF	_PORTC,5	;id=1048,key=005,inCond:21,outCond:21,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	185; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1059,key=006,inCond:400,outCond:10,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1061,key=007,inCond:0,outCond:0,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1063,key=008,inCond:10,outCond:1e,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x23
;  from: 023 ; to: 025 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1065,key=000,inCond:0,outCond:0,flow seq=024
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	186; "../../../LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC	;id=2732,key=001,inCond:0,outCond:0,flow seq=024
	BSF	_PORTC,5	;id=1078,key=002,inCond:21,outCond:21,flow seq=024
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	187; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1089,key=003,inCond:400,outCond:10,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1091,key=004,inCond:0,outCond:0,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1093,key=005,inCond:10,outCond:1e,flow seq=024
;<>Start of new flow, seq=0x25 ancestor = 0x24
;  from: 024 ; to: 026 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1095,key=000,inCond:0,outCond:0,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	188; "../../../LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=2734,key=001,inCond:0,outCond:0,flow seq=025
	BCF	_PORTC,5	;id=1107,key=002,inCond:21,outCond:21,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	189; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1118,key=003,inCond:400,outCond:10,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1120,key=004,inCond:0,outCond:0,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1122,key=005,inCond:10,outCond:1e,flow seq=025
;<>Start of new flow, seq=0x26 ancestor = 0x25
;  from: 025 ; to: 027 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1124,key=000,inCond:0,outCond:0,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	190; "../../../LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC	;id=2736,key=001,inCond:0,outCond:0,flow seq=026
	BSF	_PORTC,5	;id=1137,key=002,inCond:21,outCond:21,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	191; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1148,key=003,inCond:400,outCond:10,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1150,key=004,inCond:0,outCond:0,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1152,key=005,inCond:10,outCond:1e,flow seq=026
;<>Start of new flow, seq=0x27 ancestor = 0x26
;  from: 026 ; to: 028 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1154,key=000,inCond:0,outCond:0,flow seq=027
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	192; "../../../LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=2738,key=001,inCond:0,outCond:0,flow seq=027
	BCF	_PORTC,5	;id=1166,key=002,inCond:21,outCond:21,flow seq=027
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	198; "../../../LC-meter.c"	uart_init();
	PAGESEL	_uart_init	;id=1174,key=003,inCond:0,outCond:0,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_init	;id=1176,key=004,inCond:10,outCond:1e,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 027 ; to: 029 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1178,key=000,inCond:0,outCond:0,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;; 	line = 4246 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; 	line = 4272 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4428:genOr
;	.line	202; "../../../LC-meter.c"	INTCON |= 0xc0; // PEIE = 1; GIE = 1;
	MOVLW	0xc0	;id=1190,key=001,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4430:genOr
;;	998
;;	1012  _INTCON   offset=0 - had to alloc by reg name
	BANKSEL	_INTCON	;id=2740,key=002,inCond:0,outCond:0,flow seq=028
	IORWF	_INTCON,F	;id=1194,key=003,inCond:11,outCond:5,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	342 size = 2, name =_lcd_putch
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_putch
;; 	line = 7046 result AOP_DIR=_putchar_ptr, size=2, left -=-, size=0, right AOP_PCODE=_lcd_putch, size=2
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	205; "../../../LC-meter.c"	putchar_ptr = &lcd_putch;
	MOVLW	low (_lcd_putch+0)	;id=1209,key=004,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=2741,key=005,inCond:0,outCond:0,flow seq=028
	MOVWF	_putchar_ptr	;id=1213,key=006,inCond:10,outCond:1,flow seq=028
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	high (_lcd_putch+0)	;id=1217,key=007,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT2 BANKSEL dropped; _putchar_ptr present in same bank as _putchar_ptr
	MOVWF	(_putchar_ptr + 1)	;id=1221,key=008,inCond:10,outCond:1,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	212; "../../../LC-meter.c"	lcd_gotoxy(0, 0);
	MOVLW	0x00	;id=1233,key=009,inCond:400,outCond:10,flow seq=028
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _putchar_ptr's banks
	MOVWF	STK00	;id=1237,key=00a,inCond:10,outCond:1,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1240,key=00b,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=1242,key=00c,inCond:0,outCond:0,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=1244,key=00d,inCond:10,outCond:1e,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x28
;  from: 028 ; to: 02a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1246,key=000,inCond:0,outCond:0,flow seq=029
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_0, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_0
;; 	line = 7238 result AOP_REG=r0x104F, size=3, left -=-, size=0, right AOP_PCODE=___str_0, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	214; "../../../LC-meter.c"	lcd_puts("LC-meter ");
	MOVLW	high (___str_0 + 0)	;id=1264,key=001,inCond:400,outCond:10,flow seq=029
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
	BANKSEL	r0x101E	;id=2745,key=002,inCond:0,outCond:0,flow seq=029
	MOVWF	r0x101E	;id=1267,key=003,inCond:10,outCond:1,flow seq=029,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_0 + 0)	;id=1270,key=004,inCond:400,outCond:10,flow seq=029
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=1273,key=005,inCond:10,outCond:1,flow seq=029,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1275,key=006,inCond:400,outCond:10,flow seq=029
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x101E
	MOVWF	r0x1020	;id=1278,key=007,inCond:10,outCond:1,flow seq=029,rIdx=r0x1051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVF	r0x101F,W	;id=1292,key=008,inCond:1,outCond:14,flow seq=029,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVWF	STK01	;id=1296,key=009,inCond:10,outCond:1,flow seq=029
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101E
	MOVF	r0x101E,W	;id=1301,key=00a,inCond:1,outCond:14,flow seq=029,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVWF	STK00	;id=1305,key=00b,inCond:10,outCond:1,flow seq=029
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x101E
	MOVF	r0x1020,W	;id=1310,key=00c,inCond:1,outCond:14,flow seq=029,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=1312,key=00d,inCond:0,outCond:0,flow seq=029
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=1314,key=00e,inCond:10,outCond:1e,flow seq=029
;<>Start of new flow, seq=0x2a ancestor = 0x29
;  from: 029 ; to: 02b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1316,key=000,inCond:0,outCond:0,flow seq=02a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=0
;	.line	215; "../../../LC-meter.c"	format_double(/*&lcd_putch,*/ CCal);
	BANKSEL	_CCal	;id=2754,key=001,inCond:0,outCond:0,flow seq=02a
	MOVF	_CCal,W	;id=1336,key=002,inCond:1,outCond:14,flow seq=02a
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _CCal's banks
	MOVWF	STK02	;id=1340,key=003,inCond:10,outCond:1,flow seq=02a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=1
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 1),W	;id=1346,key=004,inCond:1,outCond:14,flow seq=02a
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _CCal's banks
	MOVWF	STK01	;id=1350,key=005,inCond:10,outCond:1,flow seq=02a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=2
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 2),W	;id=1356,key=006,inCond:1,outCond:14,flow seq=02a
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _CCal's banks
	MOVWF	STK00	;id=1360,key=007,inCond:10,outCond:1,flow seq=02a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=3
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 3),W	;id=1366,key=008,inCond:1,outCond:14,flow seq=02a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_format_double	;id=1368,key=009,inCond:0,outCond:0,flow seq=02a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_format_double	;id=1370,key=00a,inCond:10,outCond:1e,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x2a
;  from: 02a ; to: 02c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1372,key=000,inCond:0,outCond:0,flow seq=02b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	221; "../../../LC-meter.c"	delay10ms(200);
	MOVLW	0xc8	;id=1385,key=001,inCond:400,outCond:10,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1387,key=002,inCond:0,outCond:0,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1389,key=003,inCond:10,outCond:1e,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2b
;  from: 02b ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1391,key=000,inCond:0,outCond:0,flow seq=02c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	224; "../../../LC-meter.c"	calibrate();
	PAGESEL	_calibrate	;id=1401,key=001,inCond:0,outCond:0,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_calibrate	;id=1403,key=002,inCond:10,outCond:1e,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2c
;  from: 02c ; to: 02e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1405,key=000,inCond:0,outCond:0,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	226; "../../../LC-meter.c"	lcd_clear();
	PAGESEL	_lcd_clear	;id=1415,key=001,inCond:0,outCond:0,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_clear	;id=1417,key=002,inCond:10,outCond:1e,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 02f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1419,key=000,inCond:0,outCond:0,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2e
;  from: 03a 02e ; to: 030 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00147_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_1, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_1
;; 	line = 7238 result AOP_REG=r0x104F, size=3, left -=-, size=0, right AOP_PCODE=___str_1, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00147_DS_:
;	.line	237; "../../../LC-meter.c"	uart_puts("...\r\n");
	MOVLW	high (___str_1 + 0)	;id=1442,key=000,inCond:400,outCond:10,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
	BANKSEL	r0x101E	;id=2766,key=001,inCond:0,outCond:0,flow seq=02f
	MOVWF	r0x101E	;id=1445,key=002,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_1 + 0)	;id=1448,key=003,inCond:400,outCond:10,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=1451,key=004,inCond:10,outCond:1,flow seq=02f,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1453,key=005,inCond:400,outCond:10,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x101E
	MOVWF	r0x1020	;id=1456,key=006,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVF	r0x101F,W	;id=1470,key=007,inCond:1,outCond:14,flow seq=02f,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVWF	STK01	;id=1474,key=008,inCond:10,outCond:1,flow seq=02f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101E
	MOVF	r0x101E,W	;id=1479,key=009,inCond:1,outCond:14,flow seq=02f,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVWF	STK00	;id=1483,key=00a,inCond:10,outCond:1,flow seq=02f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x101E
	MOVF	r0x1020,W	;id=1488,key=00b,inCond:1,outCond:14,flow seq=02f,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_uart_puts	;id=1490,key=00c,inCond:0,outCond:0,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_puts	;id=1492,key=00d,inCond:10,outCond:1e,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2f
;  from: 02f ; to: 032 031 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1494,key=000,inCond:0,outCond:0,flow seq=030
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x10, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;	.line	238; "../../../LC-meter.c"	if(PORTC & (1 << 4))
	BANKSEL	_PORTC	;id=2775,key=001,inCond:0,outCond:0,flow seq=030
	BTFSS	_PORTC,4	;id=1507,key=002,inCond:21,outCond:0,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x30
;  from: 030 ; to: 034 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=2, label offset 42
	GOTO	_00144_DS_	;id=1510,key=000,inCond:0,outCond:0,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x30
;  from: 030 ; to: 033 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	239; "../../../LC-meter.c"	measure_capacitance();
	PAGESEL	_measure_capacitance	;id=1519,key=000,inCond:0,outCond:0,flow seq=032
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_capacitance	;id=1521,key=001,inCond:10,outCond:1e,flow seq=032
;<>Start of new flow, seq=0x33 ancestor = 0x32
;  from: 032 ; to: 036 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1523,key=000,inCond:0,outCond:0,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 42
	GOTO	_00145_DS_	;id=1530,key=001,inCond:0,outCond:0,flow seq=033
;<>Start of new flow, seq=0x34 ancestor = 0x31
;  from: 031 ; to: 035 
;goto	_00145_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00144_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
_00144_DS_:
;	.line	241; "../../../LC-meter.c"	measure_inductance();
	PAGESEL	_measure_inductance	;id=1544,key=000,inCond:0,outCond:0,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_inductance	;id=1546,key=001,inCond:10,outCond:1e,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x34
;  from: 034 ; to: 036 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1548,key=000,inCond:0,outCond:0,flow seq=035
;<>Start of new flow, seq=0x36 ancestor = 0x33
;  from: 035 033 ; to: 037 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00145_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00145_DS_:
;	.line	243; "../../../LC-meter.c"	indicator(1);
	MOVLW	0x01	;id=1566,key=000,inCond:400,outCond:10,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_indicator	;id=1568,key=001,inCond:0,outCond:0,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_indicator	;id=1570,key=002,inCond:10,outCond:1e,flow seq=036
;<>Start of new flow, seq=0x37 ancestor = 0x36
;  from: 036 ; to: 038 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1572,key=000,inCond:0,outCond:0,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	244; "../../../LC-meter.c"	delay10ms(30);
	MOVLW	0x1e	;id=1585,key=001,inCond:400,outCond:10,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1587,key=002,inCond:0,outCond:0,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1589,key=003,inCond:10,outCond:1e,flow seq=037
;<>Start of new flow, seq=0x38 ancestor = 0x37
;  from: 037 ; to: 039 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1591,key=000,inCond:0,outCond:0,flow seq=038
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	245; "../../../LC-meter.c"	indicator(0);
	MOVLW	0x00	;id=1604,key=001,inCond:400,outCond:10,flow seq=038
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_indicator	;id=1606,key=002,inCond:0,outCond:0,flow seq=038
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_indicator	;id=1608,key=003,inCond:10,outCond:1e,flow seq=038
;<>Start of new flow, seq=0x39 ancestor = 0x38
;  from: 038 ; to: 03a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1610,key=000,inCond:0,outCond:0,flow seq=039
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	246; "../../../LC-meter.c"	delay10ms(20);
	MOVLW	0x14	;id=1623,key=001,inCond:400,outCond:10,flow seq=039
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1625,key=002,inCond:0,outCond:0,flow seq=039
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1627,key=003,inCond:10,outCond:1e,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x39
;  from: 039 ; to: 02f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1629,key=000,inCond:0,outCond:0,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=5, label offset 42
	GOTO	_00147_DS_	;id=1636,key=001,inCond:0,outCond:0,flow seq=03a
;<>Start of new flow, seq=0x3b
;  from: ; to: 
;goto	_00147_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00149_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	248; "../../../LC-meter.c"	}
	RETURN		;id=1648,key=000,inCond:10,outCond:e,flow seq=03b
;<>Start of new flow, seq=0x3c
;  from: ; to: 
; exit point of _main
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

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
;   _format_number
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_putch
;   _delay10ms
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _format_number
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _format_number
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_putch
;9 compiler assigned registers:
;   r0x1018
;   r0x1019
;   STK00
;   r0x101A
;   r0x101B
;   r0x101C
;   STK01
;   STK02
;   r0x101D
;; Starting pCode block
;<>Start of new flow, seq=0x2 ancestor = 0x2
;  from: ; to: 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=42previous max_key=5 
;;	-----------------------------------------
;;	 function testloop
;;	-----------------------------------------
;_testloop:
S_LC_meter__testloop	code
_testloop:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	257; "../../../LC-meter.c"	delay10ms(10);
	MOVLW	0x0a	;id=1674,key=000,inCond:400,outCond:10,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1676,key=001,inCond:0,outCond:0,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1678,key=002,inCond:10,outCond:1e,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1680,key=000,inCond:0,outCond:0,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x7f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	259; "../../../LC-meter.c"	INTCON &= ~0x80; // GIE = 0;
	BANKSEL	_INTCON	;id=2597,key=001,inCond:0,outCond:0,flow seq=003
	BCF	_INTCON,7	;id=1692,key=002,inCond:21,outCond:21,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _seconds, size = 4
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1054, size=2, left -=-, size=0, right AOP_DIR=_seconds, size=4
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _seconds   offset=0
;	.line	260; "../../../LC-meter.c"	s = seconds;
	BANKSEL	_seconds	;id=2598,key=003,inCond:0,outCond:0,flow seq=003
	MOVF	_seconds,W	;id=1705,key=004,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1054 
	BANKSEL	r0x1018	;id=2599,key=005,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x1018	;id=1708,key=006,inCond:10,outCond:1,flow seq=003,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _seconds   offset=1
	BANKSEL	_seconds	;id=2600,key=007,inCond:0,outCond:0,flow seq=003
	MOVF	(_seconds + 1),W	;id=1712,key=008,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1055 
	BANKSEL	r0x1019	;id=2601,key=009,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x1019	;id=1715,key=00a,inCond:10,outCond:1,flow seq=003,rIdx=r0x1055
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;; 	line = 4246 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4272 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	261; "../../../LC-meter.c"	INTCON |= 0x80; // GIE = 1;
	BANKSEL	_INTCON	;id=2602,key=00b,inCond:0,outCond:0,flow seq=003
	BSF	_INTCON,7	;id=1725,key=00c,inCond:21,outCond:21,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	271; "../../../LC-meter.c"	lcd_gotoxy(10, 0);
	MOVLW	0x00	;id=1737,key=00d,inCond:400,outCond:10,flow seq=003
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _INTCON's banks
	MOVWF	STK00	;id=1741,key=00e,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=1744,key=00f,inCond:400,outCond:10,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=1746,key=010,inCond:0,outCond:0,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=1748,key=011,inCond:10,outCond:1e,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 005 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1750,key=000,inCond:0,outCond:0,flow seq=004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_2, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_2
;; 	line = 7238 result AOP_REG=r0x1056, size=3, left -=-, size=0, right AOP_PCODE=___str_2, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	272; "../../../LC-meter.c"	lcd_puts("      ");
	MOVLW	high (___str_2 + 0)	;id=1768,key=001,inCond:400,outCond:10,flow seq=004
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
	BANKSEL	r0x101A	;id=2605,key=002,inCond:0,outCond:0,flow seq=004
	MOVWF	r0x101A	;id=1771,key=003,inCond:10,outCond:1,flow seq=004,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_2 + 0)	;id=1774,key=004,inCond:400,outCond:10,flow seq=004
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVWF	r0x101B	;id=1777,key=005,inCond:10,outCond:1,flow seq=004,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1779,key=006,inCond:400,outCond:10,flow seq=004
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVWF	r0x101C	;id=1782,key=007,inCond:10,outCond:1,flow seq=004,rIdx=r0x1058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVF	r0x101B,W	;id=1796,key=008,inCond:1,outCond:14,flow seq=004,rIdx=r0x1056
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101A's banks
	MOVWF	STK01	;id=1800,key=009,inCond:10,outCond:1,flow seq=004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101A
	MOVF	r0x101A,W	;id=1805,key=00a,inCond:1,outCond:14,flow seq=004,rIdx=r0x1057
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101A's banks
	MOVWF	STK00	;id=1809,key=00b,inCond:10,outCond:1,flow seq=004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVF	r0x101C,W	;id=1814,key=00c,inCond:1,outCond:14,flow seq=004,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=1816,key=00d,inCond:0,outCond:0,flow seq=004
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=1818,key=00e,inCond:10,outCond:1e,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x4
;  from: 004 ; to: 006 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1820,key=000,inCond:0,outCond:0,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	273; "../../../LC-meter.c"	lcd_gotoxy(10, 0);
	MOVLW	0x00	;id=1834,key=001,inCond:400,outCond:10,flow seq=005
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=1838,key=002,inCond:10,outCond:1,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=1841,key=003,inCond:400,outCond:10,flow seq=005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=1843,key=004,inCond:0,outCond:0,flow seq=005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=1845,key=005,inCond:10,outCond:1e,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1847,key=000,inCond:0,outCond:0,flow seq=006
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	275; "../../../LC-meter.c"	format_number(/*lcd_putch,*/ s, 10, 5);
	MOVLW	0x05	;id=1863,key=001,inCond:400,outCond:10,flow seq=006
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of (null)'s banks
	MOVWF	STK02	;id=1867,key=002,inCond:10,outCond:1,flow seq=006
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=1870,key=003,inCond:400,outCond:10,flow seq=006
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of (null)'s banks
	MOVWF	STK01	;id=1875,key=004,inCond:10,outCond:1,flow seq=006
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1054 
	BANKSEL	r0x1018	;id=2618,key=005,inCond:0,outCond:0,flow seq=006
	MOVF	r0x1018,W	;id=1880,key=006,inCond:1,outCond:14,flow seq=006,rIdx=r0x1054
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVWF	STK00	;id=1884,key=007,inCond:10,outCond:1,flow seq=006
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVF	r0x1019,W	;id=1889,key=008,inCond:1,outCond:14,flow seq=006,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_format_number	;id=1891,key=009,inCond:0,outCond:0,flow seq=006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_format_number	;id=1893,key=00a,inCond:10,outCond:1e,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x6
;  from: 006 ; to: 008 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1895,key=000,inCond:0,outCond:0,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	277; "../../../LC-meter.c"	lcd_gotoxy(10, 1);
	MOVLW	0x01	;id=1909,key=001,inCond:400,outCond:10,flow seq=007
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=1913,key=002,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=1916,key=003,inCond:400,outCond:10,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=1918,key=004,inCond:0,outCond:0,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=1920,key=005,inCond:10,outCond:1e,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 009 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1922,key=000,inCond:0,outCond:0,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_2, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_2
;; 	line = 7238 result AOP_REG=r0x1056, size=3, left -=-, size=0, right AOP_PCODE=___str_2, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	278; "../../../LC-meter.c"	lcd_puts("      ");
	MOVLW	high (___str_2 + 0)	;id=1940,key=001,inCond:400,outCond:10,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
	BANKSEL	r0x101A	;id=2624,key=002,inCond:0,outCond:0,flow seq=008
	MOVWF	r0x101A	;id=1943,key=003,inCond:10,outCond:1,flow seq=008,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_2 + 0)	;id=1946,key=004,inCond:400,outCond:10,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVWF	r0x101B	;id=1949,key=005,inCond:10,outCond:1,flow seq=008,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1951,key=006,inCond:400,outCond:10,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVWF	r0x101C	;id=1954,key=007,inCond:10,outCond:1,flow seq=008,rIdx=r0x1058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVF	r0x101B,W	;id=1968,key=008,inCond:1,outCond:14,flow seq=008,rIdx=r0x1056
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101A's banks
	MOVWF	STK01	;id=1972,key=009,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101A
	MOVF	r0x101A,W	;id=1977,key=00a,inCond:1,outCond:14,flow seq=008,rIdx=r0x1057
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101A's banks
	MOVWF	STK00	;id=1981,key=00b,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVF	r0x101C,W	;id=1986,key=00c,inCond:1,outCond:14,flow seq=008,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=1988,key=00d,inCond:0,outCond:0,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=1990,key=00e,inCond:10,outCond:1e,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x8
;  from: 008 ; to: 00a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1992,key=000,inCond:0,outCond:0,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	279; "../../../LC-meter.c"	lcd_gotoxy(10, 1);
	MOVLW	0x01	;id=2006,key=001,inCond:400,outCond:10,flow seq=009
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=2010,key=002,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=2013,key=003,inCond:400,outCond:10,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=2015,key=004,inCond:0,outCond:0,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=2017,key=005,inCond:10,outCond:1e,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 00b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2019,key=000,inCond:0,outCond:0,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _TMR1H, size = 1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_DIR=_TMR1H, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	998
;;	1012  _TMR1H   offset=0 - had to alloc by reg name
;	.line	280; "../../../LC-meter.c"	format_number(/*lcd_putch,*/ TIMER1_VALUE, 10, 5);
	BANKSEL	_TMR1H	;id=2635,key=001,inCond:0,outCond:0,flow seq=00a
	MOVF	_TMR1H,W	;id=2033,key=002,inCond:1,outCond:14,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1056 
	BANKSEL	r0x101D	;id=2636,key=003,inCond:0,outCond:0,flow seq=00a
	MOVWF	r0x101D	;id=2054,key=004,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1059
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101D
	MOVWF	r0x101B	;id=2036,key=005,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1056
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101D
	CLRF	r0x101A	;id=2041,key=006,inCond:0,outCond:5,flow seq=00a,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5150:movLeft2Result *{*
;; ***	movLeft2Result  5151
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5156:movLeft2Result
;;	1097 rIdx = r0x1056 
;;99	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5157:movLeft2Result
;;	1097 rIdx = r0x1059 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5286:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101D
	CLRF	r0x101C	;id=2057,key=007,inCond:0,outCond:5,flow seq=00a,rIdx=r0x1058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _TMR1L, size = 1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_DIR=_TMR1L, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	998
;;	1012  _TMR1L   offset=0 - had to alloc by reg name
	BANKSEL	_TMR1L	;id=2640,key=008,inCond:0,outCond:0,flow seq=00a
	MOVF	_TMR1L,W	;id=2068,key=009,inCond:1,outCond:14,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1056 
	BANKSEL	r0x101B	;id=2641,key=00a,inCond:0,outCond:0,flow seq=00a
	MOVWF	r0x101B	;id=2071,key=00b,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1056
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	CLRF	r0x101A	;id=2076,key=00c,inCond:0,outCond:5,flow seq=00a,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 4246 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1058, size=2, right AOP_REG=r0x1056, size=2
;; 	line = 4272 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1058, size=2, right AOP_REG=r0x1056, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4437:genOr
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVF	r0x101B,W	;id=2086,key=00d,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4438:genOr
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101B
	IORWF	r0x101C,F	;id=2089,key=00e,inCond:11,outCond:5,flow seq=00a,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4437:genOr
;;	1097 rIdx = r0x1057 
	MOVLW	0x00	;id=2592,key=00f,inCond:400,outCond:10,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4438:genOr
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101B
	IORWF	r0x101D,F	;id=2095,key=010,inCond:11,outCond:5,flow seq=00a,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x05	;id=2108,key=011,inCond:400,outCond:10,flow seq=00a
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=2112,key=012,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=2115,key=013,inCond:400,outCond:10,flow seq=00a
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=2120,key=014,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101B
	MOVF	r0x101C,W	;id=2125,key=015,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1058
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=2129,key=016,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101B
	MOVF	r0x101D,W	;id=2134,key=017,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_format_number	;id=2136,key=018,inCond:0,outCond:0,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_format_number	;id=2138,key=019,inCond:10,outCond:1e,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2140,key=000,inCond:0,outCond:0,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	282; "../../../LC-meter.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01	;id=2154,key=001,inCond:400,outCond:10,flow seq=00b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=2158,key=002,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2161,key=003,inCond:400,outCond:10,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=2163,key=004,inCond:0,outCond:0,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=2165,key=005,inCond:10,outCond:1e,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xb
;  from: 00b ; to: 00d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2167,key=000,inCond:0,outCond:0,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_3, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_3
;; 	line = 7238 result AOP_REG=r0x1056, size=3, left -=-, size=0, right AOP_PCODE=___str_3, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	283; "../../../LC-meter.c"	lcd_puts("     ");
	MOVLW	high (___str_3 + 0)	;id=2185,key=001,inCond:400,outCond:10,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
	BANKSEL	r0x101A	;id=2654,key=002,inCond:0,outCond:0,flow seq=00c
	MOVWF	r0x101A	;id=2188,key=003,inCond:10,outCond:1,flow seq=00c,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_3 + 0)	;id=2191,key=004,inCond:400,outCond:10,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVWF	r0x101B	;id=2194,key=005,inCond:10,outCond:1,flow seq=00c,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=2196,key=006,inCond:400,outCond:10,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVWF	r0x101C	;id=2199,key=007,inCond:10,outCond:1,flow seq=00c,rIdx=r0x1058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVF	r0x101B,W	;id=2213,key=008,inCond:1,outCond:14,flow seq=00c,rIdx=r0x1056
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101A's banks
	MOVWF	STK01	;id=2217,key=009,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101A
	MOVF	r0x101A,W	;id=2222,key=00a,inCond:1,outCond:14,flow seq=00c,rIdx=r0x1057
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101A's banks
	MOVWF	STK00	;id=2226,key=00b,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVF	r0x101C,W	;id=2231,key=00c,inCond:1,outCond:14,flow seq=00c,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=2233,key=00d,inCond:0,outCond:0,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=2235,key=00e,inCond:10,outCond:1e,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 00e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2237,key=000,inCond:0,outCond:0,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	284; "../../../LC-meter.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01	;id=2251,key=001,inCond:400,outCond:10,flow seq=00d
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=2255,key=002,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2258,key=003,inCond:400,outCond:10,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=2260,key=004,inCond:0,outCond:0,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=2262,key=005,inCond:10,outCond:1e,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 00d ; to: 00f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2264,key=000,inCond:0,outCond:0,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_4, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_4
;; 	line = 7238 result AOP_REG=r0x1056, size=3, left -=-, size=0, right AOP_PCODE=___str_4, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	285; "../../../LC-meter.c"	lcd_puts("RC4=");
	MOVLW	high (___str_4 + 0)	;id=2282,key=001,inCond:400,outCond:10,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
	BANKSEL	r0x101A	;id=2665,key=002,inCond:0,outCond:0,flow seq=00e
	MOVWF	r0x101A	;id=2285,key=003,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_4 + 0)	;id=2288,key=004,inCond:400,outCond:10,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVWF	r0x101B	;id=2291,key=005,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=2293,key=006,inCond:400,outCond:10,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVWF	r0x101C	;id=2296,key=007,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101A
	MOVF	r0x101B,W	;id=2310,key=008,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1056
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101A's banks
	MOVWF	STK01	;id=2314,key=009,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101A
	MOVF	r0x101A,W	;id=2319,key=00a,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1057
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101A's banks
	MOVWF	STK00	;id=2323,key=00b,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101A
	MOVF	r0x101C,W	;id=2328,key=00c,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=2330,key=00d,inCond:0,outCond:0,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=2332,key=00e,inCond:10,outCond:1e,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xe
;  from: 00e ; to: 011 010 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2334,key=000,inCond:0,outCond:0,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _PORTC   offset=0
;	.line	287; "../../../LC-meter.c"	lcd_putch(LC_SELECT != 0 ? '1' : '0');
	BANKSEL	_PORTC	;id=2674,key=001,inCond:0,outCond:0,flow seq=00f
	MOVF	_PORTC,W	;id=2346,key=002,inCond:1,outCond:14,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4928:genGetABit
	ANDLW	0x10	;id=2348,key=003,inCond:410,outCond:14,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4938:genGetABit
;; BANKOPT2 BANKSEL dropped; STATUS present in same bank as _PORTC
	BTFSS	STATUS,2	;id=2350,key=004,inCond:25,outCond:0,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 011 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=2352,key=000,inCond:400,outCond:10,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0xf
;  from: 010 00f ; to: 013 012 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1056 
	BANKSEL	r0x101B	;id=2676,key=000,inCond:0,outCond:0,flow seq=011
	MOVWF	r0x101B	;id=2355,key=001,inCond:10,outCond:1,flow seq=011,rIdx=r0x1056
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x1057, size=1, left AOP_REG=r0x1056, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVF	r0x101B,W	;id=2365,key=002,inCond:1,outCond:14,flow seq=011,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=2367,key=003,inCond:400,outCond:10,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=2369,key=004,inCond:25,outCond:0,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 013 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=2371,key=000,inCond:400,outCond:10,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x11
;  from: 012 011 ; to: 015 014 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVWF	r0x101A	;id=2374,key=000,inCond:10,outCond:1,flow seq=013,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=2582,key=001,inCond:1,outCond:14,flow seq=013,rIdx=r0x1057
	BTFSS	STATUS,2	;id=2386,key=002,inCond:25,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 013 ; to: 016 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6918:genIfx
;; ***	popGetLabel  key=5, label offset 51
	GOTO	_00156_DS_	;id=2389,key=000,inCond:0,outCond:0,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x13
;  from: 013 ; to: 017 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x31, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x31	;id=2397,key=000,inCond:400,outCond:10,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVWF	r0x101B	;id=2400,key=001,inCond:10,outCond:1,flow seq=015,rIdx=r0x1056
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	CLRF	r0x101A	;id=2404,key=002,inCond:0,outCond:5,flow seq=015,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=6, label offset 51
	GOTO	_00157_DS_	;id=2409,key=003,inCond:0,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x14
;  from: 014 ; to: 017 
;goto	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00156_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x30, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00156_DS_:
	MOVLW	0x30	;id=2423,key=000,inCond:400,outCond:10,flow seq=016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1056 
	BANKSEL	r0x101B	;id=2683,key=001,inCond:0,outCond:0,flow seq=016
	MOVWF	r0x101B	;id=2426,key=002,inCond:10,outCond:1,flow seq=016,rIdx=r0x1056
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	CLRF	r0x101A	;id=2430,key=003,inCond:0,outCond:5,flow seq=016,rIdx=r0x1057
;<>Start of new flow, seq=0x17 ancestor = 0x15
;  from: 016 015 ; to: 018 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00157_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1058, size=1, left -=-, size=0, right AOP_REG=r0x1056, size=2
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1056 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00157_DS_:
	BANKSEL	r0x101B	;id=2686,key=000,inCond:0,outCond:0,flow seq=017
	MOVF	r0x101B,W	;id=2445,key=001,inCond:1,outCond:14,flow seq=017,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101B
	MOVWF	r0x101C	;id=2583,key=002,inCond:10,outCond:1,flow seq=017,rIdx=r0x1058
	PAGESEL	_lcd_putch	;id=2464,key=003,inCond:0,outCond:0,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=2466,key=004,inCond:10,outCond:1e,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 017 ; to: 01a 019 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2468,key=000,inCond:0,outCond:0,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3638:genCmpEq *{*
;; ***	genCmpEq  3639
;; ifx is non-null
;;	695 register type nRegs=2
;; ***	aopForSym 316
;;	328 sym->rname = _testloop_prev_s_65536_82, size = 2
;; 	line = 3650 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1054, size=2, right AOP_DIR=_testloop_prev_s_65536_82, size=2
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _testloop_prev_s_65536_82   offset=0
;	.line	291; "../../../LC-meter.c"	if(s != prev_s) {
	BANKSEL	_testloop_prev_s_65536_82	;id=2689,key=001,inCond:0,outCond:0,flow seq=018
	MOVF	_testloop_prev_s_65536_82,W	;id=2484,key=002,inCond:1,outCond:14,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3722:genCmpEq
;;	1097 rIdx = r0x1054 
	BANKSEL	r0x1018	;id=2690,key=003,inCond:0,outCond:0,flow seq=018
	XORWF	r0x1018,W	;id=2487,key=004,inCond:11,outCond:14,flow seq=018,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3724:genCmpEq
	BTFSS	STATUS,2	;id=2489,key=005,inCond:25,outCond:0,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x18
;  from: 018 ; to: 01c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3727:genCmpEq
;; ***	popGetLabel  key=15, label offset 51
	GOTO	_00166_DS_	;id=2492,key=000,inCond:0,outCond:0,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x18
;  from: 018 ; to: 01c 01b 
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _testloop_prev_s_65536_82   offset=1
	BANKSEL	_testloop_prev_s_65536_82	;id=2691,key=000,inCond:0,outCond:0,flow seq=01a
	MOVF	(_testloop_prev_s_65536_82 + 1),W	;id=2497,key=001,inCond:1,outCond:14,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3722:genCmpEq
;;	1097 rIdx = r0x1055 
;	.line	298; "../../../LC-meter.c"	prev_s = s;
	BANKSEL	r0x1019	;id=2692,key=002,inCond:0,outCond:0,flow seq=01a
	XORWF	r0x1019,W	;id=2584,key=003,inCond:11,outCond:14,flow seq=01a,rIdx=r0x1055
	BTFSC	STATUS,2	;id=2585,key=004,inCond:25,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x1a
;  from: 01a ; to: 01d 
	GOTO	_00154_DS_	;id=2586,key=000,inCond:0,outCond:0,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x19
;  from: 01a 019 ; to: 01d 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00166_DS_:
	BANKSEL	r0x1018	;id=2694,key=000,inCond:0,outCond:0,flow seq=01c
	MOVF	r0x1018,W	;id=2587,key=001,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1054
	BANKSEL	_testloop_prev_s_65536_82	;id=2695,key=002,inCond:0,outCond:0,flow seq=01c
	MOVWF	_testloop_prev_s_65536_82	;id=2528,key=003,inCond:10,outCond:1,flow seq=01c
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1055 
	BANKSEL	r0x1019	;id=2696,key=004,inCond:0,outCond:0,flow seq=01c
	MOVF	r0x1019,W	;id=2534,key=005,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _testloop_prev_s_65536_82   offset=1
	BANKSEL	_testloop_prev_s_65536_82	;id=2697,key=006,inCond:0,outCond:0,flow seq=01c
	MOVWF	(_testloop_prev_s_65536_82 + 1)	;id=2538,key=007,inCond:10,outCond:1,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1b
;  from: 01c 01b ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00154_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00154_DS_:
;	.line	300; "../../../LC-meter.c"	}
	RETURN		;id=2549,key=000,inCond:10,outCond:e,flow seq=01d
;<>Start of new flow, seq=0x1e
;  from: ; to: 
; exit point of _testloop
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x3d ancestor = 0x3d
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function delay10ms
;;	-----------------------------------------
;_delay10ms:
S_LC_meter__delay10ms	code
_delay10ms:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	58; "../../../LC-meter.c"	}
	RETURN		;id=126,key=000,inCond:10,outCond:e,flow seq=03d
;<>Start of new flow, seq=0x3e
;  from: ; to: 
; exit point of _delay10ms
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  375+  142 =   517 instructions ( 1318 byte)

	end
