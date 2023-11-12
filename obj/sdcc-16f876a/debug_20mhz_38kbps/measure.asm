;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"src/measure.c"
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
	extern	___fs2uint
	extern	___fsdiv
	extern	___fssub
	extern	___fsmul
	extern	___fslt
	extern	___uint2fs
	extern	_buffer_puts
	extern	_buffer_putch
	extern	_buffer_init
	extern	_timer0_read_ps
	extern	_format_float
	extern	_format_xint32
	extern	_format_number
	extern	_print_buffer
	extern	_print_reading
	extern	_print_unit
	extern	_put_str
	extern	_lcd_putch
	extern	_lcd_gotoxy
	extern	_lcd_clear
	extern	_ser_puts
	extern	_ser_put
	extern	_ser_putch
	extern	_delay10ms
	extern	_delay_ms
	extern	_TRISA
	extern	_PORTC
	extern	_TMR0
	extern	_buffer
	extern	_CCal
	extern	_F3
	extern	_F2
	extern	_F1
	extern	_INTCONbits

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_buf_to_ser
	global	_calibrate
	global	_measure_freq
	global	_measure_capacitance
	global	_measure_inductance

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_measure_0	udata
r0x1045	res	1
r0x1044	res	1
r0x1046	res	1
r0x1026	res	1
r0x1025	res	1
r0x1028	res	1
r0x1027	res	1
r0x1029	res	1
r0x103F	res	1
r0x103E	res	1
r0x1041	res	1
r0x1033	res	1
r0x1032	res	1
r0x1034	res	1
r0x1035	res	1
r0x1036	res	1
r0x1037	res	1
r0x1039	res	1
r0x1038	res	1
r0x103C	res	1
r0x103B	res	1
r0x103A	res	1
r0x102B	res	1
r0x102A	res	1
r0x102C	res	1
r0x102D	res	1
r0x1031	res	1
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
_measure_capacitance_Cin_65536_66	res	4
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

IDC_measure_0	code
; Fmeasure___str_0_0_0 == .
___str_0
	retlw 0x43 ; 'C'
	retlw 0x61 ; 'a'
	retlw 0x6c ; 'l'
	retlw 0x69 ; 'i'
	retlw 0x62 ; 'b'
	retlw 0x72 ; 'r'
	retlw 0x61 ; 'a'
	retlw 0x74 ; 't'
	retlw 0x69 ; 'i'
	retlw 0x6e ; 'n'
	retlw 0x67 ; 'g'
	retlw 0x00 ; '.'

IDC_measure_1	code
; Fmeasure___str_1_0_0 == .
___str_1
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'

IDC_measure_2	code
; Fmeasure___str_2_0_0 == .
___str_2
	retlw 0x70 ; 'p'
	retlw 0x6c ; 'l'
	retlw 0x65 ; 'e'
	retlw 0x61 ; 'a'
	retlw 0x73 ; 's'
	retlw 0x65 ; 'e'
	retlw 0x20 ; ' '
	retlw 0x77 ; 'w'
	retlw 0x61 ; 'a'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x00 ; '.'

IDC_measure_3	code
; Fmeasure___str_3_0_0 == .
___str_3
	retlw 0x46 ; 'F'
	retlw 0x72 ; 'r'
	retlw 0x65 ; 'e'
	retlw 0x71 ; 'q'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_4	code
; Fmeasure___str_4_0_0 == .
___str_4
	retlw 0x43 ; 'C'
	retlw 0x61 ; 'a'
	retlw 0x70 ; 'p'
	retlw 0x61 ; 'a'
	retlw 0x63 ; 'c'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x79 ; 'y'
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_measure_5	code
; Fmeasure___str_5_0_0 == .
___str_5
	retlw 0x76 ; 'v'
	retlw 0x61 ; 'a'
	retlw 0x72 ; 'r'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_6	code
; Fmeasure___str_6_0_0 == .
___str_6
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x46 ; 'F'
	retlw 0x31 ; '1'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_7	code
; Fmeasure___str_7_0_0 == .
___str_7
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x46 ; 'F'
	retlw 0x32 ; '2'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_8	code
; Fmeasure___str_8_0_0 == .
___str_8
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x46 ; 'F'
	retlw 0x33 ; '3'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_9	code
; Fmeasure___str_9_0_0 == .
___str_9
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x43 ; 'C'
	retlw 0x43 ; 'C'
	retlw 0x61 ; 'a'
	retlw 0x6c ; 'l'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_10	code
; Fmeasure___str_10_0_0 == .
___str_10
	retlw 0x43 ; 'C'
	retlw 0x69 ; 'i'
	retlw 0x6e ; 'n'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_11	code
; Fmeasure___str_11_0_0 == .
___str_11
	retlw 0x49 ; 'I'
	retlw 0x6e ; 'n'
	retlw 0x64 ; 'd'
	retlw 0x75 ; 'u'
	retlw 0x63 ; 'c'
	retlw 0x74 ; 't'
	retlw 0x69 ; 'i'
	retlw 0x76 ; 'v'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x79 ; 'y'
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_measure	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsdiv
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsdiv
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;15 compiler assigned registers:
;   STK00
;   r0x102A
;   r0x102B
;   r0x102C
;   STK01
;   STK02
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x102D
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=18previous max_key=11 
S_measure__measure_inductance	code
_measure_inductance:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	225; "src/measure.c"	lcd_gotoxy(0, 0);
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
;;	432: rname ___str_11, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_11
;; 	line = 7362 result AOP_REG=r0x1065, size=3, left -=-, size=0, right AOP_PCODE=___str_11, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	226; "src/measure.c"	put_str("Inductivity ");
	MOVLW	high (___str_11 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x102A
	MOVWF	r0x102A
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_11 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
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
;;	1126 rIdx = r0x1065 
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_put_str
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_put_str
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	228; "src/measure.c"	var = measure_freq();
	PAGESEL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x102A
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	.line	230; "src/measure.c"	F3 = (double)var;
	MOVWF	r0x102B
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_F3, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=3
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=2
	MOVWF	(_F3 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=1
	MOVWF	(_F3 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=0
	MOVWF	_F3
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	.line	231; "src/measure.c"	if(F3 > F1)
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	BANKSEL	_F1
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x102B
	MOVWF	r0x102B
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x102B,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=2, label offset 33
	GOTO	_00135_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	line = 7169 result AOP_DIR=_F3, size=4, left -=-, size=0, right AOP_DIR=_F1, size=4
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	.line	232; "src/measure.c"	F3 = F1; // max freq is F1;
	BANKSEL	_F1
	MOVF	_F1,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=0
	BANKSEL	_F3
	MOVWF	_F3
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	BANKSEL	_F1
	MOVF	(_F1 + 1),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=1
	BANKSEL	_F3
	MOVWF	(_F3 + 1)
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	BANKSEL	_F1
	MOVF	(_F1 + 2),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=2
	BANKSEL	_F3
	MOVWF	(_F3 + 2)
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	BANKSEL	_F1
	MOVF	(_F1 + 3),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=3
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
_00135_DS_:
	.line	233; "src/measure.c"	numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (GATE_PERIOD * GATE_PERIOD);
	BANKSEL	_F1
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	BANKSEL	_F3
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fssub
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fssub
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;;	708 register type nRegs=4
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	MOVF	r0x1031,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x40
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x1c
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x46
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	.line	234; "src/measure.c"	denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	BANKSEL	_F1
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xe6
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xe9
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x1d
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x42
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	BANKSEL	_F1
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVF	r0x1031,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=0
	BANKSEL	_F2
	MOVF	_F2,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=1
	MOVF	(_F2 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=2
	MOVF	(_F2 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=3
	MOVF	(_F2 + 3),W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVF	r0x1031,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=0
	BANKSEL	_F2
	MOVF	_F2,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=1
	MOVF	(_F2 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=2
	MOVF	(_F2 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=3
	MOVF	(_F2 + 3),W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVF	r0x1031,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	BANKSEL	_F3
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVF	r0x1031,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	BANKSEL	_F3
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVF	r0x1031,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=0
	BANKSEL	_CCal
	MOVF	_CCal,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=1
	MOVF	(_CCal + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=2
	MOVF	(_CCal + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=3
	MOVF	(_CCal + 3),W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVF	r0x1031,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106C 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106B 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x106A 
	MOVWF	r0x1030
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	.line	235; "src/measure.c"	Lin = (numerator / denominator) * 1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }
	MOVWF	r0x1031
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106A 
	MOVF	r0x1030,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106B 
	MOVF	r0x102F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x106C 
	MOVF	r0x102E,W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xa9
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x5f
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x63
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x58
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	.line	237; "src/measure.c"	if(Lin > 999) {
	MOVWF	r0x102B
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xc0
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x79
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x44
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	MOVF	r0x1031,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=10, label offset 33
	GOTO	_00143_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	.line	238; "src/measure.c"	if(Lin > (999e+03l)) {
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x80
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xe5
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x73
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x49
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	MOVF	r0x1031,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=7, label offset 33
	GOTO	_00140_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	.line	239; "src/measure.c"	if(Lin > (999e+06l)) {
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x1f
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x2e
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x6e
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x4e
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1069, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVWF	r0x1031
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	MOVF	r0x1031,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=4, label offset 33
	GOTO	_00137_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	240; "src/measure.c"	Lin = Lin / (1e+09l);
	MOVLW	0x28
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x6b
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x6e
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x4e
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1069, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1069 
	.line	241; "src/measure.c"	unit = 0; // "H"
	CLRF	r0x1031
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=11, label offset 33
	GOTO	_00144_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
_00137_DS_:
	.line	243; "src/measure.c"	Lin = Lin / (1e+06l);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x24
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x74
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x49
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x102B
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1069, size=1, left -=-, size=0, right AOP_LIT=0x01, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	244; "src/measure.c"	unit = 1; // "mH"
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=11, label offset 33
	GOTO	_00144_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
_00140_DS_:
	.line	247; "src/measure.c"	Lin = Lin / 1e+03l;
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x7a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x44
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	BANKSEL	r0x102B
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102B
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1069, size=1, left -=-, size=0, right AOP_LIT=0x02, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	248; "src/measure.c"	unit = 2; // "uH"
	MOVLW	0x02
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1069 
	MOVWF	r0x1031
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=11, label offset 33
	GOTO	_00144_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1069, size=1, left -=-, size=0, right AOP_LIT=0x03, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
_00143_DS_:
	.line	251; "src/measure.c"	unit = 3; // "nH"
	MOVLW	0x03
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1069 
	BANKSEL	r0x1031
	MOVWF	r0x1031
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
_00144_DS_:
	.line	253; "src/measure.c"	Lin = Lin * 100; // scale to 2 decimal place
	BANKSEL	r0x102B
	MOVF	r0x102B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xc8
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x42
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x102C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	.line	254; "src/measure.c"	var = (uint16_t)Lin;
	MOVWF	r0x102B
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x102C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fs2uint
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fs2uint
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1065, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x102A
	MOVWF	r0x102A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	.line	256; "src/measure.c"	print_reading(var);
	MOVWF	r0x102B
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102A,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_print_reading
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_print_reading
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1069 
	.line	257; "src/measure.c"	print_unit(unit);
	BANKSEL	r0x1031
	MOVF	r0x1031,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_print_unit
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_print_unit
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	258; "src/measure.c"	}
	RETURN	
; exit point of _measure_inductance

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _ser_puts
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _ser_puts
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;19 compiler assigned registers:
;   STK00
;   r0x1032
;   r0x1033
;   r0x1034
;   STK01
;   STK02
;   r0x1035
;   r0x1036
;   r0x1037
;   STK04
;   STK03
;   STK06
;   STK05
;   r0x1038
;   r0x1039
;   r0x103A
;   r0x103B
;   r0x103C
;   r0x103D
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=14previous max_key=0 
S_measure__measure_capacitance	code
_measure_capacitance:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	139; "src/measure.c"	lcd_gotoxy(0, 0);
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
;;	432: rname ___str_4, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_4
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_4, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	140; "src/measure.c"	put_str("Capacity ");
	MOVLW	high (___str_4 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_4 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_put_str
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_put_str
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	142; "src/measure.c"	var = measure_freq();
	PAGESEL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	.line	144; "src/measure.c"	F3 = (double)var;
	MOVWF	r0x1033
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_F3, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=3
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=2
	MOVWF	(_F3 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=1
	MOVWF	(_F3 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F3   offset=0
	MOVWF	_F3
;; 	2238 left AOP_DIR
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
;; 	line = 7362 result AOP_REG=r0x105A, size=3, left -=-, size=0, right AOP_PCODE=___str_5, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	147; "src/measure.c"	ser_puts("var=");
	MOVLW	high (___str_5 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_5 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x1036
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
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1036,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=4
;; 	line = 7362 result AOP_REG=r0x105A, size=4, left -=-, size=0, right AOP_REG=r0x1058, size=2
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x1058 
;;103	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x105A 
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x1059 
;;105	MOVF	r0x1032,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x105B 
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x105C 
	.line	148; "src/measure.c"	format_xint32(&ser_putch, var);
	BANKSEL	r0x1036
	CLRF	r0x1036
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x105D 
	CLRF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
;;102	MOVF	r0x1034,W
	MOVF	r0x1033,W
	MOVWF	r0x1034
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
;;104	MOVF	r0x1035,W
	MOVF	r0x1032,W
	MOVWF	r0x1035
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVLW	0x00
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVLW	0x00
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
	PAGESEL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_xint32
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
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_6, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	150; "src/measure.c"	ser_puts("\r\nF1=");
	MOVLW	high (___str_6 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_6 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	.line	151; "src/measure.c"	format_float(&ser_putch, F1);
	BANKSEL	_F1
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
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
	.line	153; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname _F1, val 0, const = 0
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_F1
;; 	line = 7362 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_PCODE=_F1, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	154; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&F1);
	MOVLW	high (_F1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(_F1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1034
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x1036
	MOVWF	r0x1036
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	BANKSEL	r0x1037
	MOVWF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1036,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1037,W
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
	PAGESEL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_7, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_7
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_7, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	156; "src/measure.c"	ser_puts("\r\nF2=");
	MOVLW	high (___str_7 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_7 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=0
	.line	157; "src/measure.c"	format_float(&ser_putch, F2);
	BANKSEL	_F2
	MOVF	_F2,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=1
	MOVF	(_F2 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=2
	MOVF	(_F2 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=3
	MOVF	(_F2 + 3),W
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
	.line	159; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname _F2, val 0, const = 0
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_F2
;; 	line = 7362 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_PCODE=_F2, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	160; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&F2);
	MOVLW	high (_F2 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(_F2 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1034
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x1036
	MOVWF	r0x1036
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	BANKSEL	r0x1037
	MOVWF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1036,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1037,W
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
	PAGESEL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_8, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_8
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_8, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	162; "src/measure.c"	ser_puts("\r\nF3=");
	MOVLW	high (___str_8 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_8 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	.line	163; "src/measure.c"	format_float(&ser_putch, F3);
	BANKSEL	_F3
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
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
	.line	165; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname _F3, val 0, const = 0
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_F3
;; 	line = 7362 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_PCODE=_F3, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	166; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&F3);
	MOVLW	high (_F3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(_F3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1034
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x1036
	MOVWF	r0x1036
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	BANKSEL	r0x1037
	MOVWF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1036,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1037,W
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
	PAGESEL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_9, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_9
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_9, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	168; "src/measure.c"	ser_puts("\r\nCCal=");
	MOVLW	high (___str_9 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_9 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
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
;;	353 size = 2, name =_ser_putch
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1041  _CCal   offset=0 - had to alloc by reg name
	.line	169; "src/measure.c"	format_float(&ser_putch, CCal);
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
	.line	171; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname _CCal, val 0, const = 0
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_CCal
;; 	line = 7362 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_PCODE=_CCal, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	172; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&CCal);
	MOVLW	high (_CCal + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(_CCal + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1034
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x1036
	MOVWF	r0x1036
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	BANKSEL	r0x1037
	MOVWF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1036,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1037,W
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
	PAGESEL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_1, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_1
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_1, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	174; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	.line	178; "src/measure.c"	if(F3 > F1)
	BANKSEL	_F3
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	BANKSEL	_F1
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=2, label offset 18
	GOTO	_00120_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	line = 7169 result AOP_DIR=_F3, size=4, left -=-, size=0, right AOP_DIR=_F1, size=4
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	.line	179; "src/measure.c"	F3 = F1; // max freq is F1;
	BANKSEL	_F1
	MOVF	_F1,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=0
	BANKSEL	_F3
	MOVWF	_F3
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	BANKSEL	_F1
	MOVF	(_F1 + 1),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=1
	BANKSEL	_F3
	MOVWF	(_F3 + 1)
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	BANKSEL	_F1
	MOVF	(_F1 + 2),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=2
	BANKSEL	_F3
	MOVWF	(_F3 + 2)
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	BANKSEL	_F1
	MOVF	(_F1 + 3),W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _F3   offset=3
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=0
_00120_DS_:
	.line	181; "src/measure.c"	Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	BANKSEL	_F2
	MOVF	_F2,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=1
	MOVF	(_F2 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=2
	MOVF	(_F2 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=3
	MOVF	(_F2 + 3),W
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=0
	MOVF	_F2,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=1
	MOVF	(_F2 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=2
	MOVF	(_F2 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F2   offset=3
	MOVF	(_F2 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	MOVWF	r0x1032
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	BANKSEL	_F1
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=0
	MOVF	_F1,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=1
	MOVF	(_F1 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=2
	MOVF	(_F1 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F1   offset=3
	MOVF	(_F1 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105C, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105F 
	BANKSEL	r0x1038
	MOVWF	r0x1038
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105E 
	MOVWF	r0x1039
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1037
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x1036
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	BANKSEL	_F3
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;; ***	aopForSym 324
;;	336 sym->rname = _F3, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=0
	MOVF	_F3,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=1
	MOVF	(_F3 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=2
	MOVF	(_F3 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _F3   offset=3
	MOVF	(_F3 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1060, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1063 
	BANKSEL	r0x103A
	MOVWF	r0x103A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
	MOVWF	r0x103B
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	MOVWF	r0x103C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1060 
;;1	MOVWF	r0x103D
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1061 
	MOVF	r0x103C,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1062 
	MOVF	r0x103B,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x103A,W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1036,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1037,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1039,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105F 
	MOVF	r0x1038,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fssub
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fssub
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105C, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105F 
	BANKSEL	r0x1038
	MOVWF	r0x1038
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105E 
	MOVWF	r0x1039
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1037
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x1036
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1037,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1039,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105F 
	MOVF	r0x1038,W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	MOVWF	r0x1032
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	336 sym->rname = _CCal, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=0
	BANKSEL	_CCal
	MOVF	_CCal,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=1
	MOVF	(_CCal + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=2
	MOVF	(_CCal + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _CCal   offset=3
	MOVF	(_CCal + 3),W
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_measure_capacitance_Cin_65536_66, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	MOVWF	_measure_capacitance_Cin_65536_66
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_10, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_10
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_10, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	185; "src/measure.c"	ser_puts("Cin=");
	MOVLW	high (___str_10 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_10 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	.line	186; "src/measure.c"	format_float(&ser_putch, Cin);
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
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
	.line	187; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname _measure_capacitance_Cin_65536_66, val 0, const = 0
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_measure_capacitance_Cin_65536_66
;; 	line = 7362 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_PCODE=_measure_capacitance_Cin_65536_66, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	188; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&Cin);
	MOVLW	high (_measure_capacitance_Cin_65536_66 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(_measure_capacitance_Cin_65536_66 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1034
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x1036
	MOVWF	r0x1036
;; >>> ../../../../src/pic14/gen.c:5875:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	BANKSEL	r0x1037
	MOVWF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=4
;; ***	aopForSym 324
;;	353 size = 2, name =_ser_putch
;;	708 register type nRegs=4
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1035,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x1036,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1037,W
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
	PAGESEL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_xint32
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_1, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_1
;; 	line = 7362 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_1, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	189; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1032
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1033
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1034
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
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1032,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	.line	191; "src/measure.c"	if(Cin > 999) {
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xc0
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x79
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x44
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=10, label offset 18
	GOTO	_00128_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	.line	192; "src/measure.c"	if(Cin > (999e+03l)) {
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x80
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xe5
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x73
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x49
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=7, label offset 18
	GOTO	_00125_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	.line	193; "src/measure.c"	if(Cin > (999e+06l)) {
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x1f
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x2e
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x6e
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x4e
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fslt
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fslt
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=4, label offset 18
	GOTO	_00122_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	194; "src/measure.c"	Cin = Cin / (1e+09);
	MOVLW	0x28
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x6b
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x6e
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x4e
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_measure_capacitance_Cin_65536_66, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	MOVWF	_measure_capacitance_Cin_65536_66
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1058, size=1, left -=-, size=0, right AOP_LIT=0x04, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	195; "src/measure.c"	unit = 4; //"mF"
	MOVLW	0x04
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=11, label offset 18
	GOTO	_00129_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
_00122_DS_:
	.line	197; "src/measure.c"	Cin = Cin / (1e+06);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x24
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x74
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x49
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_measure_capacitance_Cin_65536_66, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	MOVWF	_measure_capacitance_Cin_65536_66
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1058, size=1, left -=-, size=0, right AOP_LIT=0x05, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	198; "src/measure.c"	unit = 5; //"uF"
	MOVLW	0x05
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=11, label offset 18
	GOTO	_00129_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
_00125_DS_:
	.line	201; "src/measure.c"	Cin = Cin / 1e+03;
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x7a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x44
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsdiv
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_measure_capacitance_Cin_65536_66, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	MOVWF	_measure_capacitance_Cin_65536_66
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1058, size=1, left -=-, size=0, right AOP_LIT=0x06, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	202; "src/measure.c"	unit = 6; //"nF"
	MOVLW	0x06
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=11, label offset 18
	GOTO	_00129_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1058, size=1, left -=-, size=0, right AOP_LIT=0x07, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
_00128_DS_:
	.line	205; "src/measure.c"	unit = 7; //"pF"
	MOVLW	0x07
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
_00129_DS_:
	.line	207; "src/measure.c"	Cin = Cin * 100; // scale to 2 decimal place
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x79
	MOVWF	STK06
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7a
	MOVWF	STK05
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7b
	MOVWF	STK04
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0xc8
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x42
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fsmul
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_measure_capacitance_Cin_65536_66, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	MOVWF	_measure_capacitance_Cin_65536_66
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; ***	aopForSym 324
;;	336 sym->rname = _measure_capacitance_Cin_65536_66, size = 4
;; 	2158 left AOP_DIR
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=0
	.line	208; "src/measure.c"	var = (uint16_t)Cin;
	MOVF	_measure_capacitance_Cin_65536_66,W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=1
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=2
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
;; 	2158 left AOP_DIR
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=3
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _measure_capacitance_Cin_65536_66   offset=3
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___fs2uint
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___fs2uint
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1059, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1034
	MOVWF	r0x1034
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	.line	210; "src/measure.c"	print_reading(var);
	MOVWF	r0x1032
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_print_reading
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_print_reading
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	.line	211; "src/measure.c"	print_unit(unit);
	BANKSEL	r0x1033
	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_print_unit
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_print_unit
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	212; "src/measure.c"	}
	RETURN	
; exit point of _measure_capacitance
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_put
;   _ser_put
;10 compiler assigned registers:
;   r0x103E
;   r0x103F
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;   STK03
;   STK02
;   STK01
;   STK00
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=10previous max_key=0 
S_measure__buf_to_ser	code
_buf_to_ser:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer
;; 	line = 7362 result AOP_REG=r0x104F, size=3, left -=-, size=0, right AOP_PCODE=_buffer, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	122; "src/measure.c"	ser_put(buffer.x, buffer.n);
	MOVLW	high (_buffer + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1050 
	BANKSEL	r0x103E
	MOVWF	r0x103E
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(_buffer + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104F 
	MOVWF	r0x103F
;; ***	genCast  7465 (tag=0)
;; >>> ../../../../src/pic14/gen.c:7484:genCast
;;	1126 rIdx = r0x1051 
;;1	CLRF	r0x1040
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;; >>> ../../../../src/pic14/gen.c:6012:emitPtrGet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	BANKSEL	r0x1041
	MOVWF	r0x1041
;;	1126 rIdx = r0x1052 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1041,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1041,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1053, size=2, left -=-, size=0, right AOP_REG=r0x1052, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x1052 
;;101	MOVF	r0x1041,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x1053 
;;99	MOVWF	r0x1042
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1054 
;;1	CLRF	r0x1043
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=2
;;	708 register type nRegs=3
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
;;100	MOVF	r0x1042,W
	MOVF	r0x1041,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVWF	STK03
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1054 
	MOVLW	0x00
;;	708 register type nRegs=3
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104F 
	MOVF	r0x103F,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
	MOVF	r0x103E,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_put
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_put
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6855 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;; >>> ../../../../src/pic14/gen.c:6537:emitPtrPut
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	.line	123; "src/measure.c"	BUFFER_CLEAR();
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6541:emitPtrPut
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVWF	(_buffer + 16)
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVWF	(_buffer + 16)
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	124; "src/measure.c"	}
	RETURN	
; exit point of _buf_to_ser
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _timer0_read_ps
;   _lcd_gotoxy
;   _buffer_init
;   _buffer_puts
;   _format_number
;   _print_buffer
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _timer0_read_ps
;   _lcd_gotoxy
;   _buffer_init
;   _buffer_puts
;   _format_number
;   _print_buffer
;10 compiler assigned registers:
;   STK00
;   r0x1025
;   r0x1026
;   r0x1027
;   r0x1028
;   r0x1029
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
;; ***	genFunction  2384 curr label offset=4previous max_key=2 
S_measure__measure_freq	code
_measure_freq:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6855 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	76; "src/measure.c"	TMR0IF = 0;
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,2
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_TRISA, size=1, left AOP_DIR=_TRISA, size=1, right AOP_LIT=0xef, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	80; "src/measure.c"	TRISA &= ~0b00010000;
	BANKSEL	_TRISA
	BCF	_TRISA,4
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	82; "src/measure.c"	delay_ms(20); // stablize oscillator
	MOVLW	0x14
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _TMR0, size = 1
;; 	line = 7169 result AOP_DIR=_TMR0, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _TMR0   offset=0
	.line	85; "src/measure.c"	TMR0 = 0x00;
	BANKSEL	_TMR0
	CLRF	_TMR0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	90; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	91; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	92; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	93; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	94; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	95; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	96; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	97; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	98; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	99; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_TRISA, size=1, left AOP_DIR=_TRISA, size=1, right AOP_LIT=0x10, size=1
;; 	line = 4357 result AOP_DIR=_TRISA, size=1, left AOP_DIR=_TRISA, size=1, right AOP_LIT=0x10, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	104; "src/measure.c"	TRISA |= 0b00010000;
	BANKSEL	_TRISA
	BSF	_TRISA,4
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	107; "src/measure.c"	count = timer0_read_ps();
	PAGESEL	_timer0_read_ps
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_timer0_read_ps
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104A, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104B 
	BANKSEL	r0x1025
	MOVWF	r0x1025
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104A 
	MOVWF	r0x1026
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	110; "src/measure.c"	lcd_gotoxy(0, 1);
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
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	112; "src/measure.c"	buffer_init();
	PAGESEL	_buffer_init
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_buffer_init
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
;; 	line = 7362 result AOP_REG=r0x104C, size=3, left -=-, size=0, right AOP_PCODE=___str_3, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	113; "src/measure.c"	buffer_puts("Freq=");
	MOVLW	high (___str_3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
	BANKSEL	r0x1027
	MOVWF	r0x1027
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_3 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104C 
	MOVWF	r0x1028
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104E 
	MOVWF	r0x1029
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
;;	1126 rIdx = r0x104C 
	MOVF	r0x1028,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
	MOVF	r0x1027,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104E 
	MOVF	r0x1029,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_buffer_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_buffer_puts
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
;;	353 size = 2, name =_buffer_putch
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	114; "src/measure.c"	format_number(&buffer_putch, count, 10, 5);
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
;;	1126 rIdx = r0x104A 
	BANKSEL	r0x1026
	MOVF	r0x1026,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104B 
	MOVF	r0x1025,W
;; ***	aopForSym 324
;;	353 size = 2, name =_buffer_putch
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	low (_buffer_putch+0)
;; 	2158 left AOP_PCODE
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_buffer_putch+0)
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_format_number
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_format_number
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	115; "src/measure.c"	print_buffer();
	PAGESEL	_print_buffer
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_print_buffer
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104A 
	.line	117; "src/measure.c"	return count;
	BANKSEL	r0x1026
	MOVF	r0x1026,W
;; >>> ../../../../src/pic14/gen.c:1430:pass_argument
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104B 
	MOVF	r0x1025,W
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	118; "src/measure.c"	}
	RETURN	
; exit point of _measure_freq
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_clear
;   _lcd_gotoxy
;   _put_str
;   _lcd_gotoxy
;   _ser_puts
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _lcd_gotoxy
;   _lcd_putch
;   _delay10ms
;   _ser_puts
;   _lcd_clear
;   _lcd_gotoxy
;   _put_str
;   _lcd_gotoxy
;   _ser_puts
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _lcd_gotoxy
;   _lcd_putch
;   _delay10ms
;   _ser_puts
;6 compiler assigned registers:
;   STK00
;   r0x1044
;   r0x1045
;   r0x1046
;   STK01
;   STK02
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_measure__calibrate	code
_calibrate:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	30; "src/measure.c"	lcd_clear();
	PAGESEL	_lcd_clear
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_clear
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
	.line	32; "src/measure.c"	lcd_gotoxy(0, 0);
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
;; 	line = 7362 result AOP_REG=r0x1047, size=3, left -=-, size=0, right AOP_PCODE=___str_0, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	33; "src/measure.c"	put_str("Calibrating");
	MOVLW	high (___str_0 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_0 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1049 
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
;;	1126 rIdx = r0x1047 
	MOVF	r0x1045,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x1046,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_put_str
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_put_str
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
	.line	35; "src/measure.c"	lcd_gotoxy(0, 1);
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
;;	432: rname ___str_1, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_1
;; 	line = 7362 result AOP_REG=r0x1047, size=3, left -=-, size=0, right AOP_PCODE=___str_1, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	37; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1049 
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
;;	1126 rIdx = r0x1047 
	MOVF	r0x1045,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x1046,W
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
;;	432: rname ___str_2, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_2
;; 	line = 7362 result AOP_REG=r0x1047, size=3, left -=-, size=0, right AOP_PCODE=___str_2, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	39; "src/measure.c"	put_str("please wait...");
	MOVLW	high (___str_2 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_2 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1049 
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
;;	1126 rIdx = r0x1047 
	MOVF	r0x1045,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x1046,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_put_str
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_put_str
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
	.line	42; "src/measure.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	44; "src/measure.c"	F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
	PAGESEL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_F1, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=3
	BANKSEL	_F1
	MOVWF	(_F1 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=2
	MOVWF	(_F1 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=1
	MOVWF	(_F1 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=0
	MOVWF	_F1
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	45; "src/measure.c"	delay10ms(50);
	MOVLW	0x32
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
	.line	47; "src/measure.c"	F1 = (double)measure_freq();
	PAGESEL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _F1, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_F1, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=3
	BANKSEL	_F1
	MOVWF	(_F1 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=2
	MOVWF	(_F1 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=1
	MOVWF	(_F1 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F1   offset=0
	MOVWF	_F1
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4357 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	48; "src/measure.c"	ADD_CCAL();
	BANKSEL	_PORTC
	BSF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	.line	50; "src/measure.c"	F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
	PAGESEL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_F2, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=3
	BANKSEL	_F2
	MOVWF	(_F2 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=2
	MOVWF	(_F2 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=1
	MOVWF	(_F2 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=0
	MOVWF	_F2
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	51; "src/measure.c"	delay10ms(50);
	MOVLW	0x32
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
	.line	53; "src/measure.c"	F2 = (double)measure_freq();
	PAGESEL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_measure_freq
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	BANKSEL	r0x1044
	MOVWF	r0x1044
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	___uint2fs
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;; ***	aopForSym 324
;;	336 sym->rname = _F2, size = 4
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_DIR=_F2, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=3
	BANKSEL	_F2
	MOVWF	(_F2 + 3)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=2
	MOVWF	(_F2 + 2)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=1
	MOVWF	(_F2 + 1)
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1027
;;	1045  _F2   offset=0
	MOVWF	_F2
;; 	2238 left AOP_DIR
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	54; "src/measure.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	57; "src/measure.c"	lcd_gotoxy(11, 0);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0b
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1047, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1047 
	.line	58; "src/measure.c"	for(i = 0; i < 6; i++) { // show progress bar
	BANKSEL	r0x1045
	CLRF	r0x1045
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
_00106_DS_:
	.line	59; "src/measure.c"	lcd_putch('=');
	MOVLW	0x3d
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	61; "src/measure.c"	delay10ms(28);
	MOVLW	0x1c
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay10ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	589
;; 	line = 714 result AOP_REG=r0x1047, size=1, left AOP_REG=r0x1047, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1047 
	.line	58; "src/measure.c"	for(i = 0; i < 6; i++) { // show progress bar
	BANKSEL	r0x1045
	INCF	r0x1045,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;unsigned compare: left < lit(0x6=6), size=1
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x06
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1047 
	SUBWF	r0x1045,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;;genSkipc:3307: created from rifx:0x7ffef9e7b340
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	627
;;	aopForRemat 406
;;	432: rname ___str_1, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_1
;; 	line = 7362 result AOP_REG=r0x1047, size=3, left -=-, size=0, right AOP_PCODE=___str_1, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	65; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	MOVWF	r0x1044
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_1 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1045
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1049 
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
;;	1126 rIdx = r0x1047 
	MOVF	r0x1045,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1044,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x1046,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	67; "src/measure.c"	}
	RETURN	
; exit point of _calibrate
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*


;	code size estimation:
;	 1510+  421 =  1931 instructions ( 4704 byte)

	end
