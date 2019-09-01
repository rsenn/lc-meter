;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../lib/format.c"
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
	extern	_sinf
	extern	_cosf
	extern	_tanf
	extern	_cotf
	extern	_asinf
	extern	_acosf
	extern	_atanf
	extern	_atan2f
	extern	_sinhf
	extern	_coshf
	extern	_tanhf
	extern	_expf
	extern	_logf
	extern	_log10f
	extern	_powf
	extern	_sqrtf
	extern	_fabsf
	extern	_frexpf
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
	extern	_isnan
	extern	_isinf
	extern	__moduint
	extern	__divuint
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
	global	_format_double
	global	_format_xint32
	global	_format_number
	global	_format_float
	global	_putchar_ptr

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_format_0	udata
r0x1043	res	1
r0x1042	res	1
r0x1044	res	1
r0x1045	res	1
r0x105B	res	1
r0x1047	res	1
r0x1048	res	1
r0x1049	res	1
r0x104B	res	1
r0x104C	res	1
r0x104D	res	1
r0x104E	res	1
r0x104F	res	1
r0x1050	res	1
r0x1054	res	1
r0x1053	res	1
r0x1052	res	1
r0x1051	res	1
r0x1055	res	1
r0x1056	res	1
r0x1036	res	1
r0x1035	res	1
r0x1034	res	1
r0x1033	res	1
r0x103A	res	1
r0x1039	res	1
r0x1038	res	1
r0x1037	res	1
r0x103C	res	1
r0x103B	res	1
r0x1040	res	1
r0x103F	res	1
r0x103E	res	1
r0x103D	res	1
r0x1041	res	1
r0x1025	res	1
r0x1024	res	1
r0x1023	res	1
r0x1022	res	1
r0x102A	res	1
r0x1029	res	1
r0x1028	res	1
r0x1027	res	1
r0x102C	res	1
r0x102B	res	1
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
r0x102D	res	1
r0x1032	res	1
r0x1031	res	1
_format_number_buf_65536_51	res	32
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_format_0	idata
_putchar_ptr
	db	low (_format_putchar+0), high (_format_putchar+0)

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_format	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2sint
;   ___sint2fs
;   ___fsmul
;   ___fssub
;   _00227_DS_
;   _00229_DS_
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2sint
;   ___sint2fs
;   ___fsmul
;   ___fssub
;   _00227_DS_
;   _00229_DS_
;24 compiler assigned registers:
;   r0x1022
;   STK00
;   r0x1023
;   STK01
;   r0x1024
;   STK02
;   r0x1025
;   STK04
;   STK03
;   r0x1040
;   r0x1027
;   r0x1028
;   r0x1029
;   r0x102A
;   STK06
;   STK05
;   r0x102B
;   r0x102C
;   r0x102D
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;   r0x1032
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 002 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=78previous max_key=24 
;;	-----------------------------------------
;;	 function format_double
;;	-----------------------------------------
;_format_double:
S_format__format_double	code
_format_double:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x106F, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1072 
;	.line	74; "../../../lib/format.c"	format_double(double num) {
	BANKSEL	r0x1022	;id=3707,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1022	;id=2488,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1072
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1022's banks
	MOVF	STK00,W	;id=2491,key=002,inCond:1,outCond:14,flow seq=001
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1071 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1022
	MOVWF	r0x1023	;id=2494,key=003,inCond:10,outCond:1,flow seq=001,rIdx=r0x1071
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1022's banks
	MOVF	STK01,W	;id=2497,key=004,inCond:1,outCond:14,flow seq=001
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1070 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1022
	MOVWF	r0x1024	;id=2500,key=005,inCond:10,outCond:1,flow seq=001,rIdx=r0x1070
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1022's banks
	MOVF	STK02,W	;id=2503,key=006,inCond:1,outCond:14,flow seq=001
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106F 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1022
;	.line	75; "../../../lib/format.c"	short m = (short)log10(num);
	MOVWF	r0x1025	;id=3657,key=007,inCond:10,outCond:1,flow seq=001,rIdx=r0x106F
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1022's banks
	MOVWF	STK04	;id=2526,key=008,inCond:10,outCond:1,flow seq=001
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1070 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1022
	MOVF	r0x1024,W	;id=2531,key=009,inCond:1,outCond:14,flow seq=001,rIdx=r0x1070
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1022's banks
	MOVWF	STK03	;id=2535,key=00a,inCond:10,outCond:1,flow seq=001
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1071 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1022
	MOVF	r0x1023,W	;id=2540,key=00b,inCond:1,outCond:14,flow seq=001,rIdx=r0x1071
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1022's banks
	MOVWF	STK02	;id=2544,key=00c,inCond:10,outCond:1,flow seq=001
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1022
	MOVF	r0x1022,W	;id=2549,key=00d,inCond:1,outCond:14,flow seq=001,rIdx=r0x1072
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1022's banks
	MOVWF	STK01	;id=2553,key=00e,inCond:10,outCond:1,flow seq=001
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x2e	;id=2556,key=00f,inCond:400,outCond:10,flow seq=001
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1022's banks
	MOVWF	STK00	;id=2561,key=010,inCond:10,outCond:1,flow seq=001
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106A 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x1022
	MOVF	r0x1040,W	;id=2566,key=011,inCond:1,outCond:14,flow seq=001,rIdx=r0x106A
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_log10f	;id=2568,key=012,inCond:0,outCond:0,flow seq=001
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_log10f	;id=2570,key=013,inCond:10,outCond:1e,flow seq=001
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 001 ; to: 003 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2572,key=000,inCond:0,outCond:0,flow seq=002
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1073, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1076 
	BANKSEL	r0x1027	;id=3724,key=001,inCond:0,outCond:0,flow seq=002
	MOVWF	r0x1027	;id=2579,key=002,inCond:10,outCond:1,flow seq=002,rIdx=r0x1076
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1027's banks
	MOVF	STK00,W	;id=2582,key=003,inCond:1,outCond:14,flow seq=002
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1027
	MOVWF	r0x1028	;id=2585,key=004,inCond:10,outCond:1,flow seq=002,rIdx=r0x1075
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1027's banks
	MOVF	STK01,W	;id=2588,key=005,inCond:1,outCond:14,flow seq=002
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1074 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1027
	MOVWF	r0x1029	;id=2591,key=006,inCond:10,outCond:1,flow seq=002,rIdx=r0x1074
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1027's banks
	MOVF	STK02,W	;id=2594,key=007,inCond:1,outCond:14,flow seq=002
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1073 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x1027
	MOVWF	r0x102A	;id=3658,key=008,inCond:10,outCond:1,flow seq=002,rIdx=r0x1073
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1027's banks
	MOVWF	STK02	;id=2618,key=009,inCond:10,outCond:1,flow seq=002
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1074 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1027
	MOVF	r0x1029,W	;id=2623,key=00a,inCond:1,outCond:14,flow seq=002,rIdx=r0x1074
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1027's banks
	MOVWF	STK01	;id=2627,key=00b,inCond:10,outCond:1,flow seq=002
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1027
	MOVF	r0x1028,W	;id=2632,key=00c,inCond:1,outCond:14,flow seq=002,rIdx=r0x1075
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1027's banks
	MOVWF	STK00	;id=2636,key=00d,inCond:10,outCond:1,flow seq=002
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1027
	MOVF	r0x1027,W	;id=2641,key=00e,inCond:1,outCond:14,flow seq=002,rIdx=r0x1076
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fs2sint	;id=2643,key=00f,inCond:0,outCond:0,flow seq=002
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fs2sint	;id=2645,key=010,inCond:10,outCond:1e,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 004 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2647,key=000,inCond:0,outCond:0,flow seq=003
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1073, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1074 
	BANKSEL	r0x1029	;id=3738,key=001,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x1029	;id=2654,key=002,inCond:10,outCond:1,flow seq=003,rIdx=r0x1074
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1029's banks
	MOVF	STK00,W	;id=2657,key=003,inCond:1,outCond:14,flow seq=003
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1073 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x1029
	MOVWF	r0x102A	;id=2660,key=004,inCond:10,outCond:1,flow seq=003,rIdx=r0x1073
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 019 003 ; to: 005 
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00209_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106F 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00209_DS_:
;	.line	79; "../../../lib/format.c"	while(num > 0 + DBL_EPSILON) {
	BANKSEL	r0x1025	;id=3742,key=000,inCond:0,outCond:0,flow seq=004
	MOVF	r0x1025,W	;id=2684,key=001,inCond:1,outCond:14,flow seq=004,rIdx=r0x106F
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1025's banks
	MOVWF	STK06	;id=2688,key=002,inCond:10,outCond:1,flow seq=004
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1070 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1025
	MOVF	r0x1024,W	;id=2693,key=003,inCond:1,outCond:14,flow seq=004,rIdx=r0x1070
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1025's banks
	MOVWF	STK05	;id=2697,key=004,inCond:10,outCond:1,flow seq=004
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1071 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1025
	MOVF	r0x1023,W	;id=2702,key=005,inCond:1,outCond:14,flow seq=004,rIdx=r0x1071
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1025's banks
	MOVWF	STK04	;id=2706,key=006,inCond:10,outCond:1,flow seq=004
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1025
	MOVF	r0x1022,W	;id=2711,key=007,inCond:1,outCond:14,flow seq=004,rIdx=r0x1072
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1025's banks
	MOVWF	STK03	;id=2715,key=008,inCond:10,outCond:1,flow seq=004
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2718,key=009,inCond:400,outCond:10,flow seq=004
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1025's banks
	MOVWF	STK02	;id=2722,key=00a,inCond:10,outCond:1,flow seq=004
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2725,key=00b,inCond:400,outCond:10,flow seq=004
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1025's banks
	MOVWF	STK01	;id=2729,key=00c,inCond:10,outCond:1,flow seq=004
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2732,key=00d,inCond:400,outCond:10,flow seq=004
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1025's banks
	MOVWF	STK00	;id=2736,key=00e,inCond:10,outCond:1,flow seq=004
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x34	;id=2739,key=00f,inCond:400,outCond:10,flow seq=004
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=2741,key=010,inCond:0,outCond:0,flow seq=004
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=2743,key=011,inCond:10,outCond:1e,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x4
;  from: 004 ; to: 007 006 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2745,key=000,inCond:0,outCond:0,flow seq=005
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1075, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1075 
	BANKSEL	r0x1028	;id=3754,key=001,inCond:0,outCond:0,flow seq=005
	MOVWF	r0x1028	;id=2752,key=002,inCond:10,outCond:1,flow seq=005,rIdx=r0x1075
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	MOVF	r0x1028,W	;id=3659,key=003,inCond:1,outCond:14,flow seq=005,rIdx=r0x1075
	BTFSC	STATUS,2	;id=2767,key=004,inCond:25,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 01a 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=6, label offset 106
	GOTO	_00212_DS_	;id=2770,key=000,inCond:0,outCond:0,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x5
;  from: 005 ; to: 008 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1073 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x1028
;	.line	80; "../../../lib/format.c"	double weight = pow(10.0l, m);
	MOVF	r0x102A,W	;id=2785,key=000,inCond:1,outCond:14,flow seq=007,rIdx=r0x1073
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVWF	STK00	;id=2789,key=001,inCond:10,outCond:1,flow seq=007
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1074 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVF	r0x1029,W	;id=2794,key=002,inCond:1,outCond:14,flow seq=007,rIdx=r0x1074
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___sint2fs	;id=2796,key=003,inCond:0,outCond:0,flow seq=007
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___sint2fs	;id=2798,key=004,inCond:10,outCond:1e,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 009 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2800,key=000,inCond:0,outCond:0,flow seq=008
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1075, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1078 
	BANKSEL	r0x102B	;id=3760,key=001,inCond:0,outCond:0,flow seq=008
	MOVWF	r0x102B	;id=2807,key=002,inCond:10,outCond:1,flow seq=008,rIdx=r0x1078
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102B's banks
	MOVF	STK00,W	;id=2810,key=003,inCond:1,outCond:14,flow seq=008
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1077 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVWF	r0x102C	;id=2813,key=004,inCond:10,outCond:1,flow seq=008,rIdx=r0x1077
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102B's banks
	MOVF	STK01,W	;id=2816,key=005,inCond:1,outCond:14,flow seq=008
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x102B
	MOVWF	r0x1027	;id=2819,key=006,inCond:10,outCond:1,flow seq=008,rIdx=r0x1076
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102B's banks
	MOVF	STK02,W	;id=2822,key=007,inCond:1,outCond:14,flow seq=008
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x102B
	MOVWF	r0x1028	;id=3660,key=008,inCond:10,outCond:1,flow seq=008,rIdx=r0x1075
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x102B's banks
	MOVWF	STK06	;id=2847,key=009,inCond:10,outCond:1,flow seq=008
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x102B
	MOVF	r0x1027,W	;id=2852,key=00a,inCond:1,outCond:14,flow seq=008,rIdx=r0x1076
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x102B's banks
	MOVWF	STK05	;id=2856,key=00b,inCond:10,outCond:1,flow seq=008
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1077 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVF	r0x102C,W	;id=2861,key=00c,inCond:1,outCond:14,flow seq=008,rIdx=r0x1077
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x102B's banks
	MOVWF	STK04	;id=2865,key=00d,inCond:10,outCond:1,flow seq=008
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1078 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102B
	MOVF	r0x102B,W	;id=2870,key=00e,inCond:1,outCond:14,flow seq=008,rIdx=r0x1078
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x102B's banks
	MOVWF	STK03	;id=2874,key=00f,inCond:10,outCond:1,flow seq=008
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2877,key=010,inCond:400,outCond:10,flow seq=008
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102B's banks
	MOVWF	STK02	;id=2881,key=011,inCond:10,outCond:1,flow seq=008
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2884,key=012,inCond:400,outCond:10,flow seq=008
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102B's banks
	MOVWF	STK01	;id=2888,key=013,inCond:10,outCond:1,flow seq=008
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x20	;id=2891,key=014,inCond:400,outCond:10,flow seq=008
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102B's banks
	MOVWF	STK00	;id=2895,key=015,inCond:10,outCond:1,flow seq=008
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x41	;id=2898,key=016,inCond:400,outCond:10,flow seq=008
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_powf	;id=2900,key=017,inCond:0,outCond:0,flow seq=008
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_powf	;id=2902,key=018,inCond:10,outCond:1e,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x8
;  from: 008 ; to: 00a 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2904,key=000,inCond:0,outCond:0,flow seq=009
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1075, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1078 
	BANKSEL	r0x102B	;id=3778,key=001,inCond:0,outCond:0,flow seq=009
	MOVWF	r0x102B	;id=2911,key=002,inCond:10,outCond:1,flow seq=009,rIdx=r0x1078
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102B's banks
	MOVF	STK00,W	;id=2914,key=003,inCond:1,outCond:14,flow seq=009
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1077 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVWF	r0x102C	;id=2917,key=004,inCond:10,outCond:1,flow seq=009,rIdx=r0x1077
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102B's banks
	MOVF	STK01,W	;id=2920,key=005,inCond:1,outCond:14,flow seq=009
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x102B
	MOVWF	r0x1027	;id=2923,key=006,inCond:10,outCond:1,flow seq=009,rIdx=r0x1076
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102B's banks
	MOVF	STK02,W	;id=2926,key=007,inCond:1,outCond:14,flow seq=009
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x102B
;	.line	81; "../../../lib/format.c"	digit = (short)floor(num / weight);
	MOVWF	r0x1028	;id=3661,key=008,inCond:10,outCond:1,flow seq=009,rIdx=r0x1075
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x102B's banks
	MOVWF	STK06	;id=2953,key=009,inCond:10,outCond:1,flow seq=009
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x102B
	MOVF	r0x1027,W	;id=2958,key=00a,inCond:1,outCond:14,flow seq=009,rIdx=r0x1076
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x102B's banks
	MOVWF	STK05	;id=2962,key=00b,inCond:10,outCond:1,flow seq=009
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1077 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVF	r0x102C,W	;id=2967,key=00c,inCond:1,outCond:14,flow seq=009,rIdx=r0x1077
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x102B's banks
	MOVWF	STK04	;id=2971,key=00d,inCond:10,outCond:1,flow seq=009
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1078 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102B
	MOVF	r0x102B,W	;id=2976,key=00e,inCond:1,outCond:14,flow seq=009,rIdx=r0x1078
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x102B's banks
	MOVWF	STK03	;id=2981,key=00f,inCond:10,outCond:1,flow seq=009
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106F 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x102B
	MOVF	r0x1025,W	;id=2986,key=010,inCond:1,outCond:14,flow seq=009,rIdx=r0x106F
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102B's banks
	MOVWF	STK02	;id=2990,key=011,inCond:10,outCond:1,flow seq=009
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1070 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x102B
	MOVF	r0x1024,W	;id=2995,key=012,inCond:1,outCond:14,flow seq=009,rIdx=r0x1070
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102B's banks
	MOVWF	STK01	;id=2999,key=013,inCond:10,outCond:1,flow seq=009
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1071 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x102B
	MOVF	r0x1023,W	;id=3004,key=014,inCond:1,outCond:14,flow seq=009,rIdx=r0x1071
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102B's banks
	MOVWF	STK00	;id=3008,key=015,inCond:10,outCond:1,flow seq=009
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x102B
	MOVF	r0x1022,W	;id=3013,key=016,inCond:1,outCond:14,flow seq=009,rIdx=r0x1072
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=3015,key=017,inCond:0,outCond:0,flow seq=009
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=3017,key=018,inCond:10,outCond:1e,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 00b 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3019,key=000,inCond:0,outCond:0,flow seq=00a
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1079, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107C 
	BANKSEL	r0x102D	;id=3800,key=001,inCond:0,outCond:0,flow seq=00a
	MOVWF	r0x102D	;id=3026,key=002,inCond:10,outCond:1,flow seq=00a,rIdx=r0x107C
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102D's banks
	MOVF	STK00,W	;id=3029,key=003,inCond:1,outCond:14,flow seq=00a
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107B 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102D
	MOVWF	r0x102E	;id=3032,key=004,inCond:10,outCond:1,flow seq=00a,rIdx=r0x107B
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102D's banks
	MOVF	STK01,W	;id=3035,key=005,inCond:1,outCond:14,flow seq=00a
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107A 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102D
	MOVWF	r0x102F	;id=3038,key=006,inCond:10,outCond:1,flow seq=00a,rIdx=r0x107A
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102D's banks
	MOVF	STK02,W	;id=3041,key=007,inCond:1,outCond:14,flow seq=00a
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1079 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102D
	MOVWF	r0x1030	;id=3662,key=008,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1079
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102D's banks
	MOVWF	STK02	;id=3065,key=009,inCond:10,outCond:1,flow seq=00a
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107A 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102D
	MOVF	r0x102F,W	;id=3070,key=00a,inCond:1,outCond:14,flow seq=00a,rIdx=r0x107A
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102D's banks
	MOVWF	STK01	;id=3074,key=00b,inCond:10,outCond:1,flow seq=00a
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107B 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102D
	MOVF	r0x102E,W	;id=3079,key=00c,inCond:1,outCond:14,flow seq=00a,rIdx=r0x107B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102D's banks
	MOVWF	STK00	;id=3083,key=00d,inCond:10,outCond:1,flow seq=00a
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107C 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102D
	MOVF	r0x102D,W	;id=3088,key=00e,inCond:1,outCond:14,flow seq=00a,rIdx=r0x107C
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_floorf	;id=3090,key=00f,inCond:0,outCond:0,flow seq=00a
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_floorf	;id=3092,key=010,inCond:10,outCond:1e,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00c 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3094,key=000,inCond:0,outCond:0,flow seq=00b
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1079, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107C 
	BANKSEL	r0x102D	;id=3814,key=001,inCond:0,outCond:0,flow seq=00b
	MOVWF	r0x102D	;id=3101,key=002,inCond:10,outCond:1,flow seq=00b,rIdx=r0x107C
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102D's banks
	MOVF	STK00,W	;id=3104,key=003,inCond:1,outCond:14,flow seq=00b
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107B 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102D
	MOVWF	r0x102E	;id=3107,key=004,inCond:10,outCond:1,flow seq=00b,rIdx=r0x107B
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102D's banks
	MOVF	STK01,W	;id=3110,key=005,inCond:1,outCond:14,flow seq=00b
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107A 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102D
	MOVWF	r0x102F	;id=3113,key=006,inCond:10,outCond:1,flow seq=00b,rIdx=r0x107A
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102D's banks
	MOVF	STK02,W	;id=3116,key=007,inCond:1,outCond:14,flow seq=00b
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1079 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102D
	MOVWF	r0x1030	;id=3663,key=008,inCond:10,outCond:1,flow seq=00b,rIdx=r0x1079
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102D's banks
	MOVWF	STK02	;id=3140,key=009,inCond:10,outCond:1,flow seq=00b
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107A 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102D
	MOVF	r0x102F,W	;id=3145,key=00a,inCond:1,outCond:14,flow seq=00b,rIdx=r0x107A
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102D's banks
	MOVWF	STK01	;id=3149,key=00b,inCond:10,outCond:1,flow seq=00b
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107B 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102D
	MOVF	r0x102E,W	;id=3154,key=00c,inCond:1,outCond:14,flow seq=00b,rIdx=r0x107B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102D's banks
	MOVWF	STK00	;id=3158,key=00d,inCond:10,outCond:1,flow seq=00b
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107C 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102D
	MOVF	r0x102D,W	;id=3163,key=00e,inCond:1,outCond:14,flow seq=00b,rIdx=r0x107C
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fs2sint	;id=3165,key=00f,inCond:0,outCond:0,flow seq=00b
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fs2sint	;id=3167,key=010,inCond:10,outCond:1e,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xb
;  from: 00b ; to: 00d 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3169,key=000,inCond:0,outCond:0,flow seq=00c
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1079, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107A 
	BANKSEL	r0x102F	;id=3828,key=001,inCond:0,outCond:0,flow seq=00c
	MOVWF	r0x102F	;id=3176,key=002,inCond:10,outCond:1,flow seq=00c,rIdx=r0x107A
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102F's banks
	MOVF	STK00,W	;id=3179,key=003,inCond:1,outCond:14,flow seq=00c
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1079 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102F
;	.line	82; "../../../lib/format.c"	num -= (digit * weight);
	MOVWF	r0x1030	;id=3664,key=004,inCond:10,outCond:1,flow seq=00c,rIdx=r0x1079
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102F's banks
	MOVWF	STK00	;id=3204,key=005,inCond:10,outCond:1,flow seq=00c
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107A 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	MOVF	r0x102F,W	;id=3209,key=006,inCond:1,outCond:14,flow seq=00c,rIdx=r0x107A
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___sint2fs	;id=3211,key=007,inCond:0,outCond:0,flow seq=00c
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___sint2fs	;id=3213,key=008,inCond:10,outCond:1e,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 00e 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3215,key=000,inCond:0,outCond:0,flow seq=00d
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x107B, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107E 
	BANKSEL	r0x1031	;id=3834,key=001,inCond:0,outCond:0,flow seq=00d
	MOVWF	r0x1031	;id=3222,key=002,inCond:10,outCond:1,flow seq=00d,rIdx=r0x107E
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1031's banks
	MOVF	STK00,W	;id=3225,key=003,inCond:1,outCond:14,flow seq=00d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107D 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x1031
	MOVWF	r0x1032	;id=3228,key=004,inCond:10,outCond:1,flow seq=00d,rIdx=r0x107D
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1031's banks
	MOVF	STK01,W	;id=3231,key=005,inCond:1,outCond:14,flow seq=00d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107C 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x1031
	MOVWF	r0x102D	;id=3234,key=006,inCond:10,outCond:1,flow seq=00d,rIdx=r0x107C
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1031's banks
	MOVF	STK02,W	;id=3237,key=007,inCond:1,outCond:14,flow seq=00d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x107B 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x1031
	MOVWF	r0x102E	;id=3240,key=008,inCond:10,outCond:1,flow seq=00d,rIdx=r0x107B
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1031
	MOVF	r0x1028,W	;id=3259,key=009,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1075
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1031's banks
	MOVWF	STK06	;id=3263,key=00a,inCond:10,outCond:1,flow seq=00d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x1031
	MOVF	r0x1027,W	;id=3268,key=00b,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1076
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1031's banks
	MOVWF	STK05	;id=3272,key=00c,inCond:10,outCond:1,flow seq=00d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1077 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x1031
	MOVF	r0x102C,W	;id=3277,key=00d,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1077
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1031's banks
	MOVWF	STK04	;id=3281,key=00e,inCond:10,outCond:1,flow seq=00d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1078 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x1031
	MOVF	r0x102B,W	;id=3286,key=00f,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1078
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1031's banks
	MOVWF	STK03	;id=3291,key=010,inCond:10,outCond:1,flow seq=00d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107B 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x1031
	MOVF	r0x102E,W	;id=3296,key=011,inCond:1,outCond:14,flow seq=00d,rIdx=r0x107B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1031's banks
	MOVWF	STK02	;id=3300,key=012,inCond:10,outCond:1,flow seq=00d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107C 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x1031
	MOVF	r0x102D,W	;id=3305,key=013,inCond:1,outCond:14,flow seq=00d,rIdx=r0x107C
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1031's banks
	MOVWF	STK01	;id=3309,key=014,inCond:10,outCond:1,flow seq=00d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107D 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x1031
	MOVF	r0x1032,W	;id=3314,key=015,inCond:1,outCond:14,flow seq=00d,rIdx=r0x107D
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1031's banks
	MOVWF	STK00	;id=3318,key=016,inCond:10,outCond:1,flow seq=00d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x107E 
;; BANKOPT2 BANKSEL dropped; r0x1031 present in same bank as r0x1031
	MOVF	r0x1031,W	;id=3323,key=017,inCond:1,outCond:14,flow seq=00d,rIdx=r0x107E
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=3325,key=018,inCond:0,outCond:0,flow seq=00d
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=3327,key=019,inCond:10,outCond:1e,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 00d ; to: 00f 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3329,key=000,inCond:0,outCond:0,flow seq=00e
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1075, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1078 
	BANKSEL	r0x102B	;id=3857,key=001,inCond:0,outCond:0,flow seq=00e
	MOVWF	r0x102B	;id=3336,key=002,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1078
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102B's banks
	MOVF	STK00,W	;id=3339,key=003,inCond:1,outCond:14,flow seq=00e
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1077 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVWF	r0x102C	;id=3342,key=004,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1077
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102B's banks
	MOVF	STK01,W	;id=3345,key=005,inCond:1,outCond:14,flow seq=00e
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x102B
	MOVWF	r0x1027	;id=3348,key=006,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1076
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102B's banks
	MOVF	STK02,W	;id=3351,key=007,inCond:1,outCond:14,flow seq=00e
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x102B
	MOVWF	r0x1028	;id=3665,key=008,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1075
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x102B's banks
	MOVWF	STK06	;id=3377,key=009,inCond:10,outCond:1,flow seq=00e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1076 
;; BANKOPT2 BANKSEL dropped; r0x1027 present in same bank as r0x102B
	MOVF	r0x1027,W	;id=3382,key=00a,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1076
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x102B's banks
	MOVWF	STK05	;id=3386,key=00b,inCond:10,outCond:1,flow seq=00e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1077 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102B
	MOVF	r0x102C,W	;id=3391,key=00c,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1077
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x102B's banks
	MOVWF	STK04	;id=3395,key=00d,inCond:10,outCond:1,flow seq=00e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1078 
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102B
	MOVF	r0x102B,W	;id=3400,key=00e,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1078
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x102B's banks
	MOVWF	STK03	;id=3405,key=00f,inCond:10,outCond:1,flow seq=00e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106F 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x102B
	MOVF	r0x1025,W	;id=3410,key=010,inCond:1,outCond:14,flow seq=00e,rIdx=r0x106F
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x102B's banks
	MOVWF	STK02	;id=3414,key=011,inCond:10,outCond:1,flow seq=00e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1070 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x102B
	MOVF	r0x1024,W	;id=3419,key=012,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1070
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102B's banks
	MOVWF	STK01	;id=3423,key=013,inCond:10,outCond:1,flow seq=00e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1071 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x102B
	MOVF	r0x1023,W	;id=3428,key=014,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1071
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102B's banks
	MOVWF	STK00	;id=3432,key=015,inCond:10,outCond:1,flow seq=00e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x102B
	MOVF	r0x1022,W	;id=3437,key=016,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1072
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fssub	;id=3439,key=017,inCond:0,outCond:0,flow seq=00e
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fssub	;id=3441,key=018,inCond:10,outCond:1e,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xe
;  from: 00e ; to: 010 011 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3443,key=000,inCond:0,outCond:0,flow seq=00f
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x106F, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1072 
	BANKSEL	r0x1022	;id=3879,key=001,inCond:0,outCond:0,flow seq=00f
	MOVWF	r0x1022	;id=3450,key=002,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1072
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1022's banks
	MOVF	STK00,W	;id=3453,key=003,inCond:1,outCond:14,flow seq=00f
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1071 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1022
	MOVWF	r0x1023	;id=3456,key=004,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1071
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1022's banks
	MOVF	STK01,W	;id=3459,key=005,inCond:1,outCond:14,flow seq=00f
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1070 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1022
	MOVWF	r0x1024	;id=3462,key=006,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1070
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1022's banks
	MOVF	STK02,W	;id=3465,key=007,inCond:1,outCond:14,flow seq=00f
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106F 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1022
	MOVWF	r0x1025	;id=3468,key=008,inCond:10,outCond:1,flow seq=00f,rIdx=r0x106F
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1075, size=1, left -=-, size=0, right AOP_REG=r0x1079, size=2
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1079 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x1022
;	.line	83; "../../../lib/format.c"	putchar_ptr((char)('0' + digit));
	MOVF	r0x1030,W	;id=3482,key=009,inCond:1,outCond:14,flow seq=00f,rIdx=r0x1079
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1022
	MOVWF	r0x1028	;id=3485,key=00a,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1075
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1079, size=1, left AOP_REG=r0x1075, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> ../../../../src/pic14/genarith.c:530:genAddLit
	MOVLW	0x30	;id=3501,key=00b,inCond:400,outCond:10,flow seq=00f
;; >>> ../../../../src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1022
	ADDWF	r0x1028,W	;id=3504,key=00c,inCond:11,outCond:1e,flow seq=00f,rIdx=r0x1075
;;; ../../../../src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1079 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x1022
	MOVWF	r0x1030	;id=3666,key=00d,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1079
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1022
	MOVWF	r0x1028	;id=3523,key=00e,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1075
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=21, label offset 106
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_00227_DS_	;id=3536,key=00f,inCond:10,outCond:1e,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 012 
;; ***	popGetLabel  key=22, label offset 106
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00228_DS_	;id=3539,key=000,inCond:0,outCond:0,flow seq=010
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00228_DS_	;id=3541,key=001,inCond:0,outCond:0,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0xf
;  from: 00f ; to: 012 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT3 drop assumptions: PCI with label or call found
_00227_DS_:
	BANKSEL	_putchar_ptr	;id=3893,key=000,inCond:0,outCond:0,flow seq=011
	MOVF	(_putchar_ptr + 1),W	;id=3546,key=001,inCond:1,outCond:14,flow seq=011
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=3894,key=002,inCond:0,outCond:0,flow seq=011
	MOVWF	PCLATH	;id=3548,key=003,inCond:10,outCond:1,flow seq=011
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=3895,key=004,inCond:0,outCond:0,flow seq=011
	MOVF	_putchar_ptr,W	;id=3552,key=005,inCond:1,outCond:14,flow seq=011
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=3896,key=006,inCond:0,outCond:0,flow seq=011
	MOVWF	PCL	;id=3554,key=007,inCond:10,outCond:1,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x10
;  from: 011 010 ; to: 014 013 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=2
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1512:pic14_toBoolean
;;	1097 rIdx = r0x1073 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00228_DS_:
;	.line	84; "../../../lib/format.c"	if(m == 0)
	BANKSEL	r0x102A	;id=3898,key=000,inCond:0,outCond:0,flow seq=012
	MOVF	r0x102A,W	;id=3566,key=001,inCond:1,outCond:14,flow seq=012,rIdx=r0x1073
;; >>> ../../../../src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1074 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x102A
	IORWF	r0x1029,W	;id=3569,key=002,inCond:11,outCond:14,flow seq=012,rIdx=r0x1074
;; >>> ../../../../src/pic14/gen.c:6917:genIfx
	BTFSS	STATUS,2	;id=3571,key=003,inCond:25,outCond:0,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x12
;  from: 012 ; to: 017 
;; >>> ../../../../src/pic14/gen.c:6918:genIfx
;; ***	popGetLabel  key=2, label offset 106
	GOTO	_00208_DS_	;id=3574,key=000,inCond:0,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x12
;  from: 012 ; to: 015 016 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=23, label offset 106
;; BANKOPT3 drop assumptions: PCI with label or call found
;	.line	85; "../../../lib/format.c"	putchar_ptr('.');
	CALL	_00229_DS_	;id=3588,key=000,inCond:10,outCond:1e,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x14
;  from: 014 ; to: 017 
;; ***	popGetLabel  key=24, label offset 106
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00208_DS_	;id=3591,key=000,inCond:0,outCond:0,flow seq=015
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00208_DS_	;id=3593,key=001,inCond:0,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x14
;  from: 014 ; to: 017 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT3 drop assumptions: PCI with label or call found
_00229_DS_:
	BANKSEL	_putchar_ptr	;id=3902,key=000,inCond:0,outCond:0,flow seq=016
	MOVF	(_putchar_ptr + 1),W	;id=3598,key=001,inCond:1,outCond:14,flow seq=016
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=3903,key=002,inCond:0,outCond:0,flow seq=016
	MOVWF	PCLATH	;id=3600,key=003,inCond:10,outCond:1,flow seq=016
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=3904,key=004,inCond:0,outCond:0,flow seq=016
	MOVF	_putchar_ptr,W	;id=3604,key=005,inCond:1,outCond:14,flow seq=016
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=3905,key=006,inCond:0,outCond:0,flow seq=016
	MOVWF	PCL	;id=3606,key=007,inCond:10,outCond:1,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x13
;  from: 016 015 013 ; to: 019 018 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00208_DS_:
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
;; BANKOPT3 drop assumptions: PCI with label or call found
_00208_DS_:
;	.line	86; "../../../lib/format.c"	m--;
	MOVLW	0xff	;id=3628,key=000,inCond:400,outCond:10,flow seq=017
;; >>> ../../../../src/pic14/genarith.c:392:genAddLit
;;	1097 rIdx = r0x1073 
	BANKSEL	r0x102A	;id=3907,key=001,inCond:0,outCond:0,flow seq=017
	ADDWF	r0x102A,F	;id=3631,key=002,inCond:11,outCond:f,flow seq=017,rIdx=r0x1073
;; >>> ../../../../src/pic14/genarith.c:393:genAddLit
	BTFSS	STATUS,0	;id=3633,key=003,inCond:23,outCond:0,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 017 ; to: 019 
;; >>> ../../../../src/pic14/genarith.c:394:genAddLit
;;	1097 rIdx = r0x1074 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x102A
	DECF	r0x1029,F	;id=3636,key=000,inCond:1,outCond:5,flow seq=018,rIdx=r0x1074
;<>Start of new flow, seq=0x19 ancestor = 0x17
;  from: 018 017 ; to: 004 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 106
	GOTO	_00209_DS_	;id=3643,key=000,inCond:0,outCond:0,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x6
;  from: 006 ; to: 
;goto	_00209_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00212_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00212_DS_:
;	.line	88; "../../../lib/format.c"	}
	RETURN		;id=3655,key=000,inCond:10,outCond:e,flow seq=01a
;<>Start of new flow, seq=0x1b
;  from: ; to: 
; exit point of _format_double
;; ***	aopForSym 316
;;	342 size = 2, name =_format_putchar

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2uchar
;   ___uchar2fs
;   ___fsmul
;   ___fssub
;   _00199_DS_
;   _00201_DS_
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2uchar
;   ___uchar2fs
;   ___fsmul
;   ___fssub
;   _00199_DS_
;   _00201_DS_
;22 compiler assigned registers:
;   r0x1033
;   STK00
;   r0x1034
;   STK01
;   r0x1035
;   STK02
;   r0x1036
;   r0x1037
;   r0x1038
;   r0x1039
;   r0x103A
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x103B
;   r0x103C
;   r0x103D
;   r0x103E
;   r0x103F
;   r0x1040
;   r0x1041
;; Starting pCode block
;<>Start of new flow, seq=0x1c ancestor = 0x1c
;  from: ; to: 01d 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=68previous max_key=6 
;;	-----------------------------------------
;;	 function format_float
;;	-----------------------------------------
;_format_float:
S_format__format_float	code
_format_float:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1060, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1063 
;	.line	56; "../../../lib/format.c"	format_float(/*putchar_fn* putchar_ptr,*/ float num) {
	BANKSEL	r0x1033	;id=3910,key=000,inCond:0,outCond:0,flow seq=01c
	MOVWF	r0x1033	;id=1342,key=001,inCond:10,outCond:1,flow seq=01c,rIdx=r0x1063
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1033's banks
	MOVF	STK00,W	;id=1345,key=002,inCond:1,outCond:14,flow seq=01c
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1033
	MOVWF	r0x1034	;id=1348,key=003,inCond:10,outCond:1,flow seq=01c,rIdx=r0x1062
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1033's banks
	MOVF	STK01,W	;id=1351,key=004,inCond:1,outCond:14,flow seq=01c
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1033
	MOVWF	r0x1035	;id=1354,key=005,inCond:10,outCond:1,flow seq=01c,rIdx=r0x1061
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1033's banks
	MOVF	STK02,W	;id=1357,key=006,inCond:1,outCond:14,flow seq=01c
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1033
;	.line	57; "../../../lib/format.c"	short m = (int)log10(num);
	MOVWF	r0x1036	;id=3667,key=007,inCond:10,outCond:1,flow seq=01c,rIdx=r0x1060
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1033's banks
	MOVWF	STK02	;id=1379,key=008,inCond:10,outCond:1,flow seq=01c
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1033
	MOVF	r0x1035,W	;id=1384,key=009,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1033's banks
	MOVWF	STK01	;id=1388,key=00a,inCond:10,outCond:1,flow seq=01c
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1033
	MOVF	r0x1034,W	;id=1393,key=00b,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1062
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1033's banks
	MOVWF	STK00	;id=1397,key=00c,inCond:10,outCond:1,flow seq=01c
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x1033
	MOVF	r0x1033,W	;id=1402,key=00d,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1063
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_log10f	;id=1404,key=00e,inCond:0,outCond:0,flow seq=01c
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_log10f	;id=1406,key=00f,inCond:10,outCond:1e,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1c
;  from: 01c ; to: 01e 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1408,key=000,inCond:0,outCond:0,flow seq=01d
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1064, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1067 
	BANKSEL	r0x1037	;id=3924,key=001,inCond:0,outCond:0,flow seq=01d
	MOVWF	r0x1037	;id=1415,key=002,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1067
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1037's banks
	MOVF	STK00,W	;id=1418,key=003,inCond:1,outCond:14,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1037
	MOVWF	r0x1038	;id=1421,key=004,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1066
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1037's banks
	MOVF	STK01,W	;id=1424,key=005,inCond:1,outCond:14,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1037
	MOVWF	r0x1039	;id=1427,key=006,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1065
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1037's banks
	MOVF	STK02,W	;id=1430,key=007,inCond:1,outCond:14,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1037
	MOVWF	r0x103A	;id=3668,key=008,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1064
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1037's banks
	MOVWF	STK02	;id=1454,key=009,inCond:10,outCond:1,flow seq=01d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1037
	MOVF	r0x1039,W	;id=1459,key=00a,inCond:1,outCond:14,flow seq=01d,rIdx=r0x1065
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1037's banks
	MOVWF	STK01	;id=1463,key=00b,inCond:10,outCond:1,flow seq=01d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1037
	MOVF	r0x1038,W	;id=1468,key=00c,inCond:1,outCond:14,flow seq=01d,rIdx=r0x1066
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1037's banks
	MOVWF	STK00	;id=1472,key=00d,inCond:10,outCond:1,flow seq=01d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1037
	MOVF	r0x1037,W	;id=1477,key=00e,inCond:1,outCond:14,flow seq=01d,rIdx=r0x1067
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fs2sint	;id=1479,key=00f,inCond:0,outCond:0,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fs2sint	;id=1481,key=010,inCond:10,outCond:1e,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 01d ; to: 01f 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1483,key=000,inCond:0,outCond:0,flow seq=01e
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1064, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1065 
	BANKSEL	r0x1039	;id=3938,key=001,inCond:0,outCond:0,flow seq=01e
	MOVWF	r0x1039	;id=1490,key=002,inCond:10,outCond:1,flow seq=01e,rIdx=r0x1065
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1039's banks
	MOVF	STK00,W	;id=1493,key=003,inCond:1,outCond:14,flow seq=01e
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1039
	MOVWF	r0x103A	;id=1496,key=004,inCond:10,outCond:1,flow seq=01e,rIdx=r0x1064
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 034 01e ; to: 020 
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00181_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00181_DS_:
;	.line	61; "../../../lib/format.c"	while(num > 0 + FLT_EPSILON) {
	BANKSEL	r0x1036	;id=3942,key=000,inCond:0,outCond:0,flow seq=01f
	MOVF	r0x1036,W	;id=1520,key=001,inCond:1,outCond:14,flow seq=01f,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1036's banks
	MOVWF	STK06	;id=1524,key=002,inCond:10,outCond:1,flow seq=01f
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1036
	MOVF	r0x1035,W	;id=1529,key=003,inCond:1,outCond:14,flow seq=01f,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1036's banks
	MOVWF	STK05	;id=1533,key=004,inCond:10,outCond:1,flow seq=01f
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1036
	MOVF	r0x1034,W	;id=1538,key=005,inCond:1,outCond:14,flow seq=01f,rIdx=r0x1062
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1036's banks
	MOVWF	STK04	;id=1542,key=006,inCond:10,outCond:1,flow seq=01f
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x1036
	MOVF	r0x1033,W	;id=1547,key=007,inCond:1,outCond:14,flow seq=01f,rIdx=r0x1063
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1036's banks
	MOVWF	STK03	;id=1551,key=008,inCond:10,outCond:1,flow seq=01f
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1554,key=009,inCond:400,outCond:10,flow seq=01f
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1036's banks
	MOVWF	STK02	;id=1558,key=00a,inCond:10,outCond:1,flow seq=01f
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1561,key=00b,inCond:400,outCond:10,flow seq=01f
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1036's banks
	MOVWF	STK01	;id=1565,key=00c,inCond:10,outCond:1,flow seq=01f
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1568,key=00d,inCond:400,outCond:10,flow seq=01f
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1036's banks
	MOVWF	STK00	;id=1572,key=00e,inCond:10,outCond:1,flow seq=01f
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x34	;id=1575,key=00f,inCond:400,outCond:10,flow seq=01f
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=1577,key=010,inCond:0,outCond:0,flow seq=01f
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=1579,key=011,inCond:10,outCond:1e,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1f
;  from: 01f ; to: 022 021 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1581,key=000,inCond:0,outCond:0,flow seq=020
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1066, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1066 
	BANKSEL	r0x1038	;id=3954,key=001,inCond:0,outCond:0,flow seq=020
	MOVWF	r0x1038	;id=1588,key=002,inCond:10,outCond:1,flow seq=020,rIdx=r0x1066
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1038
	MOVF	r0x1038,W	;id=3669,key=003,inCond:1,outCond:14,flow seq=020,rIdx=r0x1066
	BTFSC	STATUS,2	;id=1603,key=004,inCond:25,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 035 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=6, label offset 78
	GOTO	_00184_DS_	;id=1606,key=000,inCond:0,outCond:0,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x20
;  from: 020 ; to: 023 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1038
;	.line	62; "../../../lib/format.c"	float weight = pow(10.0l, m);
	MOVF	r0x103A,W	;id=1621,key=000,inCond:1,outCond:14,flow seq=022,rIdx=r0x1064
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1038's banks
	MOVWF	STK00	;id=1625,key=001,inCond:10,outCond:1,flow seq=022
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVF	r0x1039,W	;id=1630,key=002,inCond:1,outCond:14,flow seq=022,rIdx=r0x1065
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___sint2fs	;id=1632,key=003,inCond:0,outCond:0,flow seq=022
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___sint2fs	;id=1634,key=004,inCond:10,outCond:1e,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 024 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1636,key=000,inCond:0,outCond:0,flow seq=023
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1066, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1069 
	BANKSEL	r0x103B	;id=3960,key=001,inCond:0,outCond:0,flow seq=023
	MOVWF	r0x103B	;id=1643,key=002,inCond:10,outCond:1,flow seq=023,rIdx=r0x1069
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103B's banks
	MOVF	STK00,W	;id=1646,key=003,inCond:1,outCond:14,flow seq=023
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1068 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103B
	MOVWF	r0x103C	;id=1649,key=004,inCond:10,outCond:1,flow seq=023,rIdx=r0x1068
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103B's banks
	MOVF	STK01,W	;id=1652,key=005,inCond:1,outCond:14,flow seq=023
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x103B
	MOVWF	r0x1037	;id=1655,key=006,inCond:10,outCond:1,flow seq=023,rIdx=r0x1067
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103B's banks
	MOVF	STK02,W	;id=1658,key=007,inCond:1,outCond:14,flow seq=023
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x103B
	MOVWF	r0x1038	;id=3670,key=008,inCond:10,outCond:1,flow seq=023,rIdx=r0x1066
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x103B's banks
	MOVWF	STK06	;id=1683,key=009,inCond:10,outCond:1,flow seq=023
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x103B
	MOVF	r0x1037,W	;id=1688,key=00a,inCond:1,outCond:14,flow seq=023,rIdx=r0x1067
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x103B's banks
	MOVWF	STK05	;id=1692,key=00b,inCond:10,outCond:1,flow seq=023
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1068 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103B
	MOVF	r0x103C,W	;id=1697,key=00c,inCond:1,outCond:14,flow seq=023,rIdx=r0x1068
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x103B's banks
	MOVWF	STK04	;id=1701,key=00d,inCond:10,outCond:1,flow seq=023
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1069 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103B
	MOVF	r0x103B,W	;id=1706,key=00e,inCond:1,outCond:14,flow seq=023,rIdx=r0x1069
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x103B's banks
	MOVWF	STK03	;id=1710,key=00f,inCond:10,outCond:1,flow seq=023
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1713,key=010,inCond:400,outCond:10,flow seq=023
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103B's banks
	MOVWF	STK02	;id=1717,key=011,inCond:10,outCond:1,flow seq=023
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1720,key=012,inCond:400,outCond:10,flow seq=023
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103B's banks
	MOVWF	STK01	;id=1724,key=013,inCond:10,outCond:1,flow seq=023
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x20	;id=1727,key=014,inCond:400,outCond:10,flow seq=023
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103B's banks
	MOVWF	STK00	;id=1731,key=015,inCond:10,outCond:1,flow seq=023
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x41	;id=1734,key=016,inCond:400,outCond:10,flow seq=023
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_powf	;id=1736,key=017,inCond:0,outCond:0,flow seq=023
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_powf	;id=1738,key=018,inCond:10,outCond:1e,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x23
;  from: 023 ; to: 025 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1740,key=000,inCond:0,outCond:0,flow seq=024
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1066, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1069 
	BANKSEL	r0x103B	;id=3978,key=001,inCond:0,outCond:0,flow seq=024
	MOVWF	r0x103B	;id=1747,key=002,inCond:10,outCond:1,flow seq=024,rIdx=r0x1069
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103B's banks
	MOVF	STK00,W	;id=1750,key=003,inCond:1,outCond:14,flow seq=024
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1068 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103B
	MOVWF	r0x103C	;id=1753,key=004,inCond:10,outCond:1,flow seq=024,rIdx=r0x1068
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103B's banks
	MOVF	STK01,W	;id=1756,key=005,inCond:1,outCond:14,flow seq=024
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x103B
	MOVWF	r0x1037	;id=1759,key=006,inCond:10,outCond:1,flow seq=024,rIdx=r0x1067
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103B's banks
	MOVF	STK02,W	;id=1762,key=007,inCond:1,outCond:14,flow seq=024
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x103B
;	.line	63; "../../../lib/format.c"	digit = (char)floor(num / weight);
	MOVWF	r0x1038	;id=3671,key=008,inCond:10,outCond:1,flow seq=024,rIdx=r0x1066
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x103B's banks
	MOVWF	STK06	;id=1789,key=009,inCond:10,outCond:1,flow seq=024
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x103B
	MOVF	r0x1037,W	;id=1794,key=00a,inCond:1,outCond:14,flow seq=024,rIdx=r0x1067
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x103B's banks
	MOVWF	STK05	;id=1798,key=00b,inCond:10,outCond:1,flow seq=024
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1068 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103B
	MOVF	r0x103C,W	;id=1803,key=00c,inCond:1,outCond:14,flow seq=024,rIdx=r0x1068
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x103B's banks
	MOVWF	STK04	;id=1807,key=00d,inCond:10,outCond:1,flow seq=024
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1069 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103B
	MOVF	r0x103B,W	;id=1812,key=00e,inCond:1,outCond:14,flow seq=024,rIdx=r0x1069
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x103B's banks
	MOVWF	STK03	;id=1817,key=00f,inCond:10,outCond:1,flow seq=024
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x103B
	MOVF	r0x1036,W	;id=1822,key=010,inCond:1,outCond:14,flow seq=024,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103B's banks
	MOVWF	STK02	;id=1826,key=011,inCond:10,outCond:1,flow seq=024
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x103B
	MOVF	r0x1035,W	;id=1831,key=012,inCond:1,outCond:14,flow seq=024,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103B's banks
	MOVWF	STK01	;id=1835,key=013,inCond:10,outCond:1,flow seq=024
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x103B
	MOVF	r0x1034,W	;id=1840,key=014,inCond:1,outCond:14,flow seq=024,rIdx=r0x1062
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103B's banks
	MOVWF	STK00	;id=1844,key=015,inCond:10,outCond:1,flow seq=024
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x103B
	MOVF	r0x1033,W	;id=1849,key=016,inCond:1,outCond:14,flow seq=024,rIdx=r0x1063
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=1851,key=017,inCond:0,outCond:0,flow seq=024
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=1853,key=018,inCond:10,outCond:1e,flow seq=024
;<>Start of new flow, seq=0x25 ancestor = 0x24
;  from: 024 ; to: 026 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1855,key=000,inCond:0,outCond:0,flow seq=025
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x106A, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106D 
	BANKSEL	r0x103D	;id=4000,key=001,inCond:0,outCond:0,flow seq=025
	MOVWF	r0x103D	;id=1862,key=002,inCond:10,outCond:1,flow seq=025,rIdx=r0x106D
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103D's banks
	MOVF	STK00,W	;id=1865,key=003,inCond:1,outCond:14,flow seq=025
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106C 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVWF	r0x103E	;id=1868,key=004,inCond:10,outCond:1,flow seq=025,rIdx=r0x106C
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103D's banks
	MOVF	STK01,W	;id=1871,key=005,inCond:1,outCond:14,flow seq=025
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106B 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103D
	MOVWF	r0x103F	;id=1874,key=006,inCond:10,outCond:1,flow seq=025,rIdx=r0x106B
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103D's banks
	MOVF	STK02,W	;id=1877,key=007,inCond:1,outCond:14,flow seq=025
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106A 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x103D
	MOVWF	r0x1040	;id=3672,key=008,inCond:10,outCond:1,flow seq=025,rIdx=r0x106A
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103D's banks
	MOVWF	STK02	;id=1901,key=009,inCond:10,outCond:1,flow seq=025
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106B 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103D
	MOVF	r0x103F,W	;id=1906,key=00a,inCond:1,outCond:14,flow seq=025,rIdx=r0x106B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103D's banks
	MOVWF	STK01	;id=1910,key=00b,inCond:10,outCond:1,flow seq=025
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106C 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVF	r0x103E,W	;id=1915,key=00c,inCond:1,outCond:14,flow seq=025,rIdx=r0x106C
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103D's banks
	MOVWF	STK00	;id=1919,key=00d,inCond:10,outCond:1,flow seq=025
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106D 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	MOVF	r0x103D,W	;id=1924,key=00e,inCond:1,outCond:14,flow seq=025,rIdx=r0x106D
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_floorf	;id=1926,key=00f,inCond:0,outCond:0,flow seq=025
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_floorf	;id=1928,key=010,inCond:10,outCond:1e,flow seq=025
;<>Start of new flow, seq=0x26 ancestor = 0x25
;  from: 025 ; to: 027 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1930,key=000,inCond:0,outCond:0,flow seq=026
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x106A, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106D 
	BANKSEL	r0x103D	;id=4014,key=001,inCond:0,outCond:0,flow seq=026
	MOVWF	r0x103D	;id=1937,key=002,inCond:10,outCond:1,flow seq=026,rIdx=r0x106D
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103D's banks
	MOVF	STK00,W	;id=1940,key=003,inCond:1,outCond:14,flow seq=026
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106C 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVWF	r0x103E	;id=1943,key=004,inCond:10,outCond:1,flow seq=026,rIdx=r0x106C
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103D's banks
	MOVF	STK01,W	;id=1946,key=005,inCond:1,outCond:14,flow seq=026
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106B 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103D
	MOVWF	r0x103F	;id=1949,key=006,inCond:10,outCond:1,flow seq=026,rIdx=r0x106B
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103D's banks
	MOVF	STK02,W	;id=1952,key=007,inCond:1,outCond:14,flow seq=026
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106A 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x103D
	MOVWF	r0x1040	;id=3673,key=008,inCond:10,outCond:1,flow seq=026,rIdx=r0x106A
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103D's banks
	MOVWF	STK02	;id=1976,key=009,inCond:10,outCond:1,flow seq=026
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106B 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103D
	MOVF	r0x103F,W	;id=1981,key=00a,inCond:1,outCond:14,flow seq=026,rIdx=r0x106B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103D's banks
	MOVWF	STK01	;id=1985,key=00b,inCond:10,outCond:1,flow seq=026
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106C 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVF	r0x103E,W	;id=1990,key=00c,inCond:1,outCond:14,flow seq=026,rIdx=r0x106C
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103D's banks
	MOVWF	STK00	;id=1994,key=00d,inCond:10,outCond:1,flow seq=026
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106D 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	MOVF	r0x103D,W	;id=1999,key=00e,inCond:1,outCond:14,flow seq=026,rIdx=r0x106D
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fs2uchar	;id=2001,key=00f,inCond:0,outCond:0,flow seq=026
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fs2uchar	;id=2003,key=010,inCond:10,outCond:1e,flow seq=026
;<>Start of new flow, seq=0x27 ancestor = 0x26
;  from: 026 ; to: 028 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2005,key=000,inCond:0,outCond:0,flow seq=027
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x106A, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106A 
;	.line	64; "../../../lib/format.c"	num -= (digit * weight);
	BANKSEL	r0x1040	;id=4028,key=001,inCond:0,outCond:0,flow seq=027
	MOVWF	r0x1040	;id=3674,key=002,inCond:10,outCond:1,flow seq=027,rIdx=r0x106A
	PAGESEL	___uchar2fs	;id=2032,key=003,inCond:0,outCond:0,flow seq=027
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___uchar2fs	;id=2034,key=004,inCond:10,outCond:1e,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 027 ; to: 029 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2036,key=000,inCond:0,outCond:0,flow seq=028
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x106B, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106E 
	BANKSEL	r0x1041	;id=4030,key=001,inCond:0,outCond:0,flow seq=028
	MOVWF	r0x1041	;id=2043,key=002,inCond:10,outCond:1,flow seq=028,rIdx=r0x106E
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1041's banks
	MOVF	STK00,W	;id=2046,key=003,inCond:1,outCond:14,flow seq=028
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106D 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x1041
	MOVWF	r0x103D	;id=2049,key=004,inCond:10,outCond:1,flow seq=028,rIdx=r0x106D
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1041's banks
	MOVF	STK01,W	;id=2052,key=005,inCond:1,outCond:14,flow seq=028
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106C 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x1041
	MOVWF	r0x103E	;id=2055,key=006,inCond:10,outCond:1,flow seq=028,rIdx=r0x106C
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1041's banks
	MOVF	STK02,W	;id=2058,key=007,inCond:1,outCond:14,flow seq=028
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x106B 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x1041
	MOVWF	r0x103F	;id=2061,key=008,inCond:10,outCond:1,flow seq=028,rIdx=r0x106B
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1041
	MOVF	r0x1038,W	;id=2080,key=009,inCond:1,outCond:14,flow seq=028,rIdx=r0x1066
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1041's banks
	MOVWF	STK06	;id=2084,key=00a,inCond:10,outCond:1,flow seq=028
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1041
	MOVF	r0x1037,W	;id=2089,key=00b,inCond:1,outCond:14,flow seq=028,rIdx=r0x1067
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1041's banks
	MOVWF	STK05	;id=2093,key=00c,inCond:10,outCond:1,flow seq=028
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1068 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x1041
	MOVF	r0x103C,W	;id=2098,key=00d,inCond:1,outCond:14,flow seq=028,rIdx=r0x1068
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1041's banks
	MOVWF	STK04	;id=2102,key=00e,inCond:10,outCond:1,flow seq=028
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1069 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1041
	MOVF	r0x103B,W	;id=2107,key=00f,inCond:1,outCond:14,flow seq=028,rIdx=r0x1069
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1041's banks
	MOVWF	STK03	;id=2112,key=010,inCond:10,outCond:1,flow seq=028
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106B 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x1041
	MOVF	r0x103F,W	;id=2117,key=011,inCond:1,outCond:14,flow seq=028,rIdx=r0x106B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1041's banks
	MOVWF	STK02	;id=2121,key=012,inCond:10,outCond:1,flow seq=028
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106C 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x1041
	MOVF	r0x103E,W	;id=2126,key=013,inCond:1,outCond:14,flow seq=028,rIdx=r0x106C
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1041's banks
	MOVWF	STK01	;id=2130,key=014,inCond:10,outCond:1,flow seq=028
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106D 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x1041
	MOVF	r0x103D,W	;id=2135,key=015,inCond:1,outCond:14,flow seq=028,rIdx=r0x106D
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1041's banks
	MOVWF	STK00	;id=2139,key=016,inCond:10,outCond:1,flow seq=028
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x106E 
;; BANKOPT2 BANKSEL dropped; r0x1041 present in same bank as r0x1041
	MOVF	r0x1041,W	;id=2144,key=017,inCond:1,outCond:14,flow seq=028,rIdx=r0x106E
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=2146,key=018,inCond:0,outCond:0,flow seq=028
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=2148,key=019,inCond:10,outCond:1e,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x28
;  from: 028 ; to: 02a 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2150,key=000,inCond:0,outCond:0,flow seq=029
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1066, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1069 
	BANKSEL	r0x103B	;id=4053,key=001,inCond:0,outCond:0,flow seq=029
	MOVWF	r0x103B	;id=2157,key=002,inCond:10,outCond:1,flow seq=029,rIdx=r0x1069
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103B's banks
	MOVF	STK00,W	;id=2160,key=003,inCond:1,outCond:14,flow seq=029
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1068 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103B
	MOVWF	r0x103C	;id=2163,key=004,inCond:10,outCond:1,flow seq=029,rIdx=r0x1068
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103B's banks
	MOVF	STK01,W	;id=2166,key=005,inCond:1,outCond:14,flow seq=029
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x103B
	MOVWF	r0x1037	;id=2169,key=006,inCond:10,outCond:1,flow seq=029,rIdx=r0x1067
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103B's banks
	MOVF	STK02,W	;id=2172,key=007,inCond:1,outCond:14,flow seq=029
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x103B
	MOVWF	r0x1038	;id=3675,key=008,inCond:10,outCond:1,flow seq=029,rIdx=r0x1066
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x103B's banks
	MOVWF	STK06	;id=2198,key=009,inCond:10,outCond:1,flow seq=029
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x103B
	MOVF	r0x1037,W	;id=2203,key=00a,inCond:1,outCond:14,flow seq=029,rIdx=r0x1067
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x103B's banks
	MOVWF	STK05	;id=2207,key=00b,inCond:10,outCond:1,flow seq=029
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1068 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103B
	MOVF	r0x103C,W	;id=2212,key=00c,inCond:1,outCond:14,flow seq=029,rIdx=r0x1068
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x103B's banks
	MOVWF	STK04	;id=2216,key=00d,inCond:10,outCond:1,flow seq=029
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1069 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103B
	MOVF	r0x103B,W	;id=2221,key=00e,inCond:1,outCond:14,flow seq=029,rIdx=r0x1069
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x103B's banks
	MOVWF	STK03	;id=2226,key=00f,inCond:10,outCond:1,flow seq=029
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x103B
	MOVF	r0x1036,W	;id=2231,key=010,inCond:1,outCond:14,flow seq=029,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103B's banks
	MOVWF	STK02	;id=2235,key=011,inCond:10,outCond:1,flow seq=029
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x103B
	MOVF	r0x1035,W	;id=2240,key=012,inCond:1,outCond:14,flow seq=029,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103B's banks
	MOVWF	STK01	;id=2244,key=013,inCond:10,outCond:1,flow seq=029
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x103B
	MOVF	r0x1034,W	;id=2249,key=014,inCond:1,outCond:14,flow seq=029,rIdx=r0x1062
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103B's banks
	MOVWF	STK00	;id=2253,key=015,inCond:10,outCond:1,flow seq=029
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x103B
	MOVF	r0x1033,W	;id=2258,key=016,inCond:1,outCond:14,flow seq=029,rIdx=r0x1063
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	___fssub	;id=2260,key=017,inCond:0,outCond:0,flow seq=029
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fssub	;id=2262,key=018,inCond:10,outCond:1e,flow seq=029
;<>Start of new flow, seq=0x2a ancestor = 0x29
;  from: 029 ; to: 02b 02c 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2264,key=000,inCond:0,outCond:0,flow seq=02a
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1060, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1063 
	BANKSEL	r0x1033	;id=4075,key=001,inCond:0,outCond:0,flow seq=02a
	MOVWF	r0x1033	;id=2271,key=002,inCond:10,outCond:1,flow seq=02a,rIdx=r0x1063
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1033's banks
	MOVF	STK00,W	;id=2274,key=003,inCond:1,outCond:14,flow seq=02a
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1033
	MOVWF	r0x1034	;id=2277,key=004,inCond:10,outCond:1,flow seq=02a,rIdx=r0x1062
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1033's banks
	MOVF	STK01,W	;id=2280,key=005,inCond:1,outCond:14,flow seq=02a
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1033
	MOVWF	r0x1035	;id=2283,key=006,inCond:10,outCond:1,flow seq=02a,rIdx=r0x1061
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1033's banks
	MOVF	STK02,W	;id=2286,key=007,inCond:1,outCond:14,flow seq=02a
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1033
	MOVWF	r0x1036	;id=2289,key=008,inCond:10,outCond:1,flow seq=02a,rIdx=r0x1060
;; 	2188 left AOP_REG
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1066, size=1, left -=-, size=0, right AOP_REG=r0x106A, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x106A 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x1033
;	.line	65; "../../../lib/format.c"	putchar_ptr('0' + digit);
	MOVF	r0x1040,W	;id=2303,key=009,inCond:1,outCond:14,flow seq=02a,rIdx=r0x106A
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1033
	MOVWF	r0x1038	;id=2306,key=00a,inCond:10,outCond:1,flow seq=02a,rIdx=r0x1066
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x106A, size=1, left AOP_REG=r0x1066, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> ../../../../src/pic14/genarith.c:530:genAddLit
	MOVLW	0x30	;id=2322,key=00b,inCond:400,outCond:10,flow seq=02a
;; >>> ../../../../src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1033
	ADDWF	r0x1038,W	;id=2325,key=00c,inCond:11,outCond:1e,flow seq=02a,rIdx=r0x1066
;;; ../../../../src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x106A 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x1033
	MOVWF	r0x1040	;id=2329,key=00d,inCond:10,outCond:1,flow seq=02a,rIdx=r0x106A
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=21, label offset 78
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_00199_DS_	;id=2344,key=00e,inCond:10,outCond:1e,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x2a
;  from: 02a ; to: 02d 
;; ***	popGetLabel  key=22, label offset 78
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00200_DS_	;id=2347,key=000,inCond:0,outCond:0,flow seq=02b
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00200_DS_	;id=2349,key=001,inCond:0,outCond:0,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2a
;  from: 02a ; to: 02d 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT3 drop assumptions: PCI with label or call found
_00199_DS_:
	BANKSEL	_putchar_ptr	;id=4088,key=000,inCond:0,outCond:0,flow seq=02c
	MOVF	(_putchar_ptr + 1),W	;id=2354,key=001,inCond:1,outCond:14,flow seq=02c
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=4089,key=002,inCond:0,outCond:0,flow seq=02c
	MOVWF	PCLATH	;id=2356,key=003,inCond:10,outCond:1,flow seq=02c
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=4090,key=004,inCond:0,outCond:0,flow seq=02c
	MOVF	_putchar_ptr,W	;id=2360,key=005,inCond:1,outCond:14,flow seq=02c
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=4091,key=006,inCond:0,outCond:0,flow seq=02c
	MOVWF	PCL	;id=2362,key=007,inCond:10,outCond:1,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2b
;  from: 02c 02b ; to: 02f 02e 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=2
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1512:pic14_toBoolean
;;	1097 rIdx = r0x1064 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00200_DS_:
;	.line	66; "../../../lib/format.c"	if(m == 0)
	BANKSEL	r0x103A	;id=4093,key=000,inCond:0,outCond:0,flow seq=02d
	MOVF	r0x103A,W	;id=2374,key=001,inCond:1,outCond:14,flow seq=02d,rIdx=r0x1064
;; >>> ../../../../src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x103A
	IORWF	r0x1039,W	;id=2377,key=002,inCond:11,outCond:14,flow seq=02d,rIdx=r0x1065
;; >>> ../../../../src/pic14/gen.c:6917:genIfx
	BTFSS	STATUS,2	;id=2379,key=003,inCond:25,outCond:0,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 032 
;; >>> ../../../../src/pic14/gen.c:6918:genIfx
;; ***	popGetLabel  key=2, label offset 78
	GOTO	_00180_DS_	;id=2382,key=000,inCond:0,outCond:0,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2d
;  from: 02d ; to: 030 031 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=23, label offset 78
;; BANKOPT3 drop assumptions: PCI with label or call found
;	.line	67; "../../../lib/format.c"	putchar_ptr('.');
	CALL	_00201_DS_	;id=2396,key=000,inCond:10,outCond:1e,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2f
;  from: 02f ; to: 032 
;; ***	popGetLabel  key=24, label offset 78
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00180_DS_	;id=2399,key=000,inCond:0,outCond:0,flow seq=030
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00180_DS_	;id=2401,key=001,inCond:0,outCond:0,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x2f
;  from: 02f ; to: 032 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT3 drop assumptions: PCI with label or call found
_00201_DS_:
	BANKSEL	_putchar_ptr	;id=4097,key=000,inCond:0,outCond:0,flow seq=031
	MOVF	(_putchar_ptr + 1),W	;id=2406,key=001,inCond:1,outCond:14,flow seq=031
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=4098,key=002,inCond:0,outCond:0,flow seq=031
	MOVWF	PCLATH	;id=2408,key=003,inCond:10,outCond:1,flow seq=031
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=4099,key=004,inCond:0,outCond:0,flow seq=031
	MOVF	_putchar_ptr,W	;id=2412,key=005,inCond:1,outCond:14,flow seq=031
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=4100,key=006,inCond:0,outCond:0,flow seq=031
	MOVWF	PCL	;id=2414,key=007,inCond:10,outCond:1,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x2e
;  from: 031 030 02e ; to: 034 033 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00180_DS_:
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
;; BANKOPT3 drop assumptions: PCI with label or call found
_00180_DS_:
;	.line	68; "../../../lib/format.c"	m--;
	MOVLW	0xff	;id=2436,key=000,inCond:400,outCond:10,flow seq=032
;; >>> ../../../../src/pic14/genarith.c:392:genAddLit
;;	1097 rIdx = r0x1064 
	BANKSEL	r0x103A	;id=4102,key=001,inCond:0,outCond:0,flow seq=032
	ADDWF	r0x103A,F	;id=2439,key=002,inCond:11,outCond:f,flow seq=032,rIdx=r0x1064
;; >>> ../../../../src/pic14/genarith.c:393:genAddLit
	BTFSS	STATUS,0	;id=2441,key=003,inCond:23,outCond:0,flow seq=032
;<>Start of new flow, seq=0x33 ancestor = 0x32
;  from: 032 ; to: 034 
;; >>> ../../../../src/pic14/genarith.c:394:genAddLit
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x103A
	DECF	r0x1039,F	;id=2444,key=000,inCond:1,outCond:5,flow seq=033,rIdx=r0x1065
;<>Start of new flow, seq=0x34 ancestor = 0x32
;  from: 033 032 ; to: 01f 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 78
	GOTO	_00181_DS_	;id=2451,key=000,inCond:0,outCond:0,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x21
;  from: 021 ; to: 
;goto	_00181_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00184_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00184_DS_:
;	.line	70; "../../../lib/format.c"	}
	RETURN		;id=2463,key=000,inCond:10,outCond:e,flow seq=035
;<>Start of new flow, seq=0x36
;  from: ; to: 
; exit point of _format_float
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _00171_DS_
;   _00173_DS_
;   _format_number
;   _format_number
;   _00171_DS_
;   _00173_DS_
;   _format_number
;   _format_number
;18 compiler assigned registers:
;   r0x1051
;   STK00
;   r0x1052
;   STK01
;   r0x1053
;   STK02
;   r0x1054
;   r0x1055
;   r0x1056
;   r0x1057
;   r0x1058
;   r0x1059
;   r0x105A
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x105B
;; Starting pCode block
;<>Start of new flow, seq=0x37 ancestor = 0x37
;  from: ; to: 038 039 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=8previous max_key=56 
;;	-----------------------------------------
;;	 function format_xint32
;;	-----------------------------------------
;_format_xint32:
S_format__format_xint32	code
_format_xint32:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1056, size=4, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
;	.line	48; "../../../lib/format.c"	format_xint32(/*putchar_fn* putchar,*/ uint32_t x) {
	BANKSEL	r0x1051	;id=4105,key=000,inCond:0,outCond:0,flow seq=037
	MOVWF	r0x1051	;id=1020,key=001,inCond:10,outCond:1,flow seq=037,rIdx=r0x1059
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1051's banks
	MOVF	STK00,W	;id=1023,key=002,inCond:1,outCond:14,flow seq=037
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1052 present in same bank as r0x1051
	MOVWF	r0x1052	;id=1026,key=003,inCond:10,outCond:1,flow seq=037,rIdx=r0x1058
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1051's banks
	MOVF	STK01,W	;id=1029,key=004,inCond:1,outCond:14,flow seq=037
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1053 present in same bank as r0x1051
	MOVWF	r0x1053	;id=1032,key=005,inCond:10,outCond:1,flow seq=037,rIdx=r0x1057
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1051's banks
	MOVF	STK02,W	;id=1035,key=006,inCond:1,outCond:14,flow seq=037
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1054 present in same bank as r0x1051
	MOVWF	r0x1054	;id=1038,key=007,inCond:10,outCond:1,flow seq=037,rIdx=r0x1056
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=3, label offset 68
;; BANKOPT3 drop assumptions: PCI with label or call found
;	.line	49; "../../../lib/format.c"	putchar_ptr('0');
	CALL	_00171_DS_	;id=1052,key=008,inCond:10,outCond:1e,flow seq=037
;<>Start of new flow, seq=0x38 ancestor = 0x37
;  from: 037 ; to: 03a 
;; ***	popGetLabel  key=4, label offset 68
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00172_DS_	;id=1055,key=000,inCond:0,outCond:0,flow seq=038
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00172_DS_	;id=1057,key=001,inCond:0,outCond:0,flow seq=038
;<>Start of new flow, seq=0x39 ancestor = 0x37
;  from: 037 ; to: 03a 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT3 drop assumptions: PCI with label or call found
_00171_DS_:
	BANKSEL	_putchar_ptr	;id=4114,key=000,inCond:0,outCond:0,flow seq=039
	MOVF	(_putchar_ptr + 1),W	;id=1062,key=001,inCond:1,outCond:14,flow seq=039
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=4115,key=002,inCond:0,outCond:0,flow seq=039
	MOVWF	PCLATH	;id=1064,key=003,inCond:10,outCond:1,flow seq=039
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=4116,key=004,inCond:0,outCond:0,flow seq=039
	MOVF	_putchar_ptr,W	;id=1068,key=005,inCond:1,outCond:14,flow seq=039
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=4117,key=006,inCond:0,outCond:0,flow seq=039
	MOVWF	PCL	;id=1070,key=007,inCond:10,outCond:1,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x38
;  from: 039 038 ; to: 03b 03c 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=5, label offset 68
;; BANKOPT3 drop assumptions: PCI with label or call found
_00172_DS_:
;	.line	50; "../../../lib/format.c"	putchar_ptr('x');
	CALL	_00173_DS_	;id=1087,key=000,inCond:10,outCond:1e,flow seq=03a
;<>Start of new flow, seq=0x3b ancestor = 0x3a
;  from: 03a ; to: 03d 
;; ***	popGetLabel  key=6, label offset 68
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00174_DS_	;id=1090,key=000,inCond:0,outCond:0,flow seq=03b
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00174_DS_	;id=1092,key=001,inCond:0,outCond:0,flow seq=03b
;<>Start of new flow, seq=0x3c ancestor = 0x3a
;  from: 03a ; to: 03d 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT3 drop assumptions: PCI with label or call found
_00173_DS_:
	BANKSEL	_putchar_ptr	;id=4120,key=000,inCond:0,outCond:0,flow seq=03c
	MOVF	(_putchar_ptr + 1),W	;id=1097,key=001,inCond:1,outCond:14,flow seq=03c
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=4121,key=002,inCond:0,outCond:0,flow seq=03c
	MOVWF	PCLATH	;id=1099,key=003,inCond:10,outCond:1,flow seq=03c
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=4122,key=004,inCond:0,outCond:0,flow seq=03c
	MOVF	_putchar_ptr,W	;id=1103,key=005,inCond:1,outCond:14,flow seq=03c
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=4123,key=006,inCond:0,outCond:0,flow seq=03c
	MOVWF	PCL	;id=1105,key=007,inCond:10,outCond:1,flow seq=03c
;<>Start of new flow, seq=0x3d ancestor = 0x3b
;  from: 03c 03b ; to: 03e 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;;; ../../../../src/pic14/gen.c:5150:movLeft2Result *{*
;; ***	movLeft2Result  5151
;; >>> ../../../../src/pic14/gen.c:5156:movLeft2Result
;;	1097 rIdx = r0x1058 
;;113	MOVF	r0x1052,W
;; >>> ../../../../src/pic14/gen.c:5157:movLeft2Result
;;	1097 rIdx = r0x105A 
;;; ../../../../src/pic14/gen.c:5150:movLeft2Result *{*
;; ***	movLeft2Result  5151
;; >>> ../../../../src/pic14/gen.c:5156:movLeft2Result
;;	1097 rIdx = r0x1059 
;;115	MOVF	r0x1051,W
;; >>> ../../../../src/pic14/gen.c:5157:movLeft2Result
;;	1097 rIdx = r0x105B 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x105C 
;;1	CLRF	r0x1057
;; >>> ../../../../src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x105D 
;;1	CLRF	r0x1058
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x105E, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=4
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x105A 
;;101	MOVF	r0x1055,W
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x105E 
;;99	MOVWF	r0x1059
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x105B 
;;104	MOVF	r0x1056,W
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x105F 
;;102	MOVWF	r0x105A
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	2120 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00174_DS_:
;	.line	51; "../../../lib/format.c"	format_number((uint16_t)(x >> 16), 16, -4);
	MOVLW	0xfc	;id=1171,key=000,inCond:400,outCond:10,flow seq=03d
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of (null)'s banks
	MOVWF	STK06	;id=1175,key=001,inCond:10,outCond:1,flow seq=03d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x10	;id=1178,key=002,inCond:400,outCond:10,flow seq=03d
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of (null)'s banks
	MOVWF	STK05	;id=1183,key=003,inCond:10,outCond:1,flow seq=03d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;;100	MOVF	r0x1059,W
;;112	MOVF	r0x1055,W
	BANKSEL	r0x1052	;id=4127,key=004,inCond:0,outCond:0,flow seq=03d
	MOVF	r0x1052,W	;id=3701,key=005,inCond:1,outCond:14,flow seq=03d,rIdx=r0x1058
;; BANKOPT2 BANKSEL dropped; r0x1055 present in same bank as r0x1052
	MOVWF	r0x1055	;id=1122,key=006,inCond:10,outCond:1,flow seq=03d,rIdx=r0x105A
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1052's banks
	MOVWF	STK04	;id=1192,key=007,inCond:10,outCond:1,flow seq=03d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
;;103	MOVF	r0x105A,W
;;114	MOVF	r0x1056,W
;; BANKOPT2 BANKSEL dropped; r0x1051 present in same bank as r0x1052
	MOVF	r0x1051,W	;id=3704,key=008,inCond:1,outCond:14,flow seq=03d,rIdx=r0x1059
;; BANKOPT2 BANKSEL dropped; r0x1056 present in same bank as r0x1052
	MOVWF	r0x1056	;id=1130,key=009,inCond:10,outCond:1,flow seq=03d,rIdx=r0x105B
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1052's banks
	MOVWF	STK03	;id=1201,key=00a,inCond:10,outCond:1,flow seq=03d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x78	;id=1204,key=00b,inCond:400,outCond:10,flow seq=03d
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1052's banks
	MOVWF	STK02	;id=1208,key=00c,inCond:10,outCond:1,flow seq=03d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x30	;id=1211,key=00d,inCond:400,outCond:10,flow seq=03d
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1052's banks
	MOVWF	STK01	;id=1216,key=00e,inCond:10,outCond:1,flow seq=03d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x105B present in same bank as r0x1052
	MOVF	r0x105B,W	;id=1221,key=00f,inCond:1,outCond:14,flow seq=03d,rIdx=r0x1049
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1052's banks
	MOVWF	STK00	;id=1226,key=010,inCond:10,outCond:1,flow seq=03d
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x105B present in same bank as r0x1052
	MOVF	r0x105B,W	;id=1231,key=011,inCond:1,outCond:14,flow seq=03d,rIdx=r0x1049
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_format_number	;id=1233,key=012,inCond:0,outCond:0,flow seq=03d
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_format_number	;id=1235,key=013,inCond:10,outCond:1e,flow seq=03d
;<>Start of new flow, seq=0x3e ancestor = 0x3d
;  from: 03d ; to: 03f 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1237,key=000,inCond:0,outCond:0,flow seq=03e
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	576
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x105A, size=2, left -=-, size=0, right AOP_REG=r0x1056, size=4
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1056 
;;109	MOVF	r0x1054,W
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x105A 
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1057 
;;111	MOVF	r0x1053,W
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x105B 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	2120 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
;	.line	52; "../../../lib/format.c"	format_number((uint16_t)(x & 0xffff), 16, -4);
	MOVLW	0xfc	;id=1272,key=001,inCond:400,outCond:10,flow seq=03e
;; 	2120 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of (null)'s banks
	MOVWF	STK02	;id=1276,key=002,inCond:10,outCond:1,flow seq=03e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x10	;id=1279,key=003,inCond:400,outCond:10,flow seq=03e
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of (null)'s banks
	MOVWF	STK01	;id=1284,key=004,inCond:10,outCond:1,flow seq=03e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;;108	MOVF	r0x1055,W
	BANKSEL	r0x1054	;id=4141,key=005,inCond:0,outCond:0,flow seq=03e
	MOVF	r0x1054,W	;id=3695,key=006,inCond:1,outCond:14,flow seq=03e,rIdx=r0x1056
;; BANKOPT2 BANKSEL dropped; r0x1055 present in same bank as r0x1054
	MOVWF	r0x1055	;id=1253,key=007,inCond:10,outCond:1,flow seq=03e,rIdx=r0x105A
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1054's banks
	MOVWF	STK00	;id=1293,key=008,inCond:10,outCond:1,flow seq=03e
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;;110	MOVF	r0x1056,W
;; BANKOPT2 BANKSEL dropped; r0x1053 present in same bank as r0x1054
	MOVF	r0x1053,W	;id=3698,key=009,inCond:1,outCond:14,flow seq=03e,rIdx=r0x1057
;; BANKOPT2 BANKSEL dropped; r0x1056 present in same bank as r0x1054
	MOVWF	r0x1056	;id=1259,key=00a,inCond:10,outCond:1,flow seq=03e,rIdx=r0x105B
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_format_number	;id=1300,key=00b,inCond:0,outCond:0,flow seq=03e
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_format_number	;id=1302,key=00c,inCond:10,outCond:1e,flow seq=03e
;<>Start of new flow, seq=0x3f ancestor = 0x3e
;  from: 03e ; to: 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1304,key=000,inCond:0,outCond:0,flow seq=03f
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00169_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	53; "../../../lib/format.c"	}
	RETURN		;id=1317,key=001,inCond:10,outCond:e,flow seq=03f
;<>Start of new flow, seq=0x40
;  from: ; to: 
; exit point of _format_xint32
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __moduint
;   __divuint
;   _00160_DS_
;   _00163_DS_
;   __moduint
;   __divuint
;   _00160_DS_
;   _00163_DS_
;18 compiler assigned registers:
;   r0x1042
;   STK00
;   r0x1043
;   STK01
;   r0x1044
;   STK02
;   r0x1045
;   r0x105B
;   r0x1047
;   r0x1048
;   r0x1049
;   r0x104A
;   r0x104B
;   r0x104C
;   r0x104D
;   r0x104E
;   r0x104F
;   r0x1050
;; Starting pCode block
;<>Start of new flow, seq=0x41 ancestor = 0x41
;  from: ; to: 043 042 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=0 
;;	-----------------------------------------
;;	 function format_number
;;	-----------------------------------------
;_format_number:
S_format__format_number	code
_format_number:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;	.line	14; "../../../lib/format.c"	format_number(/*putchar_fn* putchar_ptr,*/ uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
	BANKSEL	r0x1042	;id=4147,key=000,inCond:0,outCond:0,flow seq=041
	MOVWF	r0x1042	;id=155,key=001,inCond:10,outCond:1,flow seq=041,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1042's banks
	MOVF	STK00,W	;id=158,key=002,inCond:1,outCond:14,flow seq=041
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1042
	MOVWF	r0x1043	;id=161,key=003,inCond:10,outCond:1,flow seq=041,rIdx=r0x1045
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1047, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1042's banks
	MOVF	STK01,W	;id=171,key=004,inCond:1,outCond:14,flow seq=041
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1042
	MOVWF	r0x1044	;id=174,key=005,inCond:10,outCond:1,flow seq=041,rIdx=r0x1047
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1042's banks
	MOVF	STK02,W	;id=184,key=006,inCond:1,outCond:14,flow seq=041
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
	MOVWF	r0x1045	;id=187,key=007,inCond:10,outCond:1,flow seq=041,rIdx=r0x1048
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_LIT=0x20, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7139:genAssign
;	.line	18; "../../../lib/format.c"	char padchar = ' ';
	MOVLW	0x20	;id=196,key=008,inCond:400,outCond:10,flow seq=041
;; >>> ../../../../src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x105B present in same bank as r0x1042
	MOVWF	r0x105B	;id=199,key=009,inCond:10,outCond:1,flow seq=041,rIdx=r0x1049
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3304:genCmp *{*
;;signed compare: left < lit(0x0=0), size=1, mask=ff
;; >>> ../../../../src/pic14/gen.c:3419:genCmp
;	.line	20; "../../../lib/format.c"	if(pad < 0) {
	BSF	STATUS,0	;id=208,key=00a,inCond:23,outCond:23,flow seq=041
;; >>> ../../../../src/pic14/gen.c:3422:genCmp
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
	BTFSS	r0x1045,7	;id=210,key=00b,inCond:21,outCond:0,flow seq=041
;<>Start of new flow, seq=0x42 ancestor = 0x41
;  from: 041 ; to: 043 
;; >>> ../../../../src/pic14/gen.c:3424:genCmp
	BCF	STATUS,0	;id=212,key=000,inCond:23,outCond:23,flow seq=042
;<>Start of new flow, seq=0x43 ancestor = 0x41
;  from: 042 041 ; to: 045 044 
;;; ../../../../src/pic14/gen.c:3247:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3254:genSkipc
	BTFSS	STATUS,0	;id=215,key=000,inCond:23,outCond:0,flow seq=043
;<>Start of new flow, seq=0x44 ancestor = 0x43
;  from: 043 ; to: 046 
;; >>> ../../../../src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=19, label offset 8
	GOTO	_00127_DS_	;id=218,key=000,inCond:0,outCond:0,flow seq=044
;<>Start of new flow, seq=0x45 ancestor = 0x43
;  from: 043 ; to: 046 
;;genSkipc:3257: created from rifx:0x7fffb8dba9b0
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1664:genUminus *{*
;; ***	genUminus  1666
;;	695 register type nRegs=1
;;	576
;; >>> ../../../../src/pic14/gen.c:1698:genUminus
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
;	.line	21; "../../../lib/format.c"	pad = -pad;
	COMF	r0x1045,F	;id=229,key=000,inCond:1,outCond:5,flow seq=045,rIdx=r0x1048
;; >>> ../../../../src/pic14/gen.c:1706:genUminus
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
	INCF	r0x1045,F	;id=232,key=001,inCond:1,outCond:5,flow seq=045,rIdx=r0x1048
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1049, size=1, left -=-, size=0, right AOP_LIT=0x30, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7139:genAssign
;	.line	22; "../../../lib/format.c"	padchar = '0';
	MOVLW	0x30	;id=241,key=002,inCond:400,outCond:10,flow seq=045
;; >>> ../../../../src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x105B present in same bank as r0x1042
	MOVWF	r0x105B	;id=244,key=003,inCond:10,outCond:1,flow seq=045,rIdx=r0x1049
;<>Start of new flow, seq=0x46 ancestor = 0x44
;  from: 045 044 ; to: 047 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00127_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x104A 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00127_DS_:
;	.line	30; "../../../lib/format.c"	do {
	BANKSEL	r0x1047	;id=4160,key=000,inCond:0,outCond:0,flow seq=046
	CLRF	r0x1047	;id=260,key=001,inCond:0,outCond:5,flow seq=046,rIdx=r0x104A
;<>Start of new flow, seq=0x47 ancestor = 0x46
;  from: 055 046 ; to: 048 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00111_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x104B, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;; >>> ../../../../src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x1047 
;;106	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x104B 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x104C 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00111_DS_:
;	.line	34; "../../../lib/format.c"	di = n % base;
	BANKSEL	r0x1049	;id=4162,key=000,inCond:0,outCond:0,flow seq=047
	CLRF	r0x1049	;id=283,key=001,inCond:0,outCond:5,flow seq=047,rIdx=r0x104C
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;;105	MOVF	r0x1048,W
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1049
	MOVF	r0x1044,W	;id=3690,key=002,inCond:1,outCond:14,flow seq=047,rIdx=r0x1047
;; BANKOPT2 BANKSEL dropped; r0x1048 present in same bank as r0x1049
	MOVWF	r0x1048	;id=278,key=003,inCond:10,outCond:1,flow seq=047,rIdx=r0x104B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1049's banks
	MOVWF	STK02	;id=303,key=004,inCond:10,outCond:1,flow seq=047
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104C 
	MOVLW	0x00	;id=3693,key=005,inCond:400,outCond:10,flow seq=047
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1049's banks
	MOVWF	STK01	;id=313,key=006,inCond:10,outCond:1,flow seq=047
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1049
	MOVF	r0x1043,W	;id=318,key=007,inCond:1,outCond:14,flow seq=047,rIdx=r0x1045
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1049's banks
	MOVWF	STK00	;id=322,key=008,inCond:10,outCond:1,flow seq=047
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1049
	MOVF	r0x1042,W	;id=327,key=009,inCond:1,outCond:14,flow seq=047,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	__moduint	;id=329,key=00a,inCond:0,outCond:0,flow seq=047
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__moduint	;id=331,key=00b,inCond:10,outCond:1e,flow seq=047
;<>Start of new flow, seq=0x48 ancestor = 0x47
;  from: 047 ; to: 04a 049 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=333,key=000,inCond:0,outCond:0,flow seq=048
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104D, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;;1	MOVWF	r0x104A
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVF	STK00,W	;id=343,key=001,inCond:1,outCond:14,flow seq=048
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104D 
	BANKSEL	r0x104B	;id=4172,key=002,inCond:0,outCond:0,flow seq=048
	MOVWF	r0x104B	;id=3676,key=003,inCond:10,outCond:1,flow seq=048,rIdx=r0x104D
;; BANKOPT2 BANKSEL dropped; r0x104C present in same bank as r0x104B
	MOVWF	r0x104C	;id=362,key=004,inCond:10,outCond:1,flow seq=048,rIdx=r0x104F
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x104D, size=1, left -=-, size=0, right AOP_REG=r0x104A, size=1
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1047 present in same bank as r0x104B
;	.line	35; "../../../lib/format.c"	buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	MOVF	r0x1047,W	;id=375,key=005,inCond:1,outCond:14,flow seq=048,rIdx=r0x104A
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x104D present in same bank as r0x104B
	MOVWF	r0x104D	;id=403,key=006,inCond:10,outCond:1,flow seq=048,rIdx=r0x1050
;; BANKOPT2 BANKSEL dropped; r0x104B present in same bank as r0x104B
	MOVWF	r0x104B	;id=378,key=007,inCond:10,outCond:1,flow seq=048,rIdx=r0x104D
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	576
;; 	line = 614 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1047 present in same bank as r0x104B
	INCF	r0x1047,F	;id=391,key=008,inCond:1,outCond:5,flow seq=048,rIdx=r0x104A
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1050, size=2, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; >>> ../../../../src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x104D 
;;107	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1050 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:864:addSign
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104B
	CLRF	r0x104E	;id=408,key=009,inCond:0,outCond:5,flow seq=048,rIdx=r0x1051
;; >>> ../../../../src/pic14/genarith.c:865:addSign
;; BANKOPT2 BANKSEL dropped; r0x104D present in same bank as r0x104B
	BTFSC	r0x104D,7	;id=410,key=00a,inCond:21,outCond:0,flow seq=048
;<>Start of new flow, seq=0x49 ancestor = 0x48
;  from: 048 ; to: 04a 
;; >>> ../../../../src/pic14/genarith.c:866:addSign
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104B
	DECF	r0x104E,F	;id=413,key=000,inCond:1,outCond:5,flow seq=049,rIdx=r0x1051
;<>Start of new flow, seq=0x4a ancestor = 0x48
;  from: 049 048 ; to: 04c 04b 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	614
;;	aopForRemat 393
;;	419: rname _format_number_buf_65536_51, val 0, const = 0
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_format_number_buf_65536_51
;; 	line = 614 result AOP_REG=r0x1050, size=2, left AOP_PCODE=_format_number_buf_65536_51, size=2, right AOP_REG=r0x1050, size=2
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  713
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_format_number_buf_65536_51
;; >>> ../../../../src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x104D present in same bank as r0x104B
	MOVF	r0x104D,W	;id=433,key=000,inCond:1,outCond:14,flow seq=04a,rIdx=r0x1050
;; >>> ../../../../src/pic14/genarith.c:731:genPlus
	ADDLW	(_format_number_buf_65536_51 + 0)	;id=435,key=001,inCond:410,outCond:1e,flow seq=04a
;; >>> ../../../../src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x104D present in same bank as r0x104B
	MOVWF	r0x104D	;id=438,key=002,inCond:10,outCond:1,flow seq=04a,rIdx=r0x1050
;; >>> ../../../../src/pic14/genarith.c:767:genPlus
	MOVLW	high (_format_number_buf_65536_51 + 0)	;id=440,key=003,inCond:400,outCond:10,flow seq=04a
;; >>> ../../../../src/pic14/genarith.c:768:genPlus
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x104B present in same bank as r0x104B
	MOVWF	r0x104B	;id=443,key=004,inCond:10,outCond:1,flow seq=04a,rIdx=r0x104D
;; >>> ../../../../src/pic14/genarith.c:770:genPlus
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104B
	MOVF	r0x104E,W	;id=446,key=005,inCond:1,outCond:14,flow seq=04a,rIdx=r0x1051
;; >>> ../../../../src/pic14/genarith.c:771:genPlus
	BTFSC	STATUS,0	;id=448,key=006,inCond:23,outCond:0,flow seq=04a
;<>Start of new flow, seq=0x4b ancestor = 0x4a
;  from: 04a ; to: 04d 04c 
;; >>> ../../../../src/pic14/genarith.c:772:genPlus
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104B
	INCFSZ	r0x104E,W	;id=451,key=000,inCond:1,outCond:14,flow seq=04b,rIdx=r0x1051
;<>Start of new flow, seq=0x4c ancestor = 0x4a
;  from: 04b 04a ; to: 04d 
;; >>> ../../../../src/pic14/genarith.c:773:genPlus
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x104B present in same bank as r0x104B
	ADDWF	r0x104B,F	;id=454,key=000,inCond:11,outCond:f,flow seq=04c,rIdx=r0x104D
;<>Start of new flow, seq=0x4d ancestor = 0x4b
;  from: 04c 04b ; to: 04f 04e 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0xA=10), size=1
;; >>> ../../../../src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x0a	;id=462,key=000,inCond:400,outCond:10,flow seq=04d
;; >>> ../../../../src/pic14/gen.c:3442:genCmp
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x104C present in same bank as r0x104B
	SUBWF	r0x104C,W	;id=465,key=001,inCond:11,outCond:1e,flow seq=04d,rIdx=r0x104F
;;; ../../../../src/pic14/gen.c:3247:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3252:genSkipc
	BTFSC	STATUS,0	;id=469,key=002,inCond:23,outCond:0,flow seq=04d
;<>Start of new flow, seq=0x4e ancestor = 0x4d
;  from: 04d ; to: 050 
;; >>> ../../../../src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=15, label offset 8
	GOTO	_00123_DS_	;id=472,key=000,inCond:0,outCond:0,flow seq=04e
;<>Start of new flow, seq=0x4f ancestor = 0x4d
;  from: 04d ; to: 051 
;;genSkipc:3257: created from rifx:0x7fffb8dba9b0
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x104F, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> ../../../../src/pic14/genarith.c:530:genAddLit
	MOVLW	0x30	;id=490,key=000,inCond:400,outCond:10,flow seq=04f
;; >>> ../../../../src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x104C present in same bank as r0x104B
	ADDWF	r0x104C,W	;id=493,key=001,inCond:11,outCond:1e,flow seq=04f,rIdx=r0x104F
;;; ../../../../src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104B
	MOVWF	r0x104E	;id=497,key=002,inCond:10,outCond:1,flow seq=04f,rIdx=r0x1051
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=16, label offset 8
	GOTO	_00124_DS_	;id=504,key=003,inCond:0,outCond:0,flow seq=04f
;<>Start of new flow, seq=0x50 ancestor = 0x4e
;  from: 04e ; to: 051 
;goto	_00124_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00123_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_REG=r0x104F, size=1
;; ***	genCast  7362
;; >>> ../../../../src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x104F 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00123_DS_:
	BANKSEL	r0x104C	;id=4191,key=000,inCond:0,outCond:0,flow seq=050
	MOVF	r0x104C,W	;id=520,key=001,inCond:1,outCond:14,flow seq=050,rIdx=r0x104F
;; >>> ../../../../src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x104F present in same bank as r0x104C
	MOVWF	r0x104F	;id=523,key=002,inCond:10,outCond:1,flow seq=050,rIdx=r0x1052
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1052, size=1, right AOP_LIT=0x37, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> ../../../../src/pic14/genarith.c:530:genAddLit
	MOVLW	0x37	;id=539,key=003,inCond:400,outCond:10,flow seq=050
;; >>> ../../../../src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x104F present in same bank as r0x104C
	ADDWF	r0x104F,W	;id=542,key=004,inCond:11,outCond:1e,flow seq=050,rIdx=r0x1052
;;; ../../../../src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104C
	MOVWF	r0x104E	;id=546,key=005,inCond:10,outCond:1,flow seq=050,rIdx=r0x1051
;<>Start of new flow, seq=0x51 ancestor = 0x4f
;  from: 050 04f ; to: 053 052 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00124_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; ../../../../src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	695 register type nRegs=2
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;; 	line = 6633 result AOP_REG=r0x1050, size=2, left -=-, size=0, right AOP_REG=r0x1051, size=1
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00124_DS_:
	BANKSEL	r0x104D	;id=4196,key=000,inCond:0,outCond:0,flow seq=051
	MOVF	r0x104D,W	;id=567,key=001,inCond:1,outCond:14,flow seq=051,rIdx=r0x1050
;; >>> ../../../../src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=4197,key=002,inCond:0,outCond:0,flow seq=051
	MOVWF	FSR	;id=569,key=003,inCond:10,outCond:1,flow seq=051
;;; ../../../../src/pic14/gen.c:5651:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=572,key=004,inCond:21,outCond:21,flow seq=051
;; >>> ../../../../src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x104B	;id=4199,key=005,inCond:0,outCond:0,flow seq=051
	BTFSC	r0x104B,0	;id=574,key=006,inCond:21,outCond:0,flow seq=051
;<>Start of new flow, seq=0x52 ancestor = 0x51
;  from: 051 ; to: 053 
;; >>> ../../../../src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=576,key=000,inCond:21,outCond:21,flow seq=052
;<>Start of new flow, seq=0x53 ancestor = 0x51
;  from: 052 051 ; to: 054 
;; ***	genNearPointerSet  6658
;; >>> ../../../../src/pic14/gen.c:6674:genNearPointerSet
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104B
	MOVF	r0x104E,W	;id=580,key=000,inCond:1,outCond:14,flow seq=053,rIdx=r0x1051
;; >>> ../../../../src/pic14/gen.c:6679:genNearPointerSet
	BANKSEL	INDF	;id=4201,key=001,inCond:0,outCond:0,flow seq=053
	MOVWF	INDF	;id=582,key=002,inCond:10,outCond:1,flow seq=053
;; ***	genNearPointerSet  6687
;; ***	genNearPointerSet  6713
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;	.line	37; "../../../lib/format.c"	n /= base;
	BANKSEL	r0x1048	;id=4202,key=003,inCond:0,outCond:0,flow seq=053
	MOVF	r0x1048,W	;id=601,key=004,inCond:1,outCond:14,flow seq=053,rIdx=r0x104B
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1048's banks
	MOVWF	STK02	;id=605,key=005,inCond:10,outCond:1,flow seq=053
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1049 present in same bank as r0x1048
	MOVF	r0x1049,W	;id=610,key=006,inCond:1,outCond:14,flow seq=053,rIdx=r0x104C
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1048's banks
	MOVWF	STK01	;id=615,key=007,inCond:10,outCond:1,flow seq=053
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1048
	MOVF	r0x1043,W	;id=620,key=008,inCond:1,outCond:14,flow seq=053,rIdx=r0x1045
;; 	2120 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1048's banks
	MOVWF	STK00	;id=624,key=009,inCond:10,outCond:1,flow seq=053
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1048
	MOVF	r0x1042,W	;id=629,key=00a,inCond:1,outCond:14,flow seq=053,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	__divuint	;id=631,key=00b,inCond:0,outCond:0,flow seq=053
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__divuint	;id=633,key=00c,inCond:10,outCond:1e,flow seq=053
;<>Start of new flow, seq=0x54 ancestor = 0x53
;  from: 053 ; to: 056 055 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=635,key=000,inCond:0,outCond:0,flow seq=054
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
	BANKSEL	r0x1042	;id=4210,key=001,inCond:0,outCond:0,flow seq=054
	MOVWF	r0x1042	;id=642,key=002,inCond:10,outCond:1,flow seq=054,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1042's banks
	MOVF	STK00,W	;id=645,key=003,inCond:1,outCond:14,flow seq=054
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1042
;	.line	38; "../../../lib/format.c"	} while(n > 0);
	MOVWF	r0x1043	;id=3677,key=004,inCond:10,outCond:1,flow seq=054,rIdx=r0x1045
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1042
	IORWF	r0x1042,W	;id=663,key=005,inCond:11,outCond:14,flow seq=054,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:6917:genIfx
	BTFSS	STATUS,2	;id=665,key=006,inCond:25,outCond:0,flow seq=054
;<>Start of new flow, seq=0x55 ancestor = 0x54
;  from: 054 ; to: 047 
;; >>> ../../../../src/pic14/gen.c:6918:genIfx
;; ***	popGetLabel  key=3, label offset 8
	GOTO	_00111_DS_	;id=668,key=000,inCond:0,outCond:0,flow seq=055
;<>Start of new flow, seq=0x56 ancestor = 0x54
;  from: 054 ; to: 057 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1045, size=1, left -=-, size=0, right AOP_REG=r0x104A, size=1
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1047 present in same bank as r0x1042
;	.line	40; "../../../lib/format.c"	while(pad-- > i) putchar_ptr(padchar);
	MOVF	r0x1047,W	;id=681,key=000,inCond:1,outCond:14,flow seq=056,rIdx=r0x104A
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1042
	MOVWF	r0x1043	;id=684,key=001,inCond:10,outCond:1,flow seq=056,rIdx=r0x1045
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1046, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
	MOVF	r0x1045,W	;id=696,key=002,inCond:1,outCond:14,flow seq=056,rIdx=r0x1048
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1042
	MOVWF	r0x1042	;id=699,key=003,inCond:10,outCond:1,flow seq=056,rIdx=r0x1046
;<>Start of new flow, seq=0x57 ancestor = 0x56
;  from: 05c 056 ; to: 059 058 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3304:genCmp *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
	BANKSEL	r0x1043	;id=4219,key=000,inCond:0,outCond:0,flow seq=057
	MOVF	r0x1043,W	;id=714,key=001,inCond:1,outCond:14,flow seq=057,rIdx=r0x1045
;; >>> ../../../../src/pic14/gen.c:3472:genCmp
	ADDLW	0x80	;id=716,key=002,inCond:410,outCond:1e,flow seq=057
;; >>> ../../../../src/pic14/gen.c:3473:genCmp
;; BANKOPT2 BANKSEL dropped; r0x1050 present in same bank as r0x1043
	MOVWF	r0x1050	;id=718,key=003,inCond:10,outCond:1,flow seq=057,rIdx=r0x1054
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1043
	MOVF	r0x1042,W	;id=722,key=004,inCond:1,outCond:14,flow seq=057,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:3475:genCmp
	ADDLW	0x80	;id=724,key=005,inCond:410,outCond:1e,flow seq=057
;; >>> ../../../../src/pic14/gen.c:3476:genCmp
;; BANKOPT2 BANKSEL dropped; r0x1050 present in same bank as r0x1043
	SUBWF	r0x1050,W	;id=726,key=006,inCond:11,outCond:1e,flow seq=057,rIdx=r0x1054
;;; ../../../../src/pic14/gen.c:3247:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3252:genSkipc
	BTFSC	STATUS,0	;id=730,key=007,inCond:23,outCond:0,flow seq=057
;<>Start of new flow, seq=0x58 ancestor = 0x57
;  from: 057 ; to: 05d 
;; >>> ../../../../src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=11, label offset 8
	GOTO	_00119_DS_	;id=733,key=000,inCond:0,outCond:0,flow seq=058
;<>Start of new flow, seq=0x59 ancestor = 0x57
;  from: 057 ; to: 05a 05b 
;;genSkipc:3257: created from rifx:0x7fffb8dba9b0
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; ../../../../src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	576
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;; ../../../../src/pic14/genarith.c:229:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:238:genAddLit2byte
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1043
	DECF	r0x1042,F	;id=749,key=000,inCond:1,outCond:5,flow seq=059,rIdx=r0x1046
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=52, label offset 8
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_00160_DS_	;id=764,key=001,inCond:10,outCond:1e,flow seq=059
;<>Start of new flow, seq=0x5a ancestor = 0x59
;  from: 059 ; to: 05c 
;; ***	popGetLabel  key=53, label offset 8
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00161_DS_	;id=767,key=000,inCond:0,outCond:0,flow seq=05a
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00161_DS_	;id=769,key=001,inCond:0,outCond:0,flow seq=05a
;<>Start of new flow, seq=0x5b ancestor = 0x59
;  from: 059 ; to: 05c 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1012  _putchar_ptr   offset=1 - had to alloc by reg name
;; BANKOPT3 drop assumptions: PCI with label or call found
_00160_DS_:
	BANKSEL	_putchar_ptr	;id=4226,key=000,inCond:0,outCond:0,flow seq=05b
	MOVF	(_putchar_ptr + 1),W	;id=774,key=001,inCond:1,outCond:14,flow seq=05b
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=4227,key=002,inCond:0,outCond:0,flow seq=05b
	MOVWF	PCLATH	;id=776,key=003,inCond:10,outCond:1,flow seq=05b
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=4228,key=004,inCond:0,outCond:0,flow seq=05b
	MOVF	_putchar_ptr,W	;id=780,key=005,inCond:1,outCond:14,flow seq=05b
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=4229,key=006,inCond:0,outCond:0,flow seq=05b
	MOVWF	PCL	;id=782,key=007,inCond:10,outCond:1,flow seq=05b
;<>Start of new flow, seq=0x5c ancestor = 0x5a
;  from: 05b 05a ; to: 057 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=6, label offset 8
;; BANKOPT3 drop assumptions: PCI with label or call found
_00161_DS_:
	GOTO	_00114_DS_	;id=790,key=000,inCond:0,outCond:0,flow seq=05c
;<>Start of new flow, seq=0x5d ancestor = 0x58
;  from: 069 058 ; to: 05f 05e 
;goto	_00114_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00119_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	695 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;signed compare: left >= lit(0x1=1), size=1, mask=ff
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00119_DS_:
;	.line	42; "../../../lib/format.c"	for(; i > 0; i--) putchar_ptr((char)buf[(int16_t)i - 1]);
	BANKSEL	r0x1043	;id=4232,key=000,inCond:0,outCond:0,flow seq=05d
	MOVF	r0x1043,W	;id=808,key=001,inCond:1,outCond:14,flow seq=05d,rIdx=r0x1045
;; >>> ../../../../src/pic14/gen.c:3464:genCmp
	ADDLW	0x80	;id=810,key=002,inCond:410,outCond:1e,flow seq=05d
;; >>> ../../../../src/pic14/gen.c:3465:genCmp
	ADDLW	0x7f	;id=812,key=003,inCond:410,outCond:1e,flow seq=05d
;;; ../../../../src/pic14/gen.c:3247:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3254:genSkipc
	BTFSS	STATUS,0	;id=816,key=004,inCond:23,outCond:0,flow seq=05d
;<>Start of new flow, seq=0x5e ancestor = 0x5d
;  from: 05d ; to: 06a 
;; >>> ../../../../src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=13, label offset 8
	GOTO	_00121_DS_	;id=819,key=000,inCond:0,outCond:0,flow seq=05e
;<>Start of new flow, seq=0x5f ancestor = 0x5d
;  from: 05d ; to: 061 060 
;;genSkipc:3257: created from rifx:0x7fffb8dba9b0
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; ../../../../src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> ../../../../src/pic14/genarith.c:526:genAddLit
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1043
	DECF	r0x1043,W	;id=835,key=000,inCond:1,outCond:14,flow seq=05f,rIdx=r0x1045
;;; ../../../../src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1043
	MOVWF	r0x1042	;id=3678,key=001,inCond:10,outCond:1,flow seq=05f,rIdx=r0x1046
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1043
	MOVWF	r0x1044	;id=853,key=002,inCond:10,outCond:1,flow seq=05f,rIdx=r0x1047
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:864:addSign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1043
	CLRF	r0x1045	;id=858,key=003,inCond:0,outCond:5,flow seq=05f,rIdx=r0x1048
;; >>> ../../../../src/pic14/genarith.c:865:addSign
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1043
	BTFSC	r0x1044,7	;id=860,key=004,inCond:21,outCond:0,flow seq=05f
;<>Start of new flow, seq=0x60 ancestor = 0x5f
;  from: 05f ; to: 061 
;; >>> ../../../../src/pic14/genarith.c:866:addSign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1043
	DECF	r0x1045,F	;id=863,key=000,inCond:1,outCond:5,flow seq=060,rIdx=r0x1048
;<>Start of new flow, seq=0x61 ancestor = 0x5f
;  from: 060 05f ; to: 063 062 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	614
;;	aopForRemat 393
;;	419: rname _format_number_buf_65536_51, val 0, const = 0
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_format_number_buf_65536_51
;; 	line = 614 result AOP_REG=r0x1047, size=2, left AOP_PCODE=_format_number_buf_65536_51, size=2, right AOP_REG=r0x1047, size=2
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  713
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_format_number_buf_65536_51
;; >>> ../../../../src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1043
	MOVF	r0x1044,W	;id=883,key=000,inCond:1,outCond:14,flow seq=061,rIdx=r0x1047
;; >>> ../../../../src/pic14/genarith.c:731:genPlus
	ADDLW	(_format_number_buf_65536_51 + 0)	;id=885,key=001,inCond:410,outCond:1e,flow seq=061
;; >>> ../../../../src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1043
	MOVWF	r0x1044	;id=888,key=002,inCond:10,outCond:1,flow seq=061,rIdx=r0x1047
;; >>> ../../../../src/pic14/genarith.c:745:genPlus
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1043
	MOVF	r0x1045,W	;id=891,key=003,inCond:1,outCond:14,flow seq=061,rIdx=r0x1048
;; >>> ../../../../src/pic14/genarith.c:746:genPlus
	BTFSC	STATUS,0	;id=893,key=004,inCond:23,outCond:0,flow seq=061
;<>Start of new flow, seq=0x62 ancestor = 0x61
;  from: 061 ; to: 064 063 
;; >>> ../../../../src/pic14/genarith.c:747:genPlus
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1043
	INCFSZ	r0x1045,W	;id=896,key=000,inCond:1,outCond:14,flow seq=062,rIdx=r0x1048
;<>Start of new flow, seq=0x63 ancestor = 0x61
;  from: 062 061 ; to: 064 
;; >>> ../../../../src/pic14/genarith.c:748:genPlus
	ADDLW	high (_format_number_buf_65536_51 + 0)	;id=898,key=000,inCond:410,outCond:1e,flow seq=063
;<>Start of new flow, seq=0x64 ancestor = 0x62
;  from: 063 062 ; to: 066 065 
;; >>> ../../../../src/pic14/genarith.c:749:genPlus
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1043
	MOVWF	r0x1045	;id=901,key=000,inCond:10,outCond:1,flow seq=064,rIdx=r0x1048
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
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1043
	MOVF	r0x1044,W	;id=914,key=001,inCond:1,outCond:14,flow seq=064,rIdx=r0x1047
;; >>> ../../../../src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=4245,key=002,inCond:0,outCond:0,flow seq=064
	MOVWF	FSR	;id=916,key=003,inCond:10,outCond:1,flow seq=064
;;; ../../../../src/pic14/gen.c:5651:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=919,key=004,inCond:21,outCond:21,flow seq=064
;; >>> ../../../../src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x1045	;id=4247,key=005,inCond:0,outCond:0,flow seq=064
	BTFSC	r0x1045,0	;id=921,key=006,inCond:21,outCond:0,flow seq=064
;<>Start of new flow, seq=0x65 ancestor = 0x64
;  from: 064 ; to: 066 
;; >>> ../../../../src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=923,key=000,inCond:21,outCond:21,flow seq=065
;<>Start of new flow, seq=0x66 ancestor = 0x64
;  from: 065 064 ; to: 067 068 
;; ***	genNearPointerGet  6086
;; >>> ../../../../src/pic14/gen.c:6093:genNearPointerGet
	BANKSEL	INDF	;id=4248,key=000,inCond:0,outCond:0,flow seq=066
	MOVF	INDF,W	;id=926,key=001,inCond:1,outCond:14,flow seq=066
;; >>> ../../../../src/pic14/gen.c:6100:genNearPointerGet
;;	1097 rIdx = r0x1049 
	BANKSEL	r0x105B	;id=4249,key=002,inCond:0,outCond:0,flow seq=066
	MOVWF	r0x105B	;id=929,key=003,inCond:10,outCond:1,flow seq=066,rIdx=r0x1049
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2215:genPcall *{*
;; ***	genPcall  2217
;;; ../../../../src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;; 	line = 2231 result -=-, size=0, left AOP_DIR=_putchar_ptr, size=2, right -=-, size=0
;; ***	genPcall  2240 - WARNING arg-passing to indirect call not supported
;; >>> ../../../../src/pic14/gen.c:2260:genPcall
;; ***	popGetLabel  key=55, label offset 8
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_00163_DS_	;id=942,key=004,inCond:10,outCond:1e,flow seq=066
;<>Start of new flow, seq=0x67 ancestor = 0x66
;  from: 066 ; to: 069 
;; ***	popGetLabel  key=56, label offset 8
;; >>> ../../../../src/pic14/gen.c:2262:genPcall
	PAGESEL	_00164_DS_	;id=945,key=000,inCond:0,outCond:0,flow seq=067
;; >>> ../../../../src/pic14/gen.c:2263:genPcall
	GOTO	_00164_DS_	;id=947,key=001,inCond:0,outCond:0,flow seq=067
;<>Start of new flow, seq=0x68 ancestor = 0x66
;  from: 066 ; to: 069 
;; >>> ../../../../src/pic14/gen.c:2266:genPcall
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT3 drop assumptions: PCI with label or call found
_00163_DS_:
	BANKSEL	_putchar_ptr	;id=4252,key=000,inCond:0,outCond:0,flow seq=068
	MOVF	(_putchar_ptr + 1),W	;id=952,key=001,inCond:1,outCond:14,flow seq=068
;; >>> ../../../../src/pic14/gen.c:2267:genPcall
	BANKSEL	PCLATH	;id=4253,key=002,inCond:0,outCond:0,flow seq=068
	MOVWF	PCLATH	;id=954,key=003,inCond:10,outCond:1,flow seq=068
;; >>> ../../../../src/pic14/gen.c:2268:genPcall
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=4254,key=004,inCond:0,outCond:0,flow seq=068
	MOVF	_putchar_ptr,W	;id=958,key=005,inCond:1,outCond:14,flow seq=068
;; >>> ../../../../src/pic14/gen.c:2269:genPcall
	BANKSEL	PCL	;id=4255,key=006,inCond:0,outCond:0,flow seq=068
	MOVWF	PCL	;id=960,key=007,inCond:10,outCond:1,flow seq=068
;<>Start of new flow, seq=0x69 ancestor = 0x67
;  from: 068 067 ; to: 05d 
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1045, size=1, left -=-, size=0, right AOP_REG=r0x1046, size=1
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00164_DS_:
	BANKSEL	r0x1042	;id=4257,key=000,inCond:0,outCond:0,flow seq=069
	MOVF	r0x1042,W	;id=975,key=001,inCond:1,outCond:14,flow seq=069,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1042
	MOVWF	r0x1043	;id=978,key=002,inCond:10,outCond:1,flow seq=069,rIdx=r0x1045
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 8
	GOTO	_00119_DS_	;id=983,key=003,inCond:0,outCond:0,flow seq=069
;<>Start of new flow, seq=0x6a ancestor = 0x5e
;  from: 05e ; to: 
;goto	_00119_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00121_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00121_DS_:
;	.line	44; "../../../lib/format.c"	}
	RETURN		;id=995,key=000,inCond:10,outCond:e,flow seq=06a
;<>Start of new flow, seq=0x6b
;  from: ; to: 
; exit point of _format_number
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x6c ancestor = 0x6c
;  from: ; to: 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function format_putchar
;;	-----------------------------------------
;_format_putchar:
S_format__format_putchar	code
_format_putchar:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2675:genRet *{*
;; ***	genRet  2677
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	8; "../../../lib/format.c"	}
	RETURN		;id=130,key=000,inCond:10,outCond:e,flow seq=06c
;<>Start of new flow, seq=0x6d
;  from: ; to: 
; exit point of _format_putchar
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  612+  143 =   755 instructions ( 1796 byte)

	end
