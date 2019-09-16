;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../src/print.c"
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
	extern	_buffer_init
	extern	_buffer_flush
	extern	_buffer_putch
	extern	_buffer_put
	extern	_buffer_puts
	extern	_print_print_float
	extern	_uart_putch
	extern	_uart_getch
	extern	_uart_poll
	extern	_uart_init
	extern	_uart_isr
	extern	_uart_enable
	extern	_uart_disable
	extern	_uart_puts
	extern	_uart_puts2
	extern	_format_number
	extern	_format_xint32
	extern	_format_double
	extern	_lcd_putch
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
	extern	_buffer
	extern	_putchar_ptr
	extern	_logo_image
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
	global	_put_str
	global	_output_putch
	global	_indicator
	global	_print_reading
	global	_print_unit
	global	_print_digit
	global	_lcd_puts
	global	_lcd_put

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_print_0	udata
r0x1012	res	1
r0x1011	res	1
r0x1010	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1017	res	1
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
r0x100D	res	1
r0x100C	res	1
r0x100E	res	1
r0x100F	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
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
code_print	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _output_putch
;   __gptrget1
;   _output_putch
;11 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=37previous max_key=0 
;;	-----------------------------------------
;;	 function put_str
;;	-----------------------------------------
;_put_str:
S_print__put_str	code
_put_str:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1054, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;	.line	507; "../../../src/print.c"	put_str(const char* s) {
	BANKSEL	r0x1000	;id=862,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1000	;id=671,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1000's banks
	MOVF	STK00,W	;id=674,key=002,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=677,key=003,inCond:10,outCond:1,flow seq=001,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1000's banks
	MOVF	STK01,W	;id=680,key=004,inCond:1,outCond:14,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1000
	MOVWF	r0x1002	;id=683,key=005,inCond:10,outCond:1,flow seq=001,rIdx=r0x1054
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1057, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1000
;	.line	510; "../../../src/print.c"	for(i = 0; s[i]; i++) {
	CLRF	r0x1003	;id=693,key=006,inCond:0,outCond:5,flow seq=001,rIdx=r0x1057
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1000
	CLRF	r0x1004	;id=697,key=007,inCond:0,outCond:5,flow seq=001,rIdx=r0x1058
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 00d 001 ; to: 004 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00144_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	695 register type nRegs=2
;;	695 register type nRegs=3
;; 	line = 614 result AOP_REG=r0x1059, size=3, left AOP_REG=r0x1054, size=3, right AOP_REG=r0x1057, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1057 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00144_DS_:
	BANKSEL	r0x1003	;id=870,key=000,inCond:0,outCond:0,flow seq=002
	MOVF	r0x1003,W	;id=716,key=001,inCond:1,outCond:14,flow seq=002,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1003
	ADDWF	r0x1002,W	;id=719,key=002,inCond:11,outCond:1e,flow seq=002,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1003
	MOVWF	r0x1005	;id=722,key=003,inCond:10,outCond:1,flow seq=002,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:767:genPlus
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1003
	MOVF	r0x1001,W	;id=725,key=004,inCond:1,outCond:14,flow seq=002,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:768:genPlus
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1003
	MOVWF	r0x1006	;id=728,key=005,inCond:10,outCond:1,flow seq=002,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:770:genPlus
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1003
	MOVF	r0x1004,W	;id=731,key=006,inCond:1,outCond:14,flow seq=002,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	BTFSC	STATUS,0	;id=733,key=007,inCond:23,outCond:0,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 005 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1003
	INCFSZ	r0x1004,W	;id=736,key=000,inCond:1,outCond:14,flow seq=003,rIdx=r0x1058
;<>Start of new flow, seq=0x4 ancestor = 0x2
;  from: 003 002 ; to: 005 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:773:genPlus
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1003
	ADDWF	r0x1006,F	;id=739,key=000,inCond:11,outCond:f,flow seq=004,rIdx=r0x105A
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 004 003 ; to: 007 006 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1003
	MOVF	r0x1000,W	;id=742,key=000,inCond:1,outCond:14,flow seq=005,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=744,key=001,inCond:23,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=746,key=000,inCond:410,outCond:1e,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x5
;  from: 006 005 ; to: 008 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1003
	MOVWF	r0x1007	;id=749,key=000,inCond:10,outCond:1,flow seq=007,rIdx=r0x105B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x105C, size=1, left AOP_REG=r0x1059, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1003
	MOVF	r0x1005,W	;id=761,key=001,inCond:1,outCond:14,flow seq=007,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1003's banks
	MOVWF	STK01	;id=764,key=002,inCond:10,outCond:1,flow seq=007
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1003
	MOVF	r0x1006,W	;id=768,key=003,inCond:1,outCond:14,flow seq=007,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1003's banks
	MOVWF	STK00	;id=771,key=004,inCond:10,outCond:1,flow seq=007
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x1003
	MOVF	r0x1007,W	;id=775,key=005,inCond:1,outCond:14,flow seq=007,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=777,key=006,inCond:0,outCond:0,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=779,key=007,inCond:10,outCond:1e,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 00a 009 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=781,key=000,inCond:0,outCond:0,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
	BANKSEL	r0x1008	;id=886,key=001,inCond:0,outCond:0,flow seq=008
	MOVWF	r0x1008	;id=784,key=002,inCond:10,outCond:1,flow seq=008,rIdx=r0x105C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x1008
	MOVF	r0x1008,W	;id=860,key=003,inCond:1,outCond:14,flow seq=008,rIdx=r0x105C
	BTFSC	STATUS,2	;id=796,key=004,inCond:25,outCond:0,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x8
;  from: 008 ; to: 00e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=5, label offset 41
	GOTO	_00146_DS_	;id=799,key=000,inCond:0,outCond:0,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x8
;  from: 008 ; to: 00b 
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
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x1008
;	.line	511; "../../../src/print.c"	output_putch(s[i]);
	MOVF	r0x1008,W	;id=814,key=000,inCond:1,outCond:14,flow seq=00a,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_output_putch	;id=816,key=001,inCond:0,outCond:0,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_output_putch	;id=818,key=002,inCond:10,outCond:1e,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00d 00c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=820,key=000,inCond:0,outCond:0,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=2
;;	576
;; 	line = 614 result AOP_REG=r0x1057, size=2, left AOP_REG=r0x1057, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1057 
;	.line	510; "../../../src/print.c"	for(i = 0; s[i]; i++) {
	BANKSEL	r0x1003	;id=890,key=001,inCond:0,outCond:0,flow seq=00b
	INCF	r0x1003,F	;id=836,key=002,inCond:1,outCond:5,flow seq=00b,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=838,key=003,inCond:25,outCond:0,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xb
;  from: 00b ; to: 00d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1003
	INCF	r0x1004,F	;id=841,key=000,inCond:1,outCond:5,flow seq=00c,rIdx=r0x1058
;<>Start of new flow, seq=0xd ancestor = 0xb
;  from: 00c 00b ; to: 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 41
	GOTO	_00144_DS_	;id=846,key=000,inCond:0,outCond:0,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0x9
;  from: 009 ; to: 
;goto	_00144_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00146_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00146_DS_:
;	.line	513; "../../../src/print.c"	}
	RETURN		;id=858,key=000,inCond:10,outCond:e,flow seq=00e
;<>Start of new flow, seq=0xf
;  from: ; to: 
; exit point of _put_str

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x10 ancestor = 0x10
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=33previous max_key=0 
;;	-----------------------------------------
;;	 function output_putch
;;	-----------------------------------------
;_output_putch:
S_print__output_putch	code
_output_putch:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00138_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	501; "../../../src/print.c"	}
	RETURN		;id=646,key=000,inCond:10,outCond:e,flow seq=010
;<>Start of new flow, seq=0x11
;  from: ; to: 
; exit point of _output_putch
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x12 ancestor = 0x12
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=29previous max_key=0 
;;	-----------------------------------------
;;	 function indicator
;;	-----------------------------------------
;_indicator:
S_print__indicator	code
_indicator:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00134_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	491; "../../../src/print.c"	}
	RETURN		;id=620,key=000,inCond:10,outCond:e,flow seq=012
;<>Start of new flow, seq=0x13
;  from: ; to: 
; exit point of _indicator
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x14 ancestor = 0x14
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=25previous max_key=0 
;;	-----------------------------------------
;;	 function print_reading
;;	-----------------------------------------
;_print_reading:
S_print__print_reading	code
_print_reading:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00130_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	466; "../../../src/print.c"	}
	RETURN		;id=594,key=000,inCond:10,outCond:e,flow seq=014
;<>Start of new flow, seq=0x15
;  from: ; to: 
; exit point of _print_reading
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x16 ancestor = 0x16
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=21previous max_key=0 
;;	-----------------------------------------
;;	 function print_unit
;;	-----------------------------------------
;_print_unit:
S_print__print_unit	code
_print_unit:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00126_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	427; "../../../src/print.c"	}
	RETURN		;id=568,key=000,inCond:10,outCond:e,flow seq=016
;<>Start of new flow, seq=0x17
;  from: ; to: 
; exit point of _print_unit
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x18 ancestor = 0x18
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=13previous max_key=4 
;;	-----------------------------------------
;;	 function print_digit
;;	-----------------------------------------
;_print_digit:
S_print__print_digit	code
_print_digit:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00122_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	405; "../../../src/print.c"	}
	RETURN		;id=542,key=000,inCond:10,outCond:e,flow seq=018
;<>Start of new flow, seq=0x19
;  from: ; to: 
; exit point of _print_digit
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _lcd_putch
;   __gptrget1
;   _lcd_putch
;11 compiler assigned registers:
;   r0x1009
;   STK00
;   r0x100A
;   STK01
;   r0x100B
;   STK02
;   r0x100C
;   STK03
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
;<>Start of new flow, seq=0x1a ancestor = 0x1a
;  from: ; to: 01b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=5 
;;	-----------------------------------------
;;	 function lcd_put
;;	-----------------------------------------
;_lcd_put:
S_print__lcd_put	code
_lcd_put:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104D, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;	.line	33; "../../../src/print.c"	lcd_put(const char* buf, unsigned n) {
	BANKSEL	r0x1009	;id=893,key=000,inCond:0,outCond:0,flow seq=01a
	MOVWF	r0x1009	;id=319,key=001,inCond:10,outCond:1,flow seq=01a,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1009's banks
	MOVF	STK00,W	;id=322,key=002,inCond:1,outCond:14,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x1009
	MOVWF	r0x100A	;id=325,key=003,inCond:10,outCond:1,flow seq=01a,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1009's banks
	MOVF	STK01,W	;id=328,key=004,inCond:1,outCond:14,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x1009
	MOVWF	r0x100B	;id=331,key=005,inCond:10,outCond:1,flow seq=01a,rIdx=r0x104D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1050, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1009's banks
	MOVF	STK02,W	;id=341,key=006,inCond:1,outCond:14,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x1009
	MOVWF	r0x100C	;id=344,key=007,inCond:10,outCond:1,flow seq=01a,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1009's banks
	MOVF	STK03,W	;id=347,key=008,inCond:1,outCond:14,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x1009
	MOVWF	r0x100D	;id=350,key=009,inCond:10,outCond:1,flow seq=01a,rIdx=r0x1050
;<>Start of new flow, seq=0x1b ancestor = 0x1a
;  from: 025 01a ; to: 01d 01c 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1052, size=2, left -=-, size=0, right AOP_REG=r0x1050, size=2
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
;	.line	35; "../../../src/print.c"	while(n--) lcd_putch(*buf++);
	BANKSEL	r0x100D	;id=903,key=000,inCond:0,outCond:0,flow seq=01b
	MOVF	r0x100D,W	;id=368,key=001,inCond:1,outCond:14,flow seq=01b,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100D
	MOVWF	r0x100E	;id=371,key=002,inCond:10,outCond:1,flow seq=01b,rIdx=r0x1052
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100D
	MOVF	r0x100C,W	;id=377,key=003,inCond:1,outCond:14,flow seq=01b,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x100F present in same bank as r0x100D
	MOVWF	r0x100F	;id=380,key=004,inCond:10,outCond:1,flow seq=01b,rIdx=r0x1053
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
	MOVLW	0xff	;id=393,key=005,inCond:400,outCond:10,flow seq=01b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:392:genAddLit
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100D
	ADDWF	r0x100D,F	;id=396,key=006,inCond:11,outCond:f,flow seq=01b,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:393:genAddLit
	BTFSS	STATUS,0	;id=398,key=007,inCond:23,outCond:0,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1b
;  from: 01b ; to: 01d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:394:genAddLit
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100D
	DECF	r0x100C,F	;id=401,key=000,inCond:1,outCond:5,flow seq=01c,rIdx=r0x1051
;<>Start of new flow, seq=0x1d ancestor = 0x1b
;  from: 01c 01b ; to: 01f 01e 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=2
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1512:pic14_toBoolean
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100D
	MOVF	r0x100E,W	;id=411,key=000,inCond:1,outCond:14,flow seq=01d,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x100F present in same bank as r0x100D
	IORWF	r0x100F,W	;id=414,key=001,inCond:11,outCond:14,flow seq=01d,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=416,key=002,inCond:25,outCond:0,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 01d ; to: 026 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 13
	GOTO	_00117_DS_	;id=419,key=000,inCond:0,outCond:0,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1d
;  from: 01d ; to: 020 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1052, size=1, left AOP_REG=r0x104D, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100D
	MOVF	r0x100B,W	;id=431,key=000,inCond:1,outCond:14,flow seq=01f,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x100D's banks
	MOVWF	STK01	;id=434,key=001,inCond:10,outCond:1,flow seq=01f
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x100D
	MOVF	r0x100A,W	;id=438,key=002,inCond:1,outCond:14,flow seq=01f,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x100D's banks
	MOVWF	STK00	;id=441,key=003,inCond:10,outCond:1,flow seq=01f
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x100D
	MOVF	r0x1009,W	;id=445,key=004,inCond:1,outCond:14,flow seq=01f,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=447,key=005,inCond:0,outCond:0,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=449,key=006,inCond:10,outCond:1e,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1f
;  from: 01f ; to: 022 021 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=451,key=000,inCond:0,outCond:0,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
	BANKSEL	r0x100E	;id=917,key=001,inCond:0,outCond:0,flow seq=020
	MOVWF	r0x100E	;id=454,key=002,inCond:10,outCond:1,flow seq=020,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x104D, size=3, left AOP_REG=r0x104D, size=3, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100E
	INCF	r0x100B,F	;id=467,key=003,inCond:1,outCond:5,flow seq=020,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=469,key=004,inCond:25,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 022 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x100E
	INCF	r0x100A,F	;id=472,key=000,inCond:1,outCond:5,flow seq=021,rIdx=r0x104E
;<>Start of new flow, seq=0x22 ancestor = 0x20
;  from: 021 020 ; to: 024 023 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=474,key=000,inCond:25,outCond:0,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 024 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x100E
	INCF	r0x1009,F	;id=477,key=000,inCond:1,outCond:5,flow seq=023,rIdx=r0x104F
;<>Start of new flow, seq=0x24 ancestor = 0x22
;  from: 023 022 ; to: 025 
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
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100E
	MOVF	r0x100E,W	;id=491,key=000,inCond:1,outCond:14,flow seq=024,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_putch	;id=493,key=001,inCond:0,outCond:0,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=495,key=002,inCond:10,outCond:1e,flow seq=024
;<>Start of new flow, seq=0x25 ancestor = 0x24
;  from: 024 ; to: 01b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=497,key=000,inCond:0,outCond:0,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 13
	GOTO	_00114_DS_	;id=504,key=001,inCond:0,outCond:0,flow seq=025
;<>Start of new flow, seq=0x26 ancestor = 0x1e
;  from: 01e ; to: 
;goto	_00114_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00117_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00117_DS_:
;	.line	36; "../../../src/print.c"	}
	RETURN		;id=516,key=000,inCond:10,outCond:e,flow seq=026
;<>Start of new flow, seq=0x27
;  from: ; to: 
; exit point of _lcd_put
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _lcd_putch
;   __gptrget1
;   _lcd_putch
;10 compiler assigned registers:
;   r0x1010
;   STK00
;   r0x1011
;   STK01
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;; Starting pCode block
;<>Start of new flow, seq=0x28 ancestor = 0x28
;  from: ; to: 029 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_puts
;;	-----------------------------------------
;_lcd_puts:
S_print__lcd_puts	code
_lcd_puts:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;	.line	26; "../../../src/print.c"	lcd_puts(const char* string) {
	BANKSEL	r0x1010	;id=924,key=000,inCond:0,outCond:0,flow seq=028
	MOVWF	r0x1010	;id=125,key=001,inCond:10,outCond:1,flow seq=028,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1010's banks
	MOVF	STK00,W	;id=128,key=002,inCond:1,outCond:14,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1011 present in same bank as r0x1010
	MOVWF	r0x1011	;id=131,key=003,inCond:10,outCond:1,flow seq=028,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1010's banks
	MOVF	STK01,W	;id=134,key=004,inCond:1,outCond:14,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1012 present in same bank as r0x1010
	MOVWF	r0x1012	;id=137,key=005,inCond:10,outCond:1,flow seq=028,rIdx=r0x1045
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1013 present in same bank as r0x1010
;	.line	28; "../../../src/print.c"	for(i = 0; string[i]; i++) lcd_putch(string[i]);
	CLRF	r0x1013	;id=147,key=006,inCond:0,outCond:5,flow seq=028,rIdx=r0x1048
;<>Start of new flow, seq=0x29 ancestor = 0x28
;  from: 031 028 ; to: 02b 02a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00107_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;;	695 register type nRegs=3
;; 	line = 614 result AOP_REG=r0x1049, size=3, left AOP_REG=r0x1045, size=3, right AOP_REG=r0x1048, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1048 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00107_DS_:
	BANKSEL	r0x1013	;id=931,key=000,inCond:0,outCond:0,flow seq=029
	MOVF	r0x1013,W	;id=166,key=001,inCond:1,outCond:14,flow seq=029,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1012 present in same bank as r0x1013
	ADDWF	r0x1012,W	;id=169,key=002,inCond:11,outCond:1e,flow seq=029,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	MOVWF	r0x1014	;id=172,key=003,inCond:10,outCond:1,flow seq=029,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1011 present in same bank as r0x1013
	MOVF	r0x1011,W	;id=175,key=004,inCond:1,outCond:14,flow seq=029,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=177,key=005,inCond:23,outCond:0,flow seq=029
;<>Start of new flow, seq=0x2a ancestor = 0x29
;  from: 029 ; to: 02b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=179,key=000,inCond:410,outCond:1e,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x29
;  from: 02a 029 ; to: 02d 02c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1013
	MOVWF	r0x1015	;id=182,key=000,inCond:10,outCond:1,flow seq=02b,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1010 present in same bank as r0x1013
	MOVF	r0x1010,W	;id=185,key=001,inCond:1,outCond:14,flow seq=02b,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=187,key=002,inCond:23,outCond:0,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2b
;  from: 02b ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=189,key=000,inCond:410,outCond:1e,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2b
;  from: 02c 02b ; to: 02e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1013
	MOVWF	r0x1016	;id=192,key=000,inCond:10,outCond:1,flow seq=02d,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x104C, size=1, left AOP_REG=r0x1049, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1013
	MOVF	r0x1014,W	;id=204,key=001,inCond:1,outCond:14,flow seq=02d,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1013's banks
	MOVWF	STK01	;id=207,key=002,inCond:10,outCond:1,flow seq=02d
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1013
	MOVF	r0x1015,W	;id=211,key=003,inCond:1,outCond:14,flow seq=02d,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1013's banks
	MOVWF	STK00	;id=214,key=004,inCond:10,outCond:1,flow seq=02d
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1013
	MOVF	r0x1016,W	;id=218,key=005,inCond:1,outCond:14,flow seq=02d,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=220,key=006,inCond:0,outCond:0,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=222,key=007,inCond:10,outCond:1e,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 030 02f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=224,key=000,inCond:0,outCond:0,flow seq=02e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104C 
	BANKSEL	r0x1017	;id=944,key=001,inCond:0,outCond:0,flow seq=02e
	MOVWF	r0x1017	;id=227,key=002,inCond:10,outCond:1,flow seq=02e,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1017
	MOVF	r0x1017,W	;id=861,key=003,inCond:1,outCond:14,flow seq=02e,rIdx=r0x104C
	BTFSC	STATUS,2	;id=239,key=004,inCond:25,outCond:0,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2e
;  from: 02e ; to: 032 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_	;id=242,key=000,inCond:0,outCond:0,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2e
;  from: 02e ; to: 031 
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
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1017
	MOVF	r0x1017,W	;id=256,key=000,inCond:1,outCond:14,flow seq=030,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_putch	;id=258,key=001,inCond:0,outCond:0,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=260,key=002,inCond:10,outCond:1e,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x30
;  from: 030 ; to: 029 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=262,key=000,inCond:0,outCond:0,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	576
;; 	line = 614 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1013	;id=948,key=001,inCond:0,outCond:0,flow seq=031
	INCF	r0x1013,F	;id=277,key=002,inCond:1,outCond:5,flow seq=031,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_	;id=282,key=003,inCond:0,outCond:0,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x2f
;  from: 02f ; to: 
;goto	_00107_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00109_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00109_DS_:
;	.line	29; "../../../src/print.c"	}
	RETURN		;id=294,key=000,inCond:10,outCond:e,flow seq=032
;<>Start of new flow, seq=0x33
;  from: ; to: 
; exit point of _lcd_puts
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  111+   23 =   134 instructions (  314 byte)

	end
