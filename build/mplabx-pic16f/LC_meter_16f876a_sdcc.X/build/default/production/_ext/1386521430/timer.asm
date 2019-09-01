;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../lib/timer.c"
	list	p=16f876a
	radix dec
	include "p16f876a.inc"
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
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
;--------------------------------------------------------
; initialized data
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
;3 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 003 002 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function timer2_init
;;	-----------------------------------------
;_timer2_init:
S_timer__timer2_init	code
_timer2_init:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;	.line	81; "../../../lib/timer.c"	timer2_init(uint8_t ps_mode) {
	BANKSEL	r0x1000	;id=482,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1000	;id=125,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1045
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4209:genAnd
;	.line	82; "../../../lib/timer.c"	uint8_t ps = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f	;id=134,key=002,inCond:400,outCond:10,flow seq=001
;; >>> ../../../../src/pic14/gen.c:4210:genAnd
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	ANDWF	r0x1000,W	;id=137,key=003,inCond:11,outCond:14,flow seq=001,rIdx=r0x1045
;; >>> ../../../../src/pic14/gen.c:4211:genAnd
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=140,key=004,inCond:10,outCond:1,flow seq=001,rIdx=r0x1046
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1047, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1000
;	.line	86; "../../../lib/timer.c"	TOUTPS0 = postscaler & 1;
	CLRF	r0x1002	;id=151,key=005,inCond:0,outCond:5,flow seq=001,rIdx=r0x1047
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _T2CONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; 	line = 6633 result AOP_PCODE=_T2CONbits, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; >>> ../../../../src/pic14/gen.c:6452:genPackBits
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1000
	RRF	r0x1002,W	;id=169,key=006,inCond:3,outCond:12,flow seq=001,rIdx=r0x1047
;; >>> ../../../../src/pic14/gen.c:6453:genPackBits
	BTFSC	STATUS,0	;id=490,key=007,inCond:23,outCond:0,flow seq=001
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 001 ; to: 004 
	GOTO	_00001_DS_	;id=489,key=000,inCond:0,outCond:0,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x1
;  from: 001 ; to: 004 
;; >>> ../../../../src/pic14/gen.c:6454:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
	BANKSEL	_T2CONbits	;id=487,key=000,inCond:0,outCond:0,flow seq=003
	BCF	_T2CONbits,3	;id=175,key=001,inCond:21,outCond:21,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x2
;  from: 003 002 ; to: 006 005 
;; >>> ../../../../src/pic14/gen.c:6455:genPackBits
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00001_DS_:
	BTFSS	STATUS,0	;id=496,key=000,inCond:23,outCond:0,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x4
;  from: 004 ; to: 007 
	GOTO	_00002_DS_	;id=495,key=000,inCond:0,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x4
;  from: 004 ; to: 007 
;; >>> ../../../../src/pic14/gen.c:6456:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
	BANKSEL	_T2CONbits	;id=493,key=000,inCond:0,outCond:0,flow seq=006
	BSF	_T2CONbits,3	;id=181,key=001,inCond:21,outCond:21,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x5
;  from: 006 005 ; to: 009 008 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _T2CONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; 	line = 6633 result AOP_PCODE=_T2CONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT3 drop assumptions: PCI with label or call found
_00002_DS_:
;	.line	87; "../../../lib/timer.c"	TOUTPS1 = (postscaler >> 1) & 1;
	BANKSEL	_T2CONbits	;id=498,key=000,inCond:0,outCond:0,flow seq=007
	BCF	_T2CONbits,4	;id=201,key=001,inCond:21,outCond:21,flow seq=007
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _T2CONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; 	line = 6633 result AOP_PCODE=_T2CONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _T2CONbits present in same bank as _T2CONbits
;	.line	88; "../../../lib/timer.c"	TOUTPS2 = (postscaler >> 2) & 1;
	BCF	_T2CONbits,5	;id=221,key=002,inCond:21,outCond:21,flow seq=007
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;	.line	90; "../../../lib/timer.c"	/*T2CONbits.*/ T2CKPS0 = (ps >> 1) & 1; // Set timer 2 prescaler to 1:1.
	BANKSEL	r0x1001	;id=500,key=003,inCond:0,outCond:0,flow seq=007
	MOVF	r0x1001,W	;id=230,key=004,inCond:1,outCond:14,flow seq=007,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:4928:genGetABit
	ANDLW	0x02	;id=232,key=005,inCond:410,outCond:14,flow seq=007
;; >>> ../../../../src/pic14/gen.c:4938:genGetABit
	BTFSS	STATUS,2	;id=234,key=006,inCond:25,outCond:0,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 009 
;; >>> ../../../../src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=236,key=000,inCond:400,outCond:10,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x7
;  from: 008 007 ; to: 00b 00a 
;; >>> ../../../../src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1001
	MOVWF	r0x1002	;id=239,key=000,inCond:10,outCond:1,flow seq=009,rIdx=r0x1047
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _T2CONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; 	line = 6633 result AOP_PCODE=_T2CONbits, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; >>> ../../../../src/pic14/gen.c:6452:genPackBits
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1001
	RRF	r0x1002,W	;id=257,key=001,inCond:3,outCond:12,flow seq=009,rIdx=r0x1047
;; >>> ../../../../src/pic14/gen.c:6453:genPackBits
	BTFSC	STATUS,0	;id=506,key=002,inCond:23,outCond:0,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 00c 
	GOTO	_00003_DS_	;id=505,key=000,inCond:0,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0x9
;  from: 009 ; to: 00c 
;; >>> ../../../../src/pic14/gen.c:6454:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
	BANKSEL	_T2CONbits	;id=503,key=000,inCond:0,outCond:0,flow seq=00b
	BCF	_T2CONbits,0	;id=263,key=001,inCond:21,outCond:21,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xa
;  from: 00b 00a ; to: 00e 00d 
;; >>> ../../../../src/pic14/gen.c:6455:genPackBits
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00003_DS_:
	BTFSS	STATUS,0	;id=512,key=000,inCond:23,outCond:0,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 00f 
	GOTO	_00004_DS_	;id=511,key=000,inCond:0,outCond:0,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xc
;  from: 00c ; to: 00f 
;; >>> ../../../../src/pic14/gen.c:6456:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
	BANKSEL	_T2CONbits	;id=509,key=000,inCond:0,outCond:0,flow seq=00e
	BSF	_T2CONbits,0	;id=269,key=001,inCond:21,outCond:21,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xd
;  from: 00e 00d ; to: 011 010 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00004_DS_:
;	.line	91; "../../../lib/timer.c"	/*T2CONbits.*/ T2CKPS1 = (ps >> 2) & 1; // Set timer 2 prescaler to 1:1.
	BANKSEL	r0x1001	;id=514,key=000,inCond:0,outCond:0,flow seq=00f
	MOVF	r0x1001,W	;id=278,key=001,inCond:1,outCond:14,flow seq=00f,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:4928:genGetABit
	ANDLW	0x04	;id=280,key=002,inCond:410,outCond:14,flow seq=00f
;; >>> ../../../../src/pic14/gen.c:4938:genGetABit
	BTFSS	STATUS,2	;id=282,key=003,inCond:25,outCond:0,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 011 
;; >>> ../../../../src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=284,key=000,inCond:400,outCond:10,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0xf
;  from: 010 00f ; to: 013 012 
;; >>> ../../../../src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1001
	MOVWF	r0x1002	;id=287,key=000,inCond:10,outCond:1,flow seq=011,rIdx=r0x1047
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _T2CONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; 	line = 6633 result AOP_PCODE=_T2CONbits, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; >>> ../../../../src/pic14/gen.c:6452:genPackBits
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1001
	RRF	r0x1002,W	;id=305,key=001,inCond:3,outCond:12,flow seq=011,rIdx=r0x1047
;; >>> ../../../../src/pic14/gen.c:6453:genPackBits
	BTFSC	STATUS,0	;id=520,key=002,inCond:23,outCond:0,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 014 
	GOTO	_00005_DS_	;id=519,key=000,inCond:0,outCond:0,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x11
;  from: 011 ; to: 014 
;; >>> ../../../../src/pic14/gen.c:6454:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
	BANKSEL	_T2CONbits	;id=517,key=000,inCond:0,outCond:0,flow seq=013
	BCF	_T2CONbits,1	;id=311,key=001,inCond:21,outCond:21,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x12
;  from: 013 012 ; to: 016 015 
;; >>> ../../../../src/pic14/gen.c:6455:genPackBits
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00005_DS_:
	BTFSS	STATUS,0	;id=526,key=000,inCond:23,outCond:0,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x14
;  from: 014 ; to: 017 
	GOTO	_00006_DS_	;id=525,key=000,inCond:0,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x14
;  from: 014 ; to: 017 
;; >>> ../../../../src/pic14/gen.c:6456:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
	BANKSEL	_T2CONbits	;id=523,key=000,inCond:0,outCond:0,flow seq=016
	BSF	_T2CONbits,1	;id=317,key=001,inCond:21,outCond:21,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x15
;  from: 016 015 ; to: 019 018 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _TMR2, size = 1
;; 	line = 7046 result AOP_DIR=_TMR2, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _TMR2   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00006_DS_:
;	.line	93; "../../../lib/timer.c"	TIMER2_VALUE = 0;
	BANKSEL	_TMR2	;id=528,key=000,inCond:0,outCond:0,flow seq=017
	CLRF	_TMR2	;id=329,key=001,inCond:0,outCond:5,flow seq=017
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _T2CONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; 	line = 6633 result AOP_PCODE=_T2CONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_T2CONbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _T2CONbits present in same bank as _TMR2
;	.line	95; "../../../lib/timer.c"	/*T2CONbits.*/ TMR2ON = 1; // Enable timer 2.
	BSF	_T2CONbits,2	;id=349,key=002,inCond:21,outCond:21,flow seq=017
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _PIR1bits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIR1bits
;; 	line = 6633 result AOP_PCODE=_PIR1bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIR1bits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _PIR1bits present in same bank as _TMR2
;	.line	97; "../../../lib/timer.c"	TMR2IF = 0;
	BCF	_PIR1bits,1	;id=369,key=003,inCond:21,outCond:21,flow seq=017
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;	.line	98; "../../../lib/timer.c"	TMR2IE = !!(ps_mode & TIMER2_FLAGS_INTR);
	BANKSEL	r0x1000	;id=531,key=004,inCond:0,outCond:0,flow seq=017
	MOVF	r0x1000,W	;id=378,key=005,inCond:1,outCond:14,flow seq=017,rIdx=r0x1045
;; >>> ../../../../src/pic14/gen.c:4928:genGetABit
	ANDLW	0x80	;id=380,key=006,inCond:410,outCond:14,flow seq=017
;; >>> ../../../../src/pic14/gen.c:4938:genGetABit
	BTFSS	STATUS,2	;id=382,key=007,inCond:25,outCond:0,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 017 ; to: 019 
;; >>> ../../../../src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=384,key=000,inCond:400,outCond:10,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x17
;  from: 018 017 ; to: 01b 01a 
;; >>> ../../../../src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=387,key=000,inCond:10,outCond:1,flow seq=019,rIdx=r0x1046
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x1045, size=1, left AOP_REG=r0x1046, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVF	r0x1001,W	;id=397,key=001,inCond:1,outCond:14,flow seq=019,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=399,key=002,inCond:400,outCond:10,flow seq=019
;; >>> ../../../../src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=401,key=003,inCond:25,outCond:0,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x19
;  from: 019 ; to: 01b 
;; >>> ../../../../src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=403,key=000,inCond:400,outCond:10,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x19
;  from: 01a 019 ; to: 01d 01c 
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	MOVWF	r0x1000	;id=406,key=000,inCond:10,outCond:1,flow seq=01b,rIdx=r0x1045
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1045, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	MOVF	r0x1000,W	;id=416,key=001,inCond:1,outCond:14,flow seq=01b,rIdx=r0x1045
;; >>> ../../../../src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=418,key=002,inCond:400,outCond:10,flow seq=01b
;; >>> ../../../../src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=420,key=003,inCond:25,outCond:0,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1b
;  from: 01b ; to: 01d 
;; >>> ../../../../src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=422,key=000,inCond:400,outCond:10,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1b
;  from: 01c 01b ; to: 01f 01e 
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=481,key=000,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1046
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	MOVWF	r0x1000	;id=438,key=001,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1045
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _PIE1bits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; 	line = 6633 result AOP_PCODE=_PIE1bits, size=2, left -=-, size=0, right AOP_REG=r0x1045, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; >>> ../../../../src/pic14/gen.c:6452:genPackBits
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	RRF	r0x1000,W	;id=456,key=002,inCond:3,outCond:12,flow seq=01d,rIdx=r0x1045
;; >>> ../../../../src/pic14/gen.c:6453:genPackBits
	BTFSC	STATUS,0	;id=542,key=003,inCond:23,outCond:0,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 01d ; to: 020 
	GOTO	_00007_DS_	;id=541,key=000,inCond:0,outCond:0,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1d
;  from: 01d ; to: 020 
;; >>> ../../../../src/pic14/gen.c:6454:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
	BANKSEL	_PIE1bits	;id=539,key=000,inCond:0,outCond:0,flow seq=01f
	BCF	_PIE1bits,1	;id=462,key=001,inCond:21,outCond:21,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1e
;  from: 01f 01e ; to: 022 021 
;; >>> ../../../../src/pic14/gen.c:6455:genPackBits
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00007_DS_:
	BTFSS	STATUS,0	;id=548,key=000,inCond:23,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 023 
	GOTO	_00008_DS_	;id=547,key=000,inCond:0,outCond:0,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x20
;  from: 020 ; to: 023 
;; >>> ../../../../src/pic14/gen.c:6456:genPackBits
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
	BANKSEL	_PIE1bits	;id=545,key=000,inCond:0,outCond:0,flow seq=022
	BSF	_PIE1bits,1	;id=468,key=001,inCond:21,outCond:21,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x21
;  from: 022 021 ; to: 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00008_DS_:
;	.line	99; "../../../lib/timer.c"	}
	RETURN		;id=479,key=000,inCond:10,outCond:e,flow seq=023
;<>Start of new flow, seq=0x24
;  from: ; to: 
; exit point of _timer2_init


;	code size estimation:
;	   65+   14 =    79 instructions (  186 byte)

	end
