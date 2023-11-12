;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"LC-meter.c"
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
; G_bres_0_0 == .
_bres	res	4

UD_LC_meter_1	udata
; G_msecpart_0_0 == .
_msecpart	res	2

UD_LC_meter_2	udata
; G_led_cycle_0_0 == .
_led_cycle	res	2

UD_LC_meter_3	udata
; G_led_interval_0_0 == .
_led_interval	res	2

UD_LC_meter_4	udata
; G_seconds_0_0 == .
_seconds	res	4

UD_LC_meter_5	udata
; G_msecs_0_0 == .
_msecs	res	4

UD_LC_meter_6	udata
; G_timer1of_0_0 == .
_timer1of	res	4

UD_LC_meter_7	udata
; G_F1_0_0 == .
_F1	res	4

UD_LC_meter_8	udata
; G_F2_0_0 == .
_F2	res	4

UD_LC_meter_9	udata
; G_F3_0_0 == .
_F3	res	4

UD_LC_meter_10	udata
; G_CCal_0_0 == .
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
; FLC_meter_mode_0_0 == .
_mode
	db	0xff	; 255


IDD_LC_meter_1	idata
; G_blink_0_0 == .
_blink
	db	0x00, 0x00	; 0


IDD_LC_meter_2	idata
; LLC_meter_testloop_led_65536_71 == .
_testloop_led_65536_71
	db	0x00	; 0


IDD_LC_meter_3	idata
; LLC_meter_testloop_prev_s_65536_71 == .
_testloop_prev_s_65536_71
	db	0x00, 0x00	; 0


IDC_LC_meter_4	code
; FLC_meter___str_0_0_0 == .
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
; FLC_meter___str_1_0_0 == .
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
; FLC_meter___str_2_0_0 == .
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
; FLC_meter___str_3_0_0 == .
___str_3
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'

IDC_LC_meter_8	code
; FLC_meter___str_4_0_0 == .
___str_4
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_LC_meter_9	code
; FLC_meter___str_5_0_0 == .
___str_5
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_LC_meter_10	code
; FLC_meter___str_6_0_0 == .
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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=0 
_isr:
; 0 exit points
;; >>> ../../../../src/pic14/gen.c:2449:genFunction
	.line	84; "LC-meter.c"	INTERRUPT_FN() {
	MOVWF	WSAVE
;; >>> ../../../../src/pic14/gen.c:2450:genFunction
	SWAPF	STATUS,W
;; >>> ../../../../src/pic14/gen.c:2455:genFunction
	CLRF	STATUS
;; >>> ../../../../src/pic14/gen.c:2456:genFunction
	MOVWF	SSAVE
;; >>> ../../../../src/pic14/gen.c:2458:genFunction
	MOVF	PCLATH,W
;; >>> ../../../../src/pic14/gen.c:2460:genFunction
	CLRF	PCLATH
;; >>> ../../../../src/pic14/gen.c:2461:genFunction
	MOVWF	PSAVE
;; >>> ../../../../src/pic14/gen.c:2463:genFunction
	MOVF	FSR,W
;; >>> ../../../../src/pic14/gen.c:2464:genFunction
;;	popGetExternal 990 added symbol ___sdcc_saved_fsr
	BANKSEL	___sdcc_saved_fsr
	MOVWF	___sdcc_saved_fsr
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _PIR1bits, val 0, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIR1bits
;; >>> ../../../../src/pic14/gen.c:6133:genUnpackBits
	.line	85; "LC-meter.c"	if(TMR2IF) {
	BANKSEL	_PIR1bits
	BTFSS	_PIR1bits,1
;; >>> ../../../../src/pic14/gen.c:6134:genUnpackBits
;; ***	popGetLabel  key=6, label offset 8
	GOTO	_00114_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;; ***	aopForSym 324
;;	336 sym->rname = _bres, size = 4
;;	589
;; 	line = 714 result AOP_DIR=_bres, size=4, left AOP_DIR=_bres, size=4, right AOP_LIT=0x00, size=4
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  173
;;	adding lit to something. size 4
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  add lit to long	genAddLit  458
;; >>> ../../../../src/pic14/genarith.c:516:genAddLit
;;	1027
;;	1045  _bres   offset=1
	.line	86; "LC-meter.c"	bres += 256;
	BANKSEL	_bres
	INCF	(_bres + 1),F
;; >>> ../../../../src/pic14/genarith.c:472:genAddLit
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:473:genAddLit
;;	1027
;;	1045  _bres   offset=2
	INCF	(_bres + 2),F
;; >>> ../../../../src/pic14/genarith.c:472:genAddLit
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:473:genAddLit
;;	1027
;;	1045  _bres   offset=3
	INCF	(_bres + 3),F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;; ***	aopForSym 324
;;	336 sym->rname = _bres, size = 4
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;unsigned compare: left < lit(0x1388=5000), size=4
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	87; "LC-meter.c"	if(bres >= CYCLES_FOR_MSEC) {
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1027
;;	1045  _bres   offset=3
	SUBWF	(_bres + 3),W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=57, label offset 8
	GOTO	_00165_DS_
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1027
;;	1045  _bres   offset=2
	SUBWF	(_bres + 2),W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=57, label offset 8
	GOTO	_00165_DS_
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x13
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1027
;;	1045  _bres   offset=1
	SUBWF	(_bres + 1),W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=57, label offset 8
	GOTO	_00165_DS_
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x88
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1027
;;	1045  _bres   offset=0
	SUBWF	_bres,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
_00165_DS_:
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=4, label offset 8
	GOTO	_00112_DS_
;;genSkipc:3307: created from rifx:0x7ffdd082ffa0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;; ***	aopForSym 324
;;	336 sym->rname = _bres, size = 4
;;	589
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  add lit to long	genAddLit  458
;; >>> ../../../../src/pic14/genarith.c:520:genAddLit
	.line	88; "LC-meter.c"	bres -= CYCLES_FOR_MSEC;
	MOVLW	0x78
;; >>> ../../../../src/pic14/genarith.c:521:genAddLit
;;	1027
;;	1045  _bres   offset=0
	BANKSEL	_bres
	ADDWF	_bres,F
;; >>> ../../../../src/pic14/genarith.c:496:genAddLit
	MOVLW	0xec
;; >>> ../../../../src/pic14/genarith.c:500:genAddLit
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:501:genAddLit
	MOVLW	0xed
;; >>> ../../../../src/pic14/genarith.c:502:genAddLit
;;	1027
;;	1045  _bres   offset=1
	ADDWF	(_bres + 1),F
;; >>> ../../../../src/pic14/genarith.c:488:genAddLit
	MOVLW	0xff
;; >>> ../../../../src/pic14/genarith.c:492:genAddLit
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:493:genAddLit
;;	1027
;;	1045  _bres   offset=2
	ADDWF	(_bres + 2),F
;; >>> ../../../../src/pic14/genarith.c:488:genAddLit
	MOVLW	0xff
;; >>> ../../../../src/pic14/genarith.c:492:genAddLit
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:493:genAddLit
;;	1027
;;	1045  _bres   offset=3
	ADDWF	(_bres + 3),F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _msecpart, size = 2
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x104C, size=2, left -=-, size=0, right AOP_DIR=_msecpart, size=2
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _msecpart   offset=0
	.line	89; "LC-meter.c"	msecpart++;
	BANKSEL	_msecpart
	MOVF	_msecpart,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _msecpart   offset=1
	BANKSEL	_msecpart
	MOVF	(_msecpart + 1),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=2
;; ***	aopForSym 324
;;	336 sym->rname = _msecpart, size = 2
;; 	line = 714 result AOP_DIR=_msecpart, size=2, left AOP_REG=r0x104C, size=2, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_DIR, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; 	genPlusIncr  197
;;	adding lit to something. size 2
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  left and result aren't same	genAddLit  537
;; >>> ../../../../src/pic14/genarith.c:601:genAddLit
	MOVLW	0x01
;; >>> ../../../../src/pic14/genarith.c:602:genAddLit
;;	1126 rIdx = r0x104C 
	ADDWF	r0x104A,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1027
;;	1045  _msecpart   offset=0
	BANKSEL	_msecpart
	MOVWF	_msecpart
;; >>> ../../../../src/pic14/genarith.c:677:genAddLit
;;	1027
;;	1045  _msecpart   offset=1
	CLRF	(_msecpart + 1)
;; >>> ../../../../src/pic14/genarith.c:678:genAddLit
;;	1027
;;	1045  _msecpart   offset=1
	RLF	(_msecpart + 1),F
;; >>> ../../../../src/pic14/genarith.c:679:genAddLit
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/genarith.c:680:genAddLit
;;	1027
;;	1045  _msecpart   offset=1
	BANKSEL	_msecpart
	ADDWF	(_msecpart + 1),F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _led_cycle, size = 2
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x104C, size=2, left -=-, size=0, right AOP_DIR=_led_cycle, size=2
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _led_cycle   offset=0
	.line	90; "LC-meter.c"	led_cycle++;
	BANKSEL	_led_cycle
	MOVF	_led_cycle,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _led_cycle   offset=1
	BANKSEL	_led_cycle
	MOVF	(_led_cycle + 1),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=2
;; ***	aopForSym 324
;;	336 sym->rname = _led_cycle, size = 2
;; 	line = 714 result AOP_DIR=_led_cycle, size=2, left AOP_REG=r0x104C, size=2, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_DIR, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; 	genPlusIncr  197
;;	adding lit to something. size 2
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  left and result aren't same	genAddLit  537
;; >>> ../../../../src/pic14/genarith.c:601:genAddLit
	MOVLW	0x01
;; >>> ../../../../src/pic14/genarith.c:602:genAddLit
;;	1126 rIdx = r0x104C 
	ADDWF	r0x104A,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1027
;;	1045  _led_cycle   offset=0
	BANKSEL	_led_cycle
	MOVWF	_led_cycle
;; >>> ../../../../src/pic14/genarith.c:677:genAddLit
;;	1027
;;	1045  _led_cycle   offset=1
	CLRF	(_led_cycle + 1)
;; >>> ../../../../src/pic14/genarith.c:678:genAddLit
;;	1027
;;	1045  _led_cycle   offset=1
	RLF	(_led_cycle + 1),F
;; >>> ../../../../src/pic14/genarith.c:679:genAddLit
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/genarith.c:680:genAddLit
;;	1027
;;	1045  _led_cycle   offset=1
	BANKSEL	_led_cycle
	ADDWF	(_led_cycle + 1),F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfb, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	92; "LC-meter.c"	SET_LED(led_cycle >= 0 && led_cycle < led_interval / 6);
	BANKSEL	_PORTC
	BCF	_PORTC,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _led_interval, size = 2
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x104C, size=2, left -=-, size=0, right AOP_DIR=_led_interval, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1041  _led_interval   offset=0 - had to alloc by reg name
	BANKSEL	_led_interval
	MOVF	_led_interval,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _led_interval   offset=1
	BANKSEL	_led_interval
	MOVF	(_led_interval + 1),W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=2
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x06
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104C 
	MOVF	r0x104A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	__divuint
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	__divuint
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104C, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVWF	r0x104B
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104C 
	MOVWF	r0x104A
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _led_cycle, size = 2
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x104E, size=2, left -=-, size=0, right AOP_DIR=_led_cycle, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _led_cycle   offset=0
	BANKSEL	_led_cycle
	MOVF	_led_cycle,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104E 
	BANKSEL	r0x104C
	MOVWF	r0x104C
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _led_cycle   offset=1
	BANKSEL	_led_cycle
	MOVF	(_led_cycle + 1),W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104F 
	BANKSEL	r0x104D
	MOVWF	r0x104D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;; >>> ../../../../src/pic14/gen.c:3329:pic14_mov2w_regOrLit
;;	1126 rIdx = r0x104D 
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x104F 
	SUBWF	r0x104D,W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=58, label offset 8
	GOTO	_00166_DS_
;; >>> ../../../../src/pic14/gen.c:3329:pic14_mov2w_regOrLit
;;	1126 rIdx = r0x104C 
	MOVF	r0x104A,W
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1126 rIdx = r0x104E 
	SUBWF	r0x104C,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
_00166_DS_:
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=19, label offset 8
	GOTO	_00127_DS_
;;genSkipc:3307: created from rifx:0x7ffdd082ffa0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	CLRF	r0x104A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=20, label offset 8
	GOTO	_00128_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_LIT=0x01, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
_00127_DS_:
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1548:genNot *{*
;; ***	genNot  1550
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 1555 result AOP_REG=r0x104D, size=1, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104C 
_00128_DS_:
	BANKSEL	r0x104A
	MOVF	r0x104A,W
;; >>> ../../../../src/pic14/gen.c:1582:genNot
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1548:genNot *{*
;; ***	genNot  1550
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 1555 result AOP_REG=r0x104C, size=1, left AOP_REG=r0x104D, size=1, right -=-, size=0
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:1582:genNot
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104C 
	MOVWF	r0x104A
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5634:genGenericShift *{*
;; ***	genGenericShift  5637
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> ../../../../src/pic14/gen.c:5328:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> ../../../../src/pic14/gen.c:5337:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x104D 
	RLF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:5338:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x104C 
	MOVWF	r0x104A
;; >>> ../../../../src/pic14/gen.c:5328:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> ../../../../src/pic14/gen.c:5333:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x104C 
	RLF	r0x104A,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_REG=r0x104C, size=1
;; 	line = 4357 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_REG=r0x104C, size=1
;; >>> ../../../../src/pic14/gen.c:4522:genOr
;;	1126 rIdx = r0x104C 
	MOVF	r0x104A,W
;; >>> ../../../../src/pic14/gen.c:4523:genOr
;;	1027
;;	1045  _PORTC   offset=0
	BANKSEL	_PORTC
	IORWF	_PORTC,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _msecpart, size = 2
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x104C, size=2, left -=-, size=0, right AOP_DIR=_msecpart, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _msecpart   offset=0
	.line	95; "LC-meter.c"	if(msecpart >= 1000) {
	BANKSEL	_msecpart
	MOVF	_msecpart,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _msecpart   offset=1
	BANKSEL	_msecpart
	MOVF	(_msecpart + 1),W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;unsigned compare: left < lit(0x3E8=1000), size=2
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x03
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x104D 
	SUBWF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=59, label offset 8
	GOTO	_00167_DS_
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0xe8
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1126 rIdx = r0x104C 
	SUBWF	r0x104A,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
_00167_DS_:
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=4, label offset 8
	GOTO	_00112_DS_
;;genSkipc:3307: created from rifx:0x7ffdd082ffa0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _seconds, size = 4
;;	708 register type nRegs=4
;; 	line = 7169 result AOP_REG=r0x104C, size=4, left -=-, size=0, right AOP_DIR=_seconds, size=4
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _seconds   offset=0
	.line	97; "LC-meter.c"	seconds++;
	BANKSEL	_seconds
	MOVF	_seconds,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _seconds   offset=1
	BANKSEL	_seconds
	MOVF	(_seconds + 1),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVWF	r0x104B
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _seconds   offset=2
	BANKSEL	_seconds
	MOVF	(_seconds + 2),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104E 
	BANKSEL	r0x104C
	MOVWF	r0x104C
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _seconds   offset=3
	BANKSEL	_seconds
	MOVF	(_seconds + 3),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104F 
	BANKSEL	r0x104D
	MOVWF	r0x104D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _seconds, size = 4
;; 	line = 714 result AOP_DIR=_seconds, size=4, left AOP_REG=r0x104C, size=4, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_DIR, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; 	genPlusIncr  197
;;	adding lit to something. size 4
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  left and result aren't same	genAddLit  537
;; >>> ../../../../src/pic14/genarith.c:601:genAddLit
	MOVLW	0x01
;; >>> ../../../../src/pic14/genarith.c:602:genAddLit
;;	1126 rIdx = r0x104C 
	ADDWF	r0x104A,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1027
;;	1045  _seconds   offset=0
	BANKSEL	_seconds
	MOVWF	_seconds
;; >>> ../../../../src/pic14/genarith.c:677:genAddLit
;;	1027
;;	1045  _seconds   offset=1
	CLRF	(_seconds + 1)
;; >>> ../../../../src/pic14/genarith.c:678:genAddLit
;;	1027
;;	1045  _seconds   offset=1
	RLF	(_seconds + 1),F
;; >>> ../../../../src/pic14/genarith.c:679:genAddLit
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/genarith.c:680:genAddLit
;;	1027
;;	1045  _seconds   offset=1
	BANKSEL	_seconds
	ADDWF	(_seconds + 1),F
;; >>> ../../../../src/pic14/genarith.c:677:genAddLit
;;	1027
;;	1045  _seconds   offset=2
	CLRF	(_seconds + 2)
;; >>> ../../../../src/pic14/genarith.c:678:genAddLit
;;	1027
;;	1045  _seconds   offset=2
	RLF	(_seconds + 2),F
;; >>> ../../../../src/pic14/genarith.c:679:genAddLit
;;	1126 rIdx = r0x104E 
	BANKSEL	r0x104C
	MOVF	r0x104C,W
;; >>> ../../../../src/pic14/genarith.c:680:genAddLit
;;	1027
;;	1045  _seconds   offset=2
	BANKSEL	_seconds
	ADDWF	(_seconds + 2),F
;; >>> ../../../../src/pic14/genarith.c:677:genAddLit
;;	1027
;;	1045  _seconds   offset=3
	CLRF	(_seconds + 3)
;; >>> ../../../../src/pic14/genarith.c:678:genAddLit
;;	1027
;;	1045  _seconds   offset=3
	RLF	(_seconds + 3),F
;; >>> ../../../../src/pic14/genarith.c:679:genAddLit
;;	1126 rIdx = r0x104F 
	BANKSEL	r0x104D
	MOVF	r0x104D,W
;; >>> ../../../../src/pic14/genarith.c:680:genAddLit
;;	1027
;;	1045  _seconds   offset=3
	BANKSEL	_seconds
	ADDWF	(_seconds + 3),F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _msecpart, size = 2
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x104C, size=2, left -=-, size=0, right AOP_DIR=_msecpart, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _msecpart   offset=0
	.line	98; "LC-meter.c"	msecpart -= 1000;
	BANKSEL	_msecpart
	MOVF	_msecpart,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _msecpart   offset=1
	BANKSEL	_msecpart
	MOVF	(_msecpart + 1),W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;; hi is generic	252   genAddLit  427
;; >>> ../../../../src/pic14/genarith.c:442:genAddLit
	MOVLW	0x18
;; >>> ../../../../src/pic14/genarith.c:443:genAddLit
;;	1126 rIdx = r0x104C 
	ADDWF	r0x104A,F
;; >>> ../../../../src/pic14/genarith.c:444:genAddLit
	MOVLW	0xfc
;; >>> ../../../../src/pic14/genarith.c:445:genAddLit
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:446:genAddLit
	MOVLW	0xfd
;; >>> ../../../../src/pic14/genarith.c:447:genAddLit
;;	1126 rIdx = r0x104D 
	ADDWF	r0x104B,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;; ***	aopForSym 324
;;	336 sym->rname = _msecpart, size = 2
;; 	line = 7362 result AOP_DIR=_msecpart, size=2, left -=-, size=0, right AOP_REG=r0x104C, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104C 
	MOVF	r0x104A,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1027
;;	1045  _msecpart   offset=0
	BANKSEL	_msecpart
	MOVWF	_msecpart
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x104B
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1027
;;	1045  _msecpart   offset=1
	BANKSEL	_msecpart
	MOVWF	(_msecpart + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _PIR1bits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIR1bits
;; 	line = 6855 result AOP_PCODE=_PIR1bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIR1bits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
_00112_DS_:
	.line	102; "LC-meter.c"	TMR2IF = 0;
	BANKSEL	_PIR1bits
	BCF	_PIR1bits,1
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _PIR1bits, val 0, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIR1bits
;; >>> ../../../../src/pic14/gen.c:6133:genUnpackBits
_00114_DS_:
	.line	105; "LC-meter.c"	ser_int();
	BANKSEL	_PIR1bits
	BTFSS	_PIR1bits,5
;; >>> ../../../../src/pic14/gen.c:6134:genUnpackBits
;; ***	popGetLabel  key=10, label offset 8
	GOTO	_00118_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _ser_rxfifo, val 0, const = 0
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxiptr, size = 1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_rxfifo
;; 	line = 714 result AOP_REG=r0x104C, size=2, left AOP_PCODE=_ser_rxfifo, size=2, right AOP_DIR=_ser_rxiptr, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_rxfifo
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1027
;;	1045  _ser_rxiptr   offset=0
	BANKSEL	_ser_rxiptr
	MOVF	_ser_rxiptr,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_ser_rxfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_ser_rxfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x104D 
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	708 register type nRegs=2
;; ***	genNearPointerSet  6853
;; ***	aopForSym 324
;;	336 sym->rname = _RCREG, size = 1
;; 	line = 6855 result AOP_REG=r0x104C, size=2, left -=-, size=0, right AOP_DIR=_RCREG, size=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104C 
	MOVF	r0x104A,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x104B
	BTFSC	r0x104B,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6605:emitPtrPut
;;	1027
;;	1041  _RCREG   offset=0 - had to alloc by reg name
	BANKSEL	_RCREG
	MOVF	_RCREG,W
;; >>> ../../../../src/pic14/gen.c:6606:emitPtrPut
	MOVWF	INDF
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxiptr, size = 1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_DIR=_ser_rxiptr, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _ser_rxiptr   offset=0
	BANKSEL	_ser_rxiptr
	MOVF	_ser_rxiptr,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x104C, size=1, left AOP_REG=r0x104C, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x104C 
	INCF	r0x104A,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_tmp, size = 1
;; 	line = 4059 result AOP_DIR=_ser_tmp, size=1, left AOP_REG=r0x104C, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4294:genAnd
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x104C 
	ANDWF	r0x104A,W
;; >>> ../../../../src/pic14/gen.c:4296:genAnd
;;	1027
;;	1045  _ser_tmp   offset=0
	BANKSEL	_ser_tmp
	MOVWF	_ser_tmp
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;; ***	aopForSym 324
;;	336 sym->rname = _ser_tmp, size = 1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_DIR=_ser_tmp, size=1, right AOP_DIR=_ser_rxoptr, size=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1041  _ser_rxoptr   offset=0 - had to alloc by reg name
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1027
;;	1045  _ser_tmp   offset=0
	BANKSEL	_ser_tmp
	XORWF	_ser_tmp,W
	BTFSC	STATUS,2
	GOTO	_00118_DS_
	MOVF	_ser_tmp,W
	BANKSEL	_ser_rxiptr
	MOVWF	_ser_rxiptr
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _PIR1bits, val 0, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIR1bits
;; >>> ../../../../src/pic14/gen.c:6133:genUnpackBits
_00118_DS_:
	BANKSEL	_PIR1bits
	BTFSS	_PIR1bits,4
;; >>> ../../../../src/pic14/gen.c:6134:genUnpackBits
;; ***	popGetLabel  key=16, label offset 8
	GOTO	_00124_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _PIE1bits, val 0, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; >>> ../../../../src/pic14/gen.c:6133:genUnpackBits
	BANKSEL	_PIE1bits
	BTFSS	_PIE1bits,4
;; >>> ../../../../src/pic14/gen.c:6134:genUnpackBits
;; ***	popGetLabel  key=16, label offset 8
	GOTO	_00124_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _ser_txfifo, val 0, const = 0
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txoptr, size = 1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_txfifo
;; 	line = 714 result AOP_REG=r0x104C, size=2, left AOP_PCODE=_ser_txfifo, size=2, right AOP_DIR=_ser_txoptr, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_txfifo
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1027
;;	1045  _ser_txoptr   offset=0
	BANKSEL	_ser_txoptr
	MOVF	_ser_txoptr,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_ser_txfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x104A
	MOVWF	r0x104A
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_ser_txfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x104D 
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	708 register type nRegs=2
;; ***	genNearPointerGet  6269
;; ***	aopForSym 324
;;	336 sym->rname = _TXREG, size = 1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104C 
	MOVF	r0x104A,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x104B
	BTFSC	r0x104B,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _TXREG   offset=0
	MOVWF	_TXREG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txoptr, size = 1
;; 	line = 714 result AOP_DIR=_ser_txoptr, size=1, left AOP_DIR=_ser_txoptr, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1027
;;	1045  _ser_txoptr   offset=0
	BANKSEL	_ser_txoptr
	INCF	_ser_txoptr,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txoptr, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_ser_txoptr, size=1, left AOP_DIR=_ser_txoptr, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1027
;;	1045  _ser_txoptr   offset=0
	ANDWF	_ser_txoptr,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txoptr, size = 1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txiptr, size = 1
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_DIR=_ser_txoptr, size=1, right AOP_DIR=_ser_txiptr, size=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1041  _ser_txiptr   offset=0 - had to alloc by reg name
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1027
;;	1045  _ser_txoptr   offset=0
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
	.line	110; "LC-meter.c"	}
	BANKSEL	___sdcc_saved_fsr
	MOVF	___sdcc_saved_fsr,W
;; >>> ../../../../src/pic14/gen.c:2665:genEndFunction
	BANKSEL	FSR
	MOVWF	FSR
;; >>> ../../../../src/pic14/gen.c:2667:genEndFunction
	MOVF	PSAVE,W
;; >>> ../../../../src/pic14/gen.c:2668:genEndFunction
	MOVWF	PCLATH
;; >>> ../../../../src/pic14/gen.c:2669:genEndFunction
	CLRF	STATUS
;; >>> ../../../../src/pic14/gen.c:2671:genEndFunction
	SWAPF	SSAVE,W
;; >>> ../../../../src/pic14/gen.c:2672:genEndFunction
	MOVWF	STATUS
;; >>> ../../../../src/pic14/gen.c:2673:genEndFunction
	SWAPF	WSAVE,F
;; >>> ../../../../src/pic14/gen.c:2674:genEndFunction
	SWAPF	WSAVE,W
END_OF_INTERRUPT:
	RETFIE	
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=8previous max_key=60 
S_LC_meter__main	code
_main:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _seconds, size = 4
;; 	line = 7169 result AOP_DIR=_seconds, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _seconds   offset=0
	.line	117; "LC-meter.c"	bres = msecpart = msecs = seconds = 0;
	BANKSEL	_seconds
	CLRF	_seconds
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _seconds   offset=1
	CLRF	(_seconds + 1)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _seconds   offset=2
	CLRF	(_seconds + 2)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _seconds   offset=3
	CLRF	(_seconds + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _msecs, size = 4
;; 	line = 7169 result AOP_DIR=_msecs, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _msecs   offset=0
	BANKSEL	_msecs
	CLRF	_msecs
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _msecs   offset=1
	CLRF	(_msecs + 1)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _msecs   offset=2
	CLRF	(_msecs + 2)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _msecs   offset=3
	CLRF	(_msecs + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _msecpart, size = 2
;; 	line = 7169 result AOP_DIR=_msecpart, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _msecpart   offset=0
	BANKSEL	_msecpart
	CLRF	_msecpart
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _msecpart   offset=1
	CLRF	(_msecpart + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _bres, size = 4
;; 	line = 7169 result AOP_DIR=_bres, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _bres   offset=0
	BANKSEL	_bres
	CLRF	_bres
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _bres   offset=1
	CLRF	(_bres + 1)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _bres   offset=2
	CLRF	(_bres + 2)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _bres   offset=3
	CLRF	(_bres + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _mode, size = 1
;; 	line = 7169 result AOP_DIR=_mode, size=1, left -=-, size=0, right AOP_LIT=0xff, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	118; "LC-meter.c"	mode = -1;
	MOVLW	0xff
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _mode   offset=0
	BANKSEL	_mode
	MOVWF	_mode
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;; 	line = 7169 result AOP_DIR=_CCal, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _CCal   offset=0
	.line	120; "LC-meter.c"	CCal = C_CAL;
	BANKSEL	_CCal
	CLRF	_CCal
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _CCal   offset=1
	CLRF	(_CCal + 1)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x7a
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _CCal   offset=2
	MOVWF	(_CCal + 2)
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x44
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _CCal   offset=3
	MOVWF	(_CCal + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _led_cycle, size = 2
;; 	line = 7169 result AOP_DIR=_led_cycle, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _led_cycle   offset=0
	.line	122; "LC-meter.c"	led_cycle = 0;
	BANKSEL	_led_cycle
	CLRF	_led_cycle
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _led_cycle   offset=1
	CLRF	(_led_cycle + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _led_interval, size = 2
;; 	line = 7169 result AOP_DIR=_led_interval, size=2, left -=-, size=0, right AOP_LIT=0xf4, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	123; "LC-meter.c"	led_interval = 500;
	MOVLW	0xf4
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _led_interval   offset=0
	BANKSEL	_led_interval
	MOVWF	_led_interval
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _led_interval   offset=1
	MOVWF	(_led_interval + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _CMCON, size = 1
;; 	line = 7169 result AOP_DIR=_CMCON, size=1, left -=-, size=0, right AOP_LIT=0x05, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	131; "LC-meter.c"	CMCON = 0b00000101;
	MOVLW	0x05
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _CMCON   offset=0
	BANKSEL	_CMCON
	MOVWF	_CMCON
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;; 	line = 7169 result AOP_DIR=_TRISA, size=1, left -=-, size=0, right AOP_LIT=0xcf, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	133; "LC-meter.c"	TRISA = 0b11001111;
	MOVLW	0xcf
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _TRISA   offset=0
	MOVWF	_TRISA
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;; 	line = 4059 result AOP_DIR=_TRISB, size=1, left AOP_DIR=_TRISB, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	135; "LC-meter.c"	TRISB &= 0b00001111;
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1027
;;	1045  _TRISB   offset=0
	ANDWF	_TRISB,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	138; "LC-meter.c"	timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_EXTCLK | TIMER0_FLAGS_8BIT);
	MOVLW	0x68
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_timer0_init
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_timer0_init
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	139; "LC-meter.c"	timer2_init(TIMER2_PRESCALER | TIMER2_FLAGS_INTR);
	MOVLW	0x84
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_timer2_init
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_timer2_init
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _OPTION_REG, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0xdf, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	148; "LC-meter.c"	OPTION_REG &= ~0b100000;
	BANKSEL	_OPTION_REG
	BCF	_OPTION_REG,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;; 	line = 7169 result AOP_DIR=_TRISC, size=1, left -=-, size=0, right AOP_LIT=0xb3, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	154; "LC-meter.c"	TRISC = 0b10110011;
	MOVLW	0xb3
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _TRISC   offset=0
	MOVWF	_TRISC
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _PORTCbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
;; 	line = 6855 result AOP_PCODE=_PORTCbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	158; "LC-meter.c"	RC3 = HIGH;
	BANKSEL	_PORTCbits
	BSF	_PORTCbits,3
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xfb, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	161; "LC-meter.c"	INIT_LED();
	BANKSEL	_TRISC
	BCF	_TRISC,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfb, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	162; "LC-meter.c"	SET_LED(1);
	BANKSEL	_PORTC
	BCF	_PORTC,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4357 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x04, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	BSF	_PORTC,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	164; "LC-meter.c"	timer2_init(PRESCALE_1_1 | TIMER2_FLAGS_INTR);
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_timer2_init
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_timer2_init
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	171; "LC-meter.c"	lcd_init(1);
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_init
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_init
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	172; "LC-meter.c"	lcd_begin(2, 1);
	MOVLW	0x01
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x02
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_begin
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_begin
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x10, size=1
;; 	line = 4357 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x10, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	175; "LC-meter.c"	LC_TRIS();
	BANKSEL	_TRISC
	BSF	_TRISC,4
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xdf, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	176; "LC-meter.c"	RELAY_TRIS();
	BCF	_TRISC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	178; "LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	179; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4357 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	180; "LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC
	BSF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	181; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	182; "LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	183; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4357 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	184; "LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC
	BSF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	185; "LC-meter.c"	delay10ms(50);
	MOVLW	0x32
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	186; "LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	189; "LC-meter.c"	ser_init();
	PAGESEL	_ser_init
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_init
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _INTCON, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; 	line = 4357 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; >>> ../../../../src/pic14/gen.c:4513:genOr
	.line	196; "LC-meter.c"	INTCON |= 0xc0; // PEIE = 1; GIE = 1;
	MOVLW	0xc0
;; >>> ../../../../src/pic14/gen.c:4515:genOr
;;	1027
;;	1041  _INTCON   offset=0 - had to alloc by reg name
	BANKSEL	_INTCON
	IORWF	_INTCON,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	202; "LC-meter.c"	lcd_gotoxy(0, 0);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_0, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_0
;; 	line = 7362 result AOP_REG=r0x105A, size=3, left -=-, size=0, right AOP_PCODE=___str_0, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	204; "LC-meter.c"	lcd_puts("LC-meter ");
	MOVLW	high (___str_0 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_0 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1045
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x1046
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1045,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1044,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1046,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;; ***	aopForSym 324
;;	353 size = 2, name =_lcd_putch
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=0
	.line	205; "LC-meter.c"	format_float(&lcd_putch, CCal);
	BANKSEL	_CCal
	MOVF	_CCal,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=1
	MOVF	(_CCal + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=2
	MOVF	(_CCal + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=3
	MOVF	(_CCal + 3),W
;; ***	aopForSym 324
;;	353 size = 2, name =_lcd_putch
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	low (_lcd_putch+0)
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_lcd_putch+0)
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_format_float
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_float
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	209; "LC-meter.c"	delay10ms(5);
	MOVLW	0x05
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	214; "LC-meter.c"	calibrate();
	PAGESEL	_calibrate
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_calibrate
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	217; "LC-meter.c"	lcd_clear();
	PAGESEL	_lcd_clear
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_clear
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _PORTC   offset=0
_00181_DS_:
	.line	226; "LC-meter.c"	char new_mode = LC_SELECT;
	BANKSEL	_PORTC
	MOVF	_PORTC,W
;; >>> ../../../../src/pic14/gen.c:5051:genGetABit
	ANDLW	0x10
;; >>> ../../../../src/pic14/gen.c:5061:genGetABit
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:5062:genGetABit
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:5067:genGetABit
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1045
	MOVWF	r0x1045
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1548:genNot *{*
;; ***	genNot  1550
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 1555 result AOP_REG=r0x105B, size=1, left AOP_REG=r0x105A, size=1, right -=-, size=0
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1045,W
;; >>> ../../../../src/pic14/gen.c:1582:genNot
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	MOVWF	r0x1044
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1548:genNot *{*
;; ***	genNot  1550
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 1555 result AOP_REG=r0x105A, size=1, left AOP_REG=r0x105B, size=1, right -=-, size=0
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:1582:genNot
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1045
	.line	228; "LC-meter.c"	if(new_mode != mode) {
	MOVWF	r0x1044
	.line	230; "LC-meter.c"	ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
	BANKSEL	_mode
	XORWF	_mode,W
	BTFSC	STATUS,2
	GOTO	_00174_DS_
	MOVF	_mode,W
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=13, label offset 72
	GOTO	_00185_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7065:genAddrOf *{*
;; ***	genAddrOf  7066
;; ***	aopForSym 324
;;	368 size = 16, name =___str_1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_1
;; 	line = 7075 result AOP_REG=r0x105A, size=2, left AOP_PCODE=___str_1, size=16, right AOP_LIT=0x00, size=1
;; >>> ../../../../src/pic14/gen.c:7123:genAddrOf
	MOVLW	(___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:7124:genAddrOf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1045
	MOVWF	r0x1045
;; >>> ../../../../src/pic14/gen.c:7123:genAddrOf
	MOVLW	high (___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:7124:genAddrOf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x1046
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=14, label offset 72
	GOTO	_00186_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7065:genAddrOf *{*
;; ***	genAddrOf  7066
;; ***	aopForSym 324
;;	368 size = 16, name =___str_2
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_2
;; 	line = 7075 result AOP_REG=r0x105A, size=2, left AOP_PCODE=___str_2, size=16, right AOP_LIT=0x00, size=1
;; >>> ../../../../src/pic14/gen.c:7123:genAddrOf
_00185_DS_:
	MOVLW	(___str_2 + 0)
;; >>> ../../../../src/pic14/gen.c:7124:genAddrOf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1045
	MOVWF	r0x1045
;; >>> ../../../../src/pic14/gen.c:7123:genAddrOf
	MOVLW	high (___str_2 + 0)
;; >>> ../../../../src/pic14/gen.c:7124:genAddrOf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x1046
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=3
;; 	line = 7362 result AOP_REG=r0x105D, size=3, left -=-, size=0, right AOP_REG=r0x105A, size=2
;; ***	genCast  7408 (size=2)
;; >>> ../../../../src/pic14/gen.c:7425:genCast
;;	1126 rIdx = r0x105C 
;;101	MOVF	r0x1046,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105E 
;;99	MOVWF	r0x1047
;; >>> ../../../../src/pic14/gen.c:7425:genCast
;;	1126 rIdx = r0x105A 
;;103	MOVF	r0x1045,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
_00186_DS_:
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105F 
	BANKSEL	r0x1049
	MOVWF	r0x1049
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
;;102	MOVF	r0x1048,W
	MOVF	r0x1045,W
	MOVWF	r0x1048
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
;;100	MOVF	r0x1047,W
	MOVF	r0x1046,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105F 
	MOVF	r0x1049,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_3, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_3
;; 	line = 7362 result AOP_REG=r0x105A, size=3, left -=-, size=0, right AOP_PCODE=___str_3, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	231; "LC-meter.c"	ser_puts("\r\n");
	MOVLW	high (___str_3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x1046
	MOVWF	r0x1046
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1045
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1048
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1045,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1046,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1048,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _mode, size = 1
;; 	line = 7169 result AOP_DIR=_mode, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	.line	233; "LC-meter.c"	mode = new_mode;
	BANKSEL	r0x1044
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _mode   offset=0
	BANKSEL	_mode
	MOVWF	_mode
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;; ***	aopForSym 324
;;	336 sym->rname = _led_cycle, size = 2
;; ***	aopForSym 324
;;	336 sym->rname = _led_interval, size = 2
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;; >>> ../../../../src/pic14/gen.c:3329:pic14_mov2w_regOrLit
;;	1027
;;	1045  _led_interval   offset=1
_00174_DS_:
	.line	236; "LC-meter.c"	if(led_cycle >= led_interval)
	BANKSEL	_led_interval
	MOVF	(_led_interval + 1),W
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1027
;;	1045  _led_cycle   offset=1
	BANKSEL	_led_cycle
	SUBWF	(_led_cycle + 1),W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=36, label offset 72
	GOTO	_00208_DS_
;; >>> ../../../../src/pic14/gen.c:3329:pic14_mov2w_regOrLit
;;	1027
;;	1045  _led_interval   offset=0
	BANKSEL	_led_interval
	MOVF	_led_interval,W
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1027
;;	1045  _led_cycle   offset=0
	BANKSEL	_led_cycle
	SUBWF	_led_cycle,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
_00208_DS_:
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=4, label offset 72
	GOTO	_00176_DS_
;;genSkipc:3307: created from rifx:0x7ffdd082ffa0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _led_cycle, size = 2
;; 	line = 7169 result AOP_DIR=_led_cycle, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _led_cycle   offset=0
	.line	237; "LC-meter.c"	led_cycle = 0;
	BANKSEL	_led_cycle
	CLRF	_led_cycle
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _led_cycle   offset=1
	CLRF	(_led_cycle + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;; ***	aopForSym 324
;;	336 sym->rname = _mode, size = 1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _mode   offset=0
_00176_DS_:
	.line	239; "LC-meter.c"	if(mode)
	BANKSEL	_mode
	MOVF	_mode,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=6, label offset 72
	GOTO	_00178_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	240; "LC-meter.c"	measure_capacitance();
	PAGESEL	_measure_capacitance
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_capacitance
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 72
	GOTO	_00179_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
_00178_DS_:
	.line	242; "LC-meter.c"	measure_inductance();
	PAGESEL	_measure_inductance
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_inductance
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
_00179_DS_:
	.line	244; "LC-meter.c"	print_indicator(1);
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_print_indicator
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_print_indicator
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	245; "LC-meter.c"	delay10ms(30);
	MOVLW	0x1e
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	247; "LC-meter.c"	print_indicator(0);
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_print_indicator
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_print_indicator
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	248; "LC-meter.c"	delay10ms(20);
	MOVLW	0x14
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=9, label offset 72
	GOTO	_00181_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	250; "LC-meter.c"	}
	RETURN	
; exit point of _main
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=72previous max_key=36 
S_LC_meter__testloop	code
_testloop:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	259; "LC-meter.c"	delay10ms(10);
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _INTCON, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x7f, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	261; "LC-meter.c"	INTCON &= ~0x80; // GIE = 0;
	BANKSEL	_INTCON
	BCF	_INTCON,7
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _seconds, size = 4
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1062, size=2, left -=-, size=0, right AOP_DIR=_seconds, size=4
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _seconds   offset=0
	.line	262; "LC-meter.c"	s = seconds;
	BANKSEL	_seconds
	MOVF	_seconds,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1062 
	BANKSEL	r0x103F
	MOVWF	r0x103F
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _seconds   offset=1
	BANKSEL	_seconds
	MOVF	(_seconds + 1),W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1063 
	BANKSEL	r0x1040
	MOVWF	r0x1040
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _INTCON, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4357 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x80, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	263; "LC-meter.c"	INTCON |= 0x80; // GIE = 1;
	BANKSEL	_INTCON
	BSF	_INTCON,7
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	273; "LC-meter.c"	lcd_gotoxy(10, 0);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_4, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_4
;; 	line = 7362 result AOP_REG=r0x1064, size=3, left -=-, size=0, right AOP_PCODE=___str_4, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	274; "LC-meter.c"	lcd_puts("      ");
	MOVLW	high (___str_4 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x1041
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_4 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1042
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1043
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1042,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x1041,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1043,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	275; "LC-meter.c"	lcd_gotoxy(10, 0);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=2
;; ***	aopForSym 324
;;	353 size = 2, name =_lcd_putch
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	277; "LC-meter.c"	format_number(&lcd_putch, s, 10, 5);
	MOVLW	0x05
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0a
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1062 
	BANKSEL	r0x103F
	MOVF	r0x103F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1040,W
;; ***	aopForSym 324
;;	353 size = 2, name =_lcd_putch
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	low (_lcd_putch+0)
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_lcd_putch+0)
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_format_number
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_number
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	279; "LC-meter.c"	lcd_gotoxy(10, 1);
	MOVLW	0x01
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_4, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_4
;; 	line = 7362 result AOP_REG=r0x1064, size=3, left -=-, size=0, right AOP_PCODE=___str_4, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	280; "LC-meter.c"	lcd_puts("      ");
	MOVLW	high (___str_4 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x1041
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_4 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1042
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1043
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1042,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x1041,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1043,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	281; "LC-meter.c"	lcd_gotoxy(10, 1);
	MOVLW	0x01
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	284; "LC-meter.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_5, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_5
;; 	line = 7362 result AOP_REG=r0x1064, size=3, left -=-, size=0, right AOP_PCODE=___str_5, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	285; "LC-meter.c"	lcd_puts("     ");
	MOVLW	high (___str_5 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x1041
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_5 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1042
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1043
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1042,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x1041,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1043,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	286; "LC-meter.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_6, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_6
;; 	line = 7362 result AOP_REG=r0x1064, size=3, left -=-, size=0, right AOP_PCODE=___str_6, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	287; "LC-meter.c"	lcd_puts("RC4=");
	MOVLW	high (___str_6 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x1041
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_6 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1042
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1043
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1042,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x1041,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1043,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _PORTC   offset=0
	.line	290; "LC-meter.c"	lcd_putch(LC_SELECT != 0 ? '1' : '0');
	BANKSEL	_PORTC
	MOVF	_PORTC,W
;; >>> ../../../../src/pic14/gen.c:5051:genGetABit
	ANDLW	0x10
;; >>> ../../../../src/pic14/gen.c:5061:genGetABit
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:5062:genGetABit
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:5067:genGetABit
;;	1126 rIdx = r0x1064 
	BANKSEL	r0x1042
	MOVWF	r0x1042
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1548:genNot *{*
;; ***	genNot  1550
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 1555 result AOP_REG=r0x1065, size=1, left AOP_REG=r0x1064, size=1, right -=-, size=0
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1042,W
;; >>> ../../../../src/pic14/gen.c:1582:genNot
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x1041,W
;; >>> ../../../../src/pic14/gen.c:7040:genIfx
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7041:genIfx
;; ***	popGetLabel  key=5, label offset 112
	GOTO	_00217_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1064, size=2, left -=-, size=0, right AOP_LIT=0x31, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x31
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1042
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1065 
	CLRF	r0x1041
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=6, label offset 112
	GOTO	_00218_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1064, size=2, left -=-, size=0, right AOP_LIT=0x30, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
_00217_DS_:
	MOVLW	0x30
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1064 
	BANKSEL	r0x1042
	MOVWF	r0x1042
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1065 
	CLRF	r0x1041
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1066, size=1, left -=-, size=0, right AOP_REG=r0x1064, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1064 
_00218_DS_:
	BANKSEL	r0x1042
	MOVF	r0x1042,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1043
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;;	708 register type nRegs=2
;; ***	aopForSym 324
;;	336 sym->rname = _testloop_prev_s_65536_71, size = 2
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1062, size=2, right AOP_DIR=_testloop_prev_s_65536_71, size=2
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _testloop_prev_s_65536_71   offset=0
	.line	294; "LC-meter.c"	if(s != prev_s) {
	BANKSEL	_testloop_prev_s_65536_71
	MOVF	_testloop_prev_s_65536_71,W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1126 rIdx = r0x1062 
	BANKSEL	r0x103F
	XORWF	r0x103F,W
;; >>> ../../../../src/pic14/gen.c:3803:genCmpEq
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3806:genCmpEq
;; ***	popGetLabel  key=15, label offset 112
	GOTO	_00227_DS_
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _testloop_prev_s_65536_71   offset=1
	BANKSEL	_testloop_prev_s_65536_71
	MOVF	(_testloop_prev_s_65536_71 + 1),W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1126 rIdx = r0x1063 
	.line	296; "LC-meter.c"	format_number(&ser_putch, s, 10, 0);
	BANKSEL	r0x1040
	XORWF	r0x1040,W
	BTFSC	STATUS,2
	GOTO	_00215_DS_
_00227_DS_:
	MOVLW	0x00
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0a
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1062 
	BANKSEL	r0x103F
	MOVF	r0x103F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1040,W
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	low (_ser_putch+0)
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_ser_putch+0)
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_format_number
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_number
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_3, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_3
;; 	line = 7362 result AOP_REG=r0x1064, size=3, left -=-, size=0, right AOP_PCODE=___str_3, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	298; "LC-meter.c"	ser_puts("\r\n");
	MOVLW	high (___str_3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x1041
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1042
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1043
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=3
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1042,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x1041,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1043,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; ***	aopForSym 324
;;	336 sym->rname = _testloop_prev_s_65536_71, size = 2
;; 	line = 7169 result AOP_DIR=_testloop_prev_s_65536_71, size=2, left -=-, size=0, right AOP_REG=r0x1062, size=2
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1062 
	.line	301; "LC-meter.c"	prev_s = s;
	BANKSEL	r0x103F
	MOVF	r0x103F,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _testloop_prev_s_65536_71   offset=0
	BANKSEL	_testloop_prev_s_65536_71
	MOVWF	_testloop_prev_s_65536_71
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	BANKSEL	r0x1040
	MOVF	r0x1040,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _testloop_prev_s_65536_71   offset=1
	BANKSEL	_testloop_prev_s_65536_71
	MOVWF	(_testloop_prev_s_65536_71 + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00215_DS_:
	.line	303; "LC-meter.c"	}
	RETURN	
; exit point of _testloop
;;	popGetExternal 990 added symbol __sdcc_gsinit_startup
;;	popGetExternal 1008 added extern __sdcc_gsinit_startup

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_LC_meter__delay10ms	code
_delay10ms:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	68; "LC-meter.c"	}
	RETURN	
; exit point of _delay10ms
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*


;	code size estimation:
;	  567+  227 =   794 instructions ( 2042 byte)

	end
