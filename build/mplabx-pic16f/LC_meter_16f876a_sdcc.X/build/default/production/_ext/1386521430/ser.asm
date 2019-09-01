;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../lib/ser.c"
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
	extern	_uart_putch
	extern	_uart_getch
	extern	_uart_poll
	extern	_uart_init
	extern	_uart_isr
	extern	_uart_enable
	extern	_uart_disable
	extern	_uart_puts
	extern	_uart_puts2
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
	extern	_uart_brg
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
	global	_ser_init
	global	_ser_puthex
	global	_ser_puts2
	global	_ser_put
	global	_ser_puts
	global	_ser_putch
	global	_ser_getch
	global	_ser_isrx
	global	_ser_brg
	global	_rxfifo
	global	_rxiptr
	global	_rxoptr
	global	_txfifo
	global	_txiptr
	global	_txoptr
	global	_ser_tmp

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_ser_0	udata
_rxfifo	res	16

UD_ser_1	udata
_rxiptr	res	1

UD_ser_2	udata
_rxoptr	res	1

UD_ser_3	udata
_txfifo	res	16

UD_ser_4	udata
_txiptr	res	1

UD_ser_5	udata
_txoptr	res	1

UD_ser_6	udata
_ser_tmp	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ser_0	udata
r0x103D	res	1
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

ID_ser_0	idata
_ser_brg
	db	0x1f

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
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=64previous max_key=7 
;;	-----------------------------------------
;;	 function ser_init
;;	-----------------------------------------
;_ser_init:
S_ser__ser_init	code
_ser_init:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _TRISCbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISCbits
;; 	line = 6633 result AOP_PCODE=_TRISCbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISCbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	128; "../../../lib/ser.c"	SER_TX_TRIS = INPUT;
	BANKSEL	_TRISCbits	;id=2110,key=000,inCond:0,outCond:0,flow seq=001
	BSF	_TRISCbits,6	;id=1809,key=001,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _PORTCbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
;; 	line = 6633 result AOP_PCODE=_PORTCbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	129; "../../../lib/ser.c"	SER_RX_PIN = INPUT;
	BANKSEL	_PORTCbits	;id=2111,key=002,inCond:0,outCond:0,flow seq=001
	BSF	_PORTCbits,7	;id=1829,key=003,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6633 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	131; "../../../lib/ser.c"	BRGH = 1; // high speed
	BANKSEL	_TXSTAbits	;id=2112,key=004,inCond:0,outCond:0,flow seq=001
	BSF	_TXSTAbits,2	;id=1849,key=005,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _ser_brg, size = 1
;; ***	aopForSym 316
;;	328 sym->rname = _SPBRG, size = 1
;; 	line = 7046 result AOP_DIR=_SPBRG, size=1, left -=-, size=0, right AOP_DIR=_ser_brg, size=1
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	998
;;	1012  _ser_brg   offset=0 - had to alloc by reg name
;	.line	136; "../../../lib/ser.c"	SPBRG = ser_brg; // 56.7K @ 20MHz, SPBRG = (20MHz/(16*BAUD_RATE))-1;
	BANKSEL	_ser_brg	;id=2113,key=006,inCond:0,outCond:0,flow seq=001
	MOVF	_ser_brg,W	;id=1865,key=007,inCond:1,outCond:14,flow seq=001
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _SPBRG   offset=0
	BANKSEL	_SPBRG	;id=2114,key=008,inCond:0,outCond:0,flow seq=001
	MOVWF	_SPBRG	;id=1869,key=009,inCond:10,outCond:1,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6633 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _TXSTAbits present in same bank as _SPBRG
;	.line	139; "../../../lib/ser.c"	TX9 = 0; // 8 bits
	BCF	_TXSTAbits,6	;id=1889,key=00a,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6633 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	140; "../../../lib/ser.c"	RX9 = 0; //
	BANKSEL	_RCSTAbits	;id=2116,key=00b,inCond:0,outCond:0,flow seq=001
	BCF	_RCSTAbits,6	;id=1909,key=00c,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6633 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	142; "../../../lib/ser.c"	SYNC = 0; // uart settings
	BANKSEL	_TXSTAbits	;id=2117,key=00d,inCond:0,outCond:0,flow seq=001
	BCF	_TXSTAbits,4	;id=1929,key=00e,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6633 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	143; "../../../lib/ser.c"	SPEN = 1;
	BANKSEL	_RCSTAbits	;id=2118,key=00f,inCond:0,outCond:0,flow seq=001
	BSF	_RCSTAbits,7	;id=1949,key=010,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6633 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _RCSTAbits present in same bank as _RCSTAbits
;	.line	144; "../../../lib/ser.c"	CREN = 1;
	BSF	_RCSTAbits,4	;id=1969,key=011,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _PIE1bits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; 	line = 6633 result AOP_PCODE=_PIE1bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	145; "../../../lib/ser.c"	TXIE = 0;
	BANKSEL	_PIE1bits	;id=2120,key=012,inCond:0,outCond:0,flow seq=001
	BCF	_PIE1bits,4	;id=1989,key=013,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _TXSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; 	line = 6633 result AOP_PCODE=_TXSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TXSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _TXSTAbits present in same bank as _PIE1bits
;	.line	147; "../../../lib/ser.c"	TXEN = 1;
	BSF	_TXSTAbits,5	;id=2009,key=014,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6633 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	148; "../../../lib/ser.c"	PEIE = 1;
	BANKSEL	_INTCONbits	;id=2122,key=015,inCond:0,outCond:0,flow seq=001
	BSF	_INTCONbits,6	;id=2029,key=016,inCond:21,outCond:21,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _txoptr, size = 1
;; 	line = 7046 result AOP_DIR=_txoptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _txoptr   offset=0
;	.line	150; "../../../lib/ser.c"	rxiptr = rxoptr = txiptr = txoptr = 0;
	BANKSEL	_txoptr	;id=2123,key=017,inCond:0,outCond:0,flow seq=001
	CLRF	_txoptr	;id=2041,key=018,inCond:0,outCond:5,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _txiptr, size = 1
;; 	line = 7046 result AOP_DIR=_txiptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _txiptr   offset=0
	BANKSEL	_txiptr	;id=2124,key=019,inCond:0,outCond:0,flow seq=001
	CLRF	_txiptr	;id=2052,key=01a,inCond:0,outCond:5,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _rxoptr, size = 1
;; 	line = 7046 result AOP_DIR=_rxoptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _rxoptr   offset=0
	BANKSEL	_rxoptr	;id=2125,key=01b,inCond:0,outCond:0,flow seq=001
	CLRF	_rxoptr	;id=2063,key=01c,inCond:0,outCond:5,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _rxiptr, size = 1
;; 	line = 7046 result AOP_DIR=_rxiptr, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _rxiptr   offset=0
	BANKSEL	_rxiptr	;id=2126,key=01d,inCond:0,outCond:0,flow seq=001
	CLRF	_rxiptr	;id=2074,key=01e,inCond:0,outCond:5,flow seq=001
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00176_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	151; "../../../lib/ser.c"	}
	RETURN		;id=2085,key=01f,inCond:10,outCond:e,flow seq=001
;<>Start of new flow, seq=0x2
;  from: ; to: 
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
;<>Start of new flow, seq=0x3 ancestor = 0x3
;  from: ; to: 005 004 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=56previous max_key=4 
;;	-----------------------------------------
;;	 function ser_puthex
;;	-----------------------------------------
;_ser_puthex:
S_ser__ser_puthex	code
_ser_puthex:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1064, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1064 
;	.line	106; "../../../lib/ser.c"	ser_puthex(uint8_t v) {
	BANKSEL	r0x102A	;id=2127,key=000,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x102A	;id=1380,key=001,inCond:10,outCond:1,flow seq=003,rIdx=r0x1064
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; >>> ../../../../src/pic14/gen.c:5404:shiftRight_Left2ResultLit
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102A
;	.line	109; "../../../lib/ser.c"	c = v >> 4;
	SWAPF	r0x102A,W	;id=1389,key=002,inCond:1,outCond:10,flow seq=003,rIdx=r0x1064
;; >>> ../../../../src/pic14/gen.c:5405:shiftRight_Left2ResultLit
	ANDLW	0x0f	;id=1391,key=003,inCond:410,outCond:14,flow seq=003
;; >>> ../../../../src/pic14/gen.c:5406:shiftRight_Left2ResultLit
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	MOVWF	r0x102B	;id=1394,key=004,inCond:10,outCond:1,flow seq=003,rIdx=r0x1065
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	576
;;; ../../../../src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0xA=10), size=1
;; >>> ../../../../src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	110; "../../../lib/ser.c"	if(c > 9) {
	MOVLW	0x0a	;id=1406,key=005,inCond:400,outCond:10,flow seq=003
;; >>> ../../../../src/pic14/gen.c:3442:genCmp
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	SUBWF	r0x102B,W	;id=1409,key=006,inCond:11,outCond:1e,flow seq=003,rIdx=r0x1065
;;; ../../../../src/pic14/gen.c:3247:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3254:genSkipc
	BTFSS	STATUS,0	;id=1413,key=007,inCond:23,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 007 
;; >>> ../../../../src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=2, label offset 64
	GOTO	_00166_DS_	;id=1416,key=000,inCond:0,outCond:0,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 003 ; to: 006 
;;genSkipc:3257: created from rifx:0x7fffc8af7b80
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1066, size=1, left -=-, size=0, right AOP_REG=r0x1065, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
;	.line	111; "../../../lib/ser.c"	ser_putch((char)('A' - 10 + c));
	MOVF	r0x102B,W	;id=1429,key=000,inCond:1,outCond:14,flow seq=005,rIdx=r0x1065
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
	MOVWF	r0x102C	;id=1432,key=001,inCond:10,outCond:1,flow seq=005,rIdx=r0x1066
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1066, size=1, left AOP_REG=r0x1066, size=1, right AOP_LIT=0x37, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; ../../../../src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:241:genAddLit2byte
	MOVLW	0x37	;id=1448,key=002,inCond:400,outCond:10,flow seq=005
;; >>> ../../../../src/pic14/genarith.c:242:genAddLit2byte
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
	ADDWF	r0x102C,F	;id=1451,key=003,inCond:11,outCond:f,flow seq=005,rIdx=r0x1066
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1067, size=1, left -=-, size=0, right AOP_REG=r0x1066, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
	MOVF	r0x102C,W	;id=2087,key=004,inCond:1,outCond:14,flow seq=005,rIdx=r0x1066
;;1	MOVWF	r0x102D
	PAGESEL	_ser_putch	;id=1482,key=005,inCond:0,outCond:0,flow seq=005
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_putch	;id=1484,key=006,inCond:10,outCond:1e,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 009 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1486,key=000,inCond:0,outCond:0,flow seq=006
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 64
	GOTO	_00167_DS_	;id=1493,key=001,inCond:0,outCond:0,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x4
;  from: 004 ; to: 008 
;goto	_00167_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00166_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1066, size=1, left -=-, size=0, right AOP_REG=r0x1065, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1065 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00166_DS_:
;	.line	113; "../../../lib/ser.c"	ser_putch((char)('0' + c));
	BANKSEL	r0x102B	;id=2137,key=000,inCond:0,outCond:0,flow seq=007
	MOVF	r0x102B,W	;id=1510,key=001,inCond:1,outCond:14,flow seq=007,rIdx=r0x1065
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVWF	r0x102C	;id=1513,key=002,inCond:10,outCond:1,flow seq=007,rIdx=r0x1066
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1066, size=1, left AOP_REG=r0x1066, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; ../../../../src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:241:genAddLit2byte
	MOVLW	0x30	;id=1529,key=003,inCond:400,outCond:10,flow seq=007
;; >>> ../../../../src/pic14/genarith.c:242:genAddLit2byte
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	ADDWF	r0x102C,F	;id=1532,key=004,inCond:11,outCond:f,flow seq=007,rIdx=r0x1066
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1066, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVF	r0x102C,W	;id=2089,key=005,inCond:1,outCond:14,flow seq=007,rIdx=r0x1066
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102B
	MOVWF	r0x102B	;id=2090,key=006,inCond:10,outCond:1,flow seq=007,rIdx=r0x1065
	PAGESEL	_ser_putch	;id=1563,key=007,inCond:0,outCond:0,flow seq=007
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_putch	;id=1565,key=008,inCond:10,outCond:1e,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 009 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1567,key=000,inCond:0,outCond:0,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x6
;  from: 008 006 ; to: 00b 00a 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00167_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	576
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_REG=r0x1064, size=1, left AOP_REG=r0x1064, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4147:genAnd
;; BANKOPT3 drop assumptions: PCI with label or call found
_00167_DS_:
;	.line	116; "../../../lib/ser.c"	c = v & 0x0F;
	MOVLW	0x0f	;id=1583,key=000,inCond:400,outCond:10,flow seq=009
;; >>> ../../../../src/pic14/gen.c:4149:genAnd
;;	1097 rIdx = r0x1064 
	BANKSEL	r0x102A	;id=2144,key=001,inCond:0,outCond:0,flow seq=009
	ANDWF	r0x102A,F	;id=1586,key=002,inCond:11,outCond:5,flow seq=009,rIdx=r0x1064
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0xA=10), size=1
;; >>> ../../../../src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	117; "../../../lib/ser.c"	if(c > 9) {
	MOVLW	0x0a	;id=1596,key=003,inCond:400,outCond:10,flow seq=009
;; >>> ../../../../src/pic14/gen.c:3442:genCmp
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102A
	SUBWF	r0x102A,W	;id=1599,key=004,inCond:11,outCond:1e,flow seq=009,rIdx=r0x1064
;;; ../../../../src/pic14/gen.c:3247:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3254:genSkipc
	BTFSS	STATUS,0	;id=1603,key=005,inCond:23,outCond:0,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 00d 
;; >>> ../../../../src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=5, label offset 64
	GOTO	_00169_DS_	;id=1606,key=000,inCond:0,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0x9
;  from: 009 ; to: 00c 
;;genSkipc:3257: created from rifx:0x7fffc8af7b80
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1064, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102A
;	.line	118; "../../../lib/ser.c"	ser_putch((char)('A' - 10 + c));
	MOVF	r0x102A,W	;id=1619,key=000,inCond:1,outCond:14,flow seq=00b,rIdx=r0x1064
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	MOVWF	r0x102B	;id=1622,key=001,inCond:10,outCond:1,flow seq=00b,rIdx=r0x1065
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1065, size=1, left AOP_REG=r0x1065, size=1, right AOP_LIT=0x37, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; ../../../../src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:241:genAddLit2byte
	MOVLW	0x37	;id=1638,key=002,inCond:400,outCond:10,flow seq=00b
;; >>> ../../../../src/pic14/genarith.c:242:genAddLit2byte
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	ADDWF	r0x102B,F	;id=1641,key=003,inCond:11,outCond:f,flow seq=00b,rIdx=r0x1065
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1066, size=1, left -=-, size=0, right AOP_REG=r0x1065, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	MOVF	r0x102B,W	;id=2091,key=004,inCond:1,outCond:14,flow seq=00b,rIdx=r0x1065
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
	MOVWF	r0x102C	;id=2092,key=005,inCond:10,outCond:1,flow seq=00b,rIdx=r0x1066
	PAGESEL	_ser_putch	;id=1672,key=006,inCond:0,outCond:0,flow seq=00b
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_putch	;id=1674,key=007,inCond:10,outCond:1e,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xb
;  from: 00b ; to: 00f 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1676,key=000,inCond:0,outCond:0,flow seq=00c
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=7, label offset 64
	GOTO	_00171_DS_	;id=1683,key=001,inCond:0,outCond:0,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xa
;  from: 00a ; to: 00e 
;goto	_00171_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00169_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1064, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1064 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00169_DS_:
;	.line	120; "../../../lib/ser.c"	ser_putch((char)('0' + c));
	BANKSEL	r0x102A	;id=2153,key=000,inCond:0,outCond:0,flow seq=00d
	MOVF	r0x102A,W	;id=1700,key=001,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1064
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	MOVWF	r0x102B	;id=1703,key=002,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1065
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1064, size=1, left AOP_REG=r0x1065, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> ../../../../src/pic14/genarith.c:530:genAddLit
	MOVLW	0x30	;id=1719,key=003,inCond:400,outCond:10,flow seq=00d
;; >>> ../../../../src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	ADDWF	r0x102B,W	;id=1722,key=004,inCond:11,outCond:1e,flow seq=00d,rIdx=r0x1065
;;; ../../../../src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102A
	MOVWF	r0x102A	;id=2093,key=005,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1064
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	MOVWF	r0x102B	;id=2094,key=006,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1065
	PAGESEL	_ser_putch	;id=1757,key=007,inCond:0,outCond:0,flow seq=00d
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_putch	;id=1759,key=008,inCond:10,outCond:1e,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 00d ; to: 00f 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1761,key=000,inCond:0,outCond:0,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xc
;  from: 00e 00c ; to: 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00171_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00171_DS_:
;	.line	122; "../../../lib/ser.c"	}
	RETURN		;id=1774,key=000,inCond:10,outCond:e,flow seq=00f
;<>Start of new flow, seq=0x10
;  from: ; to: 
; exit point of _ser_puthex
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

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
;<>Start of new flow, seq=0x11 ancestor = 0x11
;  from: ; to: 012 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=48previous max_key=4 
;;	-----------------------------------------
;;	 function ser_puts2
;;	-----------------------------------------
;_ser_puts2:
S_ser__ser_puts2	code
_ser_puts2:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1060, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
;	.line	101; "../../../lib/ser.c"	ser_puts2(uint8_t* s) {
	BANKSEL	r0x102E	;id=2160,key=000,inCond:0,outCond:0,flow seq=011
	MOVWF	r0x102E	;id=1219,key=001,inCond:10,outCond:1,flow seq=011,rIdx=r0x1062
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102E's banks
	MOVF	STK00,W	;id=1222,key=002,inCond:1,outCond:14,flow seq=011
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102E
	MOVWF	r0x102F	;id=1225,key=003,inCond:10,outCond:1,flow seq=011,rIdx=r0x1061
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102E's banks
	MOVF	STK01,W	;id=1228,key=004,inCond:1,outCond:14,flow seq=011
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102E
	MOVWF	r0x1030	;id=1231,key=005,inCond:10,outCond:1,flow seq=011,rIdx=r0x1060
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 01a 011 ; to: 013 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00157_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; ../../../../src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1063, size=1, left AOP_REG=r0x1060, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00157_DS_:
;	.line	102; "../../../lib/ser.c"	while(*s) ser_putch(*s++);
	BANKSEL	r0x1030	;id=2166,key=000,inCond:0,outCond:0,flow seq=012
	MOVF	r0x1030,W	;id=1249,key=001,inCond:1,outCond:14,flow seq=012,rIdx=r0x1060
;; >>> ../../../../src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1030's banks
	MOVWF	STK01	;id=1252,key=002,inCond:10,outCond:1,flow seq=012
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x1030
	MOVF	r0x102F,W	;id=1256,key=003,inCond:1,outCond:14,flow seq=012,rIdx=r0x1061
;; >>> ../../../../src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1030's banks
	MOVWF	STK00	;id=1259,key=004,inCond:10,outCond:1,flow seq=012
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x1030
	MOVF	r0x102E,W	;id=1263,key=005,inCond:1,outCond:14,flow seq=012,rIdx=r0x1062
;; >>> ../../../../src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=1265,key=006,inCond:0,outCond:0,flow seq=012
;; >>> ../../../../src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=1267,key=007,inCond:10,outCond:1e,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x12
;  from: 012 ; to: 015 014 
;; >>> ../../../../src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=1269,key=000,inCond:0,outCond:0,flow seq=013
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1063 
	BANKSEL	r0x1031	;id=2172,key=001,inCond:0,outCond:0,flow seq=013
	MOVWF	r0x1031	;id=1272,key=002,inCond:10,outCond:1,flow seq=013,rIdx=r0x1063
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1031 present in same bank as r0x1031
	MOVF	r0x1031,W	;id=2095,key=003,inCond:1,outCond:14,flow seq=013,rIdx=r0x1063
	BTFSC	STATUS,2	;id=1284,key=004,inCond:25,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 013 ; to: 01b 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 56
	GOTO	_00160_DS_	;id=1287,key=000,inCond:0,outCond:0,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x13
;  from: 013 ; to: 017 016 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1063, size=1, left -=-, size=0, right AOP_REG=r0x1063, size=1
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x1060, size=3, left AOP_REG=r0x1060, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x1031
	INCF	r0x1030,F	;id=1306,key=000,inCond:1,outCond:5,flow seq=015,rIdx=r0x1060
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1308,key=001,inCond:25,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 017 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x1031
	INCF	r0x102F,F	;id=1311,key=000,inCond:1,outCond:5,flow seq=016,rIdx=r0x1061
;<>Start of new flow, seq=0x17 ancestor = 0x15
;  from: 016 015 ; to: 019 018 
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1313,key=000,inCond:25,outCond:0,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 017 ; to: 019 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x1031
	INCF	r0x102E,F	;id=1316,key=000,inCond:1,outCond:5,flow seq=018,rIdx=r0x1062
;<>Start of new flow, seq=0x19 ancestor = 0x17
;  from: 018 017 ; to: 01a 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1031 present in same bank as r0x1031
	MOVF	r0x1031,W	;id=1330,key=000,inCond:1,outCond:14,flow seq=019,rIdx=r0x1063
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_ser_putch	;id=1332,key=001,inCond:0,outCond:0,flow seq=019
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_putch	;id=1334,key=002,inCond:10,outCond:1e,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x19
;  from: 019 ; to: 012 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1336,key=000,inCond:0,outCond:0,flow seq=01a
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 56
	GOTO	_00157_DS_	;id=1343,key=001,inCond:0,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x14
;  from: 014 ; to: 
;goto	_00157_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00160_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00160_DS_:
;	.line	103; "../../../lib/ser.c"	}
	RETURN		;id=1355,key=000,inCond:10,outCond:e,flow seq=01b
;<>Start of new flow, seq=0x1c
;  from: ; to: 
; exit point of _ser_puts2
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

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
;<>Start of new flow, seq=0x1d ancestor = 0x1d
;  from: ; to: 01e 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=40previous max_key=4 
;;	-----------------------------------------
;;	 function ser_put
;;	-----------------------------------------
;_ser_put:
S_ser__ser_put	code
_ser_put:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1059, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;	.line	96; "../../../lib/ser.c"	ser_put(const char* s, unsigned n) {
	BANKSEL	r0x1032	;id=2180,key=000,inCond:0,outCond:0,flow seq=01d
	MOVWF	r0x1032	;id=997,key=001,inCond:10,outCond:1,flow seq=01d,rIdx=r0x105B
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1032's banks
	MOVF	STK00,W	;id=1000,key=002,inCond:1,outCond:14,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x1032
	MOVWF	r0x1033	;id=1003,key=003,inCond:10,outCond:1,flow seq=01d,rIdx=r0x105A
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1032's banks
	MOVF	STK01,W	;id=1006,key=004,inCond:1,outCond:14,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1032
	MOVWF	r0x1034	;id=1009,key=005,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1059
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105C, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1032's banks
	MOVF	STK02,W	;id=1019,key=006,inCond:1,outCond:14,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1032
	MOVWF	r0x1035	;id=1022,key=007,inCond:10,outCond:1,flow seq=01d,rIdx=r0x105D
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1032's banks
	MOVF	STK03,W	;id=1025,key=008,inCond:1,outCond:14,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1032
	MOVWF	r0x1036	;id=1028,key=009,inCond:10,outCond:1,flow seq=01d,rIdx=r0x105C
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 028 01d ; to: 020 01f 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00149_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x105E, size=2, left -=-, size=0, right AOP_REG=r0x105C, size=2
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00149_DS_:
;	.line	97; "../../../lib/ser.c"	while(n--) ser_putch(*s++);
	BANKSEL	r0x1036	;id=2190,key=000,inCond:0,outCond:0,flow seq=01e
	MOVF	r0x1036,W	;id=1046,key=001,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105C
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1036
	MOVWF	r0x1037	;id=1049,key=002,inCond:10,outCond:1,flow seq=01e,rIdx=r0x105E
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1036
	MOVF	r0x1035,W	;id=1055,key=003,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105D
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1036
	MOVWF	r0x1038	;id=1058,key=004,inCond:10,outCond:1,flow seq=01e,rIdx=r0x105F
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; ../../../../src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=2
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi = ff	genAddLit  379
;; >>> ../../../../src/pic14/genarith.c:391:genAddLit
	MOVLW	0xff	;id=1071,key=005,inCond:400,outCond:10,flow seq=01e
;; >>> ../../../../src/pic14/genarith.c:392:genAddLit
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1036
	ADDWF	r0x1036,F	;id=1074,key=006,inCond:11,outCond:f,flow seq=01e,rIdx=r0x105C
;; >>> ../../../../src/pic14/genarith.c:393:genAddLit
	BTFSS	STATUS,0	;id=1076,key=007,inCond:23,outCond:0,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 01e ; to: 020 
;; >>> ../../../../src/pic14/genarith.c:394:genAddLit
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1036
	DECF	r0x1035,F	;id=1079,key=000,inCond:1,outCond:5,flow seq=01f,rIdx=r0x105D
;<>Start of new flow, seq=0x20 ancestor = 0x1e
;  from: 01f 01e ; to: 022 021 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=2
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1512:pic14_toBoolean
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1036
	MOVF	r0x1037,W	;id=1089,key=000,inCond:1,outCond:14,flow seq=020,rIdx=r0x105E
;; >>> ../../../../src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1036
	IORWF	r0x1038,W	;id=1092,key=001,inCond:11,outCond:14,flow seq=020,rIdx=r0x105F
;; >>> ../../../../src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=1094,key=002,inCond:25,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 029 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 48
	GOTO	_00152_DS_	;id=1097,key=000,inCond:0,outCond:0,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x20
;  from: 020 ; to: 023 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; ../../../../src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x105E, size=1, left AOP_REG=r0x1059, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1036
	MOVF	r0x1034,W	;id=1109,key=000,inCond:1,outCond:14,flow seq=022,rIdx=r0x1059
;; >>> ../../../../src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1036's banks
	MOVWF	STK01	;id=1112,key=001,inCond:10,outCond:1,flow seq=022
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x1036
	MOVF	r0x1033,W	;id=1116,key=002,inCond:1,outCond:14,flow seq=022,rIdx=r0x105A
;; >>> ../../../../src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1036's banks
	MOVWF	STK00	;id=1119,key=003,inCond:10,outCond:1,flow seq=022
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x1036
	MOVF	r0x1032,W	;id=1123,key=004,inCond:1,outCond:14,flow seq=022,rIdx=r0x105B
;; >>> ../../../../src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=1125,key=005,inCond:0,outCond:0,flow seq=022
;; >>> ../../../../src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=1127,key=006,inCond:10,outCond:1e,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 025 024 
;; >>> ../../../../src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=1129,key=000,inCond:0,outCond:0,flow seq=023
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1037	;id=2204,key=001,inCond:0,outCond:0,flow seq=023
	MOVWF	r0x1037	;id=1132,key=002,inCond:10,outCond:1,flow seq=023,rIdx=r0x105E
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x1059, size=3, left AOP_REG=r0x1059, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1037
	INCF	r0x1034,F	;id=1145,key=003,inCond:1,outCond:5,flow seq=023,rIdx=r0x1059
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1147,key=004,inCond:25,outCond:0,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x23
;  from: 023 ; to: 025 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x1037
	INCF	r0x1033,F	;id=1150,key=000,inCond:1,outCond:5,flow seq=024,rIdx=r0x105A
;<>Start of new flow, seq=0x25 ancestor = 0x23
;  from: 024 023 ; to: 027 026 
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1152,key=000,inCond:25,outCond:0,flow seq=025
;<>Start of new flow, seq=0x26 ancestor = 0x25
;  from: 025 ; to: 027 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x1037
	INCF	r0x1032,F	;id=1155,key=000,inCond:1,outCond:5,flow seq=026,rIdx=r0x105B
;<>Start of new flow, seq=0x27 ancestor = 0x25
;  from: 026 025 ; to: 028 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1037
	MOVF	r0x1037,W	;id=1169,key=000,inCond:1,outCond:14,flow seq=027,rIdx=r0x105E
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_ser_putch	;id=1171,key=001,inCond:0,outCond:0,flow seq=027
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_putch	;id=1173,key=002,inCond:10,outCond:1e,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 027 ; to: 01e 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1175,key=000,inCond:0,outCond:0,flow seq=028
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 48
	GOTO	_00149_DS_	;id=1182,key=001,inCond:0,outCond:0,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x21
;  from: 021 ; to: 
;goto	_00149_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00152_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00152_DS_:
;	.line	98; "../../../lib/ser.c"	}
	RETURN		;id=1194,key=000,inCond:10,outCond:e,flow seq=029
;<>Start of new flow, seq=0x2a
;  from: ; to: 
; exit point of _ser_put
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

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
;<>Start of new flow, seq=0x2b ancestor = 0x2b
;  from: ; to: 02c 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=22previous max_key=14 
;;	-----------------------------------------
;;	 function ser_puts
;;	-----------------------------------------
;_ser_puts:
S_ser__ser_puts	code
_ser_puts:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1055, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
;	.line	92; "../../../lib/ser.c"	ser_puts(const char* s) {
	BANKSEL	r0x1039	;id=2211,key=000,inCond:0,outCond:0,flow seq=02b
	MOVWF	r0x1039	;id=836,key=001,inCond:10,outCond:1,flow seq=02b,rIdx=r0x1057
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1039's banks
	MOVF	STK00,W	;id=839,key=002,inCond:1,outCond:14,flow seq=02b
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1039
	MOVWF	r0x103A	;id=842,key=003,inCond:10,outCond:1,flow seq=02b,rIdx=r0x1056
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1039's banks
	MOVF	STK01,W	;id=845,key=004,inCond:1,outCond:14,flow seq=02b
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1039
	MOVWF	r0x103B	;id=848,key=005,inCond:10,outCond:1,flow seq=02b,rIdx=r0x1055
;<>Start of new flow, seq=0x2c ancestor = 0x2b
;  from: 034 02b ; to: 02d 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00141_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; ../../../../src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1058, size=1, left AOP_REG=r0x1055, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1055 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00141_DS_:
;	.line	93; "../../../lib/ser.c"	while(*s) ser_putch(*s++);
	BANKSEL	r0x103B	;id=2217,key=000,inCond:0,outCond:0,flow seq=02c
	MOVF	r0x103B,W	;id=866,key=001,inCond:1,outCond:14,flow seq=02c,rIdx=r0x1055
;; >>> ../../../../src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103B's banks
	MOVWF	STK01	;id=869,key=002,inCond:10,outCond:1,flow seq=02c
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x103B
	MOVF	r0x103A,W	;id=873,key=003,inCond:1,outCond:14,flow seq=02c,rIdx=r0x1056
;; >>> ../../../../src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103B's banks
	MOVWF	STK00	;id=876,key=004,inCond:10,outCond:1,flow seq=02c
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x103B
	MOVF	r0x1039,W	;id=880,key=005,inCond:1,outCond:14,flow seq=02c,rIdx=r0x1057
;; >>> ../../../../src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=882,key=006,inCond:0,outCond:0,flow seq=02c
;; >>> ../../../../src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=884,key=007,inCond:10,outCond:1e,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2c
;  from: 02c ; to: 02f 02e 
;; >>> ../../../../src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=886,key=000,inCond:0,outCond:0,flow seq=02d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
	BANKSEL	r0x103C	;id=2223,key=001,inCond:0,outCond:0,flow seq=02d
	MOVWF	r0x103C	;id=889,key=002,inCond:10,outCond:1,flow seq=02d,rIdx=r0x1058
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103C
	MOVF	r0x103C,W	;id=2096,key=003,inCond:1,outCond:14,flow seq=02d,rIdx=r0x1058
	BTFSC	STATUS,2	;id=901,key=004,inCond:25,outCond:0,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 035 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 40
	GOTO	_00144_DS_	;id=904,key=000,inCond:0,outCond:0,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2d
;  from: 02d ; to: 031 030 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1058, size=1, left -=-, size=0, right AOP_REG=r0x1058, size=1
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x1055, size=3, left AOP_REG=r0x1055, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103C
	INCF	r0x103B,F	;id=923,key=000,inCond:1,outCond:5,flow seq=02f,rIdx=r0x1055
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=925,key=001,inCond:25,outCond:0,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2f
;  from: 02f ; to: 031 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x103C
	INCF	r0x103A,F	;id=928,key=000,inCond:1,outCond:5,flow seq=030,rIdx=r0x1056
;<>Start of new flow, seq=0x31 ancestor = 0x2f
;  from: 030 02f ; to: 033 032 
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=930,key=000,inCond:25,outCond:0,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x31
;  from: 031 ; to: 033 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x103C
	INCF	r0x1039,F	;id=933,key=000,inCond:1,outCond:5,flow seq=032,rIdx=r0x1057
;<>Start of new flow, seq=0x33 ancestor = 0x31
;  from: 032 031 ; to: 034 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103C
	MOVF	r0x103C,W	;id=947,key=000,inCond:1,outCond:14,flow seq=033,rIdx=r0x1058
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_ser_putch	;id=949,key=001,inCond:0,outCond:0,flow seq=033
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_putch	;id=951,key=002,inCond:10,outCond:1e,flow seq=033
;<>Start of new flow, seq=0x34 ancestor = 0x33
;  from: 033 ; to: 02c 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=953,key=000,inCond:0,outCond:0,flow seq=034
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 40
	GOTO	_00141_DS_	;id=960,key=001,inCond:0,outCond:0,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x2e
;  from: 02e ; to: 
;goto	_00141_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00144_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00144_DS_:
;	.line	94; "../../../lib/ser.c"	}
	RETURN		;id=972,key=000,inCond:10,outCond:e,flow seq=035
;<>Start of new flow, seq=0x36
;  from: ; to: 
; exit point of _ser_puts
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

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
;<>Start of new flow, seq=0x37 ancestor = 0x37
;  from: ; to: 038 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=17previous max_key=1 
;;	-----------------------------------------
;;	 function ser_putch
;;	-----------------------------------------
;_ser_putch:
S_ser__ser_putch	code
_ser_putch:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;	.line	82; "../../../lib/ser.c"	ser_putch(char c) {
	BANKSEL	r0x1025	;id=2231,key=000,inCond:0,outCond:0,flow seq=037
	MOVWF	r0x1025	;id=514,key=001,inCond:10,outCond:1,flow seq=037,rIdx=r0x104E
;<>Start of new flow, seq=0x38 ancestor = 0x37
;  from: 03d 037 ; to: 03a 039 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00123_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _txiptr, size = 1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_DIR=_txiptr, size=1
;; >>> ../../../../src/pic14/gen.c:7407:genCast
;;	998
;;	1016  _txiptr   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00123_DS_:
;	.line	83; "../../../lib/ser.c"	while(((txiptr + 1) & SER_FIFO_MASK) == txoptr) continue;
	BANKSEL	_txiptr	;id=2233,key=000,inCond:0,outCond:0,flow seq=038
	MOVF	_txiptr,W	;id=531,key=001,inCond:1,outCond:14,flow seq=038
;; >>> ../../../../src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x104F 
	BANKSEL	r0x1026	;id=2234,key=002,inCond:0,outCond:0,flow seq=038
	MOVWF	r0x1026	;id=534,key=003,inCond:10,outCond:1,flow seq=038,rIdx=r0x104F
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1026
	CLRF	r0x1027	;id=539,key=004,inCond:0,outCond:5,flow seq=038,rIdx=r0x1050
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 614 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x01, size=2
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1026
	INCF	r0x1026,F	;id=552,key=005,inCond:1,outCond:5,flow seq=038,rIdx=r0x104F
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=554,key=006,inCond:25,outCond:0,flow seq=038
;<>Start of new flow, seq=0x39 ancestor = 0x38
;  from: 038 ; to: 03a 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1026
	INCF	r0x1027,F	;id=557,key=000,inCond:1,outCond:5,flow seq=039,rIdx=r0x1050
;<>Start of new flow, seq=0x3a ancestor = 0x38
;  from: 039 038 ; to: 03c 03b 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 3974 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x0f, size=2
;; >>> ../../../../src/pic14/gen.c:4147:genAnd
	MOVLW	0x0f	;id=565,key=000,inCond:400,outCond:10,flow seq=03a
;; >>> ../../../../src/pic14/gen.c:4149:genAnd
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1026
	ANDWF	r0x1026,F	;id=568,key=001,inCond:11,outCond:5,flow seq=03a,rIdx=r0x104F
;; >>> ../../../../src/pic14/gen.c:4129:genAnd
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1026
	CLRF	r0x1027	;id=571,key=002,inCond:0,outCond:5,flow seq=03a,rIdx=r0x1050
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _txoptr, size = 1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1051, size=2, left -=-, size=0, right AOP_DIR=_txoptr, size=1
;; >>> ../../../../src/pic14/gen.c:7407:genCast
;;	998
;;	1012  _txoptr   offset=0 - had to alloc by reg name
	BANKSEL	_txoptr	;id=2240,key=003,inCond:0,outCond:0,flow seq=03a
	MOVF	_txoptr,W	;id=582,key=004,inCond:1,outCond:14,flow seq=03a
;; >>> ../../../../src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x1028	;id=2241,key=005,inCond:0,outCond:0,flow seq=03a
	MOVWF	r0x1028	;id=585,key=006,inCond:10,outCond:1,flow seq=03a,rIdx=r0x1051
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	CLRF	r0x1029	;id=590,key=007,inCond:0,outCond:5,flow seq=03a,rIdx=r0x1052
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3638:genCmpEq *{*
;; ***	genCmpEq  3639
;; ifx is non-null
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 3650 result AOP_CRY=0x00, size=0, left AOP_REG=r0x104F, size=2, right AOP_REG=r0x1051, size=2
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	MOVF	r0x1028,W	;id=601,key=008,inCond:1,outCond:14,flow seq=03a,rIdx=r0x1051
;; >>> ../../../../src/pic14/gen.c:3722:genCmpEq
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1028
	XORWF	r0x1026,W	;id=604,key=009,inCond:11,outCond:14,flow seq=03a,rIdx=r0x104F
;; >>> ../../../../src/pic14/gen.c:3724:genCmpEq
	BTFSS	STATUS,2	;id=606,key=00a,inCond:25,outCond:0,flow seq=03a
;<>Start of new flow, seq=0x3b ancestor = 0x3a
;  from: 03a ; to: 03e 
;; >>> ../../../../src/pic14/gen.c:3727:genCmpEq
;; ***	popGetLabel  key=14, label offset 22
	GOTO	_00136_DS_	;id=609,key=000,inCond:0,outCond:0,flow seq=03b
;<>Start of new flow, seq=0x3c ancestor = 0x3a
;  from: 03a ; to: 03e 03d 
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVF	r0x1029,W	;id=613,key=000,inCond:1,outCond:14,flow seq=03c,rIdx=r0x1052
;; >>> ../../../../src/pic14/gen.c:3722:genCmpEq
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1028
;	.line	84; "../../../lib/ser.c"	GIE = 0;
	XORWF	r0x1027,W	;id=2097,key=001,inCond:11,outCond:14,flow seq=03c,rIdx=r0x1050
	BTFSC	STATUS,2	;id=2098,key=002,inCond:25,outCond:0,flow seq=03c
;<>Start of new flow, seq=0x3d ancestor = 0x3c
;  from: 03c ; to: 038 
	GOTO	_00123_DS_	;id=2099,key=000,inCond:0,outCond:0,flow seq=03d
;<>Start of new flow, seq=0x3e ancestor = 0x3b
;  from: 03c 03b ; to: 040 03f 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00136_DS_:
	BANKSEL	_INTCONbits	;id=2248,key=000,inCond:0,outCond:0,flow seq=03e
	BCF	_INTCONbits,7	;id=2100,key=001,inCond:21,outCond:21,flow seq=03e
;	.line	85; "../../../lib/ser.c"	txfifo[txiptr] = c;
	BANKSEL	_txiptr	;id=2249,key=002,inCond:0,outCond:0,flow seq=03e
	MOVF	_txiptr,W	;id=670,key=003,inCond:1,outCond:14,flow seq=03e
;; >>> ../../../../src/pic14/genarith.c:731:genPlus
	ADDLW	(_txfifo + 0)	;id=672,key=004,inCond:410,outCond:1e,flow seq=03e
;; >>> ../../../../src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x104F 
	BANKSEL	r0x1026	;id=2250,key=005,inCond:0,outCond:0,flow seq=03e
	MOVWF	r0x1026	;id=675,key=006,inCond:10,outCond:1,flow seq=03e,rIdx=r0x104F
;; >>> ../../../../src/pic14/genarith.c:795:genPlus
	MOVLW	high (_txfifo + 0)	;id=677,key=007,inCond:400,outCond:10,flow seq=03e
;; >>> ../../../../src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=679,key=008,inCond:23,outCond:0,flow seq=03e
;<>Start of new flow, seq=0x3f ancestor = 0x3e
;  from: 03e ; to: 040 
;; >>> ../../../../src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=681,key=000,inCond:410,outCond:1e,flow seq=03f
;<>Start of new flow, seq=0x40 ancestor = 0x3e
;  from: 03f 03e ; to: 042 041 
;; >>> ../../../../src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1026
	MOVWF	r0x1027	;id=684,key=000,inCond:10,outCond:1,flow seq=040,rIdx=r0x1050
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	695 register type nRegs=2
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;; 	line = 6633 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x104E, size=1
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1026
	MOVF	r0x1026,W	;id=698,key=001,inCond:1,outCond:14,flow seq=040,rIdx=r0x104F
;; >>> ../../../../src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=2253,key=002,inCond:0,outCond:0,flow seq=040
	MOVWF	FSR	;id=700,key=003,inCond:10,outCond:1,flow seq=040
;;; ../../../../src/pic14/gen.c:5651:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=703,key=004,inCond:21,outCond:21,flow seq=040
;; >>> ../../../../src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x1027	;id=2255,key=005,inCond:0,outCond:0,flow seq=040
	BTFSC	r0x1027,0	;id=705,key=006,inCond:21,outCond:0,flow seq=040
;<>Start of new flow, seq=0x41 ancestor = 0x40
;  from: 040 ; to: 042 
;; >>> ../../../../src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=707,key=000,inCond:21,outCond:21,flow seq=041
;<>Start of new flow, seq=0x42 ancestor = 0x40
;  from: 041 040 ; to: 
;; ***	genNearPointerSet  6658
;; >>> ../../../../src/pic14/gen.c:6674:genNearPointerSet
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1027
	MOVF	r0x1025,W	;id=711,key=000,inCond:1,outCond:14,flow seq=042,rIdx=r0x104E
;; >>> ../../../../src/pic14/gen.c:6679:genNearPointerSet
	BANKSEL	INDF	;id=2257,key=001,inCond:0,outCond:0,flow seq=042
	MOVWF	INDF	;id=713,key=002,inCond:10,outCond:1,flow seq=042
;; ***	genNearPointerSet  6687
;; ***	genNearPointerSet  6713
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _txiptr, size = 1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104E, size=1, left -=-, size=0, right AOP_DIR=_txiptr, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _txiptr   offset=0
;	.line	86; "../../../lib/ser.c"	txiptr = (txiptr + 1) & SER_FIFO_MASK;
	BANKSEL	_txiptr	;id=2258,key=003,inCond:0,outCond:0,flow seq=042
	MOVF	_txiptr,W	;id=728,key=004,inCond:1,outCond:14,flow seq=042
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x104E 
	BANKSEL	r0x1025	;id=2259,key=005,inCond:0,outCond:0,flow seq=042
	MOVWF	r0x1025	;id=731,key=006,inCond:10,outCond:1,flow seq=042,rIdx=r0x104E
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x104E, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1025
	INCF	r0x1025,F	;id=744,key=007,inCond:1,outCond:5,flow seq=042,rIdx=r0x104E
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;; ***	aopForSym 316
;;	328 sym->rname = _txiptr, size = 1
;; 	line = 3974 result AOP_DIR=_txiptr, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4209:genAnd
	MOVLW	0x0f	;id=753,key=008,inCond:400,outCond:10,flow seq=042
;; >>> ../../../../src/pic14/gen.c:4210:genAnd
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1025
	ANDWF	r0x1025,W	;id=756,key=009,inCond:11,outCond:14,flow seq=042,rIdx=r0x104E
;; >>> ../../../../src/pic14/gen.c:4211:genAnd
;;	998
;;	1016  _txiptr   offset=0
	BANKSEL	_txiptr	;id=2262,key=00a,inCond:0,outCond:0,flow seq=042
	MOVWF	_txiptr	;id=760,key=00b,inCond:10,outCond:1,flow seq=042
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _PIE1bits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; 	line = 6633 result AOP_PCODE=_PIE1bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	87; "../../../lib/ser.c"	TXIE = 1;
	BANKSEL	_PIE1bits	;id=2263,key=00c,inCond:0,outCond:0,flow seq=042
	BSF	_PIE1bits,4	;id=780,key=00d,inCond:21,outCond:21,flow seq=042
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6633 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	88; "../../../lib/ser.c"	GIE = 1;
	BANKSEL	_INTCONbits	;id=2264,key=00e,inCond:0,outCond:0,flow seq=042
	BSF	_INTCONbits,7	;id=800,key=00f,inCond:21,outCond:21,flow seq=042
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00126_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	89; "../../../lib/ser.c"	}
	RETURN		;id=811,key=010,inCond:10,outCond:e,flow seq=042
;<>Start of new flow, seq=0x43
;  from: ; to: 
; exit point of _ser_putch
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

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
;<>Start of new flow, seq=0x44 ancestor = 0x44
;  from: 046 ; to: 045 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=9 
;;	-----------------------------------------
;;	 function ser_getch
;;	-----------------------------------------
;_ser_getch:
S_ser__ser_getch	code
_ser_getch:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00118_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> ../../../../src/pic14/gen.c:2160:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
_00118_DS_:
;	.line	71; "../../../lib/ser.c"	while(ser_isrx() == 0) continue;
	PAGESEL	_ser_isrx	;id=304,key=000,inCond:0,outCond:0,flow seq=044
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_ser_isrx	;id=306,key=001,inCond:10,outCond:1e,flow seq=044
;<>Start of new flow, seq=0x45 ancestor = 0x44
;  from: 044 ; to: 047 046 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=308,key=000,inCond:0,outCond:0,flow seq=045
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x103F	;id=2267,key=001,inCond:0,outCond:0,flow seq=045
	MOVWF	r0x103F	;id=315,key=002,inCond:10,outCond:1,flow seq=045,rIdx=r0x1049
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103F
	MOVF	r0x103F,W	;id=2101,key=003,inCond:1,outCond:14,flow seq=045,rIdx=r0x1049
	BTFSC	STATUS,2	;id=330,key=004,inCond:25,outCond:0,flow seq=045
;<>Start of new flow, seq=0x46 ancestor = 0x45
;  from: 045 ; to: 044 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=1, label offset 17
	GOTO	_00118_DS_	;id=333,key=000,inCond:0,outCond:0,flow seq=046
;<>Start of new flow, seq=0x47 ancestor = 0x45
;  from: 045 ; to: 049 048 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6633 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	73; "../../../lib/ser.c"	GIE = 0;
	BANKSEL	_INTCONbits	;id=2269,key=000,inCond:0,outCond:0,flow seq=047
	BCF	_INTCONbits,7	;id=353,key=001,inCond:21,outCond:21,flow seq=047
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	614
;;	aopForRemat 393
;;	419: rname _rxfifo, val 0, const = 0
;; ***	aopForSym 316
;;	328 sym->rname = _rxoptr, size = 1
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_rxfifo
;; 	line = 614 result AOP_REG=r0x1049, size=2, left AOP_PCODE=_rxfifo, size=2, right AOP_DIR=_rxoptr, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
;; ***	genPlus  713
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_rxfifo
;; >>> ../../../../src/pic14/genarith.c:722:genPlus
;;	998
;;	1016  _rxoptr   offset=0
;	.line	74; "../../../lib/ser.c"	c = rxfifo[rxoptr];
	BANKSEL	_rxoptr	;id=2270,key=002,inCond:0,outCond:0,flow seq=047
	MOVF	_rxoptr,W	;id=377,key=003,inCond:1,outCond:14,flow seq=047
;; >>> ../../../../src/pic14/genarith.c:731:genPlus
	ADDLW	(_rxfifo + 0)	;id=379,key=004,inCond:410,outCond:1e,flow seq=047
;; >>> ../../../../src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x103F	;id=2271,key=005,inCond:0,outCond:0,flow seq=047
	MOVWF	r0x103F	;id=382,key=006,inCond:10,outCond:1,flow seq=047,rIdx=r0x1049
;; >>> ../../../../src/pic14/genarith.c:795:genPlus
	MOVLW	high (_rxfifo + 0)	;id=384,key=007,inCond:400,outCond:10,flow seq=047
;; >>> ../../../../src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=386,key=008,inCond:23,outCond:0,flow seq=047
;<>Start of new flow, seq=0x48 ancestor = 0x47
;  from: 047 ; to: 049 
;; >>> ../../../../src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=388,key=000,inCond:410,outCond:1e,flow seq=048
;<>Start of new flow, seq=0x49 ancestor = 0x47
;  from: 048 047 ; to: 04b 04a 
;; >>> ../../../../src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x103F
	MOVWF	r0x1040	;id=391,key=000,inCond:10,outCond:1,flow seq=049,rIdx=r0x104A
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; ../../../../src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	695 register type nRegs=2
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103F
	MOVF	r0x103F,W	;id=404,key=001,inCond:1,outCond:14,flow seq=049,rIdx=r0x1049
;; >>> ../../../../src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=2274,key=002,inCond:0,outCond:0,flow seq=049
	MOVWF	FSR	;id=406,key=003,inCond:10,outCond:1,flow seq=049
;;; ../../../../src/pic14/gen.c:5651:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=409,key=004,inCond:21,outCond:21,flow seq=049
;; >>> ../../../../src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x1040	;id=2276,key=005,inCond:0,outCond:0,flow seq=049
	BTFSC	r0x1040,0	;id=411,key=006,inCond:21,outCond:0,flow seq=049
;<>Start of new flow, seq=0x4a ancestor = 0x49
;  from: 049 ; to: 04b 
;; >>> ../../../../src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=413,key=000,inCond:21,outCond:21,flow seq=04a
;<>Start of new flow, seq=0x4b ancestor = 0x49
;  from: 04a 049 ; to: 
;; ***	genNearPointerGet  6086
;; >>> ../../../../src/pic14/gen.c:6093:genNearPointerGet
	BANKSEL	INDF	;id=2277,key=000,inCond:0,outCond:0,flow seq=04b
	MOVF	INDF,W	;id=416,key=001,inCond:1,outCond:14,flow seq=04b
;; >>> ../../../../src/pic14/gen.c:6100:genNearPointerGet
;;	1097 rIdx = r0x104B 
	BANKSEL	r0x1041	;id=2278,key=002,inCond:0,outCond:0,flow seq=04b
	MOVWF	r0x1041	;id=419,key=003,inCond:10,outCond:1,flow seq=04b,rIdx=r0x104B
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _rxoptr, size = 1
;; 	line = 614 result AOP_DIR=_rxoptr, size=1, left AOP_DIR=_rxoptr, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _rxoptr   offset=0
;	.line	75; "../../../lib/ser.c"	++rxoptr;
	BANKSEL	_rxoptr	;id=2279,key=004,inCond:0,outCond:0,flow seq=04b
	INCF	_rxoptr,F	;id=434,key=005,inCond:1,outCond:5,flow seq=04b
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _rxoptr, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_rxoptr, size=1, left AOP_DIR=_rxoptr, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4147:genAnd
;	.line	76; "../../../lib/ser.c"	rxoptr &= SER_FIFO_MASK;
	MOVLW	0x0f	;id=444,key=006,inCond:400,outCond:10,flow seq=04b
;; >>> ../../../../src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _rxoptr   offset=0
;; BANKOPT2 BANKSEL dropped; _rxoptr present in same bank as _rxoptr
	ANDWF	_rxoptr,F	;id=448,key=007,inCond:11,outCond:5,flow seq=04b
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6633 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;	.line	77; "../../../lib/ser.c"	GIE = 1;
	BANKSEL	_INTCONbits	;id=2281,key=008,inCond:0,outCond:0,flow seq=04b
	BSF	_INTCONbits,7	;id=468,key=009,inCond:21,outCond:21,flow seq=04b
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;	.line	78; "../../../lib/ser.c"	return c;
	BANKSEL	r0x1041	;id=2282,key=00a,inCond:0,outCond:0,flow seq=04b
	MOVF	r0x1041,W	;id=478,key=00b,inCond:1,outCond:14,flow seq=04b,rIdx=r0x104B
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00121_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	79; "../../../lib/ser.c"	}
	RETURN		;id=489,key=00c,inCond:10,outCond:e,flow seq=04b
;<>Start of new flow, seq=0x4c
;  from: ; to: 
; exit point of _ser_getch
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x103D
;   r0x103E
;; Starting pCode block
;<>Start of new flow, seq=0x4d ancestor = 0x4d
;  from: ; to: 04f 04e 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function ser_isrx
;;	-----------------------------------------
;_ser_isrx:
S_ser__ser_isrx	code
_ser_isrx:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; ../../../../src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:5881:genUnpackBits
;	.line	59; "../../../lib/ser.c"	if(OERR) {
	BANKSEL	_RCSTAbits	;id=2283,key=000,inCond:0,outCond:0,flow seq=04d
	BTFSS	_RCSTAbits,1	;id=133,key=001,inCond:21,outCond:0,flow seq=04d
;<>Start of new flow, seq=0x4e ancestor = 0x4d
;  from: 04d ; to: 050 
;; >>> ../../../../src/pic14/gen.c:5882:genUnpackBits
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_	;id=136,key=000,inCond:0,outCond:0,flow seq=04e
;<>Start of new flow, seq=0x4f ancestor = 0x4d
;  from: 04d ; to: 056 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6633 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _RCSTAbits present in same bank as _RCSTAbits
;	.line	60; "../../../lib/ser.c"	CREN = 0;
	BCF	_RCSTAbits,4	;id=157,key=000,inCond:21,outCond:21,flow seq=04f
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _RCSTAbits, val 0, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; 	line = 6633 result AOP_PCODE=_RCSTAbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_RCSTAbits
;; >>> ../../../../src/pic14/gen.c:6373:genPackBits
;; BANKOPT2 BANKSEL dropped; _RCSTAbits present in same bank as _RCSTAbits
;	.line	61; "../../../lib/ser.c"	CREN = 1;
	BSF	_RCSTAbits,4	;id=177,key=001,inCond:21,outCond:21,flow seq=04f
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
;	.line	62; "../../../lib/ser.c"	return 0;
	MOVLW	0x00	;id=184,key=002,inCond:400,outCond:10,flow seq=04f
;; >>> ../../../../src/pic14/gen.c:2701:genRet
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_	;id=187,key=003,inCond:0,outCond:0,flow seq=04f
;<>Start of new flow, seq=0x50 ancestor = 0x4e
;  from: 04e ; to: 052 051 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00106_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3638:genCmpEq *{*
;; ***	genCmpEq  3639
;; ifx is null
;; ***	aopForSym 316
;;	328 sym->rname = _rxiptr, size = 1
;; ***	aopForSym 316
;;	328 sym->rname = _rxoptr, size = 1
;;	695 register type nRegs=1
;; 	line = 3650 result AOP_REG=r0x1045, size=1, left AOP_DIR=_rxiptr, size=1, right AOP_DIR=_rxoptr, size=1
;; >>> ../../../../src/pic14/gen.c:3676:genCmpEq
;;	1097 rIdx = r0x1045 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00106_DS_:
;	.line	64; "../../../lib/ser.c"	return (rxiptr != rxoptr);
	BANKSEL	r0x103D	;id=2287,key=000,inCond:0,outCond:0,flow seq=050
	CLRF	r0x103D	;id=206,key=001,inCond:0,outCond:5,flow seq=050,rIdx=r0x1045
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	998
;;	1012  _rxoptr   offset=0 - had to alloc by reg name
	BANKSEL	_rxoptr	;id=2288,key=002,inCond:0,outCond:0,flow seq=050
	MOVF	_rxoptr,W	;id=211,key=003,inCond:1,outCond:14,flow seq=050
;; >>> ../../../../src/pic14/gen.c:3722:genCmpEq
;;	998
;;	1012  _rxiptr   offset=0 - had to alloc by reg name
	BANKSEL	_rxiptr	;id=2289,key=004,inCond:0,outCond:0,flow seq=050
	XORWF	_rxiptr,W	;id=2102,key=005,inCond:11,outCond:14,flow seq=050
	BTFSS	STATUS,2	;id=2293,key=006,inCond:25,outCond:0,flow seq=050
;<>Start of new flow, seq=0x51 ancestor = 0x50
;  from: 050 ; to: 053 
	GOTO	_00001_DS_	;id=2292,key=000,inCond:0,outCond:0,flow seq=051
;<>Start of new flow, seq=0x52 ancestor = 0x50
;  from: 050 ; to: 053 
	BANKSEL	r0x103D	;id=2290,key=000,inCond:0,outCond:0,flow seq=052
	INCF	r0x103D,F	;id=2104,key=001,inCond:1,outCond:5,flow seq=052,rIdx=r0x1045
;<>Start of new flow, seq=0x53 ancestor = 0x51
;  from: 052 051 ; to: 055 054 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00001_DS_:
	BANKSEL	r0x103D	;id=2295,key=000,inCond:0,outCond:0,flow seq=053
	MOVF	r0x103D,W	;id=2105,key=001,inCond:1,outCond:14,flow seq=053,rIdx=r0x1045
	MOVLW	0x00	;id=236,key=002,inCond:400,outCond:10,flow seq=053
;; >>> ../../../../src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=238,key=003,inCond:25,outCond:0,flow seq=053
;<>Start of new flow, seq=0x54 ancestor = 0x53
;  from: 053 ; to: 055 
;; >>> ../../../../src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=240,key=000,inCond:400,outCond:10,flow seq=054
;<>Start of new flow, seq=0x55 ancestor = 0x53
;  from: 054 053 ; to: 056 
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;;1	MOVWF	r0x103E
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	MOVWF	r0x103D	;id=2107,key=000,inCond:10,outCond:1,flow seq=055,rIdx=r0x1045
;<>Start of new flow, seq=0x56 ancestor = 0x4f
;  from: 055 04f ; to: 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00107_DS_:
;	.line	65; "../../../lib/ser.c"	}
	RETURN		;id=276,key=000,inCond:10,outCond:e,flow seq=056
;<>Start of new flow, seq=0x57
;  from: ; to: 
; exit point of _ser_isrx
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  236+   82 =   318 instructions (  800 byte)

	end
