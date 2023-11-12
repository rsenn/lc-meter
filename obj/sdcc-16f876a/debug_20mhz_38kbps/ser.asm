;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"lib/ser.c"
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
	extern	_SPBRG
	extern	_TRISC
	extern	_TXSTAbits
	extern	_PIE1bits
	extern	_RCSTAbits
	extern	_INTCONbits
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
	global	_ser_tmp
	global	_ser_txoptr
	global	_ser_txiptr
	global	_ser_txfifo
	global	_ser_rxoptr
	global	_ser_rxiptr
	global	_ser_rxfifo
	global	_ser_brg
	global	_ser_isrx
	global	_ser_rxsize
	global	_ser_rxat
	global	_ser_getch
	global	_ser_putch
	global	_ser_puts
	global	_ser_put
	global	_ser_puts2
	global	_ser_puthex
	global	_ser_init

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_ser_0	udata
; G_ser_rxfifo_0_0 == .
_ser_rxfifo	res	16

UD_ser_1	udata
; G_ser_rxiptr_0_0 == .
_ser_rxiptr	res	1

UD_ser_2	udata
; G_ser_rxoptr_0_0 == .
_ser_rxoptr	res	1

UD_ser_3	udata
; G_ser_txfifo_0_0 == .
_ser_txfifo	res	16

UD_ser_4	udata
; G_ser_txiptr_0_0 == .
_ser_txiptr	res	1

UD_ser_5	udata
; G_ser_txoptr_0_0 == .
_ser_txoptr	res	1

UD_ser_6	udata
; G_ser_tmp_0_0 == .
_ser_tmp	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ser_0	udata
r0x103D	res	1
r0x1045	res	1
r0x1042	res	1
r0x1043	res	1
r0x103F	res	1
r0x1040	res	1
r0x1041	res	1
r0x1025	res	1
r0x1026	res	1
r0x1027	res	1
r0x1028	res	1
r0x1029	res	1
r0x103B	res	1
r0x103A	res	1
r0x1039	res	1
r0x103C	res	1
r0x1034	res	1
r0x1033	res	1
r0x1032	res	1
r0x1036	res	1
r0x1035	res	1
r0x1037	res	1
r0x1038	res	1
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
r0x1031	res	1
r0x102A	res	1
r0x102B	res	1
r0x102C	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

IDD_ser_0	idata
; G_ser_brg_0_0 == .
_ser_brg
	db	0x1f	; 31

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
code_ser	code
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
;; ***	genFunction  2384 curr label offset=82previous max_key=7 
S_ser__ser_init	code
_ser_init:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xbf, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	115; "lib/ser.c"	SER_TX_TRIS();
	BANKSEL	_TRISC
	BCF	_TRISC,6
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4357 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	117; "lib/ser.c"	SER_RX_TRIS();
	BSF	_TRISC,7
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6855 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	119; "lib/ser.c"	BRGH = HIGH_SPEED; // high speed
	BSF	_TXSTAbits,2
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _ser_brg, size = 1
;; ***	aopForSym 324
;;	336 sym->rname = _SPBRG, size = 1
;; 	line = 7169 result AOP_DIR=_SPBRG, size=1, left -=-, size=0, right AOP_DIR=_ser_brg, size=1
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1041  _ser_brg   offset=0 - had to alloc by reg name
	.line	125; "lib/ser.c"	SPBRG = ser_brg; // 56.7K @ 20MHz, SPBRG = (20MHz/(16*BAUD_RATE))-1;
	BANKSEL	_ser_brg
	MOVF	_ser_brg,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1027
;;	1045  _SPBRG   offset=0
	BANKSEL	_SPBRG
	MOVWF	_SPBRG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6855 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	128; "lib/ser.c"	TX9 = 0; // 8 bits
	BCF	_TXSTAbits,6
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6855 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	129; "lib/ser.c"	RX9 = 0; //
	BANKSEL	_RCSTAbits
	BCF	_RCSTAbits,6
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6855 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	131; "lib/ser.c"	SYNC = 0; // uart settings
	BANKSEL	_TXSTAbits
	BCF	_TXSTAbits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6855 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	132; "lib/ser.c"	SPEN = 1;
	BANKSEL	_RCSTAbits
	BSF	_RCSTAbits,7
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6855 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	133; "lib/ser.c"	CREN = 1;
	BSF	_RCSTAbits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _PIE1bits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; 	line = 6855 result AOP_PCODE=_PIE1bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	134; "lib/ser.c"	TXIE = 0;
	BANKSEL	_PIE1bits
	BCF	_PIE1bits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6855 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	136; "lib/ser.c"	TXEN = 1;
	BSF	_TXSTAbits,5
;; ***	genNearPointerSet  6872
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
;; 	line = 6855 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	137; "lib/ser.c"	PEIE = 1;
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,6
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txoptr, size = 1
;; 	line = 7169 result AOP_DIR=_ser_txoptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _ser_txoptr   offset=0
	.line	139; "lib/ser.c"	ser_rxiptr = ser_rxoptr = ser_txiptr = ser_txoptr = 0;
	BANKSEL	_ser_txoptr
	CLRF	_ser_txoptr
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txiptr, size = 1
;; 	line = 7169 result AOP_DIR=_ser_txiptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _ser_txiptr   offset=0
	BANKSEL	_ser_txiptr
	CLRF	_ser_txiptr
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;; 	line = 7169 result AOP_DIR=_ser_rxoptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _ser_rxoptr   offset=0
	BANKSEL	_ser_rxoptr
	CLRF	_ser_rxoptr
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxiptr, size = 1
;; 	line = 7169 result AOP_DIR=_ser_rxiptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _ser_rxiptr   offset=0
	BANKSEL	_ser_rxiptr
	CLRF	_ser_rxiptr
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	140; "lib/ser.c"	}
	RETURN	
; exit point of _ser_init

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;4 compiler assigned registers:
;   r0x102A
;   r0x102B
;   r0x102C
;   r0x102D
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=74previous max_key=4 
S_ser__ser_puthex	code
_ser_puthex:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1068, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	.line	95; "lib/ser.c"	ser_puthex(uint8_t v) {
	BANKSEL	r0x102A
	MOVWF	r0x102A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5634:genGenericShift *{*
;; ***	genGenericShift  5637
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> ../../../../src/pic14/gen.c:5522:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1068 
	.line	98; "lib/ser.c"	c = v >> 4;
	SWAPF	r0x102A,W
;; >>> ../../../../src/pic14/gen.c:5523:shiftRight_Left2ResultLit
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5524:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1069 
	MOVWF	r0x102B
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	589
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0xA=10), size=1
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	99; "lib/ser.c"	if(c > 9) {
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1069 
	SUBWF	r0x102B,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=2, label offset 82
	GOTO	_00184_DS_
;;genSkipc:3307: created from rifx:0x7ffca786ca70
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x106A, size=1, left -=-, size=0, right AOP_REG=r0x1069, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1069 
	.line	100; "lib/ser.c"	ser_putch((char)('A' - 10 + c));
	MOVF	r0x102B,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x106A 
	MOVWF	r0x102C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x106A, size=1, left AOP_REG=r0x106A, size=1, right AOP_LIT=0x37, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;; ../../../../src/pic14/genarith.c:250:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:262:genAddLit2byte
	MOVLW	0x37
;; >>> ../../../../src/pic14/genarith.c:263:genAddLit2byte
;;	1126 rIdx = r0x106A 
	ADDWF	r0x102C,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x106B, size=1, left -=-, size=0, right AOP_REG=r0x106A, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x106A 
	MOVF	r0x102C,W
;;1	MOVWF	r0x102D
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=3, label offset 82
	GOTO	_00185_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x106A, size=1, left -=-, size=0, right AOP_REG=r0x1069, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1069 
_00184_DS_:
	.line	102; "lib/ser.c"	ser_putch((char)('0' + c));
	BANKSEL	r0x102B
	MOVF	r0x102B,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x106A 
	MOVWF	r0x102C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x106A, size=1, left AOP_REG=r0x106A, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;; ../../../../src/pic14/genarith.c:250:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:262:genAddLit2byte
	MOVLW	0x30
;; >>> ../../../../src/pic14/genarith.c:263:genAddLit2byte
;;	1126 rIdx = r0x106A 
	ADDWF	r0x102C,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1069, size=1, left -=-, size=0, right AOP_REG=r0x106A, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x106A 
	MOVF	r0x102C,W
	MOVWF	r0x102B
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	589
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1068, size=1, left AOP_REG=r0x1068, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
_00185_DS_:
	.line	105; "lib/ser.c"	c = v & 0x0F;
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1126 rIdx = r0x1068 
	BANKSEL	r0x102A
	ANDWF	r0x102A,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0xA=10), size=1
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	106; "lib/ser.c"	if(c > 9) {
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1068 
	SUBWF	r0x102A,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=5, label offset 82
	GOTO	_00187_DS_
;;genSkipc:3307: created from rifx:0x7ffca786ca70
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1069, size=1, left -=-, size=0, right AOP_REG=r0x1068, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1068 
	.line	107; "lib/ser.c"	ser_putch((char)('A' - 10 + c));
	MOVF	r0x102A,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1069 
	MOVWF	r0x102B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1069, size=1, left AOP_REG=r0x1069, size=1, right AOP_LIT=0x37, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;; ../../../../src/pic14/genarith.c:250:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:262:genAddLit2byte
	MOVLW	0x37
;; >>> ../../../../src/pic14/genarith.c:263:genAddLit2byte
;;	1126 rIdx = r0x1069 
	ADDWF	r0x102B,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x106A, size=1, left -=-, size=0, right AOP_REG=r0x1069, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1069 
	MOVF	r0x102B,W
	MOVWF	r0x102C
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 82
	GOTO	_00189_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1069, size=1, left -=-, size=0, right AOP_REG=r0x1068, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1068 
_00187_DS_:
	.line	109; "lib/ser.c"	ser_putch((char)('0' + c));
	BANKSEL	r0x102A
	MOVF	r0x102A,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1069 
	MOVWF	r0x102B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1068, size=1, left AOP_REG=r0x1069, size=1, right AOP_LIT=0x30, size=1
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
;;	1126 rIdx = r0x1069 
	ADDWF	r0x102B,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1126 rIdx = r0x1068 
	MOVWF	r0x102A
	MOVWF	r0x102B
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
_00189_DS_:
	.line	111; "lib/ser.c"	}
	RETURN	
; exit point of _ser_puthex
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _ser_putch
;   __gptrget1
;   _ser_putch
;6 compiler assigned registers:
;   r0x102E
;   STK00
;   r0x102F
;   STK01
;   r0x1030
;   r0x1031
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=66previous max_key=4 
S_ser__ser_puts2	code
_ser_puts2:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1064, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	.line	90; "lib/ser.c"	ser_puts2(uint8_t* s) {
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1065 
	MOVWF	r0x102F
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1030
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x1067, size=1, left AOP_REG=r0x1064, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
_00175_DS_:
	.line	91; "lib/ser.c"	while(*s) ser_putch(*s++);
	BANKSEL	r0x1030
	MOVF	r0x1030,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
	MOVF	r0x102F,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	BANKSEL	r0x1031
	MOVWF	r0x1031
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1067 
	MOVF	r0x1031,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=4, label offset 74
	GOTO	_00178_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1067, size=1, left -=-, size=0, right AOP_REG=r0x1067, size=1
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	589
;; 	line = 714 result AOP_REG=r0x1064, size=3, left AOP_REG=r0x1064, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1064 
	INCF	r0x1030,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x1065 
	INCF	r0x102F,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x1066 
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
;;	1126 rIdx = r0x1067 
	MOVF	r0x1031,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=1, label offset 74
	GOTO	_00175_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00178_DS_:
	.line	92; "lib/ser.c"	}
	RETURN	
; exit point of _ser_puts2
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _ser_putch
;   __gptrget1
;   _ser_putch
;11 compiler assigned registers:
;   r0x1032
;   STK00
;   r0x1033
;   STK01
;   r0x1034
;   STK02
;   r0x1035
;   STK03
;   r0x1036
;   r0x1037
;   r0x1038
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=58previous max_key=4 
S_ser__ser_put	code
_ser_put:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105D, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105F 
	.line	85; "lib/ser.c"	ser_put(const char* s, unsigned n) {
	BANKSEL	r0x1032
	MOVWF	r0x1032
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105E 
	MOVWF	r0x1033
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1034
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1060, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	MOVWF	r0x1035
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7c
	MOVF	STK03,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1060 
	MOVWF	r0x1036
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1062, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=2
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
_00167_DS_:
	.line	86; "lib/ser.c"	while(n--) ser_putch(*s++);
	BANKSEL	r0x1036
	MOVF	r0x1036,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x1062 
	MOVWF	r0x1037
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1061 
	MOVF	r0x1035,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1038
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
;;	1126 rIdx = r0x1060 
	ADDWF	r0x1036,F
;; >>> ../../../../src/pic14/genarith.c:420:genAddLit
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:421:genAddLit
;;	1126 rIdx = r0x1061 
	DECF	r0x1035,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=2
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1038,W
;; >>> ../../../../src/pic14/gen.c:1533:pic14_toBoolean
;;	1126 rIdx = r0x1062 
	IORWF	r0x1037,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=4, label offset 66
	GOTO	_00170_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x1062, size=1, left AOP_REG=r0x105D, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1034,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1033,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105F 
	MOVF	r0x1032,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
	BANKSEL	r0x1037
	MOVWF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	589
;; 	line = 714 result AOP_REG=r0x105D, size=3, left AOP_REG=r0x105D, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x105D 
	INCF	r0x1034,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x105E 
	INCF	r0x1033,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x105F 
	INCF	r0x1032,F
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
;;	1126 rIdx = r0x1062 
	MOVF	r0x1037,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=1, label offset 66
	GOTO	_00167_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00170_DS_:
	.line	87; "lib/ser.c"	}
	RETURN	
; exit point of _ser_put
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _ser_putch
;   __gptrget1
;   _ser_putch
;6 compiler assigned registers:
;   r0x1039
;   STK00
;   r0x103A
;   STK01
;   r0x103B
;   r0x103C
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=40previous max_key=14 
S_ser__ser_puts	code
_ser_puts:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1059, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	.line	81; "lib/ser.c"	ser_puts(const char* s) {
	BANKSEL	r0x1039
	MOVWF	r0x1039
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x103A
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	MOVWF	r0x103B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x105C, size=1, left AOP_REG=r0x1059, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
_00159_DS_:
	.line	82; "lib/ser.c"	while(*s) ser_putch(*s++);
	BANKSEL	r0x103B
	MOVF	r0x103B,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x103A,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1039,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
;;	popGetExternal 1008 added extern __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x103C
	MOVWF	r0x103C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x103C,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=4, label offset 58
	GOTO	_00162_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x105C, size=1, left -=-, size=0, right AOP_REG=r0x105C, size=1
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	589
;; 	line = 714 result AOP_REG=r0x1059, size=3, left AOP_REG=r0x1059, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1059 
	INCF	r0x103B,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x105A 
	INCF	r0x103A,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x105B 
	INCF	r0x1039,F
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
;;	1126 rIdx = r0x105C 
	MOVF	r0x103C,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=1, label offset 58
	GOTO	_00159_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00162_DS_:
	.line	83; "lib/ser.c"	}
	RETURN	
; exit point of _ser_puts
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;5 compiler assigned registers:
;   r0x1025
;   r0x1026
;   r0x1027
;   r0x1028
;   r0x1029
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=35previous max_key=1 
S_ser__ser_putch	code
_ser_putch:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	.line	71; "lib/ser.c"	ser_putch(char c) {
	BANKSEL	r0x1025
	MOVWF	r0x1025
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txiptr, size = 1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1053, size=2, left -=-, size=0, right AOP_DIR=_ser_txiptr, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1027
;;	1045  _ser_txiptr   offset=0
_00141_DS_:
	.line	72; "lib/ser.c"	while(((ser_txiptr + 1) & SER_FIFO_MASK) == ser_txoptr) continue;
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x1053 
	BANKSEL	r0x1026
	MOVWF	r0x1026
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1054 
	CLRF	r0x1027
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 714 result AOP_REG=r0x1053, size=2, left AOP_REG=r0x1053, size=2, right AOP_LIT=0x01, size=2
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1053 
	INCF	r0x1026,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x1054 
	INCF	r0x1027,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x1053, size=2, left AOP_REG=r0x1053, size=2, right AOP_LIT=0x0f, size=2
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1126 rIdx = r0x1053 
	ANDWF	r0x1026,F
;; >>> ../../../../src/pic14/gen.c:4214:genAnd
;;	1126 rIdx = r0x1054 
	CLRF	r0x1027
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txoptr, size = 1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1055, size=2, left -=-, size=0, right AOP_DIR=_ser_txoptr, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1027
;;	1041  _ser_txoptr   offset=0 - had to alloc by reg name
	BANKSEL	_ser_txoptr
	MOVF	_ser_txoptr,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1028
	MOVWF	r0x1028
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1056 
	CLRF	r0x1029
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1053, size=2, right AOP_REG=r0x1055, size=2
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
	MOVF	r0x1028,W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1126 rIdx = r0x1053 
	XORWF	r0x1026,W
;; >>> ../../../../src/pic14/gen.c:3803:genCmpEq
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3806:genCmpEq
;; ***	popGetLabel  key=14, label offset 40
	GOTO	_00154_DS_
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1029,W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1126 rIdx = r0x1054 
	.line	73; "lib/ser.c"	GIE = 0;
	XORWF	r0x1027,W
	BTFSC	STATUS,2
	GOTO	_00141_DS_
_00154_DS_:
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,7
	.line	74; "lib/ser.c"	ser_txfifo[ser_txiptr] = c;
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_ser_txfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1053 
	BANKSEL	r0x1026
	MOVWF	r0x1026
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_ser_txfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1027
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	708 register type nRegs=2
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;; 	line = 6855 result AOP_REG=r0x1053, size=2, left -=-, size=0, right AOP_REG=r0x1052, size=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1026,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1027
	BTFSC	r0x1027,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6605:emitPtrPut
;;	1126 rIdx = r0x1052 
	MOVF	r0x1025,W
;; >>> ../../../../src/pic14/gen.c:6606:emitPtrPut
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txiptr, size = 1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_DIR=_ser_txiptr, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1027
;;	1045  _ser_txiptr   offset=0
	.line	75; "lib/ser.c"	ser_txiptr = (ser_txiptr + 1) & SER_FIFO_MASK;
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1052 
	BANKSEL	r0x1025
	MOVWF	r0x1025
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1052, size=1, left AOP_REG=r0x1052, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1052 
	INCF	r0x1025,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_txiptr, size = 1
;; 	line = 4059 result AOP_DIR=_ser_txiptr, size=1, left AOP_REG=r0x1052, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4294:genAnd
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x1052 
	ANDWF	r0x1025,W
;; >>> ../../../../src/pic14/gen.c:4296:genAnd
;;	1027
;;	1045  _ser_txiptr   offset=0
	BANKSEL	_ser_txiptr
	MOVWF	_ser_txiptr
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _PIE1bits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; 	line = 6855 result AOP_PCODE=_PIE1bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	76; "lib/ser.c"	TXIE = 1;
	BANKSEL	_PIE1bits
	BSF	_PIE1bits,4
;; ***	genNearPointerSet  6872
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
;; 	line = 6855 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	77; "lib/ser.c"	GIE = 1;
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,7
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	78; "lib/ser.c"	}
	RETURN	
; exit point of _ser_putch
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_isrx
;   _ser_isrx
;3 compiler assigned registers:
;   r0x103F
;   r0x1040
;   r0x1041
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=31previous max_key=0 
S_ser__ser_getch	code
_ser_getch:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; >>> ../../../../src/pic14/gen.c:2207:genCall
_00136_DS_:
	.line	60; "lib/ser.c"	while(ser_isrx() == 0) continue;
	PAGESEL	_ser_isrx
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_ser_isrx
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104E 
	BANKSEL	r0x103F
	MOVWF	r0x103F
;; 	2238 left AOP_REG
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104E 
	MOVF	r0x103F,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=1, label offset 35
	GOTO	_00136_DS_
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
	.line	62; "lib/ser.c"	GIE = 0;
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,7
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _ser_rxfifo, val 0, const = 0
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_rxfifo
;; 	line = 714 result AOP_REG=r0x104E, size=2, left AOP_PCODE=_ser_rxfifo, size=2, right AOP_DIR=_ser_rxoptr, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_rxfifo
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1027
;;	1045  _ser_rxoptr   offset=0
	.line	63; "lib/ser.c"	c = ser_rxfifo[ser_rxoptr];
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_ser_rxfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x104E 
	BANKSEL	r0x103F
	MOVWF	r0x103F
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_ser_rxfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x104F 
	MOVWF	r0x1040
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
;;	1126 rIdx = r0x104E 
	MOVF	r0x103F,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1040
	BTFSC	r0x1040,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1050 
	BANKSEL	r0x1041
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;; 	line = 714 result AOP_DIR=_ser_rxoptr, size=1, left AOP_DIR=_ser_rxoptr, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1027
;;	1045  _ser_rxoptr   offset=0
	.line	64; "lib/ser.c"	++ser_rxoptr;
	BANKSEL	_ser_rxoptr
	INCF	_ser_rxoptr,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_ser_rxoptr, size=1, left AOP_DIR=_ser_rxoptr, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	65; "lib/ser.c"	ser_rxoptr &= SER_FIFO_MASK;
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1027
;;	1045  _ser_rxoptr   offset=0
	ANDWF	_ser_rxoptr,F
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
;; 	line = 6855 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	66; "lib/ser.c"	GIE = 1;
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,7
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
	.line	67; "lib/ser.c"	return c;
	BANKSEL	r0x1041
	MOVF	r0x1041,W
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	68; "lib/ser.c"	}
	RETURN	
; exit point of _ser_getch
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;3 compiler assigned registers:
;   r0x1042
;   r0x1043
;   r0x1044
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=17previous max_key=10 
S_ser__ser_rxat	code
_ser_rxat:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104A 
	.line	52; "lib/ser.c"	ser_rxat(unsigned char at) {
	BANKSEL	r0x1042
	MOVWF	r0x1042
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	53; "lib/ser.c"	return ser_rxfifo[at & SER_FIFO_MASK];
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1126 rIdx = r0x104A 
	ANDWF	r0x1042,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _ser_rxfifo, val 0, const = 0
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_rxfifo
;; 	line = 714 result AOP_REG=r0x104A, size=2, left AOP_PCODE=_ser_rxfifo, size=2, right AOP_REG=r0x104A, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ser_rxfifo
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x104A 
	MOVF	r0x1042,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_ser_rxfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x104A 
	MOVWF	r0x1042
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_ser_rxfifo + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x104B 
	MOVWF	r0x1043
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
;;	1126 rIdx = r0x104A 
	MOVF	r0x1042,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1043
	BTFSC	r0x1043,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104C 
;;1	MOVWF	r0x1044
	.line	54; "lib/ser.c"	}
	RETURN	
; exit point of _ser_rxat
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;1 compiler assigned register :
;   r0x1045
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=9 
S_ser__ser_rxsize	code
_ser_rxsize:
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
	.line	45; "lib/ser.c"	INTERRUPT_DISABLE();
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,7
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxiptr, size = 1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;; >>> ../../../../src/pic14/gen.c:3329:pic14_mov2w_regOrLit
;;	1027
;;	1045  _ser_rxoptr   offset=0
	.line	46; "lib/ser.c"	ret = ser_rxiptr < ser_rxoptr ? SER_BUFFER_SIZE - ser_rxiptr + ser_rxoptr : ser_rxiptr - ser_rxoptr;
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1027
;;	1045  _ser_rxiptr   offset=0
	BANKSEL	_ser_rxiptr
	SUBWF	_ser_rxiptr,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=9, label offset 17
	GOTO	_00126_DS_
;;genSkipc:3307: created from rifx:0x7ffca786ca70
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxiptr, size = 1
;;	708 register type nRegs=1
;; 	result AOP_REG, left AOP_LIT, right AOP_DIR
;; left is lit	line 1242 result AOP_REG, left AOP_LIT, right AOP_DIR
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _ser_rxiptr   offset=0
	MOVF	_ser_rxiptr,W
;; >>> ../../../../src/pic14/genarith.c:1281:genMinus
	SUBLW	0x10
;; >>> ../../../../src/pic14/genarith.c:1282:genMinus
;;	1126 rIdx = r0x1049 
	BANKSEL	r0x1045
	MOVWF	r0x1045
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1049, size=1, left AOP_REG=r0x1049, size=1, right AOP_DIR=_ser_rxoptr, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_DIR
;; ***	genPlus  814
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1027
;;	1045  _ser_rxoptr   offset=0
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
;; >>> ../../../../src/pic14/genarith.c:826:genPlus
;;	1126 rIdx = r0x1049 
	BANKSEL	r0x1045
	ADDWF	r0x1045,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=10, label offset 17
	GOTO	_00127_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxiptr, size = 1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;;	708 register type nRegs=1
;; 	result AOP_REG, left AOP_DIR, right AOP_DIR
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _ser_rxoptr   offset=0
_00126_DS_:
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
;; >>> ../../../../src/pic14/genarith.c:1281:genMinus
;;	1027
;;	1045  _ser_rxiptr   offset=0
	BANKSEL	_ser_rxiptr
	SUBWF	_ser_rxiptr,W
;; >>> ../../../../src/pic14/genarith.c:1282:genMinus
;;	1126 rIdx = r0x1049 
	BANKSEL	r0x1045
	MOVWF	r0x1045
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_REG=r0x1049, size=1
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
;; 	line = 6855 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
_00127_DS_:
	.line	47; "lib/ser.c"	INTERRUPT_ENABLE();
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,7
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	.line	48; "lib/ser.c"	return ret;
	BANKSEL	r0x1045
	MOVF	r0x1045,W
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	49; "lib/ser.c"	}
	RETURN	
; exit point of _ser_rxsize
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x103D
;   r0x103E
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_ser__ser_isrx	code
_ser_isrx:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6133:genUnpackBits
	.line	34; "lib/ser.c"	if(OERR) {
	BANKSEL	_RCSTAbits
	BTFSS	_RCSTAbits,1
;; >>> ../../../../src/pic14/gen.c:6134:genUnpackBits
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6855 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	35; "lib/ser.c"	CREN = 0;
	BCF	_RCSTAbits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6855 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	36; "lib/ser.c"	CREN = 1;
	BSF	_RCSTAbits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	37; "lib/ser.c"	return 0;
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2751:genRet
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is null
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxiptr, size = 1
;; ***	aopForSym 324
;;	336 sym->rname = _ser_rxoptr, size = 1
;;	708 register type nRegs=1
;; 	line = 3701 result AOP_REG=r0x1045, size=1, left AOP_DIR=_ser_rxiptr, size=1, right AOP_DIR=_ser_rxoptr, size=1
;; >>> ../../../../src/pic14/gen.c:3726:genCmpEq
;;	1126 rIdx = r0x1045 
_00106_DS_:
	.line	39; "lib/ser.c"	return (ser_rxiptr != ser_rxoptr);
	BANKSEL	r0x103D
	CLRF	r0x103D
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1041  _ser_rxoptr   offset=0 - had to alloc by reg name
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1027
;;	1041  _ser_rxiptr   offset=0 - had to alloc by reg name
	BANKSEL	_ser_rxiptr
	XORWF	_ser_rxiptr,W
	BTFSS	STATUS,2
	GOTO	_00001_DS_
	BANKSEL	r0x103D
	INCF	r0x103D,F
_00001_DS_:
	BANKSEL	r0x103D
	MOVF	r0x103D,W
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1046 
;;1	MOVWF	r0x103E
	MOVWF	r0x103D
_00107_DS_:
	.line	40; "lib/ser.c"	}
	RETURN	
; exit point of _ser_isrx
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*


;	code size estimation:
;	  270+   95 =   365 instructions (  920 byte)

	end
