;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../lib/delay.c"
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
	extern	_Delay100TCYx
	extern	_Delay10KTCYx
	extern	_Delay10TCYx
	extern	_Delay1KTCYx
	extern	_cycle_eater
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
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=3 
;;	-----------------------------------------
;;	 function delay_ms
;;	-----------------------------------------
;_delay_ms:
S_delay__delay_ms	code
_delay_ms:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1046, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;	.line	13; "../../../lib/delay.c"	delay_ms(unsigned int x) {
	BANKSEL	r0x1000	;id=616,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1000	;id=214,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1000's banks
	MOVF	STK00,W	;id=217,key=002,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=220,key=003,inCond:10,outCond:1,flow seq=001,rIdx=r0x1046
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_LIT=0xff, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	14; "../../../lib/delay.c"	unsigned char i = 255;
	MOVLW	0xff	;id=229,key=004,inCond:400,outCond:10,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1000
	MOVWF	r0x1002	;id=232,key=005,inCond:10,outCond:1,flow seq=001,rIdx=r0x1048
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 01a 001 ; to: 004 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00129_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=2
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1512:pic14_toBoolean
;;	1097 rIdx = r0x1046 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00129_DS_:
;	.line	15; "../../../lib/delay.c"	for(x; x > 0; x--) {
	BANKSEL	r0x1001	;id=621,key=000,inCond:0,outCond:0,flow seq=002
	MOVF	r0x1001,W	;id=246,key=001,inCond:1,outCond:14,flow seq=002,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1001
	IORWF	r0x1000,W	;id=249,key=002,inCond:11,outCond:14,flow seq=002,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=251,key=003,inCond:25,outCond:0,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 01b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=20, label offset 11
	GOTO	_00131_DS_	;id=254,key=000,inCond:0,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x2
;  from: 002 ; to: 005 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1001
;	.line	16; "../../../lib/delay.c"	while(i > 0) {
	MOVF	r0x1002,W	;id=267,key=000,inCond:1,outCond:14,flow seq=004,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1001
	MOVWF	r0x1003	;id=270,key=001,inCond:10,outCond:1,flow seq=004,rIdx=r0x1049
;<>Start of new flow, seq=0x5 ancestor = 0x4
;  from: 007 004 ; to: 007 006 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00112_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT3 drop assumptions: PCI with label or call found
_00112_DS_:
	MOVLW	0x00	;id=282,key=000,inCond:400,outCond:10,flow seq=005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=626,key=001,inCond:0,outCond:0,flow seq=005
	IORWF	r0x1003,W	;id=285,key=002,inCond:11,outCond:14,flow seq=005,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=287,key=003,inCond:25,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 008 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=3, label offset 11
	GOTO	_00114_DS_	;id=290,key=000,inCond:0,outCond:0,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x5
;  from: 005 ; to: 005 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:238:genAddLit2byte
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1003
;	.line	17; "../../../lib/delay.c"	i--;
	DECF	r0x1003,F	;id=305,key=000,inCond:1,outCond:5,flow seq=007,rIdx=r0x1049
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 11
	GOTO	_00112_DS_	;id=312,key=001,inCond:0,outCond:0,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x6
;  from: 006 ; to: 009 
;goto	_00112_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_LIT=0xff, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
;	.line	20; "../../../lib/delay.c"	while(i > 0) {
	MOVLW	0xff	;id=327,key=000,inCond:400,outCond:10,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=629,key=001,inCond:0,outCond:0,flow seq=008
	MOVWF	r0x1003	;id=330,key=002,inCond:10,outCond:1,flow seq=008,rIdx=r0x1049
;<>Start of new flow, seq=0x9 ancestor = 0x8
;  from: 00b 008 ; to: 00b 00a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00115_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT3 drop assumptions: PCI with label or call found
_00115_DS_:
	MOVLW	0x00	;id=342,key=000,inCond:400,outCond:10,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=631,key=001,inCond:0,outCond:0,flow seq=009
	IORWF	r0x1003,W	;id=345,key=002,inCond:11,outCond:14,flow seq=009,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=347,key=003,inCond:25,outCond:0,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 00c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=6, label offset 11
	GOTO	_00117_DS_	;id=350,key=000,inCond:0,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0x9
;  from: 009 ; to: 009 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:238:genAddLit2byte
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1003
;	.line	21; "../../../lib/delay.c"	i--;
	DECF	r0x1003,F	;id=365,key=000,inCond:1,outCond:5,flow seq=00b,rIdx=r0x1049
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=4, label offset 11
	GOTO	_00115_DS_	;id=372,key=001,inCond:0,outCond:0,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xa
;  from: 00a ; to: 00d 
;goto	_00115_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00117_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_LIT=0xff, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00117_DS_:
;	.line	24; "../../../lib/delay.c"	while(i > 0) {
	MOVLW	0xff	;id=387,key=000,inCond:400,outCond:10,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=634,key=001,inCond:0,outCond:0,flow seq=00c
	MOVWF	r0x1003	;id=390,key=002,inCond:10,outCond:1,flow seq=00c,rIdx=r0x1049
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00f 00c ; to: 00f 00e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00118_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT3 drop assumptions: PCI with label or call found
_00118_DS_:
	MOVLW	0x00	;id=402,key=000,inCond:400,outCond:10,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=636,key=001,inCond:0,outCond:0,flow seq=00d
	IORWF	r0x1003,W	;id=405,key=002,inCond:11,outCond:14,flow seq=00d,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=407,key=003,inCond:25,outCond:0,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 00d ; to: 010 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=9, label offset 11
	GOTO	_00120_DS_	;id=410,key=000,inCond:0,outCond:0,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xd
;  from: 00d ; to: 00d 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:238:genAddLit2byte
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1003
;	.line	25; "../../../lib/delay.c"	i--;
	DECF	r0x1003,F	;id=425,key=000,inCond:1,outCond:5,flow seq=00f,rIdx=r0x1049
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=7, label offset 11
	GOTO	_00118_DS_	;id=432,key=001,inCond:0,outCond:0,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xe
;  from: 00e ; to: 011 
;goto	_00118_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00120_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_LIT=0xff, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00120_DS_:
;	.line	28; "../../../lib/delay.c"	while(i > 0) {
	MOVLW	0xff	;id=447,key=000,inCond:400,outCond:10,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=639,key=001,inCond:0,outCond:0,flow seq=010
	MOVWF	r0x1003	;id=450,key=002,inCond:10,outCond:1,flow seq=010,rIdx=r0x1049
;<>Start of new flow, seq=0x11 ancestor = 0x10
;  from: 013 010 ; to: 013 012 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00121_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT3 drop assumptions: PCI with label or call found
_00121_DS_:
	MOVLW	0x00	;id=462,key=000,inCond:400,outCond:10,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=641,key=001,inCond:0,outCond:0,flow seq=011
	IORWF	r0x1003,W	;id=465,key=002,inCond:11,outCond:14,flow seq=011,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=467,key=003,inCond:25,outCond:0,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 014 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=12, label offset 11
	GOTO	_00123_DS_	;id=470,key=000,inCond:0,outCond:0,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x11
;  from: 011 ; to: 011 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:238:genAddLit2byte
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1003
;	.line	29; "../../../lib/delay.c"	i--;
	DECF	r0x1003,F	;id=485,key=000,inCond:1,outCond:5,flow seq=013,rIdx=r0x1049
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=10, label offset 11
	GOTO	_00121_DS_	;id=492,key=001,inCond:0,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x12
;  from: 012 ; to: 015 
;goto	_00121_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00123_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_LIT=0x32, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00123_DS_:
;	.line	32; "../../../lib/delay.c"	while(i > 0) {
	MOVLW	0x32	;id=507,key=000,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=644,key=001,inCond:0,outCond:0,flow seq=014
	MOVWF	r0x1003	;id=510,key=002,inCond:10,outCond:1,flow seq=014,rIdx=r0x1049
;<>Start of new flow, seq=0x15 ancestor = 0x14
;  from: 017 014 ; to: 017 016 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00124_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT3 drop assumptions: PCI with label or call found
_00124_DS_:
	MOVLW	0x00	;id=522,key=000,inCond:400,outCond:10,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x1003	;id=646,key=001,inCond:0,outCond:0,flow seq=015
	IORWF	r0x1003,W	;id=525,key=002,inCond:11,outCond:14,flow seq=015,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=527,key=003,inCond:25,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 018 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=40, label offset 11
	GOTO	_00151_DS_	;id=530,key=000,inCond:0,outCond:0,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x15
;  from: 015 ; to: 015 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:238:genAddLit2byte
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1003
;	.line	33; "../../../lib/delay.c"	i--;
	DECF	r0x1003,F	;id=545,key=000,inCond:1,outCond:5,flow seq=017,rIdx=r0x1049
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=13, label offset 11
	GOTO	_00124_DS_	;id=552,key=001,inCond:0,outCond:0,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x16
;  from: 016 ; to: 01a 019 
;goto	_00124_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00151_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_REG=r0x1049, size=1
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00151_DS_:
	BANKSEL	r0x1003	;id=649,key=000,inCond:0,outCond:0,flow seq=018
	MOVF	r0x1003,W	;id=570,key=001,inCond:1,outCond:14,flow seq=018,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1003
	MOVWF	r0x1002	;id=573,key=002,inCond:10,outCond:1,flow seq=018,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=2
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi = ff	genAddLit  379
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:391:genAddLit
;	.line	15; "../../../lib/delay.c"	for(x; x > 0; x--) {
	MOVLW	0xff	;id=587,key=003,inCond:400,outCond:10,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:392:genAddLit
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1003
	ADDWF	r0x1001,F	;id=590,key=004,inCond:11,outCond:f,flow seq=018,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:393:genAddLit
	BTFSS	STATUS,0	;id=592,key=005,inCond:23,outCond:0,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x18
;  from: 018 ; to: 01a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:394:genAddLit
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1003
	DECF	r0x1000,F	;id=595,key=000,inCond:1,outCond:5,flow seq=019,rIdx=r0x1047
;<>Start of new flow, seq=0x1a ancestor = 0x18
;  from: 019 018 ; to: 002 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=18, label offset 11
	GOTO	_00129_DS_	;id=602,key=000,inCond:0,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x3
;  from: 003 ; to: 
;goto	_00129_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00131_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00131_DS_:
;	.line	36; "../../../lib/delay.c"	}
	RETURN		;id=614,key=000,inCond:10,outCond:e,flow seq=01b
;<>Start of new flow, seq=0x1c
;  from: ; to: 
; exit point of _delay_ms

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;1 compiler assigned register :
;   r0x1004
;; Starting pCode block
;<>Start of new flow, seq=0x1d ancestor = 0x1d
;  from: ; to: 01e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function delay_us
;;	-----------------------------------------
;_delay_us:
S_delay__delay_us	code
_delay_us:	;Function start
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
;	.line	5; "../../../lib/delay.c"	delay_us(unsigned char x) {
	BANKSEL	r0x1004	;id=654,key=000,inCond:0,outCond:0,flow seq=01d
	MOVWF	r0x1004	;id=125,key=001,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1045
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 020 01d ; to: 020 01f 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT3 drop assumptions: PCI with label or call found
_00105_DS_:
;	.line	6; "../../../lib/delay.c"	while(x > 0) {
	MOVLW	0x00	;id=138,key=000,inCond:400,outCond:10,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1045 
	BANKSEL	r0x1004	;id=656,key=001,inCond:0,outCond:0,flow seq=01e
	IORWF	r0x1004,W	;id=141,key=002,inCond:11,outCond:14,flow seq=01e,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=143,key=003,inCond:25,outCond:0,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 01e ; to: 021 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_	;id=146,key=000,inCond:0,outCond:0,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1e
;  from: 01e ; to: 01e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:238:genAddLit2byte
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1004
;	.line	7; "../../../lib/delay.c"	x--;
	DECF	r0x1004,F	;id=161,key=000,inCond:1,outCond:5,flow seq=020,rIdx=r0x1045
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 4
	GOTO	_00105_DS_	;id=168,key=001,inCond:0,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x1f
;  from: 01f ; to: 
;goto	_00105_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00107_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4757:pic14_genInline *{*
;; ***	pic14_genInline  4758
;; BANKOPT4 drop assumptions: label or ASMDIR found
_00107_DS_:
	nop	
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00108_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	10; "../../../lib/delay.c"	}
	RETURN		;id=189,key=001,inCond:10,outCond:e,flow seq=021
;<>Start of new flow, seq=0x22
;  from: ; to: 
; exit point of _delay_us
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	   65+   14 =    79 instructions (  186 byte)

	end
