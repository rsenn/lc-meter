;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"lib/delay.c"
	list	p=16f876a
	radix dec
	include "p16f876a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------

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
	global	_delay_ms
	global	_delay_us

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_delay_0	udata
r0x1004	res	1
r0x1001	res	1
r0x1000	res	1
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
code_delay	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;5 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;; Starting pCode block
S_delay__delay_ms	code
_delay_ms:
; 2 exit points
;	.line	11; "lib/delay.c"	delay_ms(unsigned int x) {
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;	.line	12; "lib/delay.c"	unsigned char i = 255;
	MOVLW	0xff
	MOVWF	r0x1002
_00129_DS_:
;	.line	13; "lib/delay.c"	for(x; x > 0; x--) {
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	IORWF	r0x1001,W
	BTFSC	STATUS,2
	GOTO	_00131_DS_
;	.line	14; "lib/delay.c"	while(i > 0) i--;
	MOVF	r0x1002,W
	MOVWF	r0x1003
_00112_DS_:
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
	DECF	r0x1003,F
	GOTO	_00112_DS_
_00114_DS_:
;	.line	16; "lib/delay.c"	while(i > 0) i--;
	MOVLW	0xff
	BANKSEL	r0x1003
	MOVWF	r0x1003
_00115_DS_:
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00117_DS_
	DECF	r0x1003,F
	GOTO	_00115_DS_
_00117_DS_:
;	.line	18; "lib/delay.c"	while(i > 0) i--;
	MOVLW	0xff
	BANKSEL	r0x1003
	MOVWF	r0x1003
_00118_DS_:
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00120_DS_
	DECF	r0x1003,F
	GOTO	_00118_DS_
_00120_DS_:
;	.line	20; "lib/delay.c"	while(i > 0) i--;
	MOVLW	0xff
	BANKSEL	r0x1003
	MOVWF	r0x1003
_00121_DS_:
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00123_DS_
	DECF	r0x1003,F
	GOTO	_00121_DS_
_00123_DS_:
;	.line	22; "lib/delay.c"	while(i > 0) i--;
	MOVLW	0x32
	BANKSEL	r0x1003
	MOVWF	r0x1003
_00124_DS_:
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00151_DS_
	DECF	r0x1003,F
	GOTO	_00124_DS_
_00151_DS_:
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	r0x1002
;	.line	13; "lib/delay.c"	for(x; x > 0; x--) {
	MOVLW	0xff
	ADDWF	r0x1001,F
	BTFSS	STATUS,0
	DECF	r0x1000,F
	GOTO	_00129_DS_
_00131_DS_:
;	.line	24; "lib/delay.c"	}
	RETURN	
; exit point of _delay_ms

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;1 compiler assigned register :
;   r0x1004
;; Starting pCode block
S_delay__delay_us	code
_delay_us:
; 2 exit points
;	.line	5; "lib/delay.c"	delay_us(unsigned char x) {
	BANKSEL	r0x1004
	MOVWF	r0x1004
_00105_DS_:
;	.line	6; "lib/delay.c"	while(x > 0) x--;
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00107_DS_
	DECF	r0x1004,F
	GOTO	_00105_DS_
_00107_DS_:
	nop	
;	.line	8; "lib/delay.c"	}
	RETURN	
; exit point of _delay_us


;	code size estimation:
;	   59+   14 =    73 instructions (  174 byte)

	end
