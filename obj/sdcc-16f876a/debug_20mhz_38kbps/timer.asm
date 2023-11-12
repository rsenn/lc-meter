;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"lib/timer.c"
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
	extern	_PIE1
	extern	_OPTION_REG
	extern	_T2CON
	extern	_TMR2
	extern	_PIR1
	extern	_TMR0
	extern	_OPTION_REGbits
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
	global	_timer0_init
	global	_timer0_read_ps
	global	_timer2_init

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_timer_0	udata
r0x100A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100E	res	1
r0x100F	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1009	res	1
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
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
code_timer	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;4 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;   r0x1003
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=20previous max_key=16 
S_timer__timer2_init	code
_timer2_init:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1051, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1051 
	.line	176; "lib/timer.c"	timer2_init(uint8_t ps_mode) {
	BANKSEL	r0x1000
	MOVWF	r0x1000
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1052, size=1, left AOP_REG=r0x1051, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4294:genAnd
	.line	177; "lib/timer.c"	uint8_t ps = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x1051 
	ANDWF	r0x1000,W
;; >>> ../../../../src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1001
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _T2CON, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_LIT=0x80, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	181; "lib/timer.c"	T2CON &= ~0b01111111;
	MOVLW	0x80
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1027
;;	1045  _T2CON   offset=0
	BANKSEL	_T2CON
	ANDWF	_T2CON,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1053, size=1, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1053 
	.line	183; "lib/timer.c"	T2CON |= (postscaler & 0b1111) << 3;
	BANKSEL	r0x1002
	CLRF	r0x1002
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1053, size=1, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1126 rIdx = r0x1053 
	ANDWF	r0x1002,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5634:genGenericShift *{*
;; ***	genGenericShift  5637
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> ../../../../src/pic14/gen.c:5328:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> ../../../../src/pic14/gen.c:5337:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x1053 
	RLF	r0x1002,W
;; >>> ../../../../src/pic14/gen.c:5338:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1003
;; >>> ../../../../src/pic14/gen.c:5328:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> ../../../../src/pic14/gen.c:5333:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x1054 
	RLF	r0x1003,F
;; >>> ../../../../src/pic14/gen.c:5328:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> ../../../../src/pic14/gen.c:5333:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x1054 
	RLF	r0x1003,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _T2CON, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_REG=r0x1054, size=1
;; 	line = 4357 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_REG=r0x1054, size=1
;; >>> ../../../../src/pic14/gen.c:4522:genOr
;;	1126 rIdx = r0x1054 
	MOVF	r0x1003,W
;; >>> ../../../../src/pic14/gen.c:4523:genOr
;;	1027
;;	1045  _T2CON   offset=0
	BANKSEL	_T2CON
	IORWF	_T2CON,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1052, size=1, left AOP_REG=r0x1052, size=1, right AOP_LIT=0x03, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	184; "lib/timer.c"	T2CON |= (ps & 0b11); // Set timer 2 prescaler to 1:1.
	MOVLW	0x03
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1126 rIdx = r0x1052 
	BANKSEL	r0x1001
	ANDWF	r0x1001,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _T2CON, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_REG=r0x1052, size=1
;; 	line = 4357 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_REG=r0x1052, size=1
;; >>> ../../../../src/pic14/gen.c:4522:genOr
;;	1126 rIdx = r0x1052 
	MOVF	r0x1001,W
;; >>> ../../../../src/pic14/gen.c:4523:genOr
;;	1027
;;	1045  _T2CON   offset=0
	BANKSEL	_T2CON
	IORWF	_T2CON,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _TMR2, size = 1
;; 	line = 7169 result AOP_DIR=_TMR2, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _TMR2   offset=0
	.line	186; "lib/timer.c"	TIMER2_VALUE = 0;
	CLRF	_TMR2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _T2CON, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4357 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_LIT=0x04, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	188; "lib/timer.c"	T2CON |= 0b100; // TMR2ON = 1; // Enable timer 2.
	BSF	_T2CON,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PIR1, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfd, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	191; "lib/timer.c"	PIR1 &= ~0b10;
	BCF	_PIR1,1
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
	.line	192; "lib/timer.c"	PIE1 = (!!(ps_mode & TIMER2_FLAGS_INTR)) << 1;
	BANKSEL	r0x1000
	MOVF	r0x1000,W
;; >>> ../../../../src/pic14/gen.c:5051:genGetABit
	ANDLW	0x80
;; >>> ../../../../src/pic14/gen.c:5061:genGetABit
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:5062:genGetABit
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:5067:genGetABit
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1001
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1548:genNot *{*
;; ***	genNot  1550
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 1555 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
	MOVF	r0x1001,W
;; >>> ../../../../src/pic14/gen.c:1582:genNot
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1000
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1548:genNot *{*
;; ***	genNot  1550
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 1555 result AOP_REG=r0x1052, size=1, left AOP_REG=r0x1051, size=1, right -=-, size=0
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
	MOVF	r0x1000,W
;; >>> ../../../../src/pic14/gen.c:1582:genNot
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:1583:genNot
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:1584:genNot
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1001
	MOVWF	r0x1000
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5634:genGenericShift *{*
;; ***	genGenericShift  5637
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PIE1, size = 1
;; >>> ../../../../src/pic14/gen.c:5328:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> ../../../../src/pic14/gen.c:5337:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x1051 
	RLF	r0x1000,W
;; >>> ../../../../src/pic14/gen.c:5338:shiftLeft_Left2ResultLit
;;	1027
;;	1045  _PIE1   offset=0
	BANKSEL	_PIE1
	MOVWF	_PIE1
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	193; "lib/timer.c"	}
	RETURN	
; exit point of _timer2_init

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;7 compiler assigned registers:
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   STK00
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=12 
S_timer__timer0_read_ps	code
_timer0_read_ps:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _TMR0, size = 1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x104B, size=1, left -=-, size=0, right AOP_DIR=_TMR0, size=1
;; ***	genAssign  7235
;; WARNING	genAssign  7244 ignoring register storage
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _TMR0   offset=0
	.line	110; "lib/timer.c"	uint8_t prev = TMR0;
	BANKSEL	_TMR0
	MOVF	_TMR0,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x104B 
	BANKSEL	r0x1004
	MOVWF	r0x1004
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6855 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	114; "lib/timer.c"	/*T0CON |= 0x20; */ T0CS = 1;
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,5
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x104C, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x104C 
	.line	116; "lib/timer.c"	do {
	BANKSEL	r0x1005
	CLRF	r0x1005
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x104D 
	CLRF	r0x1006
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
;;	432: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6855 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
_00122_DS_:
	.line	118; "lib/timer.c"	T0SE = 1;
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4884:pic14_genInline *{*
;; ***	pic14_genInline  4885
	nop	
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4884:pic14_genInline *{*
;; ***	pic14_genInline  4885
	nop	
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6855 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> ../../../../src/pic14/gen.c:6679:genPackBits
	.line	123; "lib/timer.c"	T0SE = 0;
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4884:pic14_genInline *{*
;; ***	pic14_genInline  4885
	nop	
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4884:pic14_genInline *{*
;; ***	pic14_genInline  4885
	nop	
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=2
;;	589
;; 	line = 714 result AOP_REG=r0x104C, size=2, left AOP_REG=r0x104C, size=2, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x104C 
	.line	128; "lib/timer.c"	++count;
	BANKSEL	r0x1005
	INCF	r0x1005,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x104D 
	INCF	r0x1006,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TMR0, size = 1
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_REG=r0x104B, size=1, right AOP_DIR=_TMR0, size=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _TMR0   offset=0
	.line	131; "lib/timer.c"	} while(prev == TMR0 && count <= 255);
	BANKSEL	_TMR0
	MOVF	_TMR0,W
;; >>> ../../../../src/pic14/gen.c:3801:genCmpEq
;;	1126 rIdx = r0x104B 
	BANKSEL	r0x1004
	XORWF	r0x1004,W
;; >>> ../../../../src/pic14/gen.c:3803:genCmpEq
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3806:genCmpEq
;; ***	popGetLabel  key=4, label offset 20
	GOTO	_00124_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x104E, size=2, left -=-, size=0, right AOP_REG=r0x104C, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104C 
	MOVF	r0x1005,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104E 
	MOVWF	r0x1007
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104D 
	MOVF	r0x1006,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104F 
	MOVWF	r0x1008
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x100=256), size=2
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x104F 
	SUBWF	r0x1008,W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=16, label offset 20
	GOTO	_00136_DS_
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1126 rIdx = r0x104E 
	SUBWF	r0x1007,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
_00136_DS_:
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=2, label offset 20
	GOTO	_00122_DS_
;;genSkipc:3307: created from rifx:0x7ffdfb96bd40
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x104E, size=2, left -=-, size=0, right AOP_REG=r0x104B, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x104B 
_00124_DS_:
	.line	133; "lib/timer.c"	count = ((prev << 8) + (256 - count));
	BANKSEL	r0x1004
	MOVF	r0x1004,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x104E 
	MOVWF	r0x1009
	MOVWF	r0x1007
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x104F 
	CLRF	r0x1008
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5634:genGenericShift *{*
;; ***	genGenericShift  5637
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:5240:movLeft2Result *{*
;; ***	movLeft2Result  5241
;; >>> ../../../../src/pic14/gen.c:5246:movLeft2Result
;;	1126 rIdx = r0x104E 
;;99	MOVF	r0x1007,W
;; >>> ../../../../src/pic14/gen.c:5247:movLeft2Result
;;	1126 rIdx = r0x1050 
;; >>> ../../../../src/pic14/gen.c:5383:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x104B 
	CLRF	r0x1004
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	result AOP_REG, left AOP_LIT, right AOP_REG
;; left is lit	line 1242 result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104C 
	MOVF	r0x1005,W
;; >>> ../../../../src/pic14/genarith.c:1281:genMinus
	SUBLW	0x00
;; >>> ../../../../src/pic14/genarith.c:1282:genMinus
;;	1126 rIdx = r0x104C 
	MOVWF	r0x1005
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
	MOVF	r0x1006,W
;; >>> ../../../../src/pic14/genarith.c:1384:genMinus
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1385:genMinus
;;	1126 rIdx = r0x104D 
	INCF	r0x1006,W
;; >>> ../../../../src/pic14/genarith.c:1388:genMinus
	SUBLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1389:genMinus
;;	1126 rIdx = r0x104D 
	MOVWF	r0x1006
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x104E, size=2, left -=-, size=0, right AOP_REG=r0x104B, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x104B 
	MOVF	r0x1004,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x104E 
	MOVWF	r0x1007
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1050 
	MOVF	r0x1009,W
	MOVWF	r0x1008
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 714 result AOP_REG=r0x104B, size=2, left AOP_REG=r0x104E, size=2, right AOP_REG=r0x104C, size=2
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  814
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x104C 
	MOVF	r0x1005,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
;;	1126 rIdx = r0x104E 
	ADDWF	r0x1007,W
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x104B 
	MOVWF	r0x1004
;; >>> ../../../../src/pic14/genarith.c:880:genPlus
;;	1126 rIdx = r0x104F 
;;100	MOVF	r0x1008,W
;; >>> ../../../../src/pic14/genarith.c:881:genPlus
;;	1126 rIdx = r0x1050 
;; >>> ../../../../src/pic14/genarith.c:883:genPlus
;;	1126 rIdx = r0x104D 
	MOVF	r0x1006,W
;; >>> ../../../../src/pic14/genarith.c:884:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:885:genPlus
;;	1126 rIdx = r0x104D 
	INCFSZ	r0x1006,W
;; >>> ../../../../src/pic14/genarith.c:886:genPlus
;;	1126 rIdx = r0x1050 
	ADDWF	r0x1009,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104B 
	.line	134; "lib/timer.c"	return count;
	MOVF	r0x1004,W
;; >>> ../../../../src/pic14/gen.c:1430:pass_argument
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
	MOVF	r0x1009,W
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	135; "lib/timer.c"	}
	RETURN	
; exit point of _timer0_read_ps
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;6 compiler assigned registers:
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_timer__timer0_init	code
_timer0_init:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1045, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1045 
	.line	26; "lib/timer.c"	timer0_init(uint8_t ps_mode) {
	BANKSEL	r0x100A
	MOVWF	r0x100A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4294:genAnd
	.line	27; "lib/timer.c"	uint8_t prescaler = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x1045 
	ANDWF	r0x100A,W
;; >>> ../../../../src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x1046 
	MOVWF	r0x100B
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
	.line	30; "lib/timer.c"	TIMER0_VALUE = 0;
	BANKSEL	_TMR0
	CLRF	_TMR0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _OPTION_REG, size = 1
;; 	line = 4059 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0xc0, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	40; "lib/timer.c"	OPTION_REG &= 0b11000000;
	MOVLW	0xc0
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1027
;;	1045  _OPTION_REG   offset=0
	BANKSEL	_OPTION_REG
	ANDWF	_OPTION_REG,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x20, size=1
;;; ../../../../src/pic14/gen.c:3946:isLiteralBit *{*
;; ***	isLiteralBit  3947
;; >>> ../../../../src/pic14/gen.c:4143:genAnd
	.line	59; "lib/timer.c"	T0CS = (ps_mode & TIMER0_FLAGS_EXTCLK) ? 1 : 0;
	BANKSEL	r0x100A
	BTFSS	r0x100A,5
;; >>> ../../../../src/pic14/gen.c:4144:genAnd
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x01, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1047 
	MOVWF	r0x100C
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1048 
	CLRF	r0x100D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=6, label offset 4
	GOTO	_00110_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1047 
_00109_DS_:
	BANKSEL	r0x100C
	CLRF	r0x100C
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1048 
	CLRF	r0x100D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_REG=r0x1047, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1047 
_00110_DS_:
	BANKSEL	r0x100C
	MOVF	r0x100C,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1049 
	MOVWF	r0x100E
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6855 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_REG=r0x1049, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> ../../../../src/pic14/gen.c:6723:genPackBits
;;	1126 rIdx = r0x1049 
	RRF	r0x100E,W
;; >>> ../../../../src/pic14/gen.c:6724:genPackBits
	BTFSC	STATUS,0
	GOTO	_00001_DS_
;; >>> ../../../../src/pic14/gen.c:6725:genPackBits
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,5
;; >>> ../../../../src/pic14/gen.c:6726:genPackBits
_00001_DS_:
	BTFSS	STATUS,0
	GOTO	_00002_DS_
;; >>> ../../../../src/pic14/gen.c:6727:genPackBits
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,5
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x10, size=1
;;; ../../../../src/pic14/gen.c:3946:isLiteralBit *{*
;; ***	isLiteralBit  3947
;; >>> ../../../../src/pic14/gen.c:4143:genAnd
_00002_DS_:
	.line	60; "lib/timer.c"	T0SE = (ps_mode & EDGE_HIGH_LOW) ? 1 : 0;
	BANKSEL	r0x100A
	BTFSS	r0x100A,4
;; >>> ../../../../src/pic14/gen.c:4144:genAnd
;; ***	popGetLabel  key=7, label offset 4
	GOTO	_00111_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x01, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1047 
	MOVWF	r0x100C
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1048 
	CLRF	r0x100D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 4
	GOTO	_00112_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1047 
_00111_DS_:
	BANKSEL	r0x100C
	CLRF	r0x100C
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1048 
	CLRF	r0x100D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_REG=r0x1047, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1047 
_00112_DS_:
	BANKSEL	r0x100C
	MOVF	r0x100C,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1049 
	MOVWF	r0x100E
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6855 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_REG=r0x1049, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> ../../../../src/pic14/gen.c:6723:genPackBits
;;	1126 rIdx = r0x1049 
	RRF	r0x100E,W
;; >>> ../../../../src/pic14/gen.c:6724:genPackBits
	BTFSC	STATUS,0
	GOTO	_00003_DS_
;; >>> ../../../../src/pic14/gen.c:6725:genPackBits
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,4
;; >>> ../../../../src/pic14/gen.c:6726:genPackBits
_00003_DS_:
	BTFSS	STATUS,0
	GOTO	_00004_DS_
;; >>> ../../../../src/pic14/gen.c:6727:genPackBits
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,4
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1046 
_00004_DS_:
	.line	62; "lib/timer.c"	if(prescaler > 0) {
	BANKSEL	r0x100B
	MOVF	r0x100B,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1046 
	.line	63; "lib/timer.c"	/*OPTION_REGbits.*/ PSA = prescaler > 0;
	MOVF	r0x100B,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=9, label offset 4
	GOTO	_00113_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x01, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1047 
	MOVWF	r0x100C
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1048 
	CLRF	r0x100D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=10, label offset 4
	GOTO	_00114_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1047 
_00113_DS_:
	BANKSEL	r0x100C
	CLRF	r0x100C
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1048 
	CLRF	r0x100D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_REG=r0x1047, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1047 
_00114_DS_:
	BANKSEL	r0x100C
	MOVF	r0x100C,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1049 
	MOVWF	r0x100E
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6855 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_REG=r0x1049, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> ../../../../src/pic14/gen.c:6723:genPackBits
;;	1126 rIdx = r0x1049 
	RRF	r0x100E,W
;; >>> ../../../../src/pic14/gen.c:6724:genPackBits
	BTFSC	STATUS,0
	GOTO	_00005_DS_
;; >>> ../../../../src/pic14/gen.c:6725:genPackBits
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,3
;; >>> ../../../../src/pic14/gen.c:6726:genPackBits
_00005_DS_:
	BTFSS	STATUS,0
	GOTO	_00006_DS_
;; >>> ../../../../src/pic14/gen.c:6727:genPackBits
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,3
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;; ../../../../src/pic14/genarith.c:250:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:259:genAddLit2byte
;;	1126 rIdx = r0x1046 
_00006_DS_:
	.line	64; "lib/timer.c"	/*OPTION_REGbits.*/ OPTION_REGbits.PS = prescaler - 1;
	BANKSEL	r0x100B
	DECF	r0x100B,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6855 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_REG=r0x1046, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1046 
	MOVF	r0x100B,W
;; >>> ../../../../src/pic14/gen.c:6497:emitPtrPut
	ANDLW	0x07
;; >>> ../../../../src/pic14/gen.c:6498:emitPtrPut
	MOVWF	r0x100F
;; >>> ../../../../src/pic14/gen.c:6537:emitPtrPut
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _OPTION_REGbits
	BANKSEL	_OPTION_REGbits
	MOVF	(_OPTION_REGbits + 0),W
;; >>> ../../../../src/pic14/gen.c:6547:emitPtrPut
	ANDLW	0xf8
;; >>> ../../../../src/pic14/gen.c:6548:emitPtrPut
	BANKSEL	r0x100F
	IORWF	r0x100F,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _OPTION_REGbits
	BANKSEL	_OPTION_REGbits
	MOVWF	(_OPTION_REGbits + 0)
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x80, size=1
;;; ../../../../src/pic14/gen.c:3946:isLiteralBit *{*
;; ***	isLiteralBit  3947
;; >>> ../../../../src/pic14/gen.c:4143:genAnd
_00106_DS_:
	.line	99; "lib/timer.c"	T0IE = (ps_mode & TIMER0_FLAGS_INTR) ? 1 : 0;
	BANKSEL	r0x100A
	BTFSS	r0x100A,7
;; >>> ../../../../src/pic14/gen.c:4144:genAnd
;; ***	popGetLabel  key=11, label offset 4
	GOTO	_00115_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1045, size=2, left -=-, size=0, right AOP_LIT=0x01, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1045 
	MOVWF	r0x100A
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1046 
	CLRF	r0x100B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=12, label offset 4
	GOTO	_00116_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1045, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1045 
_00115_DS_:
	BANKSEL	r0x100A
	CLRF	r0x100A
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1046 
	CLRF	r0x100B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1047, size=1, left -=-, size=0, right AOP_REG=r0x1045, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1045 
_00116_DS_:
	BANKSEL	r0x100A
	MOVF	r0x100A,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1047 
	MOVWF	r0x100C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6855 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6723:genPackBits
;;	1126 rIdx = r0x1047 
	RRF	r0x100C,W
;; >>> ../../../../src/pic14/gen.c:6724:genPackBits
	BTFSC	STATUS,0
	GOTO	_00007_DS_
;; >>> ../../../../src/pic14/gen.c:6725:genPackBits
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,5
;; >>> ../../../../src/pic14/gen.c:6726:genPackBits
_00007_DS_:
	BTFSS	STATUS,0
	GOTO	_00008_DS_
;; >>> ../../../../src/pic14/gen.c:6727:genPackBits
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,5
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00008_DS_:
	.line	101; "lib/timer.c"	}
	RETURN	
; exit point of _timer0_init
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*


;	code size estimation:
;	  187+   45 =   232 instructions (  554 byte)

	end
