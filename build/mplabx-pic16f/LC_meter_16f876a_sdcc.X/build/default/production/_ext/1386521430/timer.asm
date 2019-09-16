;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
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
	global	_timer0_read_ps
	global	_timer0_init

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
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 003 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=20previous max_key=16 
;;	-----------------------------------------
;;	 function timer2_init
;;	-----------------------------------------
;_timer2_init:
S_timer__timer2_init	code
_timer2_init:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
;	.line	125; "../../../lib/timer.c"	timer2_init(uint8_t ps_mode) {
	BANKSEL	r0x1000	;id=1367,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1000	;id=1089,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_REG=r0x1053, size=1, left AOP_REG=r0x1052, size=1, right AOP_LIT=0x0f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4209:genAnd
;	.line	126; "../../../lib/timer.c"	uint8_t ps = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f	;id=1098,key=002,inCond:400,outCond:10,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4210:genAnd
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	ANDWF	r0x1000,W	;id=1101,key=003,inCond:11,outCond:14,flow seq=001,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4211:genAnd
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=1104,key=004,inCond:10,outCond:1,flow seq=001,rIdx=r0x1053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _T2CON, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	130; "../../../lib/timer.c"	T2CON &= ~0b01111111;
	MOVLW	0x80	;id=1114,key=005,inCond:400,outCond:10,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _T2CON   offset=0
	BANKSEL	_T2CON	;id=1370,key=006,inCond:0,outCond:0,flow seq=001
	ANDWF	_T2CON,F	;id=1118,key=007,inCond:11,outCond:5,flow seq=001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1054, size=1, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1054 
;	.line	132; "../../../lib/timer.c"	T2CON |= (postscaler & 0b1111) << 3;
	BANKSEL	r0x1002	;id=1371,key=008,inCond:0,outCond:0,flow seq=001
	CLRF	r0x1002	;id=1128,key=009,inCond:0,outCond:5,flow seq=001,rIdx=r0x1054
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_REG=r0x1054, size=1, left AOP_REG=r0x1054, size=1, right AOP_LIT=0x0f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
	MOVLW	0x0f	;id=1136,key=00a,inCond:400,outCond:10,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1002
	ANDWF	r0x1002,F	;id=1139,key=00b,inCond:11,outCond:5,flow seq=001,rIdx=r0x1054
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5232:shiftLeft_Left2ResultLit
	BCF	STATUS,0	;id=1146,key=00c,inCond:23,outCond:23,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5241:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1002
	RLF	r0x1002,W	;id=1149,key=00d,inCond:3,outCond:12,flow seq=001,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5242:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1002
	MOVWF	r0x1003	;id=1152,key=00e,inCond:10,outCond:1,flow seq=001,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5232:shiftLeft_Left2ResultLit
	BCF	STATUS,0	;id=1154,key=00f,inCond:23,outCond:23,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5237:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1002
	RLF	r0x1003,F	;id=1157,key=010,inCond:3,outCond:3,flow seq=001,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5232:shiftLeft_Left2ResultLit
	BCF	STATUS,0	;id=1159,key=011,inCond:23,outCond:23,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5237:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1002
	RLF	r0x1003,F	;id=1162,key=012,inCond:3,outCond:3,flow seq=001,rIdx=r0x1055
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _T2CON, size = 1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1054, size=1, left -=-, size=0, right AOP_DIR=_T2CON, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _T2CON   offset=0
	BANKSEL	_T2CON	;id=1377,key=013,inCond:0,outCond:0,flow seq=001
	MOVF	_T2CON,W	;id=1174,key=014,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1054 
	BANKSEL	r0x1002	;id=1378,key=015,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1002	;id=1350,key=016,inCond:10,outCond:1,flow seq=001,rIdx=r0x1054
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1002
	IORWF	r0x1003,W	;id=1351,key=017,inCond:11,outCond:14,flow seq=001,rIdx=r0x1055
	BANKSEL	_T2CON	;id=1380,key=018,inCond:0,outCond:0,flow seq=001
	MOVWF	_T2CON	;id=1195,key=019,inCond:10,outCond:1,flow seq=001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_REG=r0x1053, size=1, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	133; "../../../lib/timer.c"	T2CON |= (ps & 0b11); // Set timer 2 prescaler to 1:1.
	MOVLW	0x03	;id=1204,key=01a,inCond:400,outCond:10,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	1097 rIdx = r0x1053 
	BANKSEL	r0x1001	;id=1381,key=01b,inCond:0,outCond:0,flow seq=001
	ANDWF	r0x1001,F	;id=1207,key=01c,inCond:11,outCond:5,flow seq=001,rIdx=r0x1053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _T2CON, size = 1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_REG=r0x1053, size=1
;; 	line = 4272 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_REG=r0x1053, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4437:genOr
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1001
	MOVF	r0x1001,W	;id=1218,key=01d,inCond:1,outCond:14,flow seq=001,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4438:genOr
;;	998
;;	1016  _T2CON   offset=0
	BANKSEL	_T2CON	;id=1383,key=01e,inCond:0,outCond:0,flow seq=001
	IORWF	_T2CON,F	;id=1222,key=01f,inCond:11,outCond:5,flow seq=001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _TMR2, size = 1
;; 	line = 7046 result AOP_DIR=_TMR2, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _TMR2   offset=0
;; BANKOPT2 BANKSEL dropped; _TMR2 present in same bank as _T2CON
;	.line	135; "../../../lib/timer.c"	TIMER2_VALUE = 0;
	CLRF	_TMR2	;id=1234,key=020,inCond:0,outCond:5,flow seq=001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _T2CON, size = 1
;; 	line = 4246 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4272 result AOP_DIR=_T2CON, size=1, left AOP_DIR=_T2CON, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; _T2CON present in same bank as _T2CON
;	.line	137; "../../../lib/timer.c"	T2CON |= 0b100; // TMR2ON = 1; // Enable timer 2.
	BSF	_T2CON,2	;id=1244,key=021,inCond:21,outCond:21,flow seq=001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _PIR1 present in same bank as _T2CON
;	.line	140; "../../../lib/timer.c"	PIR1 &= ~0b10;
	BCF	_PIR1,1	;id=1254,key=022,inCond:21,outCond:21,flow seq=001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1052 
;	.line	141; "../../../lib/timer.c"	PIE1 = (!!(ps_mode & TIMER2_FLAGS_INTR)) << 1;
	BANKSEL	r0x1000	;id=1387,key=023,inCond:0,outCond:0,flow seq=001
	MOVF	r0x1000,W	;id=1262,key=024,inCond:1,outCond:14,flow seq=001,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4928:genGetABit
	ANDLW	0x80	;id=1264,key=025,inCond:410,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4938:genGetABit
	BTFSS	STATUS,2	;id=1266,key=026,inCond:25,outCond:0,flow seq=001
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 001 ; to: 003 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=1268,key=000,inCond:400,outCond:10,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x1
;  from: 002 001 ; to: 005 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=1271,key=000,inCond:10,outCond:1,flow seq=003,rIdx=r0x1053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x1052, size=1, left AOP_REG=r0x1053, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVF	r0x1001,W	;id=1281,key=001,inCond:1,outCond:14,flow seq=003,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=1283,key=002,inCond:400,outCond:10,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=1285,key=003,inCond:25,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 005 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=1287,key=000,inCond:400,outCond:10,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 004 003 ; to: 007 006 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	MOVWF	r0x1000	;id=1290,key=000,inCond:10,outCond:1,flow seq=005,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x1053, size=1, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	MOVF	r0x1000,W	;id=1300,key=001,inCond:1,outCond:14,flow seq=005,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=1302,key=002,inCond:400,outCond:10,flow seq=005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=1304,key=003,inCond:25,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=1306,key=000,inCond:400,outCond:10,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x5
;  from: 006 005 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=1352,key=000,inCond:10,outCond:1,flow seq=007,rIdx=r0x1053
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	MOVWF	r0x1000	;id=1322,key=001,inCond:10,outCond:1,flow seq=007,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=1
;; ***	aopForSym 316
;;	328 sym->rname = _PIE1, size = 1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5232:shiftLeft_Left2ResultLit
	BCF	STATUS,0	;id=1330,key=002,inCond:23,outCond:23,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5241:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1000
	RLF	r0x1000,W	;id=1333,key=003,inCond:3,outCond:12,flow seq=007,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5242:shiftLeft_Left2ResultLit
;;	998
;;	1016  _PIE1   offset=0
	BANKSEL	_PIE1	;id=1395,key=004,inCond:0,outCond:0,flow seq=007
	MOVWF	_PIE1	;id=1337,key=005,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00141_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	142; "../../../lib/timer.c"	}
	RETURN		;id=1348,key=006,inCond:10,outCond:e,flow seq=007
;<>Start of new flow, seq=0x8
;  from: ; to: 
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
;<>Start of new flow, seq=0x9 ancestor = 0x9
;  from: ; to: 00a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=12 
;;	-----------------------------------------
;;	 function timer0_read_ps
;;	-----------------------------------------
;_timer0_read_ps:
S_timer__timer0_read_ps	code
_timer0_read_ps:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _TMR0, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_DIR=_TMR0, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _TMR0   offset=0
;	.line	60; "../../../lib/timer.c"	uint8_t prev = TMR0;
	BANKSEL	_TMR0	;id=1396,key=000,inCond:0,outCond:0,flow seq=009
	MOVF	_TMR0,W	;id=768,key=001,inCond:1,outCond:14,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x104C 
	BANKSEL	r0x1004	;id=1397,key=002,inCond:0,outCond:0,flow seq=009
	MOVWF	r0x1004	;id=771,key=003,inCond:10,outCond:1,flow seq=009,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;; 	line = 4246 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	63; "../../../lib/timer.c"	T0CON |= 0x20; // T0CS = 1;
	BANKSEL	_OPTION_REG	;id=1398,key=004,inCond:0,outCond:0,flow seq=009
	BSF	_OPTION_REG,5	;id=781,key=005,inCond:21,outCond:21,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x104D, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x104D 
;	.line	65; "../../../lib/timer.c"	do {
	BANKSEL	r0x1005	;id=1399,key=006,inCond:0,outCond:0,flow seq=009
	CLRF	r0x1005	;id=791,key=007,inCond:0,outCond:5,flow seq=009,rIdx=r0x104D
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1005
	CLRF	r0x1006	;id=795,key=008,inCond:0,outCond:5,flow seq=009,rIdx=r0x104E
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 012 009 ; to: 00c 00b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00122_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;; 	line = 4246 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0x10, size=1
;; 	line = 4272 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0x10, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT3 drop assumptions: PCI with label or call found
_00122_DS_:
;	.line	67; "../../../lib/timer.c"	T0CON |= 0x10; // T0SE = 1;
	BANKSEL	_OPTION_REG	;id=1402,key=000,inCond:0,outCond:0,flow seq=00a
	BSF	_OPTION_REG,4	;id=810,key=001,inCond:21,outCond:21,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4757:pic14_genInline *{*
;; ***	pic14_genInline  4758
;; BANKOPT4 drop assumptions: label or ASMDIR found
	nop	
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4757:pic14_genInline *{*
;; ***	pic14_genInline  4758
;; BANKOPT4 drop assumptions: label or ASMDIR found
	nop	
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0xef, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	72; "../../../lib/timer.c"	T0CON &= ~0x10; // T0SE = 0;
	BANKSEL	_OPTION_REG	;id=1405,key=004,inCond:0,outCond:0,flow seq=00a
	BCF	_OPTION_REG,4	;id=828,key=005,inCond:21,outCond:21,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4757:pic14_genInline *{*
;; ***	pic14_genInline  4758
;; BANKOPT4 drop assumptions: label or ASMDIR found
	nop	
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4757:pic14_genInline *{*
;; ***	pic14_genInline  4758
;; BANKOPT4 drop assumptions: label or ASMDIR found
	nop	
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=2
;;	576
;; 	line = 614 result AOP_REG=r0x104D, size=2, left AOP_REG=r0x104D, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x104D 
;	.line	77; "../../../lib/timer.c"	++count;
	BANKSEL	r0x1005	;id=1408,key=008,inCond:0,outCond:0,flow seq=00a
	INCF	r0x1005,F	;id=850,key=009,inCond:1,outCond:5,flow seq=00a,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=852,key=00a,inCond:25,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1005
	INCF	r0x1006,F	;id=855,key=000,inCond:1,outCond:5,flow seq=00b,rIdx=r0x104E
;<>Start of new flow, seq=0xc ancestor = 0xa
;  from: 00b 00a ; to: 00e 00d 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3638:genCmpEq *{*
;; ***	genCmpEq  3639
;; ifx is non-null
;;	695 register type nRegs=1
;; ***	aopForSym 316
;;	328 sym->rname = _TMR0, size = 1
;; 	line = 3650 result AOP_CRY=0x00, size=0, left AOP_REG=r0x104C, size=1, right AOP_DIR=_TMR0, size=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _TMR0   offset=0
;	.line	80; "../../../lib/timer.c"	} while(prev == TMR0 && count <= 255);
	BANKSEL	_TMR0	;id=1410,key=000,inCond:0,outCond:0,flow seq=00c
	MOVF	_TMR0,W	;id=869,key=001,inCond:1,outCond:14,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3722:genCmpEq
;;	1097 rIdx = r0x104C 
	BANKSEL	r0x1004	;id=1411,key=002,inCond:0,outCond:0,flow seq=00c
	XORWF	r0x1004,W	;id=872,key=003,inCond:11,outCond:14,flow seq=00c,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3724:genCmpEq
	BTFSS	STATUS,2	;id=874,key=004,inCond:25,outCond:0,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 013 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3727:genCmpEq
;; ***	popGetLabel  key=4, label offset 20
	GOTO	_00124_DS_	;id=877,key=000,inCond:0,outCond:0,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xc
;  from: 00c ; to: 010 00f 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x100=256), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x01	;id=887,key=000,inCond:400,outCond:10,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	SUBWF	r0x1006,W	;id=890,key=001,inCond:11,outCond:1e,flow seq=00e,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=892,key=002,inCond:25,outCond:0,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xe
;  from: 00e ; to: 011 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=16, label offset 20
	GOTO	_00136_DS_	;id=895,key=000,inCond:0,outCond:0,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xe
;  from: 00e ; to: 011 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x00	;id=897,key=000,inCond:400,outCond:10,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1004
	SUBWF	r0x1005,W	;id=900,key=001,inCond:11,outCond:1e,flow seq=010,rIdx=r0x104D
;<>Start of new flow, seq=0x11 ancestor = 0xf
;  from: 010 00f ; to: 013 012 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00136_DS_:
	BTFSS	STATUS,0	;id=904,key=000,inCond:23,outCond:0,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 00a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=2, label offset 20
	GOTO	_00122_DS_	;id=907,key=000,inCond:0,outCond:0,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0xd
;  from: 011 00d ; to: 015 014 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00124_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x104C, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x104C 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00124_DS_:
;	.line	82; "../../../lib/timer.c"	count = ((prev << 8) + (256 - count));
	BANKSEL	r0x1004	;id=1417,key=000,inCond:0,outCond:0,flow seq=013
	MOVF	r0x1004,W	;id=924,key=001,inCond:1,outCond:14,flow seq=013,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x1004
	MOVWF	r0x1009	;id=945,key=002,inCond:10,outCond:1,flow seq=013,rIdx=r0x1051
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1004
	MOVWF	r0x1007	;id=927,key=003,inCond:10,outCond:1,flow seq=013,rIdx=r0x104F
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x1004
	CLRF	r0x1008	;id=932,key=004,inCond:0,outCond:5,flow seq=013,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5150:movLeft2Result *{*
;; ***	movLeft2Result  5151
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5156:movLeft2Result
;;	1097 rIdx = r0x104F 
;;99	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5157:movLeft2Result
;;	1097 rIdx = r0x1051 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5286:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1004
	CLRF	r0x1004	;id=948,key=005,inCond:0,outCond:5,flow seq=013,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	result AOP_REG, left AOP_LIT, right AOP_REG
;; left is lit	line 1010 result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1004
	MOVF	r0x1005,W	;id=961,key=006,inCond:1,outCond:14,flow seq=013,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1049:genMinus
	SUBLW	0x00	;id=963,key=007,inCond:410,outCond:1e,flow seq=013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1050:genMinus
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1004
	MOVWF	r0x1005	;id=966,key=008,inCond:10,outCond:1,flow seq=013,rIdx=r0x104D
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	MOVF	r0x1006,W	;id=970,key=009,inCond:1,outCond:14,flow seq=013,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1145:genMinus
	BTFSS	STATUS,0	;id=972,key=00a,inCond:23,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 013 ; to: 015 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1146:genMinus
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	INCF	r0x1006,W	;id=975,key=000,inCond:1,outCond:14,flow seq=014,rIdx=r0x104E
;<>Start of new flow, seq=0x15 ancestor = 0x13
;  from: 014 013 ; to: 017 016 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1149:genMinus
	SUBLW	0x01	;id=977,key=000,inCond:410,outCond:1e,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1150:genMinus
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	MOVWF	r0x1006	;id=980,key=001,inCond:10,outCond:1,flow seq=015,rIdx=r0x104E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x104C, size=2
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1004
	MOVF	r0x1004,W	;id=989,key=002,inCond:1,outCond:14,flow seq=015,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1004
	MOVWF	r0x1007	;id=992,key=003,inCond:10,outCond:1,flow seq=015,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x1004
	MOVF	r0x1009,W	;id=1366,key=004,inCond:1,outCond:14,flow seq=015,rIdx=r0x1051
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x1004
	MOVWF	r0x1008	;id=998,key=005,inCond:10,outCond:1,flow seq=015,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 614 result AOP_REG=r0x104C, size=2, left AOP_REG=r0x104F, size=2, right AOP_REG=r0x104D, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1004
	MOVF	r0x1005,W	;id=1012,key=006,inCond:1,outCond:14,flow seq=015,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1004
	ADDWF	r0x1007,W	;id=1015,key=007,inCond:11,outCond:1e,flow seq=015,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1004
	MOVWF	r0x1004	;id=1018,key=008,inCond:10,outCond:1,flow seq=015,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:767:genPlus
;;	1097 rIdx = r0x1050 
;;100	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:768:genPlus
;;	1097 rIdx = r0x1051 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:770:genPlus
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	MOVF	r0x1006,W	;id=1027,key=009,inCond:1,outCond:14,flow seq=015,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	BTFSC	STATUS,0	;id=1029,key=00a,inCond:23,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 018 017 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	INCFSZ	r0x1006,W	;id=1032,key=000,inCond:1,outCond:14,flow seq=016,rIdx=r0x104E
;<>Start of new flow, seq=0x17 ancestor = 0x15
;  from: 016 015 ; to: 018 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:773:genPlus
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x1004
	ADDWF	r0x1009,F	;id=1035,key=000,inCond:11,outCond:f,flow seq=017,rIdx=r0x1051
;<>Start of new flow, seq=0x18 ancestor = 0x16
;  from: 017 016 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1004
;	.line	83; "../../../lib/timer.c"	return count;
	MOVF	r0x1004,W	;id=1045,key=000,inCond:1,outCond:14,flow seq=018,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1401:pass_argument
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1004's banks
	MOVWF	STK00	;id=1048,key=001,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x1004
	MOVF	r0x1009,W	;id=1053,key=002,inCond:1,outCond:14,flow seq=018,rIdx=r0x1051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00125_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	84; "../../../lib/timer.c"	}
	RETURN		;id=1064,key=003,inCond:10,outCond:e,flow seq=018
;<>Start of new flow, seq=0x19
;  from: ; to: 
; exit point of _timer0_read_ps
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

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
;<>Start of new flow, seq=0x1a ancestor = 0x1a
;  from: ; to: 01c 01b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function timer0_init
;;	-----------------------------------------
;_timer0_init:
S_timer__timer0_init	code
_timer0_init:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;	.line	27; "../../../lib/timer.c"	timer0_init(uint8_t ps_mode) {
	BANKSEL	r0x100A	;id=1440,key=000,inCond:0,outCond:0,flow seq=01a
	MOVWF	r0x100A	;id=125,key=001,inCond:10,outCond:1,flow seq=01a,rIdx=r0x1045
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x0f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4209:genAnd
;	.line	28; "../../../lib/timer.c"	uint8_t prescaler = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f	;id=134,key=002,inCond:400,outCond:10,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4210:genAnd
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x100A
	ANDWF	r0x100A,W	;id=137,key=003,inCond:11,outCond:14,flow seq=01a,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4211:genAnd
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100A
	MOVWF	r0x100B	;id=140,key=004,inCond:10,outCond:1,flow seq=01a,rIdx=r0x1046
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _TMR0, size = 1
;; 	line = 7046 result AOP_DIR=_TMR0, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _TMR0   offset=0
;	.line	30; "../../../lib/timer.c"	TIMER0_VALUE = 0;
	BANKSEL	_TMR0	;id=1443,key=005,inCond:0,outCond:0,flow seq=01a
	CLRF	_TMR0	;id=152,key=006,inCond:0,outCond:5,flow seq=01a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;	.line	33; "../../../lib/timer.c"	T0CON |= (!!(ps_mode & TIMER0_FLAGS_EXTCLK)) ? 0x20 : 0x00;
	BANKSEL	r0x100A	;id=1444,key=007,inCond:0,outCond:0,flow seq=01a
	MOVF	r0x100A,W	;id=160,key=008,inCond:1,outCond:14,flow seq=01a,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4928:genGetABit
	ANDLW	0x40	;id=162,key=009,inCond:410,outCond:14,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4938:genGetABit
	BTFSS	STATUS,2	;id=164,key=00a,inCond:25,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x1a
;  from: 01a ; to: 01c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=166,key=000,inCond:400,outCond:10,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1a
;  from: 01b 01a ; to: 01e 01d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVWF	r0x100C	;id=169,key=000,inCond:10,outCond:1,flow seq=01c,rIdx=r0x1047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVF	r0x100C,W	;id=1353,key=001,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1047
	BTFSC	STATUS,2	;id=181,key=002,inCond:25,outCond:0,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1c
;  from: 01c ; to: 01f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_	;id=184,key=000,inCond:0,outCond:0,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1c
;  from: 01c ; to: 020 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x20, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x20	;id=192,key=000,inCond:400,outCond:10,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVWF	r0x100C	;id=195,key=001,inCond:10,outCond:1,flow seq=01e,rIdx=r0x1047
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100A
	CLRF	r0x100D	;id=199,key=002,inCond:0,outCond:5,flow seq=01e,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=6, label offset 4
	GOTO	_00110_DS_	;id=204,key=003,inCond:0,outCond:0,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1d
;  from: 01d ; to: 020 
;goto	_00110_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00109_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1047 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00109_DS_:
	BANKSEL	r0x100C	;id=1450,key=000,inCond:0,outCond:0,flow seq=01f
	CLRF	r0x100C	;id=219,key=001,inCond:0,outCond:5,flow seq=01f,rIdx=r0x1047
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100C
	CLRF	r0x100D	;id=223,key=002,inCond:0,outCond:5,flow seq=01f,rIdx=r0x1048
;<>Start of new flow, seq=0x20 ancestor = 0x1e
;  from: 01f 01e ; to: 022 021 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00110_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_DIR=_OPTION_REG, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _OPTION_REG   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00110_DS_:
	BANKSEL	_OPTION_REG	;id=1453,key=000,inCond:0,outCond:0,flow seq=020
	MOVF	_OPTION_REG,W	;id=244,key=001,inCond:1,outCond:14,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x100E	;id=1454,key=002,inCond:0,outCond:0,flow seq=020
	MOVWF	r0x100E	;id=247,key=003,inCond:10,outCond:1,flow seq=020,rIdx=r0x1049
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_REG=r0x1047, size=2
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100E
	MOVF	r0x100C,W	;id=1354,key=004,inCond:1,outCond:14,flow seq=020,rIdx=r0x1047
;; BANKOPT2 BANKSEL dropped; r0x100F present in same bank as r0x100E
	MOVWF	r0x100F	;id=1355,key=005,inCond:10,outCond:1,flow seq=020,rIdx=r0x104A
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100E
	IORWF	r0x100E,W	;id=275,key=006,inCond:11,outCond:14,flow seq=020,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4500:genOr
;;	998
;;	1016  _OPTION_REG   offset=0
	BANKSEL	_OPTION_REG	;id=1458,key=007,inCond:0,outCond:0,flow seq=020
	MOVWF	_OPTION_REG	;id=279,key=008,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;	.line	36; "../../../lib/timer.c"	T0CON |= (!!(ps_mode & EDGE_HIGH_LOW)) ? 0x10 : 0x00;
	BANKSEL	r0x100A	;id=1459,key=009,inCond:0,outCond:0,flow seq=020
	MOVF	r0x100A,W	;id=287,key=00a,inCond:1,outCond:14,flow seq=020,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4928:genGetABit
	ANDLW	0x10	;id=289,key=00b,inCond:410,outCond:14,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4938:genGetABit
	BTFSS	STATUS,2	;id=291,key=00c,inCond:25,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 022 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=293,key=000,inCond:400,outCond:10,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x20
;  from: 021 020 ; to: 024 023 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVWF	r0x100C	;id=296,key=000,inCond:10,outCond:1,flow seq=022,rIdx=r0x1047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVF	r0x100C,W	;id=1356,key=001,inCond:1,outCond:14,flow seq=022,rIdx=r0x1047
	BTFSC	STATUS,2	;id=308,key=002,inCond:25,outCond:0,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 025 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=7, label offset 4
	GOTO	_00111_DS_	;id=311,key=000,inCond:0,outCond:0,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x22
;  from: 022 ; to: 026 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x10, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x10	;id=319,key=000,inCond:400,outCond:10,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVWF	r0x100C	;id=322,key=001,inCond:10,outCond:1,flow seq=024,rIdx=r0x1047
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100A
	CLRF	r0x100D	;id=326,key=002,inCond:0,outCond:5,flow seq=024,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=8, label offset 4
	GOTO	_00112_DS_	;id=331,key=003,inCond:0,outCond:0,flow seq=024
;<>Start of new flow, seq=0x25 ancestor = 0x23
;  from: 023 ; to: 026 
;goto	_00112_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00111_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1047, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1047 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00111_DS_:
	BANKSEL	r0x100C	;id=1465,key=000,inCond:0,outCond:0,flow seq=025
	CLRF	r0x100C	;id=346,key=001,inCond:0,outCond:5,flow seq=025,rIdx=r0x1047
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100C
	CLRF	r0x100D	;id=350,key=002,inCond:0,outCond:5,flow seq=025,rIdx=r0x1048
;<>Start of new flow, seq=0x26 ancestor = 0x24
;  from: 025 024 ; to: 028 027 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00112_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_DIR=_OPTION_REG, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _OPTION_REG   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00112_DS_:
	BANKSEL	_OPTION_REG	;id=1468,key=000,inCond:0,outCond:0,flow seq=026
	MOVF	_OPTION_REG,W	;id=371,key=001,inCond:1,outCond:14,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x100E	;id=1469,key=002,inCond:0,outCond:0,flow seq=026
	MOVWF	r0x100E	;id=374,key=003,inCond:10,outCond:1,flow seq=026,rIdx=r0x1049
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_REG=r0x1047, size=2
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100E
	MOVF	r0x100C,W	;id=1357,key=004,inCond:1,outCond:14,flow seq=026,rIdx=r0x1047
;; BANKOPT2 BANKSEL dropped; r0x100F present in same bank as r0x100E
	MOVWF	r0x100F	;id=1358,key=005,inCond:10,outCond:1,flow seq=026,rIdx=r0x104A
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100E
	IORWF	r0x100E,W	;id=402,key=006,inCond:11,outCond:14,flow seq=026,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4500:genOr
;;	998
;;	1016  _OPTION_REG   offset=0
	BANKSEL	_OPTION_REG	;id=1473,key=007,inCond:0,outCond:0,flow seq=026
	MOVWF	_OPTION_REG	;id=406,key=008,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;	.line	39; "../../../lib/timer.c"	T0CON &= (!!prescaler) ? ~0x08 : ~0x00;
	BANKSEL	r0x100B	;id=1474,key=009,inCond:0,outCond:0,flow seq=026
	MOVF	r0x100B,W	;id=1359,key=00a,inCond:1,outCond:14,flow seq=026,rIdx=r0x1046
	BTFSC	STATUS,2	;id=419,key=00b,inCond:25,outCond:0,flow seq=026
;<>Start of new flow, seq=0x27 ancestor = 0x26
;  from: 026 ; to: 029 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=9, label offset 4
	GOTO	_00113_DS_	;id=422,key=000,inCond:0,outCond:0,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x26
;  from: 026 ; to: 02a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1047, size=1, left -=-, size=0, right AOP_LIT=0xf7, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0xf7	;id=430,key=000,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100B
	MOVWF	r0x100C	;id=433,key=001,inCond:10,outCond:1,flow seq=028,rIdx=r0x1047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=10, label offset 4
	GOTO	_00114_DS_	;id=438,key=002,inCond:0,outCond:0,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x27
;  from: 027 ; to: 02a 
;goto	_00114_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00113_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1047, size=1, left -=-, size=0, right AOP_LIT=0xff, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00113_DS_:
	MOVLW	0xff	;id=452,key=000,inCond:400,outCond:10,flow seq=029
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1047 
	BANKSEL	r0x100C	;id=1477,key=001,inCond:0,outCond:0,flow seq=029
	MOVWF	r0x100C	;id=455,key=002,inCond:10,outCond:1,flow seq=029,rIdx=r0x1047
;<>Start of new flow, seq=0x2a ancestor = 0x28
;  from: 029 028 ; to: 02c 02b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_OPTION_REG, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _OPTION_REG   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
	BANKSEL	_OPTION_REG	;id=1479,key=000,inCond:0,outCond:0,flow seq=02a
	MOVF	_OPTION_REG,W	;id=472,key=001,inCond:1,outCond:14,flow seq=02a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x100D	;id=1480,key=002,inCond:0,outCond:0,flow seq=02a
	MOVWF	r0x100D	;id=475,key=003,inCond:10,outCond:1,flow seq=02a,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;; 	line = 3974 result AOP_DIR=_OPTION_REG, size=1, left AOP_REG=r0x1048, size=1, right AOP_REG=r0x1047, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4216:genAnd
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100D
	MOVF	r0x100C,W	;id=486,key=004,inCond:1,outCond:14,flow seq=02a,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4217:genAnd
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100D
	ANDWF	r0x100D,W	;id=489,key=005,inCond:11,outCond:14,flow seq=02a,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4218:genAnd
;;	998
;;	1016  _OPTION_REG   offset=0
	BANKSEL	_OPTION_REG	;id=1483,key=006,inCond:0,outCond:0,flow seq=02a
	MOVWF	_OPTION_REG	;id=493,key=007,inCond:10,outCond:1,flow seq=02a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0xf8, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	41; "../../../lib/timer.c"	T0CON &= ~0b111;
	MOVLW	0xf8	;id=503,key=008,inCond:400,outCond:10,flow seq=02a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _OPTION_REG   offset=0
;; BANKOPT2 BANKSEL dropped; _OPTION_REG present in same bank as _OPTION_REG
	ANDWF	_OPTION_REG,F	;id=507,key=009,inCond:11,outCond:5,flow seq=02a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;	.line	43; "../../../lib/timer.c"	if(prescaler > 0) {
	BANKSEL	r0x100B	;id=1485,key=00a,inCond:0,outCond:0,flow seq=02a
	MOVF	r0x100B,W	;id=1360,key=00b,inCond:1,outCond:14,flow seq=02a,rIdx=r0x1046
	BTFSC	STATUS,2	;id=520,key=00c,inCond:25,outCond:0,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x2a
;  from: 02a ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_	;id=523,key=000,inCond:0,outCond:0,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2a
;  from: 02a ; to: 02d 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1047, size=1, left -=-, size=0, right AOP_REG=r0x1046, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100B
;	.line	44; "../../../lib/timer.c"	T0CON |= (prescaler - 1) & 0b111;
	MOVF	r0x100B,W	;id=534,key=000,inCond:1,outCond:14,flow seq=02c,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100B
	MOVWF	r0x100C	;id=537,key=001,inCond:10,outCond:1,flow seq=02c,rIdx=r0x1047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:526:genAddLit
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100B
	DECF	r0x100C,W	;id=551,key=002,inCond:1,outCond:14,flow seq=02c,rIdx=r0x1047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100B
	MOVWF	r0x100B	;id=555,key=003,inCond:10,outCond:1,flow seq=02c,rIdx=r0x1046
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1046, size=1, right AOP_LIT=0x07, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
	MOVLW	0x07	;id=565,key=004,inCond:400,outCond:10,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100B
	ANDWF	r0x100B,F	;id=568,key=005,inCond:11,outCond:5,flow seq=02c,rIdx=r0x1046
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_REG=r0x1046, size=1
;; 	line = 4272 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_REG=r0x1046, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4437:genOr
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100B
	MOVF	r0x100B,W	;id=579,key=006,inCond:1,outCond:14,flow seq=02c,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4438:genOr
;;	998
;;	1016  _OPTION_REG   offset=0
	BANKSEL	_OPTION_REG	;id=1492,key=007,inCond:0,outCond:0,flow seq=02c
	IORWF	_OPTION_REG,F	;id=583,key=008,inCond:11,outCond:5,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2b
;  from: 02c 02b ; to: 02f 02e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00106_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xbf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; INTCON present in all of (null)'s banks
_00106_DS_:
;	.line	54; "../../../lib/timer.c"	INTCON &= ~0x40; // TMR0IF = 0;
	BCF	INTCON,6	;id=598,key=000,inCond:21,outCond:21,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;	.line	55; "../../../lib/timer.c"	INTCON |= (!!(ps_mode & TIMER0_FLAGS_INTR)) ? 0x20 : 0x00;
	BANKSEL	r0x100A	;id=1495,key=001,inCond:0,outCond:0,flow seq=02d
	MOVF	r0x100A,W	;id=606,key=002,inCond:1,outCond:14,flow seq=02d,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4928:genGetABit
	ANDLW	0x80	;id=608,key=003,inCond:410,outCond:14,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4938:genGetABit
	BTFSS	STATUS,2	;id=610,key=004,inCond:25,outCond:0,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 02f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4939:genGetABit
	MOVLW	0x01	;id=612,key=000,inCond:400,outCond:10,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2d
;  from: 02e 02d ; to: 031 030 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4944:genGetABit
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100A
	MOVWF	r0x100B	;id=615,key=000,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1046
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100A
	MOVF	r0x100B,W	;id=1361,key=001,inCond:1,outCond:14,flow seq=02f,rIdx=r0x1046
	BTFSC	STATUS,2	;id=627,key=002,inCond:25,outCond:0,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2f
;  from: 02f ; to: 032 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=11, label offset 4
	GOTO	_00115_DS_	;id=630,key=000,inCond:0,outCond:0,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x2f
;  from: 02f ; to: 033 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1045, size=2, left -=-, size=0, right AOP_LIT=0x20, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x20	;id=638,key=000,inCond:400,outCond:10,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x100A
	MOVWF	r0x100A	;id=641,key=001,inCond:10,outCond:1,flow seq=031,rIdx=r0x1045
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100A
	CLRF	r0x100B	;id=645,key=002,inCond:0,outCond:5,flow seq=031,rIdx=r0x1046
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=12, label offset 4
	GOTO	_00116_DS_	;id=650,key=003,inCond:0,outCond:0,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x30
;  from: 030 ; to: 033 
;goto	_00116_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00115_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1045, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1045 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00115_DS_:
	BANKSEL	r0x100A	;id=1501,key=000,inCond:0,outCond:0,flow seq=032
	CLRF	r0x100A	;id=665,key=001,inCond:0,outCond:5,flow seq=032,rIdx=r0x1045
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100A
	CLRF	r0x100B	;id=669,key=002,inCond:0,outCond:5,flow seq=032,rIdx=r0x1046
;<>Start of new flow, seq=0x33 ancestor = 0x31
;  from: 032 031 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00116_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1047, size=1, left -=-, size=0, right AOP_DIR=_INTCON, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1012  _INTCON   offset=0 - had to alloc by reg name
;; BANKOPT3 drop assumptions: PCI with label or call found
_00116_DS_:
	BANKSEL	_INTCON	;id=1504,key=000,inCond:0,outCond:0,flow seq=033
	MOVF	_INTCON,W	;id=690,key=001,inCond:1,outCond:14,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1047 
	BANKSEL	r0x100C	;id=1505,key=002,inCond:0,outCond:0,flow seq=033
	MOVWF	r0x100C	;id=693,key=003,inCond:10,outCond:1,flow seq=033,rIdx=r0x1047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_REG=r0x1045, size=2
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x100C
	MOVF	r0x100A,W	;id=1362,key=004,inCond:1,outCond:14,flow seq=033,rIdx=r0x1045
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100C
	MOVWF	r0x100D	;id=1363,key=005,inCond:10,outCond:1,flow seq=033,rIdx=r0x1048
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100C
	IORWF	r0x100C,W	;id=721,key=006,inCond:11,outCond:14,flow seq=033,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4500:genOr
;;	998
;;	1016  _INTCON   offset=0
	BANKSEL	_INTCON	;id=1509,key=007,inCond:0,outCond:0,flow seq=033
	MOVWF	_INTCON	;id=725,key=008,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00107_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	56; "../../../lib/timer.c"	}
	RETURN		;id=736,key=009,inCond:10,outCond:e,flow seq=033
;<>Start of new flow, seq=0x34
;  from: ; to: 
; exit point of _timer0_init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  190+   44 =   234 instructions (  556 byte)

	end
