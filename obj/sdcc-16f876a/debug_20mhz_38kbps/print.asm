;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"src/print.c"
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
	extern	__moduint
	extern	__divuint
	extern	_format_number
	extern	_ser_puts
	extern	_ser_putch
	extern	_lcd_putch
	extern	_lcd_gotoxy
	extern	_lcd_puts
	extern	_buffer_putch
	extern	_buffer
	extern	__gptrget1

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
	global	_lcd_put
	global	_print_digit
	global	_print_unit
	global	_print_reading
	global	_print_indicator
	global	_output_putch
	global	_put_str
	global	_print_buffer

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_print_0	udata
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
r0x1032	res	1
r0x1031	res	1
r0x1033	res	1
r0x1034	res	1
r0x102C	res	1
r0x102D	res	1
r0x1029	res	1
r0x102A	res	1
r0x102B	res	1
r0x1024	res	1
r0x1023	res	1
r0x1026	res	1
r0x1025	res	1
r0x1027	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x1016	res	1
r0x1019	res	1
r0x1018	res	1
r0x1017	res	1
r0x101A	res	1
r0x101B	res	1
r0x101C	res	1
r0x101D	res	1
r0x101F	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

IDD_print_0	idata
; Lprint_print_unit_units_65536_50 == .
_print_unit_units_65536_50
	db	low(___str_0), high(___str_0), 0x80
	db	low(___str_1), high(___str_1), 0x80
	db	low(___str_2), high(___str_2), 0x80
	db	low(___str_3), high(___str_3), 0x80
	db	low(___str_4), high(___str_4), 0x80
	db	low(___str_5), high(___str_5), 0x80
	db	low(___str_6), high(___str_6), 0x80
	db	low(___str_7), high(___str_7), 0x80


IDC_print_1	code
; Fprint___str_0_0_0 == .
___str_0
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_2	code
; Fprint___str_1_0_0 == .
___str_1
	retlw 0x6d ; 'm'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_3	code
; Fprint___str_2_0_0 == .
___str_2
	retlw 0x75 ; 'u'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_4	code
; Fprint___str_3_0_0 == .
___str_3
	retlw 0x6e ; 'n'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_5	code
; Fprint___str_4_0_0 == .
___str_4
	retlw 0x6d ; 'm'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_6	code
; Fprint___str_5_0_0 == .
___str_5
	retlw 0x75 ; 'u'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_7	code
; Fprint___str_6_0_0 == .
___str_6
	retlw 0x6e ; 'n'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_8	code
; Fprint___str_7_0_0 == .
___str_7
	retlw 0x70 ; 'p'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_9	code
; Fprint___str_8_0_0 == .
___str_8
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_print_10	code
; Fprint___str_9_0_0 == .
___str_9
	retlw 0x2d ; '-'
	retlw 0x2a ; '*'
	retlw 0x2d ; '-'
	retlw 0x00 ; '.'

IDC_print_11	code
; Fprint___str_10_0_0 == .
___str_10
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_print_12	code
; Fprint___str_11_0_0 == .
___str_11
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
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
code_print	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_putch
;   _ser_puts
;   _ser_putch
;   _ser_puts
;7 compiler assigned registers:
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   STK01
;   STK00
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=36previous max_key=5 
S_print__print_buffer	code
_print_buffer:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1065 
	.line	513; "src/print.c"	for(i = 0; i < buffer.n; i++) {
	BANKSEL	r0x1011
	CLRF	r0x1011
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
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
_00148_DS_:
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x1012
	MOVWF	r0x1012
;;	1126 rIdx = r0x1066 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1012,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1012,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1067, size=1, left -=-, size=0, right AOP_REG=r0x1065, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1065 
;;111	MOVF	r0x1011,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1067 
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1068, size=1, left -=-, size=0, right AOP_REG=r0x1066, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1066 
;;113	MOVF	r0x1012,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1068 
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
;;110	MOVF	r0x1013,W
	MOVF	r0x1011,W
	MOVWF	r0x1013
;; >>> ../../../../src/pic14/gen.c:3522:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3523:genCmp
	MOVWF	r0x1015
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1068 
;;112	MOVF	r0x1014,W
	MOVF	r0x1012,W
	MOVWF	r0x1014
;; >>> ../../../../src/pic14/gen.c:3525:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3526:genCmp
	SUBWF	r0x1015,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=1, label offset 45
	GOTO	_00146_DS_
;;genSkipc:3307: created from rifx:0x7ffe4cd207d0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 0, const = 0
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer
;; 	line = 714 result AOP_REG=r0x1066, size=2, left AOP_PCODE=_buffer, size=2, right AOP_REG=r0x1065, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x1065 
	.line	514; "src/print.c"	ser_putch(buffer.x[i]);
	MOVF	r0x1011,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_buffer + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1012
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_buffer + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x1067 
	MOVWF	r0x1013
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	708 register type nRegs=2
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1012,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1013
	BTFSC	r0x1013,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x1014
	MOVWF	r0x1014
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	589
;; 	line = 714 result AOP_REG=r0x1065, size=1, left AOP_REG=r0x1065, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1065 
	.line	513; "src/print.c"	for(i = 0; i < buffer.n; i++) {
	BANKSEL	r0x1011
	INCF	r0x1011,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=3, label offset 45
	GOTO	_00148_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
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
_00146_DS_:
	.line	516; "src/print.c"	ser_puts("\r\n");
	MOVLW	high (___str_11 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x1012
	MOVWF	r0x1012
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_11 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1011
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x1013
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
	MOVF	r0x1011,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1012,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x1013,W
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
	.line	518; "src/print.c"	}
	RETURN	
; exit point of _print_buffer

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _output_putch
;   __gptrget1
;   _output_putch
;11 compiler assigned registers:
;   r0x1017
;   STK00
;   r0x1018
;   STK01
;   r0x1019
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=32previous max_key=0 
S_print__put_str	code
_put_str:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105C, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105E 
	.line	501; "src/print.c"	put_str(const char* s) {
	BANKSEL	r0x1017
	MOVWF	r0x1017
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1018
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x1019
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x105F, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x105F 
	.line	504; "src/print.c"	for(i = 0; s[i]; i++) {
	CLRF	r0x101A
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1060 
	CLRF	r0x101B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	708 register type nRegs=2
;;	708 register type nRegs=3
;; 	line = 714 result AOP_REG=r0x1061, size=3, left AOP_REG=r0x105C, size=3, right AOP_REG=r0x105F, size=2
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  814
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x105F 
_00139_DS_:
	BANKSEL	r0x101A
	MOVF	r0x101A,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
;;	1126 rIdx = r0x105C 
	ADDWF	r0x1019,W
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1061 
	MOVWF	r0x101C
;; >>> ../../../../src/pic14/genarith.c:880:genPlus
;;	1126 rIdx = r0x105D 
	MOVF	r0x1018,W
;; >>> ../../../../src/pic14/genarith.c:881:genPlus
;;	1126 rIdx = r0x1062 
	MOVWF	r0x101D
;; >>> ../../../../src/pic14/genarith.c:883:genPlus
;;	1126 rIdx = r0x1060 
	MOVF	r0x101B,W
;; >>> ../../../../src/pic14/genarith.c:884:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:885:genPlus
;;	1126 rIdx = r0x1060 
	INCFSZ	r0x101B,W
;; >>> ../../../../src/pic14/genarith.c:886:genPlus
;;	1126 rIdx = r0x1062 
	ADDWF	r0x101D,F
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
;;104	MOVF	r0x1017,W
;; >>> ../../../../src/pic14/genarith.c:1024:genPlus
;;	1126 rIdx = r0x1063 
;;102	MOVWF	r0x101E
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x1064, size=1, left AOP_REG=r0x1061, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1061 
	MOVF	r0x101C,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1062 
	MOVF	r0x101D,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
;;103	MOVF	r0x101E,W
	MOVF	r0x1017,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	BANKSEL	r0x101F
	MOVWF	r0x101F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x101F,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=5, label offset 36
	GOTO	_00141_DS_
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
;;	1126 rIdx = r0x1064 
	.line	505; "src/print.c"	output_putch(s[i]);
	MOVF	r0x101F,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_output_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_output_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=2
;;	589
;; 	line = 714 result AOP_REG=r0x105F, size=2, left AOP_REG=r0x105F, size=2, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x105F 
	.line	504; "src/print.c"	for(i = 0; s[i]; i++) {
	BANKSEL	r0x101A
	INCF	r0x101A,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x1060 
	INCF	r0x101B,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=3, label offset 36
	GOTO	_00139_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00141_DS_:
	.line	507; "src/print.c"	}
	RETURN	
; exit point of _put_str
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_putch
;   _ser_putch
;   _lcd_putch
;   _ser_putch
;1 compiler assigned register :
;   r0x1016
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=24previous max_key=4 
S_print__output_putch	code
_output_putch:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105B, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	.line	488; "src/print.c"	output_putch(char c) {
	BANKSEL	r0x1016
	MOVWF	r0x1016
	.line	490; "src/print.c"	lcd_putch(c);
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
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
;;	1126 rIdx = r0x105B 
	.line	493; "src/print.c"	ser_putch(c);
	BANKSEL	r0x1016
	MOVF	r0x1016,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	495; "src/print.c"	}
	RETURN	
; exit point of _output_putch
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_puts
;5 compiler assigned registers:
;   r0x1020
;   STK00
;   r0x1021
;   r0x1022
;   STK01
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=20previous max_key=0 
S_print__print_indicator	code
_print_indicator:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	.line	464; "src/print.c"	print_indicator(uint8_t indicate) {
	BANKSEL	r0x1020
	MOVWF	r0x1020
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	478; "src/print.c"	lcd_gotoxy(0, 1);
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
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	.line	479; "src/print.c"	if(indicate) {
	BANKSEL	r0x1020
	MOVF	r0x1020,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=2, label offset 24
	GOTO	_00126_DS_
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
	.line	480; "src/print.c"	lcd_puts("-*-");
	MOVLW	high (___str_9 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	MOVWF	r0x1021
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_9 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1020
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1022
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
	MOVF	r0x1020,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1021,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1022,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=4, label offset 24
	GOTO	_00128_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
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
_00126_DS_:
	.line	482; "src/print.c"	lcd_puts("   ");
	MOVLW	high (___str_10 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x1021
	MOVWF	r0x1021
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_10 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1020
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1022
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
	MOVF	r0x1020,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1021,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1022,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_puts
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00128_DS_:
	.line	485; "src/print.c"	}
	RETURN	
; exit point of _print_indicator
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   __divuint
;   _format_number
;   __moduint
;   _format_number
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   __divuint
;   _format_number
;   __moduint
;   _format_number
;11 compiler assigned registers:
;   r0x1023
;   STK00
;   r0x1024
;   r0x1025
;   r0x1026
;   r0x1027
;   STK01
;   STK02
;   r0x1028
;   STK04
;   STK03
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=16previous max_key=0 
S_print__print_reading	code
_print_reading:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1052, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1053 
	.line	424; "src/print.c"	print_reading(uint16_t measurement) {
	BANKSEL	r0x1023
	MOVWF	r0x1023
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1024
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	451; "src/print.c"	lcd_gotoxy(9, 0);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x09
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
;;	432: rname ___str_8, val 0, const = 0
;;	708 register type nRegs=3
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_8
;; 	line = 7362 result AOP_REG=r0x1054, size=3, left -=-, size=0, right AOP_PCODE=___str_8, size=2
;; ***	genCast  7408 (size=2)
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	452; "src/print.c"	lcd_puts("     ");
	MOVLW	high (___str_8 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1025
	MOVWF	r0x1025
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	(___str_8 + 0)
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1026
;; ***	genCast  7465 (tag=128)
;; >>> ../../../../src/pic14/gen.c:7488:genCast
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1056 
	MOVWF	r0x1027
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
;;	1126 rIdx = r0x1054 
	MOVF	r0x1026,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
	MOVF	r0x1025,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1027,W
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
	.line	453; "src/print.c"	lcd_gotoxy(9, 0);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x09
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1054, size=2, left -=-, size=0, right AOP_REG=r0x1052, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1052 
;;107	MOVF	r0x1024,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1054 
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1053 
;;109	MOVF	r0x1023,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1055 
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=2
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	455; "src/print.c"	format_number(&buffer_putch, measurement / 100, 10, 0);
	MOVLW	0x64
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
;;	1126 rIdx = r0x1054 
;;106	MOVF	r0x1026,W
	BANKSEL	r0x1024
	MOVF	r0x1024,W
	MOVWF	r0x1026
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
;;108	MOVF	r0x1025,W
	MOVF	r0x1023,W
	MOVWF	r0x1025
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	__divuint
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	__divuint
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1052, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1053 
	BANKSEL	r0x1023
	MOVWF	r0x1023
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1024
	MOVWF	r0x1027
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1053 
;;101	MOVF	r0x1023,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1057 
;;99	MOVWF	r0x1028
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
	MOVLW	0x00
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
;;	1126 rIdx = r0x1056 
	MOVF	r0x1027,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
;;100	MOVF	r0x1028,W
	MOVF	r0x1023,W
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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=2
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	457; "src/print.c"	format_number(&buffer_putch, measurement % 100, 10, 0);
	MOVLW	0x64
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
;;	1126 rIdx = r0x1054 
	BANKSEL	r0x1026
	MOVF	r0x1026,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
	MOVF	r0x1025,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	__moduint
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	__moduint
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1052, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1053 
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVWF	r0x1023
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1024
	MOVWF	r0x1026
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1053 
;;105	MOVF	r0x1023,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1055 
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
	MOVLW	0x00
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
;;	1126 rIdx = r0x1054 
	MOVF	r0x1026,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
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
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	460; "src/print.c"	}
	RETURN	
; exit point of _print_reading
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _lcd_gotoxy
;4 compiler assigned registers:
;   STK00
;   r0x1029
;   r0x102A
;   r0x102B
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=12previous max_key=0 
S_print__print_unit	code
_print_unit:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	410; "src/print.c"	lcd_gotoxy(14, 0);
	MOVLW	0x00
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x0e
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
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
	.line	414; "src/print.c"	lcd_gotoxy(16 - BUFFER_LEN(), 0);
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104E 
	BANKSEL	r0x1029
	MOVWF	r0x1029
;;	1126 rIdx = r0x104E 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1029,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1029,F
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
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104F 
	BANKSEL	r0x102A
	MOVWF	r0x102A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1050, size=1, left -=-, size=0, right AOP_REG=r0x104E, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104E 
	MOVF	r0x1029,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1050 
	MOVWF	r0x102B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x104E, size=1, left -=-, size=0, right AOP_REG=r0x104F, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104F 
	MOVF	r0x102A,W
	MOVWF	r0x1029
	SUBWF	r0x102B,W
;; >>> ../../../../src/pic14/genarith.c:1282:genMinus
;;	1126 rIdx = r0x104F 
	MOVWF	r0x102A
	SUBLW	0x10
;; >>> ../../../../src/pic14/genarith.c:1282:genMinus
;;	1126 rIdx = r0x104F 
	MOVWF	r0x102A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104F 
	MOVF	r0x102A,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	421; "src/print.c"	}
	RETURN	
; exit point of _print_unit
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_putch
;   _lcd_gotoxy
;   _lcd_putch
;4 compiler assigned registers:
;   STK00
;   r0x102C
;   STK01
;   r0x102D
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=4 
S_print__print_digit	code
_print_digit:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	.line	379; "src/print.c"	print_digit(uint8_t line, uint8_t column, uint8_t digit) {
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x102C
	MOVWF	r0x102C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104D, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
	MOVWF	r0x102D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	394; "src/print.c"	lcd_gotoxy(column, /*line - 1*/ 0);
	MOVLW	0x00
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104C 
	MOVF	r0x102C,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_gotoxy
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104D 
	.line	395; "src/print.c"	lcd_putch('0' + digit);
	BANKSEL	r0x102D
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104C 
	MOVWF	r0x102C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x104D, size=1, left AOP_REG=r0x104C, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  left and result aren't same	genAddLit  537
;; >>> ../../../../src/pic14/genarith.c:581:genAddLit
	MOVLW	0x30
;; >>> ../../../../src/pic14/genarith.c:582:genAddLit
;;	1126 rIdx = r0x104C 
	ADDWF	r0x102C,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1126 rIdx = r0x104D 
	MOVWF	r0x102D
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	397; "src/print.c"	}
	RETURN	
; exit point of _print_digit
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _lcd_putch
;   __gptrget1
;   _lcd_putch
;11 compiler assigned registers:
;   r0x102E
;   STK00
;   r0x102F
;   STK01
;   r0x1030
;   STK02
;   r0x1031
;   STK03
;   r0x1032
;   r0x1033
;   r0x1034
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_print__lcd_put	code
_lcd_put:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1045, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	.line	23; "src/print.c"	lcd_put(const char* buf, unsigned n) {
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1046 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1045 
	MOVWF	r0x1030
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1048, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1049 
	MOVWF	r0x1031
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVF	STK03,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	MOVWF	r0x1032
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_REG=r0x1048, size=2
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
_00105_DS_:
	.line	26; "src/print.c"	while(n--) lcd_putch(*buf++);
	BANKSEL	r0x1032
	MOVF	r0x1032,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104A 
	MOVWF	r0x1033
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x1031,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104B 
	MOVWF	r0x1034
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=2
;;	589
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;; hi = ff	genAddLit  406
;; >>> ../../../../src/pic14/genarith.c:418:genAddLit
	MOVLW	0xff
;; >>> ../../../../src/pic14/genarith.c:419:genAddLit
;;	1126 rIdx = r0x1048 
	ADDWF	r0x1032,F
;; >>> ../../../../src/pic14/genarith.c:420:genAddLit
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:421:genAddLit
;;	1126 rIdx = r0x1049 
	DECF	r0x1031,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=2
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104B 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:1533:pic14_toBoolean
;;	1126 rIdx = r0x104A 
	IORWF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=4, label offset 4
	GOTO	_00108_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x1045, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1045 
	MOVF	r0x1030,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1046 
	MOVF	r0x102F,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1047 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
;;	popGetExternal 1008 added extern __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104A 
	BANKSEL	r0x1033
	MOVWF	r0x1033
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	589
;; 	line = 714 result AOP_REG=r0x1045, size=3, left AOP_REG=r0x1045, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1045 
	INCF	r0x1030,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x1046 
	INCF	r0x102F,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x1047 
	INCF	r0x102E,F
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
;;	1126 rIdx = r0x104A 
	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=1, label offset 4
	GOTO	_00105_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00108_DS_:
	.line	28; "src/print.c"	}
	RETURN	
; exit point of _lcd_put
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*


;	code size estimation:
;	  272+   77 =   349 instructions (  852 byte)

	end
