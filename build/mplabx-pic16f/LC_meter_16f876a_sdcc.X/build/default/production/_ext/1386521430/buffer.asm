;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../lib/buffer.c"
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
	extern	_memccpy
	extern	_memcpy
	extern	_memmove
	extern	_strcpy
	extern	_strncpy
	extern	_strcat
	extern	_strncat
	extern	_strdup
	extern	_strndup
	extern	_memcmp
	extern	_strcmp
	extern	_strncmp
	extern	_strxfrm
	extern	_memchr
	extern	_strchr
	extern	_strcspn
	extern	_strpbrk
	extern	_strrchr
	extern	_strspn
	extern	_strstr
	extern	_strtok
	extern	_memset
	extern	_strlen
	extern	___memcpy
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
	global	_buffer_puts
	global	_buffer_put
	global	_buffer_putch
	global	_buffer_flush
	global	_buffer_init
	global	_buffer

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_buffer_0	udata
_buffer	res	19

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_buffer_0	udata
r0x1030	res	1
r0x102F	res	1
r0x102A	res	1
r0x102B	res	1
r0x102C	res	1
r0x102D	res	1
r0x102E	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1018	res	1
r0x1020	res	1
r0x101F	res	1
r0x101E	res	1
r0x1021	res	1
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1025	res	1
r0x1026	res	1
r0x1027	res	1
r0x1028	res	1
r0x1029	res	1
r0x101B	res	1
r0x101A	res	1
r0x1019	res	1
r0x101C	res	1
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
code_buffer	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _buffer_putch
;   __gptrget1
;   _buffer_putch
;7 compiler assigned registers:
;   r0x1019
;   STK00
;   r0x101A
;   STK01
;   r0x101B
;   r0x101C
;   r0x102C
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=41previous max_key=22 
;;	-----------------------------------------
;;	 function buffer_puts
;;	-----------------------------------------
;_buffer_puts:
S_buffer__buffer_puts	code
_buffer_puts:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;	.line	56; "../../../lib/buffer.c"	buffer_puts(const char* x) {
	BANKSEL	r0x1019	;id=1843,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1019	;id=1662,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1019's banks
	MOVF	STK00,W	;id=1665,key=002,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1019
	MOVWF	r0x101A	;id=1668,key=003,inCond:10,outCond:1,flow seq=001,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1019's banks
	MOVF	STK01,W	;id=1671,key=004,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1019
	MOVWF	r0x101B	;id=1674,key=005,inCond:10,outCond:1,flow seq=001,rIdx=r0x105F
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 00a 001 ; to: 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00168_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1062, size=1, left AOP_REG=r0x105F, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00168_DS_:
;	.line	57; "../../../lib/buffer.c"	while(*x) {
	BANKSEL	r0x101B	;id=1849,key=000,inCond:0,outCond:0,flow seq=002
	MOVF	r0x101B,W	;id=1692,key=001,inCond:1,outCond:14,flow seq=002,rIdx=r0x105F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=1695,key=002,inCond:10,outCond:1,flow seq=002
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=1699,key=003,inCond:1,outCond:14,flow seq=002,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=1702,key=004,inCond:10,outCond:1,flow seq=002
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	MOVF	r0x1019,W	;id=1706,key=005,inCond:1,outCond:14,flow seq=002,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=1708,key=006,inCond:0,outCond:0,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=1710,key=007,inCond:10,outCond:1e,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 005 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=1712,key=000,inCond:0,outCond:0,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x101C	;id=1855,key=001,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x101C	;id=1715,key=002,inCond:10,outCond:1,flow seq=003,rIdx=r0x1062
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101C
	MOVF	r0x101C,W	;id=1819,key=003,inCond:1,outCond:14,flow seq=003,rIdx=r0x1062
	BTFSC	STATUS,2	;id=1727,key=004,inCond:25,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 00b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=3, label offset 67
	GOTO	_00170_DS_	;id=1730,key=000,inCond:0,outCond:0,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 003 ; to: 006 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101C
;	.line	58; "../../../lib/buffer.c"	buffer_putch(*x);
	MOVF	r0x101C,W	;id=1746,key=000,inCond:1,outCond:14,flow seq=005,rIdx=r0x1062
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101C's banks
	MOVWF	STK00	;id=1751,key=001,inCond:10,outCond:1,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x101C
	MOVF	r0x102C,W	;id=1756,key=002,inCond:1,outCond:14,flow seq=005,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_buffer_putch	;id=1758,key=003,inCond:0,outCond:0,flow seq=005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_buffer_putch	;id=1760,key=004,inCond:10,outCond:1e,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 008 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1762,key=000,inCond:0,outCond:0,flow seq=006
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x105F, size=3, left AOP_REG=r0x105F, size=3, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x105F 
;	.line	59; "../../../lib/buffer.c"	++x;
	BANKSEL	r0x101B	;id=1861,key=001,inCond:0,outCond:0,flow seq=006
	INCF	r0x101B,F	;id=1778,key=002,inCond:1,outCond:5,flow seq=006,rIdx=r0x105F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1780,key=003,inCond:25,outCond:0,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x6
;  from: 006 ; to: 008 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	INCF	r0x101A,F	;id=1783,key=000,inCond:1,outCond:5,flow seq=007,rIdx=r0x1060
;<>Start of new flow, seq=0x8 ancestor = 0x6
;  from: 007 006 ; to: 00a 009 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=1785,key=000,inCond:25,outCond:0,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x8
;  from: 008 ; to: 00a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	INCF	r0x1019,F	;id=1788,key=000,inCond:1,outCond:5,flow seq=009,rIdx=r0x1061
;<>Start of new flow, seq=0xa ancestor = 0x8
;  from: 009 008 ; to: 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 67
	GOTO	_00168_DS_	;id=1793,key=000,inCond:0,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0x4
;  from: 004 ; to: 
;goto	_00168_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00170_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00170_DS_:
;	.line	61; "../../../lib/buffer.c"	return 0;
	MOVLW	0x00	;id=1806,key=000,inCond:400,outCond:10,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00171_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	62; "../../../lib/buffer.c"	}
	RETURN		;id=1817,key=001,inCond:10,outCond:e,flow seq=00b
;<>Start of new flow, seq=0xc
;  from: ; to: 
; exit point of _buffer_puts

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;15 compiler assigned registers:
;   r0x101E
;   STK00
;   r0x101F
;   STK01
;   r0x1020
;   STK02
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;   r0x1027
;   r0x1028
;   r0x1029
;; Starting pCode block
;<>Start of new flow, seq=0xd ancestor = 0xd
;  from: ; to: 00f 00e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=28previous max_key=9 
;;	-----------------------------------------
;;	 function buffer_put
;;	-----------------------------------------
;_buffer_put:
S_buffer__buffer_put	code
_buffer_put:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1053, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1055 
;	.line	33; "../../../lib/buffer.c"	buffer_put(const char* buf, len_t len) {
	BANKSEL	r0x101E	;id=1865,key=000,inCond:0,outCond:0,flow seq=00d
	MOVWF	r0x101E	;id=1056,key=001,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=1059,key=002,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=1062,key=003,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=1065,key=004,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x101E
	MOVWF	r0x1020	;id=1068,key=005,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1056, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=1078,key=006,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x101E
	MOVWF	r0x1021	;id=1081,key=007,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1056
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x101E
;	.line	35; "../../../lib/buffer.c"	if(len > BUFFER_SIZE - buffer.n) { // doesn't fit
	CLRF	r0x1022	;id=1099,key=008,inCond:0,outCond:5,flow seq=00d,rIdx=r0x1057
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=1102,key=009,inCond:400,outCond:10,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=1104,key=00a,inCond:410,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x101E
	MOVWF	r0x1022	;id=1107,key=00b,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1057
;;	1097 rIdx = r0x1057 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x101E
	SWAPF	r0x1022,F	;id=1112,key=00c,inCond:1,outCond:1,flow seq=00d,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=1114,key=00d,inCond:400,outCond:10,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x101E
	ANDWF	r0x1022,F	;id=1116,key=00e,inCond:11,outCond:5,flow seq=00d,rIdx=r0x1057
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_REG=r0x1057, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x1057 
;;102	MOVF	r0x1022,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1058 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x101E
	CLRF	r0x1024	;id=1135,key=00f,inCond:0,outCond:5,flow seq=00d,rIdx=r0x1059
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
;;	1097 rIdx = r0x1058 
;;101	MOVF	r0x1023,W
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x101E
	MOVF	r0x1022,W	;id=1838,key=010,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1057
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x101E
	MOVWF	r0x1023	;id=1130,key=011,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1049:genMinus
	SUBLW	0x10	;id=1150,key=012,inCond:410,outCond:1e,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1050:genMinus
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x101E
	MOVWF	r0x1022	;id=1153,key=013,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1057
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
	MOVLW	0x00	;id=1842,key=014,inCond:400,outCond:10,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1145:genMinus
	BTFSS	STATUS,0	;id=1159,key=015,inCond:23,outCond:0,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 00d ; to: 00f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1146:genMinus
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x101E
	INCF	r0x1024,W	;id=1162,key=000,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1059
;<>Start of new flow, seq=0xf ancestor = 0xd
;  from: 00e 00d ; to: 011 010 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1149:genMinus
	SUBLW	0x00	;id=1164,key=000,inCond:410,outCond:1e,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1150:genMinus
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x101E
	MOVWF	r0x1025	;id=1167,key=001,inCond:10,outCond:1,flow seq=00f,rIdx=r0x105A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_REG=r0x1056, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x101E
	MOVF	r0x1021,W	;id=1176,key=002,inCond:1,outCond:14,flow seq=00f,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x101E
	MOVWF	r0x1023	;id=1179,key=003,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1058
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x101E
	CLRF	r0x1024	;id=1184,key=004,inCond:0,outCond:5,flow seq=00f,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x101E
	MOVF	r0x1025,W	;id=1194,key=005,inCond:1,outCond:14,flow seq=00f,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3472:genCmp
	ADDLW	0x80	;id=1196,key=006,inCond:410,outCond:1e,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3473:genCmp
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x101E
	MOVWF	r0x1026	;id=1198,key=007,inCond:10,outCond:1,flow seq=00f,rIdx=r0x105B
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
	MOVLW	0x00	;id=1841,key=008,inCond:400,outCond:10,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3475:genCmp
	ADDLW	0x80	;id=1204,key=009,inCond:410,outCond:1e,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3476:genCmp
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x101E
	SUBWF	r0x1026,W	;id=1206,key=00a,inCond:11,outCond:1e,flow seq=00f,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=1208,key=00b,inCond:25,outCond:0,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 012 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=22, label offset 41
	GOTO	_00163_DS_	;id=1211,key=000,inCond:0,outCond:0,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0xf
;  from: 00f ; to: 012 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3279:pic14_mov2w_regOrLit
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x101E
	MOVF	r0x1023,W	;id=1214,key=000,inCond:1,outCond:14,flow seq=011,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x101E
	SUBWF	r0x1022,W	;id=1217,key=001,inCond:11,outCond:1e,flow seq=011,rIdx=r0x1057
;<>Start of new flow, seq=0x12 ancestor = 0x10
;  from: 011 010 ; to: 014 013 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3252:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00163_DS_:
	BTFSC	STATUS,0	;id=1221,key=000,inCond:23,outCond:0,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x12
;  from: 012 ; to: 015 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=11, label offset 41
	GOTO	_00152_DS_	;id=1224,key=000,inCond:0,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x12
;  from: 012 ; to: 023 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	45; "../../../lib/buffer.c"	return -1;
	MOVLW	0xff	;id=1233,key=000,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2701:genRet
;; ***	popGetLabel  key=7, label offset 41
	GOTO	_00148_DS_	;id=1236,key=001,inCond:0,outCond:0,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x13
;  from: 013 ; to: 016 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00152_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1057, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1057 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00152_DS_:
;	.line	47; "../../../lib/buffer.c"	for(i = 0; i < len; i++) {
	BANKSEL	r0x1022	;id=1893,key=000,inCond:0,outCond:0,flow seq=015
	CLRF	r0x1022	;id=1252,key=001,inCond:0,outCond:5,flow seq=015,rIdx=r0x1057
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 021 015 ; to: 018 017 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00146_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3279:pic14_mov2w_regOrLit
;;	1097 rIdx = r0x1056 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00146_DS_:
	BANKSEL	r0x1021	;id=1895,key=000,inCond:0,outCond:0,flow seq=016
	MOVF	r0x1021,W	;id=1266,key=001,inCond:1,outCond:14,flow seq=016,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1021
	SUBWF	r0x1022,W	;id=1269,key=002,inCond:11,outCond:1e,flow seq=016,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3252:genSkipc
	BTFSC	STATUS,0	;id=1273,key=003,inCond:23,outCond:0,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x16
;  from: 016 ; to: 022 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=3, label offset 41
	GOTO	_00144_DS_	;id=1276,key=000,inCond:0,outCond:0,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x16
;  from: 016 ; to: 01a 019 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1021
;	.line	48; "../../../lib/buffer.c"	buffer.x[buffer.n + i] = buf[i];
	CLRF	r0x1023	;id=1294,key=000,inCond:0,outCond:5,flow seq=018,rIdx=r0x1058
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=1297,key=001,inCond:400,outCond:10,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=1299,key=002,inCond:410,outCond:14,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1021
	MOVWF	r0x1023	;id=1302,key=003,inCond:10,outCond:1,flow seq=018,rIdx=r0x1058
;;	1097 rIdx = r0x1058 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1021
	SWAPF	r0x1023,F	;id=1307,key=004,inCond:1,outCond:1,flow seq=018,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=1309,key=005,inCond:400,outCond:10,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1021
	ANDWF	r0x1023,F	;id=1311,key=006,inCond:11,outCond:5,flow seq=018,rIdx=r0x1058
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1059, size=1, left -=-, size=0, right AOP_REG=r0x1058, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1021
	MOVF	r0x1023,W	;id=1323,key=007,inCond:1,outCond:14,flow seq=018,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1021
	MOVWF	r0x1024	;id=1326,key=008,inCond:10,outCond:1,flow seq=018,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1058, size=1, left -=-, size=0, right AOP_REG=r0x1057, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1021
	MOVF	r0x1022,W	;id=1820,key=009,inCond:1,outCond:14,flow seq=018,rIdx=r0x1057
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1021
	MOVWF	r0x1023	;id=1821,key=00a,inCond:10,outCond:1,flow seq=018,rIdx=r0x1058
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1021
	ADDWF	r0x1024,F	;id=1356,key=00b,inCond:11,outCond:f,flow seq=018,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 0, const = 0
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer
;; 	line = 614 result AOP_REG=r0x1059, size=2, left AOP_PCODE=_buffer, size=2, right AOP_REG=r0x1059, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  713
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1021
	MOVF	r0x1024,W	;id=1376,key=00c,inCond:1,outCond:14,flow seq=018,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
	ADDLW	(_buffer + 0)	;id=1378,key=00d,inCond:410,outCond:1e,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1021
	MOVWF	r0x1024	;id=1381,key=00e,inCond:10,outCond:1,flow seq=018,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
	MOVLW	high (_buffer + 0)	;id=1383,key=00f,inCond:400,outCond:10,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=1385,key=010,inCond:23,outCond:0,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x18
;  from: 018 ; to: 01a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=1387,key=000,inCond:410,outCond:1e,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x18
;  from: 019 018 ; to: 01c 01b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1021
	MOVWF	r0x1023	;id=1390,key=000,inCond:10,outCond:1,flow seq=01a,rIdx=r0x1058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;;	695 register type nRegs=3
;; 	line = 614 result AOP_REG=r0x105A, size=3, left AOP_REG=r0x1053, size=3, right AOP_REG=r0x1057, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1021
	MOVF	r0x1022,W	;id=1404,key=001,inCond:1,outCond:14,flow seq=01a,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x1021
	ADDWF	r0x1020,W	;id=1407,key=002,inCond:11,outCond:1e,flow seq=01a,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1021
	MOVWF	r0x1025	;id=1410,key=003,inCond:10,outCond:1,flow seq=01a,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x1021
	MOVF	r0x101F,W	;id=1413,key=004,inCond:1,outCond:14,flow seq=01a,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=1415,key=005,inCond:23,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x1a
;  from: 01a ; to: 01c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=1417,key=000,inCond:410,outCond:1e,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1a
;  from: 01b 01a ; to: 01e 01d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1021
	MOVWF	r0x1026	;id=1420,key=000,inCond:10,outCond:1,flow seq=01c,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x1021
	MOVF	r0x101E,W	;id=1423,key=001,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=1425,key=002,inCond:23,outCond:0,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1c
;  from: 01c ; to: 01e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=1427,key=000,inCond:410,outCond:1e,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1c
;  from: 01d 01c ; to: 01f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1021
	MOVWF	r0x1027	;id=1430,key=000,inCond:10,outCond:1,flow seq=01e,rIdx=r0x105C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x105D, size=1, left AOP_REG=r0x105A, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1021
	MOVF	r0x1025,W	;id=1442,key=001,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1021's banks
	MOVWF	STK01	;id=1445,key=002,inCond:10,outCond:1,flow seq=01e
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1021
	MOVF	r0x1026,W	;id=1449,key=003,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1021's banks
	MOVWF	STK00	;id=1452,key=004,inCond:10,outCond:1,flow seq=01e
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1021
	MOVF	r0x1027,W	;id=1456,key=005,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=1458,key=006,inCond:0,outCond:0,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=1460,key=007,inCond:10,outCond:1e,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 01e ; to: 021 020 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=1462,key=000,inCond:0,outCond:0,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
	BANKSEL	r0x1028	;id=1922,key=001,inCond:0,outCond:0,flow seq=01f
	MOVWF	r0x1028	;id=1465,key=002,inCond:10,outCond:1,flow seq=01f,rIdx=r0x105D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	695 register type nRegs=2
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;; 	line = 6633 result AOP_REG=r0x1059, size=2, left -=-, size=0, right AOP_REG=r0x105D, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1028
	MOVF	r0x1024,W	;id=1479,key=003,inCond:1,outCond:14,flow seq=01f,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=1924,key=004,inCond:0,outCond:0,flow seq=01f
	MOVWF	FSR	;id=1481,key=005,inCond:10,outCond:1,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5651:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=1484,key=006,inCond:21,outCond:21,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x1023	;id=1926,key=007,inCond:0,outCond:0,flow seq=01f
	BTFSC	r0x1023,0	;id=1486,key=008,inCond:21,outCond:0,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1f
;  from: 01f ; to: 021 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=1488,key=000,inCond:21,outCond:21,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x1f
;  from: 020 01f ; to: 016 
;; ***	genNearPointerSet  6658
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6674:genNearPointerSet
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1023
	MOVF	r0x1028,W	;id=1492,key=000,inCond:1,outCond:14,flow seq=021,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6679:genNearPointerSet
	BANKSEL	INDF	;id=1928,key=001,inCond:0,outCond:0,flow seq=021
	MOVWF	INDF	;id=1494,key=002,inCond:10,outCond:1,flow seq=021
;; ***	genNearPointerSet  6687
;; ***	genNearPointerSet  6713
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	576
;; 	line = 614 result AOP_REG=r0x1057, size=1, left AOP_REG=r0x1057, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1057 
;	.line	47; "../../../lib/buffer.c"	for(i = 0; i < len; i++) {
	BANKSEL	r0x1022	;id=1929,key=003,inCond:0,outCond:0,flow seq=021
	INCF	r0x1022,F	;id=1510,key=004,inCond:1,outCond:5,flow seq=021,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=5, label offset 41
	GOTO	_00146_DS_	;id=1515,key=005,inCond:0,outCond:0,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x17
;  from: 017 ; to: 023 
;goto	_00146_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00144_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x1053 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00144_DS_:
;	.line	51; "../../../lib/buffer.c"	buffer.n += len;
	BANKSEL	r0x1020	;id=1931,key=000,inCond:0,outCond:0,flow seq=022
	CLRF	r0x1020	;id=1539,key=001,inCond:0,outCond:5,flow seq=022,rIdx=r0x1053
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=1542,key=002,inCond:400,outCond:10,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=1544,key=003,inCond:410,outCond:14,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x1020
	MOVWF	r0x1020	;id=1547,key=004,inCond:10,outCond:1,flow seq=022,rIdx=r0x1053
;;	1097 rIdx = r0x1053 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x1020
	SWAPF	r0x1020,F	;id=1552,key=005,inCond:1,outCond:1,flow seq=022,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=1554,key=006,inCond:400,outCond:10,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x1020
	ANDWF	r0x1020,F	;id=1556,key=007,inCond:11,outCond:5,flow seq=022,rIdx=r0x1053
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1056, size=1, left AOP_REG=r0x1053, size=1, right AOP_REG=r0x1056, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1020
	MOVF	r0x1021,W	;id=1572,key=008,inCond:1,outCond:14,flow seq=022,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x1020
	ADDWF	r0x1020,W	;id=1575,key=009,inCond:11,outCond:1e,flow seq=022,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1020
	MOVWF	r0x1021	;id=1822,key=00a,inCond:10,outCond:1,flow seq=022,rIdx=r0x1056
	ANDLW	0x0f	;id=1599,key=00b,inCond:410,outCond:14,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6490:genPackBits
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1020
	MOVWF	r0x1029	;id=1601,key=00c,inCond:10,outCond:1,flow seq=022,rIdx=r0x105E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4996:AccLsh *{*
;; ***	AccLsh  4997
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5019:AccLsh
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1020
	SWAPF	r0x1029,F	;id=1605,key=00d,inCond:1,outCond:1,flow seq=022,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5036:AccLsh
	MOVLW	0xf0	;id=1607,key=00e,inCond:400,outCond:10,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5037:AccLsh
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1020
	ANDWF	r0x1029,F	;id=1609,key=00f,inCond:11,outCond:5,flow seq=022,rIdx=r0x105E
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=1612,key=010,inCond:400,outCond:10,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6500:genPackBits
	ANDLW	0x0f	;id=1614,key=011,inCond:410,outCond:14,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6501:genPackBits
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1020
	IORWF	r0x1029,W	;id=1616,key=012,inCond:11,outCond:14,flow seq=022,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
	BANKSEL	_buffer	;id=1942,key=013,inCond:0,outCond:0,flow seq=022
	MOVWF	(_buffer + 16)	;id=1619,key=014,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	52; "../../../lib/buffer.c"	return 0;
	MOVLW	0x00	;id=1626,key=015,inCond:400,outCond:10,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x14
;  from: 022 014 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00148_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00148_DS_:
;	.line	53; "../../../lib/buffer.c"	}
	RETURN		;id=1637,key=000,inCond:10,outCond:e,flow seq=023
;<>Start of new flow, seq=0x24
;  from: ; to: 
; exit point of _buffer_put
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;6 compiler assigned registers:
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;   r0x1018
;; Starting pCode block
;<>Start of new flow, seq=0x25 ancestor = 0x25
;  from: ; to: 027 026 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=8previous max_key=16 
;;	-----------------------------------------
;;	 function buffer_putch
;;	-----------------------------------------
;_buffer_putch:
S_buffer__buffer_putch	code
_buffer_putch:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104D, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104D 
;	.line	23; "../../../lib/buffer.c"	buffer_putch(char ch) {
	BANKSEL	r0x1013	;id=1944,key=000,inCond:0,outCond:0,flow seq=025
	MOVWF	r0x1013	;id=661,key=001,inCond:10,outCond:1,flow seq=025,rIdx=r0x104D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
;	.line	24; "../../../lib/buffer.c"	if(BUFFER_SIZE - buffer.n <= 0) {
	CLRF	r0x1014	;id=679,key=002,inCond:0,outCond:5,flow seq=025,rIdx=r0x104E
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=682,key=003,inCond:400,outCond:10,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=684,key=004,inCond:410,outCond:14,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	MOVWF	r0x1014	;id=687,key=005,inCond:10,outCond:1,flow seq=025,rIdx=r0x104E
;;	1097 rIdx = r0x104E 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	SWAPF	r0x1014,F	;id=692,key=006,inCond:1,outCond:1,flow seq=025,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=694,key=007,inCond:400,outCond:10,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	ANDWF	r0x1014,F	;id=696,key=008,inCond:11,outCond:5,flow seq=025,rIdx=r0x104E
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x104E, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x104E 
;;100	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x104F 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1013
	CLRF	r0x1016	;id=715,key=009,inCond:0,outCond:5,flow seq=025,rIdx=r0x1050
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
;;	1097 rIdx = r0x104F 
;;99	MOVF	r0x1015,W
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	MOVF	r0x1014,W	;id=1834,key=00a,inCond:1,outCond:14,flow seq=025,rIdx=r0x104E
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1013
	MOVWF	r0x1015	;id=710,key=00b,inCond:10,outCond:1,flow seq=025,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1049:genMinus
	SUBLW	0x10	;id=730,key=00c,inCond:410,outCond:1e,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1050:genMinus
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	MOVWF	r0x1014	;id=733,key=00d,inCond:10,outCond:1,flow seq=025,rIdx=r0x104E
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
	MOVLW	0x00	;id=1837,key=00e,inCond:400,outCond:10,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1145:genMinus
	BTFSS	STATUS,0	;id=739,key=00f,inCond:23,outCond:0,flow seq=025
;<>Start of new flow, seq=0x26 ancestor = 0x25
;  from: 025 ; to: 027 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1146:genMinus
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1013
	INCF	r0x1016,W	;id=742,key=000,inCond:1,outCond:14,flow seq=026,rIdx=r0x1050
;<>Start of new flow, seq=0x27 ancestor = 0x25
;  from: 026 025 ; to: 029 028 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1149:genMinus
	SUBLW	0x00	;id=744,key=000,inCond:410,outCond:1e,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1150:genMinus
;;	1097 rIdx = r0x1051 
;;1	MOVWF	r0x1017
	ADDLW	0x80	;id=760,key=001,inCond:410,outCond:1e,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3465:genCmp
	ADDLW	0x80	;id=762,key=002,inCond:410,outCond:1e,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=764,key=003,inCond:25,outCond:0,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 027 ; to: 02a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=9, label offset 28
	GOTO	_00137_DS_	;id=767,key=000,inCond:0,outCond:0,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x27
;  from: 027 ; to: 02a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x01	;id=769,key=000,inCond:400,outCond:10,flow seq=029
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	SUBWF	r0x1014,W	;id=772,key=001,inCond:11,outCond:1e,flow seq=029,rIdx=r0x104E
;<>Start of new flow, seq=0x2a ancestor = 0x28
;  from: 029 028 ; to: 02c 02b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3252:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00137_DS_:
	BTFSC	STATUS,0	;id=776,key=000,inCond:23,outCond:0,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x2a
;  from: 02a ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=2, label offset 28
	GOTO	_00130_DS_	;id=779,key=000,inCond:0,outCond:0,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2a
;  from: 02a ; to: 032 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	25; "../../../lib/buffer.c"	return 0;
	MOVLW	0x00	;id=788,key=000,inCond:400,outCond:10,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2701:genRet
;; ***	popGetLabel  key=3, label offset 28
	GOTO	_00131_DS_	;id=791,key=001,inCond:0,outCond:0,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2b
;  from: 02b ; to: 02f 02e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00130_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x104E 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00130_DS_:
;	.line	27; "../../../lib/buffer.c"	buffer.x[buffer.n] = ch;
	BANKSEL	r0x1014	;id=1958,key=000,inCond:0,outCond:0,flow seq=02d
	CLRF	r0x1014	;id=813,key=001,inCond:0,outCond:5,flow seq=02d,rIdx=r0x104E
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=816,key=002,inCond:400,outCond:10,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=818,key=003,inCond:410,outCond:14,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1014
	MOVWF	r0x1014	;id=821,key=004,inCond:10,outCond:1,flow seq=02d,rIdx=r0x104E
;;	1097 rIdx = r0x104E 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1014
	SWAPF	r0x1014,F	;id=826,key=005,inCond:1,outCond:1,flow seq=02d,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=828,key=006,inCond:400,outCond:10,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1014
	ANDWF	r0x1014,F	;id=830,key=007,inCond:11,outCond:5,flow seq=02d,rIdx=r0x104E
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104F, size=1, left -=-, size=0, right AOP_REG=r0x104E, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1014
	MOVF	r0x1014,W	;id=1824,key=008,inCond:1,outCond:14,flow seq=02d,rIdx=r0x104E
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1014
	MOVWF	r0x1015	;id=1825,key=009,inCond:10,outCond:1,flow seq=02d,rIdx=r0x104F
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1014
	MOVWF	r0x1014	;id=1826,key=00a,inCond:10,outCond:1,flow seq=02d,rIdx=r0x104E
	ADDLW	(_buffer + 0)	;id=880,key=00b,inCond:410,outCond:1e,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1014
	MOVWF	r0x1015	;id=883,key=00c,inCond:10,outCond:1,flow seq=02d,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
	MOVLW	high (_buffer + 0)	;id=885,key=00d,inCond:400,outCond:10,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=887,key=00e,inCond:23,outCond:0,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 02f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=889,key=000,inCond:410,outCond:1e,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2d
;  from: 02e 02d ; to: 031 030 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1014
	MOVWF	r0x1016	;id=892,key=000,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	695 register type nRegs=2
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;; 	line = 6633 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x104D, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1014
	MOVF	r0x1015,W	;id=906,key=001,inCond:1,outCond:14,flow seq=02f,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=1968,key=002,inCond:0,outCond:0,flow seq=02f
	MOVWF	FSR	;id=908,key=003,inCond:10,outCond:1,flow seq=02f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5651:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=911,key=004,inCond:21,outCond:21,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x1016	;id=1970,key=005,inCond:0,outCond:0,flow seq=02f
	BTFSC	r0x1016,0	;id=913,key=006,inCond:21,outCond:0,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2f
;  from: 02f ; to: 031 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=915,key=000,inCond:21,outCond:21,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x2f
;  from: 030 02f ; to: 032 
;; ***	genNearPointerSet  6658
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6674:genNearPointerSet
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1013 present in same bank as r0x1016
	MOVF	r0x1013,W	;id=919,key=000,inCond:1,outCond:14,flow seq=031,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6679:genNearPointerSet
	BANKSEL	INDF	;id=1972,key=001,inCond:0,outCond:0,flow seq=031
	MOVWF	INDF	;id=921,key=002,inCond:10,outCond:1,flow seq=031
;; ***	genNearPointerSet  6687
;; ***	genNearPointerSet  6713
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x104D 
;	.line	28; "../../../lib/buffer.c"	buffer.n++;
	BANKSEL	r0x1013	;id=1973,key=003,inCond:0,outCond:0,flow seq=031
	CLRF	r0x1013	;id=940,key=004,inCond:0,outCond:5,flow seq=031,rIdx=r0x104D
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=943,key=005,inCond:400,outCond:10,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=945,key=006,inCond:410,outCond:14,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1013 present in same bank as r0x1013
	MOVWF	r0x1013	;id=948,key=007,inCond:10,outCond:1,flow seq=031,rIdx=r0x104D
;;	1097 rIdx = r0x104D 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1013 present in same bank as r0x1013
	SWAPF	r0x1013,F	;id=953,key=008,inCond:1,outCond:1,flow seq=031,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=955,key=009,inCond:400,outCond:10,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x1013 present in same bank as r0x1013
	ANDWF	r0x1013,F	;id=957,key=00a,inCond:11,outCond:5,flow seq=031,rIdx=r0x104D
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x104D, size=1, left AOP_REG=r0x104D, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1013 present in same bank as r0x1013
	INCF	r0x1013,F	;id=972,key=00b,inCond:1,outCond:5,flow seq=031,rIdx=r0x104D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6633 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_REG=r0x104D, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1013 present in same bank as r0x1013
	MOVF	r0x1013,W	;id=991,key=00c,inCond:1,outCond:14,flow seq=031,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6488:genPackBits
	ANDLW	0x0f	;id=993,key=00d,inCond:410,outCond:14,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6490:genPackBits
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1013
	MOVWF	r0x1018	;id=995,key=00e,inCond:10,outCond:1,flow seq=031,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4996:AccLsh *{*
;; ***	AccLsh  4997
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5019:AccLsh
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1013
	SWAPF	r0x1018,F	;id=999,key=00f,inCond:1,outCond:1,flow seq=031,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5036:AccLsh
	MOVLW	0xf0	;id=1001,key=010,inCond:400,outCond:10,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5037:AccLsh
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1013
	ANDWF	r0x1018,F	;id=1003,key=011,inCond:11,outCond:5,flow seq=031,rIdx=r0x1052
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=1006,key=012,inCond:400,outCond:10,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6500:genPackBits
	ANDLW	0x0f	;id=1008,key=013,inCond:410,outCond:14,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6501:genPackBits
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1013
	IORWF	r0x1018,W	;id=1010,key=014,inCond:11,outCond:14,flow seq=031,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
	BANKSEL	_buffer	;id=1983,key=015,inCond:0,outCond:0,flow seq=031
	MOVWF	(_buffer + 16)	;id=1013,key=016,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	29; "../../../lib/buffer.c"	return 1;
	MOVLW	0x01	;id=1020,key=017,inCond:400,outCond:10,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x2c
;  from: 031 02c ; to: 
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
;	.line	30; "../../../lib/buffer.c"	}
	RETURN		;id=1031,key=000,inCond:10,outCond:e,flow seq=032
;<>Start of new flow, seq=0x33
;  from: ; to: 
; exit point of _buffer_putch
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _00123_DS_
;   _00123_DS_
;5 compiler assigned registers:
;   r0x102A
;   r0x102B
;   r0x102C
;   r0x102D
;   r0x102E
;; Starting pCode block
;<>Start of new flow, seq=0x34 ancestor = 0x34
;  from: 03d ; to: 036 035 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=0 
;;	-----------------------------------------
;;	 function buffer_flush
;;	-----------------------------------------
;_buffer_flush:
S_buffer__buffer_flush	code
_buffer_flush:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00109_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x1048 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00109_DS_:
;	.line	15; "../../../lib/buffer.c"	while(buffer.p < buffer.n) {
	BANKSEL	r0x102A	;id=1986,key=000,inCond:0,outCond:0,flow seq=034
	CLRF	r0x102A	;id=257,key=001,inCond:0,outCond:5,flow seq=034,rIdx=r0x1048
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=260,key=002,inCond:400,outCond:10,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0x0f	;id=262,key=003,inCond:410,outCond:14,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102A
	MOVWF	r0x102A	;id=265,key=004,inCond:10,outCond:1,flow seq=034,rIdx=r0x1048
;;	1097 rIdx = r0x1048 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	CLRF	r0x102B	;id=285,key=005,inCond:0,outCond:5,flow seq=034,rIdx=r0x1049
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=288,key=006,inCond:400,outCond:10,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=290,key=007,inCond:410,outCond:14,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	MOVWF	r0x102B	;id=293,key=008,inCond:10,outCond:1,flow seq=034,rIdx=r0x1049
;;	1097 rIdx = r0x1049 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	SWAPF	r0x102B,F	;id=298,key=009,inCond:1,outCond:1,flow seq=034,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=300,key=00a,inCond:400,outCond:10,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	ANDWF	r0x102B,F	;id=302,key=00b,inCond:11,outCond:5,flow seq=034,rIdx=r0x1049
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_REG=r0x1049, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102A
	MOVF	r0x102B,W	;id=1827,key=00c,inCond:1,outCond:14,flow seq=034,rIdx=r0x1049
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
	MOVWF	r0x102C	;id=1828,key=00d,inCond:10,outCond:1,flow seq=034,rIdx=r0x104A
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102A
	SUBWF	r0x102A,W	;id=329,key=00e,inCond:11,outCond:1e,flow seq=034,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3252:genSkipc
	BTFSC	STATUS,0	;id=333,key=00f,inCond:23,outCond:0,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x34
;  from: 034 ; to: 03e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=3, label offset 8
	GOTO	_00111_DS_	;id=336,key=000,inCond:0,outCond:0,flow seq=035
;<>Start of new flow, seq=0x36 ancestor = 0x34
;  from: 034 ; to: 038 037 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 17, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5996:genDataPointerGet *{*
;; ***	genDataPointerGet  5997
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 17
;; 	line = 6009 result AOP_REG=r0x1048, size=2, left AOP_PCODE=(_buffer+17), size=2, right -=-, size=0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5858:genUnpackBits *{*
;; ***	genUnpackBits  5859
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5947:genUnpackBits
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
;	.line	16; "../../../lib/buffer.c"	buffer.op(buffer.x[buffer.p++]);
	CLRF	r0x102C	;id=370,key=000,inCond:0,outCond:5,flow seq=036,rIdx=r0x104A
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=373,key=001,inCond:400,outCond:10,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0x0f	;id=375,key=002,inCond:410,outCond:14,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
	MOVWF	r0x102C	;id=378,key=003,inCond:10,outCond:1,flow seq=036,rIdx=r0x104A
;;	1097 rIdx = r0x104A 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x104B, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x01, size=1
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
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102A
	INCF	r0x102C,W	;id=402,key=004,inCond:1,outCond:14,flow seq=036,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102A
	MOVWF	r0x102D	;id=1829,key=005,inCond:10,outCond:1,flow seq=036,rIdx=r0x104B
	ANDLW	0x0f	;id=429,key=006,inCond:410,outCond:14,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6490:genPackBits
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102A
	MOVWF	r0x102E	;id=431,key=007,inCond:10,outCond:1,flow seq=036,rIdx=r0x104C
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=434,key=008,inCond:400,outCond:10,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6500:genPackBits
	ANDLW	0xf0	;id=436,key=009,inCond:410,outCond:14,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6501:genPackBits
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102A
	IORWF	r0x102E,W	;id=438,key=00a,inCond:11,outCond:14,flow seq=036,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
	BANKSEL	_buffer	;id=2001,key=00b,inCond:0,outCond:0,flow seq=036
	MOVWF	(_buffer + 16)	;id=441,key=00c,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104B, size=1, left -=-, size=0, right AOP_REG=r0x104A, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x104A 
	BANKSEL	r0x102C	;id=2002,key=00d,inCond:0,outCond:0,flow seq=036
	MOVF	r0x102C,W	;id=1830,key=00e,inCond:1,outCond:14,flow seq=036,rIdx=r0x104A
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102C
	MOVWF	r0x102D	;id=1831,key=00f,inCond:10,outCond:1,flow seq=036,rIdx=r0x104B
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102C
	MOVWF	r0x102C	;id=1832,key=010,inCond:10,outCond:1,flow seq=036,rIdx=r0x104A
	ADDLW	(_buffer + 0)	;id=489,key=011,inCond:410,outCond:1e,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102C
	MOVWF	r0x102D	;id=492,key=012,inCond:10,outCond:1,flow seq=036,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
	MOVLW	high (_buffer + 0)	;id=494,key=013,inCond:400,outCond:10,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=496,key=014,inCond:23,outCond:0,flow seq=036
;<>Start of new flow, seq=0x37 ancestor = 0x36
;  from: 036 ; to: 038 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=498,key=000,inCond:410,outCond:1e,flow seq=037
;<>Start of new flow, seq=0x38 ancestor = 0x36
;  from: 037 036 ; to: 03a 039 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102C
	MOVWF	r0x102E	;id=501,key=000,inCond:10,outCond:1,flow seq=038,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6042:genNearPointerGet *{*
;; ***	genNearPointerGet  6043
;;	695 register type nRegs=2
;; ***	genNearPointerGet  6059
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102C
	MOVF	r0x102D,W	;id=514,key=001,inCond:1,outCond:14,flow seq=038,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=2008,key=002,inCond:0,outCond:0,flow seq=038
	MOVWF	FSR	;id=516,key=003,inCond:10,outCond:1,flow seq=038
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5651:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=519,key=004,inCond:21,outCond:21,flow seq=038
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x102E	;id=2010,key=005,inCond:0,outCond:0,flow seq=038
	BTFSC	r0x102E,0	;id=521,key=006,inCond:21,outCond:0,flow seq=038
;<>Start of new flow, seq=0x39 ancestor = 0x38
;  from: 038 ; to: 03a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=523,key=000,inCond:21,outCond:21,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x38
;  from: 039 038 ; to: 03b 03c 
;; ***	genNearPointerGet  6086
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6093:genNearPointerGet
	BANKSEL	INDF	;id=2011,key=000,inCond:0,outCond:0,flow seq=03a
	MOVF	INDF,W	;id=526,key=001,inCond:1,outCond:14,flow seq=03a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6100:genNearPointerGet
;;	1097 rIdx = r0x104A 
	BANKSEL	r0x102C	;id=2012,key=002,inCond:0,outCond:0,flow seq=03a
	MOVWF	r0x102C	;id=529,key=003,inCond:10,outCond:1,flow seq=03a,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	line = 2231 result -=-, size=0, left AOP_REG=r0x1048, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=15, label offset 8
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_00123_DS_	;id=541,key=004,inCond:10,outCond:1e,flow seq=03a
;<>Start of new flow, seq=0x3b ancestor = 0x3a
;  from: 03a ; to: 03d 
;; ***	popGetLabel  key=16, label offset 8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2262:genPcall
	PAGESEL	_00124_DS_	;id=544,key=000,inCond:0,outCond:0,flow seq=03b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2263:genPcall
	GOTO	_00124_DS_	;id=546,key=001,inCond:0,outCond:0,flow seq=03b
;<>Start of new flow, seq=0x3c ancestor = 0x3a
;  from: 03a ; to: 03d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2266:genPcall
;;	1097 rIdx = r0x1049 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00123_DS_:
	BANKSEL	r0x102B	;id=2015,key=000,inCond:0,outCond:0,flow seq=03c
	MOVF	r0x102B,W	;id=550,key=001,inCond:1,outCond:14,flow seq=03c,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=2016,key=002,inCond:0,outCond:0,flow seq=03c
	MOVWF	PCLATH	;id=552,key=003,inCond:10,outCond:1,flow seq=03c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2268:genPcall
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x102A	;id=2017,key=004,inCond:0,outCond:0,flow seq=03c
	MOVF	r0x102A,W	;id=555,key=005,inCond:1,outCond:14,flow seq=03c,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=2018,key=006,inCond:0,outCond:0,flow seq=03c
	MOVWF	PCL	;id=557,key=007,inCond:10,outCond:1,flow seq=03c
;<>Start of new flow, seq=0x3d ancestor = 0x3b
;  from: 03c 03b ; to: 034 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 8
;; BANKOPT3 drop assumptions: PCI with label or call found
_00124_DS_:
	GOTO	_00109_DS_	;id=565,key=000,inCond:0,outCond:0,flow seq=03d
;<>Start of new flow, seq=0x3e ancestor = 0x35
;  from: 035 ; to: 
;goto	_00109_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00111_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6633 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
;; BANKOPT3 drop assumptions: PCI with label or call found
_00111_DS_:
;	.line	18; "../../../lib/buffer.c"	BUFFER_CLEAR();
	MOVLW	(_buffer + 16)	;id=590,key=000,inCond:400,outCond:10,flow seq=03e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6415:genPackBits
	ANDLW	0xf0	;id=592,key=001,inCond:410,outCond:14,flow seq=03e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
	BANKSEL	_buffer	;id=2021,key=002,inCond:0,outCond:0,flow seq=03e
	MOVWF	(_buffer + 16)	;id=595,key=003,inCond:10,outCond:1,flow seq=03e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6633 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=613,key=004,inCond:400,outCond:10,flow seq=03e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6415:genPackBits
	ANDLW	0x0f	;id=615,key=005,inCond:410,outCond:14,flow seq=03e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
;; BANKOPT2 BANKSEL dropped; _buffer present in same bank as _buffer
	MOVWF	(_buffer + 16)	;id=618,key=006,inCond:10,outCond:1,flow seq=03e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	19; "../../../lib/buffer.c"	return 0;
	MOVLW	0x00	;id=625,key=007,inCond:400,outCond:10,flow seq=03e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00112_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	20; "../../../lib/buffer.c"	}
	RETURN		;id=636,key=008,inCond:10,outCond:e,flow seq=03e
;<>Start of new flow, seq=0x3f
;  from: ; to: 
; exit point of _buffer_flush
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;3 compiler assigned registers:
;   r0x102F
;   STK00
;   r0x1030
;; Starting pCode block
;<>Start of new flow, seq=0x40 ancestor = 0x40
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function buffer_init
;;	-----------------------------------------
;_buffer_init:
S_buffer__buffer_init	code
_buffer_init:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;	.line	7; "../../../lib/buffer.c"	buffer_init(putchar_p op) {
	BANKSEL	r0x102F	;id=2023,key=000,inCond:0,outCond:0,flow seq=040
	MOVWF	r0x102F	;id=125,key=001,inCond:10,outCond:1,flow seq=040,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102F's banks
	MOVF	STK00,W	;id=128,key=002,inCond:1,outCond:14,flow seq=040
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102F
	MOVWF	r0x1030	;id=131,key=003,inCond:10,outCond:1,flow seq=040,rIdx=r0x1045
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6633 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
;	.line	8; "../../../lib/buffer.c"	buffer.p = 0;
	MOVLW	(_buffer + 16)	;id=151,key=004,inCond:400,outCond:10,flow seq=040
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6415:genPackBits
	ANDLW	0xf0	;id=153,key=005,inCond:410,outCond:14,flow seq=040
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
	BANKSEL	_buffer	;id=2026,key=006,inCond:0,outCond:0,flow seq=040
	MOVWF	(_buffer + 16)	;id=156,key=007,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6631
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6633 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6347:genPackBits *{*
;; ***	genPackBits  6348
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
;	.line	9; "../../../lib/buffer.c"	buffer.n = 0;
	MOVLW	(_buffer + 16)	;id=175,key=008,inCond:400,outCond:10,flow seq=040
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6415:genPackBits
	ANDLW	0x0f	;id=177,key=009,inCond:410,outCond:14,flow seq=040
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
;; BANKOPT2 BANKSEL dropped; _buffer present in same bank as _buffer
	MOVWF	(_buffer + 16)	;id=180,key=00a,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _buffer, val 17, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;	695 register type nRegs=2
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=1, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6591:genDataPointerSet
;;	1097 rIdx = r0x1045 
;	.line	10; "../../../lib/buffer.c"	buffer.op = op;
	BANKSEL	r0x1030	;id=2028,key=00b,inCond:0,outCond:0,flow seq=040
	MOVF	r0x1030,W	;id=197,key=00c,inCond:1,outCond:14,flow seq=040,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6592:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _buffer
	BANKSEL	_buffer	;id=2029,key=00d,inCond:0,outCond:0,flow seq=040
	MOVWF	(_buffer + 17)	;id=200,key=00e,inCond:10,outCond:1,flow seq=040
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=1, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6591:genDataPointerSet
;;	1097 rIdx = r0x1046 
	BANKSEL	r0x102F	;id=2030,key=00f,inCond:0,outCond:0,flow seq=040
	MOVF	r0x102F,W	;id=204,key=010,inCond:1,outCond:14,flow seq=040,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6592:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 1) 1118 _buffer
	BANKSEL	_buffer	;id=2031,key=011,inCond:0,outCond:0,flow seq=040
	MOVWF	(_buffer + 18)	;id=207,key=012,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	11; "../../../lib/buffer.c"	}
	RETURN		;id=218,key=013,inCond:10,outCond:e,flow seq=040
;<>Start of new flow, seq=0x41
;  from: ; to: 
; exit point of _buffer_init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  283+   46 =   329 instructions (  750 byte)

	end
