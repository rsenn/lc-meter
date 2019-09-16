;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../lib/uart.c"
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
	extern	_cycle_eater
	extern	_delay_ms
	extern	_delay_us
	extern	_Delay100TCYx
	extern	_Delay10KTCYx
	extern	_Delay10TCYx
	extern	_Delay1KTCYx
	extern	__divslong
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
	global	_uart_puts2
	global	_uart_puts
	global	_uart_init
	global	_uart_disable
	global	_uart_enable
	global	_uart_isr
	global	_uart_poll
	global	_uart_getch
	global	_uart_putch
	global	_uart_brg

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_uart_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1010	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100E	res	1
r0x100F	res	1
r0x100A	res	1
r0x1008	res	1
r0x1007	res	1
r0x1006	res	1
r0x1009	res	1
r0x1004	res	1
r0x1003	res	1
r0x1002	res	1
r0x1005	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_uart_0	code
_uart_brg
	retlw 0x41

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_uart	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _uart_putch
;   __gptrget1
;   _uart_putch
;6 compiler assigned registers:
;   r0x1002
;   STK00
;   r0x1003
;   STK01
;   r0x1004
;   r0x1005
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=45previous max_key=4 
;;	-----------------------------------------
;;	 function uart_puts2
;;	-----------------------------------------
;_uart_puts2:
S_uart__uart_puts2	code
_uart_puts2:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1056, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;	.line	120; "../../../lib/uart.c"	uart_puts2(uint8_t* s) {
	BANKSEL	r0x1002	;id=1368,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1002	;id=1216,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1002's banks
	MOVF	STK00,W	;id=1219,key=002,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1002
	MOVWF	r0x1003	;id=1222,key=003,inCond:10,outCond:1,flow seq=001,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1002's banks
	MOVF	STK01,W	;id=1225,key=004,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1002
	MOVWF	r0x1004	;id=1228,key=005,inCond:10,outCond:1,flow seq=001,rIdx=r0x1056
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 00a 001 ; to: 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00154_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1059, size=1, left AOP_REG=r0x1056, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00154_DS_:
;	.line	121; "../../../lib/uart.c"	while(*s) uart_putch(*s++);
	BANKSEL	r0x1004	;id=1374,key=000,inCond:0,outCond:0,flow seq=002
	MOVF	r0x1004,W	;id=1246,key=001,inCond:1,outCond:14,flow seq=002,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1004's banks
	MOVWF	STK01	;id=1249,key=002,inCond:10,outCond:1,flow seq=002
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1004
	MOVF	r0x1003,W	;id=1253,key=003,inCond:1,outCond:14,flow seq=002,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1004's banks
	MOVWF	STK00	;id=1256,key=004,inCond:10,outCond:1,flow seq=002
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1004
	MOVF	r0x1002,W	;id=1260,key=005,inCond:1,outCond:14,flow seq=002,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=1262,key=006,inCond:0,outCond:0,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=1264,key=007,inCond:10,outCond:1e,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 005 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=1266,key=000,inCond:0,outCond:0,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
	BANKSEL	r0x1005	;id=1380,key=001,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x1005	;id=1269,key=002,inCond:10,outCond:1,flow seq=003,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1005
	MOVF	r0x1005,W	;id=1354,key=003,inCond:1,outCond:14,flow seq=003,rIdx=r0x1059
	BTFSC	STATUS,2	;id=1281,key=004,inCond:25,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 00b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 53
	GOTO	_00157_DS_	;id=1284,key=000,inCond:0,outCond:0,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 003 ; to: 007 006 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1059, size=1, left -=-, size=0, right AOP_REG=r0x1059, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x1056, size=3, left AOP_REG=r0x1056, size=3, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1005
	INCF	r0x1004,F	;id=1303,key=000,inCond:1,outCond:5,flow seq=005,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1305,key=001,inCond:25,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1005
	INCF	r0x1003,F	;id=1308,key=000,inCond:1,outCond:5,flow seq=006,rIdx=r0x1057
;<>Start of new flow, seq=0x7 ancestor = 0x5
;  from: 006 005 ; to: 009 008 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1310,key=000,inCond:25,outCond:0,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 009 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1005
	INCF	r0x1002,F	;id=1313,key=000,inCond:1,outCond:5,flow seq=008,rIdx=r0x1058
;<>Start of new flow, seq=0x9 ancestor = 0x7
;  from: 008 007 ; to: 00a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1005
	MOVF	r0x1005,W	;id=1327,key=000,inCond:1,outCond:14,flow seq=009,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_uart_putch	;id=1329,key=001,inCond:0,outCond:0,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_putch	;id=1331,key=002,inCond:10,outCond:1e,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 002 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1333,key=000,inCond:0,outCond:0,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 53
	GOTO	_00154_DS_	;id=1340,key=001,inCond:0,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0x4
;  from: 004 ; to: 
;goto	_00154_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00157_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00157_DS_:
;	.line	122; "../../../lib/uart.c"	}
	RETURN		;id=1352,key=000,inCond:10,outCond:e,flow seq=00b
;<>Start of new flow, seq=0xc
;  from: ; to: 
; exit point of _uart_puts2

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _uart_putch
;   __gptrget1
;   _uart_putch
;6 compiler assigned registers:
;   r0x1006
;   STK00
;   r0x1007
;   STK01
;   r0x1008
;   r0x1009
;; Starting pCode block
;<>Start of new flow, seq=0xd ancestor = 0xd
;  from: ; to: 00e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=41previous max_key=0 
;;	-----------------------------------------
;;	 function uart_puts
;;	-----------------------------------------
;_uart_puts:
S_uart__uart_puts	code
_uart_puts:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1052, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1054 
;	.line	115; "../../../lib/uart.c"	uart_puts(const char* s) {
	BANKSEL	r0x1006	;id=1388,key=000,inCond:0,outCond:0,flow seq=00d
	MOVWF	r0x1006	;id=1055,key=001,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1006's banks
	MOVF	STK00,W	;id=1058,key=002,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1006
	MOVWF	r0x1007	;id=1061,key=003,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1006's banks
	MOVF	STK01,W	;id=1064,key=004,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x1006
	MOVWF	r0x1008	;id=1067,key=005,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1052
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 016 00d ; to: 00f 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00146_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1055, size=1, left AOP_REG=r0x1052, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1052 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00146_DS_:
;	.line	116; "../../../lib/uart.c"	while(*s) uart_putch(*s++);
	BANKSEL	r0x1008	;id=1394,key=000,inCond:0,outCond:0,flow seq=00e
	MOVF	r0x1008,W	;id=1085,key=001,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1008's banks
	MOVWF	STK01	;id=1088,key=002,inCond:10,outCond:1,flow seq=00e
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1008
	MOVF	r0x1007,W	;id=1092,key=003,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1008's banks
	MOVWF	STK00	;id=1095,key=004,inCond:10,outCond:1,flow seq=00e
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1008
	MOVF	r0x1006,W	;id=1099,key=005,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=1101,key=006,inCond:0,outCond:0,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=1103,key=007,inCond:10,outCond:1e,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xe
;  from: 00e ; to: 011 010 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=1105,key=000,inCond:0,outCond:0,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1055 
	BANKSEL	r0x1009	;id=1400,key=001,inCond:0,outCond:0,flow seq=00f
	MOVWF	r0x1009	;id=1108,key=002,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1055
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x1009
	MOVF	r0x1009,W	;id=1355,key=003,inCond:1,outCond:14,flow seq=00f,rIdx=r0x1055
	BTFSC	STATUS,2	;id=1120,key=004,inCond:25,outCond:0,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 017 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 45
	GOTO	_00149_DS_	;id=1123,key=000,inCond:0,outCond:0,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0xf
;  from: 00f ; to: 013 012 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1055, size=1, left -=-, size=0, right AOP_REG=r0x1055, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x1052, size=3, left AOP_REG=r0x1052, size=3, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x1009
	INCF	r0x1008,F	;id=1142,key=000,inCond:1,outCond:5,flow seq=011,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1144,key=001,inCond:25,outCond:0,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 013 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1009
	INCF	r0x1007,F	;id=1147,key=000,inCond:1,outCond:5,flow seq=012,rIdx=r0x1053
;<>Start of new flow, seq=0x13 ancestor = 0x11
;  from: 012 011 ; to: 015 014 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1149,key=000,inCond:25,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 013 ; to: 015 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1009
	INCF	r0x1006,F	;id=1152,key=000,inCond:1,outCond:5,flow seq=014,rIdx=r0x1054
;<>Start of new flow, seq=0x15 ancestor = 0x13
;  from: 014 013 ; to: 016 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x1009
	MOVF	r0x1009,W	;id=1166,key=000,inCond:1,outCond:14,flow seq=015,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_uart_putch	;id=1168,key=001,inCond:0,outCond:0,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_putch	;id=1170,key=002,inCond:10,outCond:1e,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 00e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1172,key=000,inCond:0,outCond:0,flow seq=016
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 45
	GOTO	_00146_DS_	;id=1179,key=001,inCond:0,outCond:0,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x10
;  from: 010 ; to: 
;goto	_00146_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00149_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00149_DS_:
;	.line	117; "../../../lib/uart.c"	}
	RETURN		;id=1191,key=000,inCond:10,outCond:e,flow seq=017
;<>Start of new flow, seq=0x18
;  from: ; to: 
; exit point of _uart_puts
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _uart_enable
;   _uart_enable
;; Starting pCode block
;<>Start of new flow, seq=0x19 ancestor = 0x19
;  from: ; to: 01a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=37previous max_key=0 
;;	-----------------------------------------
;;	 function uart_init
;;	-----------------------------------------
;_uart_init:
S_uart__uart_init	code
_uart_init:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;; 	line = 4246 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4272 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	97; "../../../lib/uart.c"	RX_TRIS();
	BANKSEL	_TRISC	;id=1408,key=000,inCond:0,outCond:0,flow seq=019
	BSF	_TRISC,7	;id=939,key=001,inCond:21,outCond:21,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xbf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _TRISC
;	.line	98; "../../../lib/uart.c"	TX_TRIS();
	BCF	_TRISC,6	;id=949,key=002,inCond:21,outCond:21,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x40, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	99; "../../../lib/uart.c"	TX_SET(0);
	MOVLW	0x40	;id=958,key=003,inCond:400,outCond:10,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _PORTC   offset=0
	BANKSEL	_PORTC	;id=1410,key=004,inCond:0,outCond:0,flow seq=019
	ANDWF	_PORTC,F	;id=962,key=005,inCond:11,outCond:5,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _SPBRG, size = 1
;; 	line = 7046 result AOP_DIR=_SPBRG, size=1, left -=-, size=0, right AOP_LIT=0x41, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	100; "../../../lib/uart.c"	SPBRG = UART_BRG; // UART_BRG;
	MOVLW	0x41	;id=972,key=006,inCond:400,outCond:10,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _SPBRG   offset=0
	BANKSEL	_SPBRG	;id=1411,key=007,inCond:0,outCond:0,flow seq=019
	MOVWF	_SPBRG	;id=976,key=008,inCond:10,outCond:1,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _RCSTA, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_RCSTA, size=1, left AOP_DIR=_RCSTA, size=1, right AOP_LIT=0x90, size=1
;; 	line = 4272 result AOP_DIR=_RCSTA, size=1, left AOP_DIR=_RCSTA, size=1, right AOP_LIT=0x90, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4428:genOr
;	.line	103; "../../../lib/uart.c"	| /*RX9D =*/(NINE == 1 ? 0b1 : 0);
	MOVLW	0x90	;id=987,key=009,inCond:400,outCond:10,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4430:genOr
;;	998
;;	1016  _RCSTA   offset=0
	BANKSEL	_RCSTA	;id=1412,key=00a,inCond:0,outCond:0,flow seq=019
	IORWF	_RCSTA,F	;id=991,key=00b,inCond:11,outCond:5,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TXSTA, size = 1
;; 	line = 4246 result AOP_DIR=_TXSTA, size=1, left AOP_DIR=_TXSTA, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4272 result AOP_DIR=_TXSTA, size=1, left AOP_DIR=_TXSTA, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	108; "../../../lib/uart.c"	: 0b000;
	BANKSEL	_TXSTA	;id=1413,key=00c,inCond:0,outCond:0,flow seq=019
	BSF	_TXSTA,2	;id=1001,key=00d,inCond:21,outCond:21,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	111; "../../../lib/uart.c"	uart_enable();
	PAGESEL	_uart_enable	;id=1013,key=00e,inCond:0,outCond:0,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_enable	;id=1015,key=00f,inCond:10,outCond:1e,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x19
;  from: 019 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1017,key=000,inCond:0,outCond:0,flow seq=01a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00145_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	112; "../../../lib/uart.c"	}
	RETURN		;id=1030,key=001,inCond:10,outCond:e,flow seq=01a
;<>Start of new flow, seq=0x1b
;  from: ; to: 
; exit point of _uart_init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x1c ancestor = 0x1c
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=33previous max_key=0 
;;	-----------------------------------------
;;	 function uart_disable
;;	-----------------------------------------
;_uart_disable:
S_uart__uart_disable	code
_uart_disable:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TXSTA, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TXSTA, size=1, left AOP_DIR=_TXSTA, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	85; "../../../lib/uart.c"	TXSTA &= ~0b00100000; //  TXEN = 0;
	BANKSEL	_TXSTA	;id=1415,key=000,inCond:0,outCond:0,flow seq=01c
	BCF	_TXSTA,5	;id=850,key=001,inCond:21,outCond:21,flow seq=01c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _RCSTA, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_RCSTA, size=1, left AOP_DIR=_RCSTA, size=1, right AOP_LIT=0x7f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	86; "../../../lib/uart.c"	RCSTA &= ~0b10000000; // SPEN = 0;
	BANKSEL	_RCSTA	;id=1416,key=002,inCond:0,outCond:0,flow seq=01c
	BCF	_RCSTA,7	;id=860,key=003,inCond:21,outCond:21,flow seq=01c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PIE1, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PIE1, size=1, left AOP_DIR=_PIE1, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	87; "../../../lib/uart.c"	PIE1 &= ~0b100000; //RCIE = 0;
	BANKSEL	_PIE1	;id=1417,key=004,inCond:0,outCond:0,flow seq=01c
	BCF	_PIE1,5	;id=870,key=005,inCond:21,outCond:21,flow seq=01c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;; 	line = 4246 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4272 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _PIE1
;	.line	88; "../../../lib/uart.c"	RX_TRIS();
	BSF	_TRISC,7	;id=880,key=006,inCond:21,outCond:21,flow seq=01c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xbf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _PIE1
;	.line	89; "../../../lib/uart.c"	TX_TRIS();
	BCF	_TRISC,6	;id=890,key=007,inCond:21,outCond:21,flow seq=01c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x40, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	90; "../../../lib/uart.c"	TX_SET(0);
	MOVLW	0x40	;id=899,key=008,inCond:400,outCond:10,flow seq=01c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _PORTC   offset=0
	BANKSEL	_PORTC	;id=1420,key=009,inCond:0,outCond:0,flow seq=01c
	ANDWF	_PORTC,F	;id=903,key=00a,inCond:11,outCond:5,flow seq=01c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00141_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	91; "../../../lib/uart.c"	}
	RETURN		;id=914,key=00b,inCond:10,outCond:e,flow seq=01c
;<>Start of new flow, seq=0x1d
;  from: ; to: 
; exit point of _uart_disable
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x1e ancestor = 0x1e
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=26previous max_key=3 
;;	-----------------------------------------
;;	 function uart_enable
;;	-----------------------------------------
;_uart_enable:
S_uart__uart_enable	code
_uart_enable:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;; 	line = 4246 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4272 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	75; "../../../lib/uart.c"	RX_TRIS();
	BANKSEL	_TRISC	;id=1421,key=000,inCond:0,outCond:0,flow seq=01e
	BSF	_TRISC,7	;id=761,key=001,inCond:21,outCond:21,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xbf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _TRISC
;	.line	76; "../../../lib/uart.c"	TX_TRIS();
	BCF	_TRISC,6	;id=771,key=002,inCond:21,outCond:21,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x40, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	77; "../../../lib/uart.c"	TX_SET(0);
	MOVLW	0x40	;id=780,key=003,inCond:400,outCond:10,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _PORTC   offset=0
	BANKSEL	_PORTC	;id=1423,key=004,inCond:0,outCond:0,flow seq=01e
	ANDWF	_PORTC,F	;id=784,key=005,inCond:11,outCond:5,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TXSTA, size = 1
;; 	line = 4246 result AOP_DIR=_TXSTA, size=1, left AOP_DIR=_TXSTA, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_DIR=_TXSTA, size=1, left AOP_DIR=_TXSTA, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	78; "../../../lib/uart.c"	TXSTA |= 0b00100000; //  TXEN = 1;
	BANKSEL	_TXSTA	;id=1424,key=006,inCond:0,outCond:0,flow seq=01e
	BSF	_TXSTA,5	;id=794,key=007,inCond:21,outCond:21,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _RCSTA, size = 1
;; 	line = 4246 result AOP_DIR=_RCSTA, size=1, left AOP_DIR=_RCSTA, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4272 result AOP_DIR=_RCSTA, size=1, left AOP_DIR=_RCSTA, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	79; "../../../lib/uart.c"	RCSTA |= 0x80; // SPEN = 1;
	BANKSEL	_RCSTA	;id=1425,key=008,inCond:0,outCond:0,flow seq=01e
	BSF	_RCSTA,7	;id=804,key=009,inCond:21,outCond:21,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PIE1, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PIE1, size=1, left AOP_DIR=_PIE1, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	80; "../../../lib/uart.c"	PIE1 &= ~0b100000; //RCIE = 0;
	BANKSEL	_PIE1	;id=1426,key=00a,inCond:0,outCond:0,flow seq=01e
	BCF	_PIE1,5	;id=814,key=00b,inCond:21,outCond:21,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00137_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	81; "../../../lib/uart.c"	}
	RETURN		;id=825,key=00c,inCond:10,outCond:e,flow seq=01e
;<>Start of new flow, seq=0x1f
;  from: ; to: 
; exit point of _uart_enable
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;1 compiler assigned register :
;   r0x100A
;; Starting pCode block
;<>Start of new flow, seq=0x20 ancestor = 0x20
;  from: ; to: 022 021 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=16previous max_key=6 
;;	-----------------------------------------
;;	 function uart_isr
;;	-----------------------------------------
;_uart_isr:
S_uart__uart_isr	code
_uart_isr:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_DIR=_PIR1, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _PIR1   offset=0
;	.line	66; "../../../lib/uart.c"	if((PIR1 & 0b00100000)) {
	BANKSEL	_PIR1	;id=1427,key=000,inCond:0,outCond:0,flow seq=020
	MOVF	_PIR1,W	;id=672,key=001,inCond:1,outCond:14,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x100A	;id=1428,key=002,inCond:0,outCond:0,flow seq=020
	MOVWF	r0x100A	;id=675,key=003,inCond:10,outCond:1,flow seq=020,rIdx=r0x1051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1051, size=1, right AOP_LIT=0x20, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x100A
	BTFSS	r0x100A,5	;id=684,key=004,inCond:21,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 023 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=2, label offset 26
	GOTO	_00128_DS_	;id=687,key=000,inCond:0,outCond:0,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x20
;  from: 020 ; to: 024 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	67; "../../../lib/uart.c"	PIR1 &= ~0b00100000; //  RCIF = 0;
	BANKSEL	_PIR1	;id=1430,key=000,inCond:0,outCond:0,flow seq=022
	BCF	_PIR1,5	;id=698,key=001,inCond:21,outCond:21,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;; ***	aopForSym 316
;;	328 sym->rname = _RCREG, size = 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _RCREG   offset=0
;; BANKOPT2 BANKSEL dropped; _RCREG present in same bank as _PIR1
;	.line	68; "../../../lib/uart.c"	return RCREG;
	MOVF	_RCREG,W	;id=710,key=002,inCond:1,outCond:14,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2701:genRet
;; ***	popGetLabel  key=3, label offset 26
	GOTO	_00129_DS_	;id=713,key=003,inCond:0,outCond:0,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x21
;  from: 021 ; to: 024 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00128_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00128_DS_:
;	.line	70; "../../../lib/uart.c"	return 0;
	MOVLW	0x00	;id=725,key=000,inCond:400,outCond:10,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x22
;  from: 023 022 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00129_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00129_DS_:
;	.line	71; "../../../lib/uart.c"	}
	RETURN		;id=736,key=000,inCond:10,outCond:e,flow seq=024
;<>Start of new flow, seq=0x25
;  from: ; to: 
; exit point of _uart_isr
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __divslong
;   __divslong
;12 compiler assigned registers:
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   STK06
;   STK05
;   STK04
;   STK03
;   STK02
;   STK01
;   STK00
;; Starting pCode block
;<>Start of new flow, seq=0x26 ancestor = 0x26
;  from: ; to: 027 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=9previous max_key=3 
;;	-----------------------------------------
;;	 function uart_poll
;;	-----------------------------------------
;_uart_poll:
S_uart__uart_poll	code
_uart_poll:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104C 
;	.line	46; "../../../lib/uart.c"	uart_poll(uint8_t bauds) {
	BANKSEL	r0x100B	;id=1434,key=000,inCond:0,outCond:0,flow seq=026
	MOVWF	r0x100B	;id=1356,key=001,inCond:10,outCond:1,flow seq=026,rIdx=r0x104C
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100B
;	.line	50; "../../../lib/uart.c"	TMR0 = (256 - UART_BRG_FN(bauds));
	MOVWF	r0x100C	;id=384,key=002,inCond:10,outCond:1,flow seq=026,rIdx=r0x104D
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100B
	CLRF	r0x100D	;id=389,key=003,inCond:0,outCond:5,flow seq=026,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100B
	CLRF	r0x100E	;id=392,key=004,inCond:0,outCond:5,flow seq=026,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x100F present in same bank as r0x100B
	CLRF	r0x100F	;id=395,key=005,inCond:0,outCond:5,flow seq=026,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100B
	MOVF	r0x100C,W	;id=410,key=006,inCond:1,outCond:14,flow seq=026,rIdx=r0x104D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x100B's banks
	MOVWF	STK06	;id=414,key=007,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
	MOVLW	0x00	;id=1365,key=008,inCond:400,outCond:10,flow seq=026
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x100B's banks
	MOVWF	STK05	;id=423,key=009,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
	MOVLW	0x00	;id=1366,key=00a,inCond:400,outCond:10,flow seq=026
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x100B's banks
	MOVWF	STK04	;id=432,key=00b,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
	MOVLW	0x00	;id=1367,key=00c,inCond:400,outCond:10,flow seq=026
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x100B's banks
	MOVWF	STK03	;id=441,key=00d,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xa0	;id=444,key=00e,inCond:400,outCond:10,flow seq=026
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x100B's banks
	MOVWF	STK02	;id=448,key=00f,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x25	;id=451,key=010,inCond:400,outCond:10,flow seq=026
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x100B's banks
	MOVWF	STK01	;id=455,key=011,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x26	;id=458,key=012,inCond:400,outCond:10,flow seq=026
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x100B's banks
	MOVWF	STK00	;id=462,key=013,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=465,key=014,inCond:400,outCond:10,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	__divslong	;id=467,key=015,inCond:0,outCond:0,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__divslong	;id=469,key=016,inCond:10,outCond:1e,flow seq=026
;<>Start of new flow, seq=0x27 ancestor = 0x26
;  from: 026 ; to: 028 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=471,key=000,inCond:0,outCond:0,flow seq=027
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104C, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
	BANKSEL	r0x100E	;id=1448,key=001,inCond:0,outCond:0,flow seq=027
	MOVWF	r0x100E	;id=478,key=002,inCond:10,outCond:1,flow seq=027,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x100E's banks
	MOVF	STK00,W	;id=481,key=003,inCond:1,outCond:14,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100E
	MOVWF	r0x100D	;id=484,key=004,inCond:10,outCond:1,flow seq=027,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x100E's banks
	MOVF	STK01,W	;id=487,key=005,inCond:1,outCond:14,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100E
	MOVWF	r0x100C	;id=490,key=006,inCond:10,outCond:1,flow seq=027,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x100E's banks
	MOVF	STK02,W	;id=493,key=007,inCond:1,outCond:14,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100E
	MOVWF	r0x100B	;id=1357,key=008,inCond:10,outCond:1,flow seq=027,rIdx=r0x104C
;; BANKOPT2 BANKSEL dropped; r0x100F present in same bank as r0x100E
	MOVWF	r0x100F	;id=512,key=009,inCond:10,outCond:1,flow seq=027,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x104C, size=1, left AOP_REG=r0x1050, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; 	genPlusIncr  176
;; 	couldn't increment 
;;	adding lit to something. size 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:522:genAddLit
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x100F present in same bank as r0x100E
	INCF	r0x100F,W	;id=531,key=00a,inCond:1,outCond:14,flow seq=027,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100E
	MOVWF	r0x100B	;id=535,key=00b,inCond:10,outCond:1,flow seq=027,rIdx=r0x104C
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1664:genUminus *{*
;; ***	genUminus  1666
;;	695 register type nRegs=1
;; ***	aopForSym 316
;;	328 sym->rname = _TMR0, size = 1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1701:genUminus
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100E
	COMF	r0x100B,W	;id=546,key=00c,inCond:1,outCond:14,flow seq=027,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1702:genUminus
;;	998
;;	1016  _TMR0   offset=0
	BANKSEL	_TMR0	;id=1459,key=00d,inCond:0,outCond:0,flow seq=027
	MOVWF	_TMR0	;id=550,key=00e,inCond:10,outCond:1,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1706:genUminus
;;	998
;;	1016  _TMR0   offset=0
;; BANKOPT2 BANKSEL dropped; _TMR0 present in same bank as _TMR0
	INCF	_TMR0,F	;id=554,key=00f,inCond:1,outCond:5,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 02b 027 ; to: 02a 029 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00119_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TMR0, size = 1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_DIR=_TMR0, size=1, right AOP_LIT=0x80, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;; BANKOPT3 drop assumptions: PCI with label or call found
_00119_DS_:
;	.line	51; "../../../lib/uart.c"	while(TMR0 & (1 << 7)) {
	BANKSEL	_TMR0	;id=1462,key=000,inCond:0,outCond:0,flow seq=028
	BTFSS	_TMR0,7	;id=570,key=001,inCond:21,outCond:0,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x28
;  from: 028 ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=5, label offset 16
	GOTO	_00121_DS_	;id=573,key=000,inCond:0,outCond:0,flow seq=029
;<>Start of new flow, seq=0x2a ancestor = 0x28
;  from: 028 ; to: 02c 02b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_DIR=_PIR1, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _PIR1   offset=0
;; BANKOPT2 BANKSEL dropped; _PIR1 present in same bank as _TMR0
;	.line	52; "../../../lib/uart.c"	if((PIR1 & 0b00100000))
	MOVF	_PIR1,W	;id=591,key=000,inCond:1,outCond:14,flow seq=02a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x104C 
	BANKSEL	r0x100B	;id=1464,key=001,inCond:0,outCond:0,flow seq=02a
	MOVWF	r0x100B	;id=594,key=002,inCond:10,outCond:1,flow seq=02a,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_REG=r0x104C, size=1, right AOP_LIT=0x20, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100B
	BTFSS	r0x100B,5	;id=603,key=003,inCond:21,outCond:0,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x2a
;  from: 02a ; to: 028 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=3, label offset 16
	GOTO	_00119_DS_	;id=606,key=000,inCond:0,outCond:0,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2a
;  from: 02a ; to: 02e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	53; "../../../lib/uart.c"	return 1;
	MOVLW	0x01	;id=614,key=000,inCond:400,outCond:10,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2701:genRet
;; ***	popGetLabel  key=6, label offset 16
	GOTO	_00122_DS_	;id=617,key=001,inCond:0,outCond:0,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x29
;  from: 029 ; to: 02e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00121_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00121_DS_:
;	.line	56; "../../../lib/uart.c"	return 0;
	MOVLW	0x00	;id=629,key=000,inCond:400,outCond:10,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2c
;  from: 02d 02c ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00122_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00122_DS_:
;	.line	57; "../../../lib/uart.c"	}
	RETURN		;id=640,key=000,inCond:10,outCond:e,flow seq=02e
;<>Start of new flow, seq=0x2f
;  from: ; to: 
; exit point of _uart_poll
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _uart_poll
;   _uart_poll
;4 compiler assigned registers:
;   r0x1010
;   r0x1011
;   r0x1012
;   STK00
;; Starting pCode block
;<>Start of new flow, seq=0x30 ancestor = 0x30
;  from: ; to: 031 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=1 
;;	-----------------------------------------
;;	 function uart_getch
;;	-----------------------------------------
;_uart_getch:
S_uart__uart_getch	code
_uart_getch:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	34; "../../../lib/uart.c"	if(uart_poll(UART_TIMEOUT)) {
	MOVLW	0x00	;id=218,key=000,inCond:400,outCond:10,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_uart_poll	;id=220,key=001,inCond:0,outCond:0,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_poll	;id=222,key=002,inCond:10,outCond:1e,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x30
;  from: 030 ; to: 033 032 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=224,key=000,inCond:0,outCond:0,flow seq=031
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1010	;id=1469,key=001,inCond:0,outCond:0,flow seq=031
	MOVWF	r0x1010	;id=231,key=002,inCond:10,outCond:1,flow seq=031,rIdx=r0x1048
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1010 present in same bank as r0x1010
	MOVF	r0x1010,W	;id=1358,key=003,inCond:1,outCond:14,flow seq=031,rIdx=r0x1048
	BTFSC	STATUS,2	;id=246,key=004,inCond:25,outCond:0,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x31
;  from: 031 ; to: 034 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=2, label offset 9
	GOTO	_00111_DS_	;id=249,key=000,inCond:0,outCond:0,flow seq=032
;<>Start of new flow, seq=0x33 ancestor = 0x31
;  from: 031 ; to: 035 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _RCREG, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_RCREG, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1012  _RCREG   offset=0 - had to alloc by reg name
;	.line	36; "../../../lib/uart.c"	ch = RCREG;
	BANKSEL	_RCREG	;id=1471,key=000,inCond:0,outCond:0,flow seq=033
	MOVF	_RCREG,W	;id=266,key=001,inCond:1,outCond:14,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1010	;id=1472,key=002,inCond:0,outCond:0,flow seq=033
	MOVWF	r0x1010	;id=269,key=003,inCond:10,outCond:1,flow seq=033,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	37; "../../../lib/uart.c"	PIR1 &= ~0b00100000; //  RCIF = 0;
	BANKSEL	_PIR1	;id=1473,key=004,inCond:0,outCond:0,flow seq=033
	BCF	_PIR1,5	;id=279,key=005,inCond:21,outCond:21,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1049, size=2, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x1048 
;;101	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1049 
;;99	MOVWF	r0x1011
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x104A 
;;1	CLRF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;;100	MOVF	r0x1011,W
;	.line	38; "../../../lib/uart.c"	return (int)ch;
	BANKSEL	r0x1010	;id=1474,key=006,inCond:0,outCond:0,flow seq=033
	MOVF	r0x1010,W	;id=1359,key=007,inCond:1,outCond:14,flow seq=033,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1401:pass_argument
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1010's banks
	MOVWF	STK00	;id=309,key=008,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
	MOVLW	0x00	;id=1363,key=009,inCond:400,outCond:10,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2701:genRet
;; ***	popGetLabel  key=3, label offset 9
	GOTO	_00112_DS_	;id=317,key=00a,inCond:0,outCond:0,flow seq=033
;<>Start of new flow, seq=0x34 ancestor = 0x32
;  from: 032 ; to: 035 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00111_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00111_DS_:
;	.line	40; "../../../lib/uart.c"	return -1;
	MOVLW	0xff	;id=329,key=000,inCond:400,outCond:10,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1401:pass_argument
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=332,key=001,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xff	;id=335,key=002,inCond:400,outCond:10,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x33
;  from: 034 033 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00112_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00112_DS_:
;	.line	41; "../../../lib/uart.c"	}
	RETURN		;id=346,key=000,inCond:10,outCond:e,flow seq=035
;<>Start of new flow, seq=0x36
;  from: ; to: 
; exit point of _uart_getch
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x1000
;   r0x1001
;; Starting pCode block
;<>Start of new flow, seq=0x37 ancestor = 0x37
;  from: ; to: 038 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function uart_putch
;;	-----------------------------------------
;_uart_putch:
S_uart__uart_putch	code
_uart_putch:
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
;	.line	22; "../../../lib/uart.c"	uart_putch(uint8_t byte) {
	BANKSEL	r0x1000	;id=1479,key=000,inCond:0,outCond:0,flow seq=037
	MOVWF	r0x1000	;id=125,key=001,inCond:10,outCond:1,flow seq=037,rIdx=r0x1045
;<>Start of new flow, seq=0x38 ancestor = 0x37
;  from: 039 037 ; to: 03a 039 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1046, size=1, left -=-, size=0, right AOP_DIR=_PIR1, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1012  _PIR1   offset=0 - had to alloc by reg name
;; BANKOPT3 drop assumptions: PCI with label or call found
_00105_DS_:
;	.line	24; "../../../lib/uart.c"	while(!(PIR1 & 0b00010000)) {
	BANKSEL	_PIR1	;id=1481,key=000,inCond:0,outCond:0,flow seq=038
	MOVF	_PIR1,W	;id=147,key=001,inCond:1,outCond:14,flow seq=038
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1046 
	BANKSEL	r0x1001	;id=1482,key=002,inCond:0,outCond:0,flow seq=038
	MOVWF	r0x1001	;id=150,key=003,inCond:10,outCond:1,flow seq=038,rIdx=r0x1046
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1046, size=1, right AOP_LIT=0x10, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1001
	BTFSS	r0x1001,4	;id=159,key=004,inCond:21,outCond:0,flow seq=038
;<>Start of new flow, seq=0x39 ancestor = 0x38
;  from: 038 ; to: 038 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=1, label offset 4
	GOTO	_00105_DS_	;id=162,key=000,inCond:0,outCond:0,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x38
;  from: 038 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; ***	aopForSym 316
;;	328 sym->rname = _TXREG, size = 1
;; 	line = 7046 result AOP_DIR=_TXREG, size=1, left -=-, size=0, right AOP_REG=r0x1045, size=1
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1001
;	.line	28; "../../../lib/uart.c"	TXREG = (uint8_t)byte;
	MOVF	r0x1000,W	;id=177,key=000,inCond:1,outCond:14,flow seq=03a,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _TXREG   offset=0
	BANKSEL	_TXREG	;id=1485,key=001,inCond:0,outCond:0,flow seq=03a
	MOVWF	_TXREG	;id=181,key=002,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00108_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	29; "../../../lib/uart.c"	}
	RETURN		;id=192,key=003,inCond:10,outCond:e,flow seq=03a
;<>Start of new flow, seq=0x3b
;  from: ; to: 
; exit point of _uart_putch
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  153+   51 =   204 instructions (  510 byte)

	end
