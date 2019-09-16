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
	extern	_lcd_init
	extern	_lcd_begin
	extern	_lcd_no_autoscroll
	extern	_lcd_autoscroll
	extern	_lcd_right_to_left
	extern	_lcd_left_to_right
	extern	_lcd_scroll_print_right
	extern	_lcd_scroll_print_left
	extern	_lcd_blink
	extern	_lcd_no_blink
	extern	_lcd_cursor
	extern	_lcd_no_cursor
	extern	_lcd_display
	extern	_lcd_no_display
	extern	_lcd_clear
	extern	_lcd_home
	extern	_lcd_print_number
	extern	_lcd_print_float
	extern	_lcd_puts
	extern	_lcd_gotoxy
	extern	_lcd_putch
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
	extern	__divuint
	extern	__moduint
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
r0x1044	res	1
r0x1043	res	1
r0x1042	res	1
r0x1046	res	1
r0x1045	res	1
r0x1047	res	1
r0x1048	res	1
r0x1040	res	1
r0x1041	res	1
r0x103D	res	1
r0x103E	res	1
r0x103F	res	1
r0x1053	res	1
r0x1039	res	1
r0x1038	res	1
r0x103B	res	1
r0x103A	res	1
r0x103C	res	1
r0x1035	res	1
r0x1036	res	1
r0x1037	res	1
r0x102E	res	1
r0x102D	res	1
r0x102C	res	1
r0x102F	res	1
r0x1030	res	1
r0x1031	res	1
r0x1032	res	1
r0x1033	res	1
r0x1034	res	1
_print_unit_units_65536_63	res	24
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_print_0	code
___str_0
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

ID_print_1	code
___str_1
	retlw 0x6d ; 'm'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

ID_print_2	code
___str_2
	retlw 0x75 ; 'u'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

ID_print_3	code
___str_3
	retlw 0x6e ; 'n'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

ID_print_4	code
___str_4
	retlw 0x6d ; 'm'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

ID_print_5	code
___str_5
	retlw 0x75 ; 'u'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

ID_print_6	code
___str_6
	retlw 0x6e ; 'n'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

ID_print_7	code
___str_7
	retlw 0x70 ; 'p'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

ID_print_8	code
___str_8
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'

ID_print_9	code
___str_9
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

ID_print_10	code
___str_10
	retlw 0x2d ; '-'
	retlw 0x2a ; '*'
	retlw 0x2d ; '-'
	retlw 0x00 ; '.'

ID_print_11	code
___str_11
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'
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
;   r0x102C
;   STK00
;   r0x102D
;   STK01
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;   r0x1032
;   r0x1033
;   r0x1034
;; Starting pCode block
;<>Start of new flow, seq=0x2 ancestor = 0x2
;  from: ; to: 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=32previous max_key=0 
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
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;	.line	507; "../../../src/print.c"	put_str(const char* s) {
	BANKSEL	r0x102C	;id=2212,key=000,inCond:0,outCond:0,flow seq=002
	MOVWF	r0x102C	;id=1943,key=001,inCond:10,outCond:1,flow seq=002,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102C's banks
	MOVF	STK00,W	;id=1946,key=002,inCond:1,outCond:14,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102C
	MOVWF	r0x102D	;id=1949,key=003,inCond:10,outCond:1,flow seq=002,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102C's banks
	MOVF	STK01,W	;id=1952,key=004,inCond:1,outCond:14,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102C
	MOVWF	r0x102E	;id=1955,key=005,inCond:10,outCond:1,flow seq=002,rIdx=r0x105F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1062, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102C
;	.line	510; "../../../src/print.c"	for(i = 0; s[i]; i++) {
	CLRF	r0x102F	;id=1965,key=006,inCond:0,outCond:5,flow seq=002,rIdx=r0x1062
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102C
	CLRF	r0x1030	;id=1969,key=007,inCond:0,outCond:5,flow seq=002,rIdx=r0x1063
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 00e 002 ; to: 005 004 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00139_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	695 register type nRegs=2
;;	695 register type nRegs=3
;; 	line = 614 result AOP_REG=r0x1064, size=3, left AOP_REG=r0x105F, size=3, right AOP_REG=r0x1062, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1062 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00139_DS_:
	BANKSEL	r0x102F	;id=2220,key=000,inCond:0,outCond:0,flow seq=003
	MOVF	r0x102F,W	;id=1988,key=001,inCond:1,outCond:14,flow seq=003,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102F
	ADDWF	r0x102E,W	;id=1991,key=002,inCond:11,outCond:1e,flow seq=003,rIdx=r0x105F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x1031 present in same bank as r0x102F
	MOVWF	r0x1031	;id=1994,key=003,inCond:10,outCond:1,flow seq=003,rIdx=r0x1064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:767:genPlus
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102F
	MOVF	r0x102D,W	;id=1997,key=004,inCond:1,outCond:14,flow seq=003,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:768:genPlus
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x102F
	MOVWF	r0x1032	;id=2000,key=005,inCond:10,outCond:1,flow seq=003,rIdx=r0x1065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:770:genPlus
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102F
	MOVF	r0x1030,W	;id=2003,key=006,inCond:1,outCond:14,flow seq=003,rIdx=r0x1063
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	BTFSC	STATUS,0	;id=2005,key=007,inCond:23,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 006 005 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102F
	INCFSZ	r0x1030,W	;id=2008,key=000,inCond:1,outCond:14,flow seq=004,rIdx=r0x1063
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 004 003 ; to: 006 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:773:genPlus
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x102F
	ADDWF	r0x1032,F	;id=2011,key=000,inCond:11,outCond:f,flow seq=005,rIdx=r0x1065
;<>Start of new flow, seq=0x6 ancestor = 0x4
;  from: 005 004 ; to: 008 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x102C present in same bank as r0x102F
	MOVF	r0x102C,W	;id=2014,key=000,inCond:1,outCond:14,flow seq=006,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=2016,key=001,inCond:23,outCond:0,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x6
;  from: 006 ; to: 008 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=2018,key=000,inCond:410,outCond:1e,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x6
;  from: 007 006 ; to: 009 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x102F
	MOVWF	r0x1033	;id=2021,key=000,inCond:10,outCond:1,flow seq=008,rIdx=r0x1066
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1067, size=1, left AOP_REG=r0x1064, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x1031 present in same bank as r0x102F
	MOVF	r0x1031,W	;id=2033,key=001,inCond:1,outCond:14,flow seq=008,rIdx=r0x1064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x102F's banks
	MOVWF	STK01	;id=2036,key=002,inCond:10,outCond:1,flow seq=008
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x102F
	MOVF	r0x1032,W	;id=2040,key=003,inCond:1,outCond:14,flow seq=008,rIdx=r0x1065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102F's banks
	MOVWF	STK00	;id=2043,key=004,inCond:10,outCond:1,flow seq=008
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x102F
	MOVF	r0x1033,W	;id=2047,key=005,inCond:1,outCond:14,flow seq=008,rIdx=r0x1066
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=2049,key=006,inCond:0,outCond:0,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=2051,key=007,inCond:10,outCond:1e,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x8
;  from: 008 ; to: 00b 00a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=2053,key=000,inCond:0,outCond:0,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1067 
	BANKSEL	r0x1034	;id=2236,key=001,inCond:0,outCond:0,flow seq=009
	MOVWF	r0x1034	;id=2056,key=002,inCond:10,outCond:1,flow seq=009,rIdx=r0x1067
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1034
	MOVF	r0x1034,W	;id=2132,key=003,inCond:1,outCond:14,flow seq=009,rIdx=r0x1067
	BTFSC	STATUS,2	;id=2068,key=004,inCond:25,outCond:0,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 00f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=5, label offset 36
	GOTO	_00141_DS_	;id=2071,key=000,inCond:0,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0x9
;  from: 009 ; to: 00c 
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
;;	1097 rIdx = r0x1067 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1034
;	.line	511; "../../../src/print.c"	output_putch(s[i]);
	MOVF	r0x1034,W	;id=2086,key=000,inCond:1,outCond:14,flow seq=00b,rIdx=r0x1067
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_output_putch	;id=2088,key=001,inCond:0,outCond:0,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_output_putch	;id=2090,key=002,inCond:10,outCond:1e,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xb
;  from: 00b ; to: 00e 00d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2092,key=000,inCond:0,outCond:0,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=2
;;	576
;; 	line = 614 result AOP_REG=r0x1062, size=2, left AOP_REG=r0x1062, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1062 
;	.line	510; "../../../src/print.c"	for(i = 0; s[i]; i++) {
	BANKSEL	r0x102F	;id=2240,key=001,inCond:0,outCond:0,flow seq=00c
	INCF	r0x102F,F	;id=2108,key=002,inCond:1,outCond:5,flow seq=00c,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=2110,key=003,inCond:25,outCond:0,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 00e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102F
	INCF	r0x1030,F	;id=2113,key=000,inCond:1,outCond:5,flow seq=00d,rIdx=r0x1063
;<>Start of new flow, seq=0xe ancestor = 0xc
;  from: 00d 00c ; to: 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 36
	GOTO	_00139_DS_	;id=2118,key=000,inCond:0,outCond:0,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xa
;  from: 00a ; to: 
;goto	_00139_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00141_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00141_DS_:
;	.line	513; "../../../src/print.c"	}
	RETURN		;id=2130,key=000,inCond:10,outCond:e,flow seq=00f
;<>Start of new flow, seq=0x10
;  from: ; to: 
; exit point of _put_str

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_putch
;   _lcd_putch
;1 compiler assigned register :
;   r0x102B
;; Starting pCode block
;<>Start of new flow, seq=0x11 ancestor = 0x11
;  from: ; to: 012 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=24previous max_key=4 
;;	-----------------------------------------
;;	 function output_putch
;;	-----------------------------------------
;_output_putch:
S_print__output_putch	code
_output_putch:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
;;1	MOVWF	r0x102B
;	.line	496; "../../../src/print.c"	lcd_putch(c);
	PAGESEL	_lcd_putch	;id=1901,key=000,inCond:0,outCond:0,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=1903,key=001,inCond:10,outCond:1e,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1905,key=000,inCond:0,outCond:0,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00133_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	501; "../../../src/print.c"	}
	RETURN		;id=1918,key=001,inCond:10,outCond:e,flow seq=012
;<>Start of new flow, seq=0x13
;  from: ; to: 
; exit point of _output_putch
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_puts
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_puts
;5 compiler assigned registers:
;   r0x1035
;   STK00
;   r0x1036
;   r0x1037
;   STK01
;; Starting pCode block
;<>Start of new flow, seq=0x14 ancestor = 0x14
;  from: ; to: 015 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=20previous max_key=0 
;;	-----------------------------------------
;;	 function indicator
;;	-----------------------------------------
;_indicator:
S_print__indicator	code
_indicator:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;	.line	470; "../../../src/print.c"	indicator(uint8_t indicate) {
	BANKSEL	r0x1035	;id=2244,key=000,inCond:0,outCond:0,flow seq=014
	MOVWF	r0x1035	;id=1654,key=001,inCond:10,outCond:1,flow seq=014,rIdx=r0x105B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	484; "../../../src/print.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01	;id=1666,key=002,inCond:400,outCond:10,flow seq=014
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1035's banks
	MOVWF	STK00	;id=1670,key=003,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1673,key=004,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=1675,key=005,inCond:0,outCond:0,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=1677,key=006,inCond:10,outCond:1e,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x14
;  from: 014 ; to: 017 016 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1679,key=000,inCond:0,outCond:0,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;	.line	485; "../../../src/print.c"	if(indicate) {
	BANKSEL	r0x1035	;id=2247,key=001,inCond:0,outCond:0,flow seq=015
	MOVF	r0x1035,W	;id=2134,key=002,inCond:1,outCond:14,flow seq=015,rIdx=r0x105B
	BTFSC	STATUS,2	;id=1694,key=003,inCond:25,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 019 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=2, label offset 24
	GOTO	_00126_DS_	;id=1697,key=000,inCond:0,outCond:0,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x15
;  from: 015 ; to: 018 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_10, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_10
;; 	line = 7238 result AOP_REG=r0x105B, size=3, left -=-, size=0, right AOP_PCODE=___str_10, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	486; "../../../src/print.c"	lcd_puts("-*-");
	MOVLW	high (___str_10 + 0)	;id=1713,key=000,inCond:400,outCond:10,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1035
	MOVWF	r0x1036	;id=1716,key=001,inCond:10,outCond:1,flow seq=017,rIdx=r0x105C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_10 + 0)	;id=1719,key=002,inCond:400,outCond:10,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1035
	MOVWF	r0x1035	;id=1722,key=003,inCond:10,outCond:1,flow seq=017,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1724,key=004,inCond:400,outCond:10,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1035
	MOVWF	r0x1037	;id=1727,key=005,inCond:10,outCond:1,flow seq=017,rIdx=r0x105D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1035
	MOVF	r0x1035,W	;id=1741,key=006,inCond:1,outCond:14,flow seq=017,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1035's banks
	MOVWF	STK01	;id=1745,key=007,inCond:10,outCond:1,flow seq=017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1035
	MOVF	r0x1036,W	;id=1750,key=008,inCond:1,outCond:14,flow seq=017,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1035's banks
	MOVWF	STK00	;id=1754,key=009,inCond:10,outCond:1,flow seq=017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1035
	MOVF	r0x1037,W	;id=1759,key=00a,inCond:1,outCond:14,flow seq=017,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=1761,key=00b,inCond:0,outCond:0,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=1763,key=00c,inCond:10,outCond:1e,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 017 ; to: 01b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1765,key=000,inCond:0,outCond:0,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=4, label offset 24
	GOTO	_00128_DS_	;id=1772,key=001,inCond:0,outCond:0,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x16
;  from: 016 ; to: 01a 
;goto	_00128_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00126_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_11, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_11
;; 	line = 7238 result AOP_REG=r0x105B, size=3, left -=-, size=0, right AOP_PCODE=___str_11, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00126_DS_:
;	.line	488; "../../../src/print.c"	lcd_puts("   ");
	MOVLW	high (___str_11 + 0)	;id=1794,key=000,inCond:400,outCond:10,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
	BANKSEL	r0x1036	;id=2258,key=001,inCond:0,outCond:0,flow seq=019
	MOVWF	r0x1036	;id=1797,key=002,inCond:10,outCond:1,flow seq=019,rIdx=r0x105C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_11 + 0)	;id=1800,key=003,inCond:400,outCond:10,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1036
	MOVWF	r0x1035	;id=1803,key=004,inCond:10,outCond:1,flow seq=019,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1805,key=005,inCond:400,outCond:10,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1036
	MOVWF	r0x1037	;id=1808,key=006,inCond:10,outCond:1,flow seq=019,rIdx=r0x105D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1036
	MOVF	r0x1035,W	;id=1822,key=007,inCond:1,outCond:14,flow seq=019,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1036's banks
	MOVWF	STK01	;id=1826,key=008,inCond:10,outCond:1,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1036
	MOVF	r0x1036,W	;id=1831,key=009,inCond:1,outCond:14,flow seq=019,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1036's banks
	MOVWF	STK00	;id=1835,key=00a,inCond:10,outCond:1,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1036
	MOVF	r0x1037,W	;id=1840,key=00b,inCond:1,outCond:14,flow seq=019,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=1842,key=00c,inCond:0,outCond:0,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=1844,key=00d,inCond:10,outCond:1e,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x19
;  from: 019 ; to: 01b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1846,key=000,inCond:0,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x18
;  from: 01a 018 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00128_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00128_DS_:
;	.line	491; "../../../src/print.c"	}
	RETURN		;id=1859,key=000,inCond:10,outCond:e,flow seq=01b
;<>Start of new flow, seq=0x1c
;  from: ; to: 
; exit point of _indicator
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   __divuint
;   _format_number
;   __moduint
;   _format_number
;   _lcd_gotoxy
;   _lcd_puts
;   _lcd_gotoxy
;   __divuint
;   _format_number
;   __moduint
;   _format_number
;8 compiler assigned registers:
;   r0x1038
;   STK00
;   r0x1039
;   r0x103A
;   r0x103B
;   r0x103C
;   STK01
;   STK02
;; Starting pCode block
;<>Start of new flow, seq=0x1d ancestor = 0x1d
;  from: ; to: 01e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=16previous max_key=0 
;;	-----------------------------------------
;;	 function print_reading
;;	-----------------------------------------
;_print_reading:
S_print__print_reading	code
_print_reading:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1056, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
;	.line	430; "../../../src/print.c"	print_reading(uint16_t measurement) {
	BANKSEL	r0x1038	;id=2268,key=000,inCond:0,outCond:0,flow seq=01d
	MOVWF	r0x1038	;id=1272,key=001,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1038's banks
	MOVF	STK00,W	;id=1275,key=002,inCond:1,outCond:14,flow seq=01d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVWF	r0x1039	;id=1278,key=003,inCond:10,outCond:1,flow seq=01d,rIdx=r0x1056
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	457; "../../../src/print.c"	lcd_gotoxy(9, 0);
	MOVLW	0x00	;id=1290,key=004,inCond:400,outCond:10,flow seq=01d
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1038's banks
	MOVWF	STK00	;id=1294,key=005,inCond:10,outCond:1,flow seq=01d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x09	;id=1297,key=006,inCond:400,outCond:10,flow seq=01d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=1299,key=007,inCond:0,outCond:0,flow seq=01d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=1301,key=008,inCond:10,outCond:1e,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 01d ; to: 01f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1303,key=000,inCond:0,outCond:0,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_9, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_9
;; 	line = 7238 result AOP_REG=r0x1058, size=3, left -=-, size=0, right AOP_PCODE=___str_9, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	458; "../../../src/print.c"	lcd_puts("     ");
	MOVLW	high (___str_9 + 0)	;id=1321,key=001,inCond:400,outCond:10,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
	BANKSEL	r0x103A	;id=2273,key=002,inCond:0,outCond:0,flow seq=01e
	MOVWF	r0x103A	;id=1324,key=003,inCond:10,outCond:1,flow seq=01e,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_9 + 0)	;id=1327,key=004,inCond:400,outCond:10,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103A
	MOVWF	r0x103B	;id=1330,key=005,inCond:10,outCond:1,flow seq=01e,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1332,key=006,inCond:400,outCond:10,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103A
	MOVWF	r0x103C	;id=1335,key=007,inCond:10,outCond:1,flow seq=01e,rIdx=r0x105A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103A
	MOVF	r0x103B,W	;id=1349,key=008,inCond:1,outCond:14,flow seq=01e,rIdx=r0x1058
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103A's banks
	MOVWF	STK01	;id=1353,key=009,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x103A
	MOVF	r0x103A,W	;id=1358,key=00a,inCond:1,outCond:14,flow seq=01e,rIdx=r0x1059
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103A's banks
	MOVWF	STK00	;id=1362,key=00b,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x103A
	MOVF	r0x103C,W	;id=1367,key=00c,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_puts	;id=1369,key=00d,inCond:0,outCond:0,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_puts	;id=1371,key=00e,inCond:10,outCond:1e,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 01e ; to: 020 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1373,key=000,inCond:0,outCond:0,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	459; "../../../src/print.c"	lcd_gotoxy(9, 0);
	MOVLW	0x00	;id=1387,key=001,inCond:400,outCond:10,flow seq=01f
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=1391,key=002,inCond:10,outCond:1,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x09	;id=1394,key=003,inCond:400,outCond:10,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=1396,key=004,inCond:0,outCond:0,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=1398,key=005,inCond:10,outCond:1e,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1f
;  from: 01f ; to: 021 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1400,key=000,inCond:0,outCond:0,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	461; "../../../src/print.c"	format_number(/*&buffer_putch,*/ measurement / 100, 10, 0);
	MOVLW	0x64	;id=1415,key=001,inCond:400,outCond:10,flow seq=020
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of (null)'s banks
	MOVWF	STK02	;id=1419,key=002,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1422,key=003,inCond:400,outCond:10,flow seq=020
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of (null)'s banks
	MOVWF	STK01	;id=1427,key=004,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
	BANKSEL	r0x1039	;id=2286,key=005,inCond:0,outCond:0,flow seq=020
	MOVF	r0x1039,W	;id=1432,key=006,inCond:1,outCond:14,flow seq=020,rIdx=r0x1056
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1039's banks
	MOVWF	STK00	;id=1436,key=007,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1039
	MOVF	r0x1038,W	;id=1441,key=008,inCond:1,outCond:14,flow seq=020,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	__divuint	;id=1443,key=009,inCond:0,outCond:0,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__divuint	;id=1445,key=00a,inCond:10,outCond:1e,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 022 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1447,key=000,inCond:0,outCond:0,flow seq=021
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1058, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
	BANKSEL	r0x103A	;id=2290,key=001,inCond:0,outCond:0,flow seq=021
	MOVWF	r0x103A	;id=1454,key=002,inCond:10,outCond:1,flow seq=021,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103A's banks
	MOVF	STK00,W	;id=1457,key=003,inCond:1,outCond:14,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103A
	MOVWF	r0x103B	;id=1460,key=004,inCond:10,outCond:1,flow seq=021,rIdx=r0x1058
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1476,key=005,inCond:400,outCond:10,flow seq=021
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103A's banks
	MOVWF	STK02	;id=1480,key=006,inCond:10,outCond:1,flow seq=021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=1483,key=007,inCond:400,outCond:10,flow seq=021
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103A's banks
	MOVWF	STK01	;id=1488,key=008,inCond:10,outCond:1,flow seq=021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x103A
	MOVF	r0x103B,W	;id=1493,key=009,inCond:1,outCond:14,flow seq=021,rIdx=r0x1058
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103A's banks
	MOVWF	STK00	;id=1497,key=00a,inCond:10,outCond:1,flow seq=021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x103A
	MOVF	r0x103A,W	;id=1502,key=00b,inCond:1,outCond:14,flow seq=021,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_format_number	;id=1504,key=00c,inCond:0,outCond:0,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_format_number	;id=1506,key=00d,inCond:10,outCond:1e,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x21
;  from: 021 ; to: 023 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1508,key=000,inCond:0,outCond:0,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	463; "../../../src/print.c"	format_number(/*&buffer_putch,*/ measurement % 100, 10, 0);
	MOVLW	0x64	;id=1523,key=001,inCond:400,outCond:10,flow seq=022
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of (null)'s banks
	MOVWF	STK02	;id=1527,key=002,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1530,key=003,inCond:400,outCond:10,flow seq=022
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of (null)'s banks
	MOVWF	STK01	;id=1535,key=004,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
	BANKSEL	r0x1039	;id=2301,key=005,inCond:0,outCond:0,flow seq=022
	MOVF	r0x1039,W	;id=1540,key=006,inCond:1,outCond:14,flow seq=022,rIdx=r0x1056
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1039's banks
	MOVWF	STK00	;id=1544,key=007,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1039
	MOVF	r0x1038,W	;id=1549,key=008,inCond:1,outCond:14,flow seq=022,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	__moduint	;id=1551,key=009,inCond:0,outCond:0,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__moduint	;id=1553,key=00a,inCond:10,outCond:1e,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 024 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1555,key=000,inCond:0,outCond:0,flow seq=023
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1056, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
	BANKSEL	r0x1038	;id=2305,key=001,inCond:0,outCond:0,flow seq=023
	MOVWF	r0x1038	;id=1562,key=002,inCond:10,outCond:1,flow seq=023,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1038's banks
	MOVF	STK00,W	;id=1565,key=003,inCond:1,outCond:14,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVWF	r0x1039	;id=1568,key=004,inCond:10,outCond:1,flow seq=023,rIdx=r0x1056
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1584,key=005,inCond:400,outCond:10,flow seq=023
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1038's banks
	MOVWF	STK02	;id=1588,key=006,inCond:10,outCond:1,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0a	;id=1591,key=007,inCond:400,outCond:10,flow seq=023
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1038's banks
	MOVWF	STK01	;id=1596,key=008,inCond:10,outCond:1,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVF	r0x1039,W	;id=1601,key=009,inCond:1,outCond:14,flow seq=023,rIdx=r0x1056
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1038's banks
	MOVWF	STK00	;id=1605,key=00a,inCond:10,outCond:1,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1038
	MOVF	r0x1038,W	;id=1610,key=00b,inCond:1,outCond:14,flow seq=023,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_format_number	;id=1612,key=00c,inCond:0,outCond:0,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_format_number	;id=1614,key=00d,inCond:10,outCond:1e,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x23
;  from: 023 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1616,key=000,inCond:0,outCond:0,flow seq=024
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00121_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	466; "../../../src/print.c"	}
	RETURN		;id=1629,key=001,inCond:10,outCond:e,flow seq=024
;<>Start of new flow, seq=0x25
;  from: ; to: 
; exit point of _print_reading
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _uart_puts
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _uart_puts
;5 compiler assigned registers:
;   STK00
;   r0x103D
;   r0x103E
;   r0x103F
;   STK01
;; Starting pCode block
;<>Start of new flow, seq=0x26 ancestor = 0x26
;  from: ; to: 027 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=12previous max_key=0 
;;	-----------------------------------------
;;	 function print_unit
;;	-----------------------------------------
;_print_unit:
S_print__print_unit	code
_print_unit:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	418; "../../../src/print.c"	lcd_gotoxy(14, 0);
	MOVLW	0x00	;id=493,key=000,inCond:400,outCond:10,flow seq=026
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=497,key=001,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x0e	;id=500,key=002,inCond:400,outCond:10,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=502,key=003,inCond:0,outCond:0,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=504,key=004,inCond:10,outCond:1e,flow seq=026
;<>Start of new flow, seq=0x27 ancestor = 0x26
;  from: 026 ; to: 028 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=506,key=000,inCond:0,outCond:0,flow seq=027
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
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
;	.line	422; "../../../src/print.c"	lcd_gotoxy(16 - BUFFER_LEN(), 0);
	BANKSEL	r0x103D	;id=2316,key=001,inCond:0,outCond:0,flow seq=027
	CLRF	r0x103D	;id=526,key=002,inCond:0,outCond:5,flow seq=027,rIdx=r0x104E
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=529,key=003,inCond:400,outCond:10,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0xf0	;id=531,key=004,inCond:410,outCond:14,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	MOVWF	r0x103D	;id=534,key=005,inCond:10,outCond:1,flow seq=027,rIdx=r0x104E
;;	1097 rIdx = r0x104E 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5096:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	SWAPF	r0x103D,F	;id=539,key=006,inCond:1,outCond:1,flow seq=027,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5132:AccRsh
	MOVLW	0x0f	;id=541,key=007,inCond:400,outCond:10,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5133:AccRsh
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	ANDWF	r0x103D,F	;id=543,key=008,inCond:11,outCond:5,flow seq=027,rIdx=r0x104E
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
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
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	CLRF	r0x103E	;id=561,key=009,inCond:0,outCond:5,flow seq=027,rIdx=r0x104F
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1369:mov2w
	MOVLW	(_buffer + 16)	;id=564,key=00a,inCond:400,outCond:10,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5967:genUnpackBits
	ANDLW	0x0f	;id=566,key=00b,inCond:410,outCond:14,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVWF	r0x103E	;id=569,key=00c,inCond:10,outCond:1,flow seq=027,rIdx=r0x104F
;;	1097 rIdx = r0x104F 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5050:AccRsh *{*
;; ***	AccRsh  5051
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1050, size=1, left -=-, size=0, right AOP_REG=r0x104E, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	MOVF	r0x103D,W	;id=584,key=00d,inCond:1,outCond:14,flow seq=027,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103D
	MOVWF	r0x103F	;id=587,key=00e,inCond:10,outCond:1,flow seq=027,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104E, size=1, left -=-, size=0, right AOP_REG=r0x104F, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVF	r0x103E,W	;id=2135,key=00f,inCond:1,outCond:14,flow seq=027,rIdx=r0x104F
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103D
	MOVWF	r0x103D	;id=2136,key=010,inCond:10,outCond:1,flow seq=027,rIdx=r0x104E
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103D
	SUBWF	r0x103F,W	;id=616,key=011,inCond:11,outCond:1e,flow seq=027,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1050:genMinus
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVWF	r0x103E	;id=2137,key=012,inCond:10,outCond:1,flow seq=027,rIdx=r0x104F
	SUBLW	0x10	;id=634,key=013,inCond:410,outCond:1e,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1050:genMinus
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVWF	r0x103E	;id=637,key=014,inCond:10,outCond:1,flow seq=027,rIdx=r0x104F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=649,key=015,inCond:400,outCond:10,flow seq=027
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103D's banks
	MOVWF	STK00	;id=654,key=016,inCond:10,outCond:1,flow seq=027
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103D
	MOVF	r0x103E,W	;id=659,key=017,inCond:1,outCond:14,flow seq=027,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=661,key=018,inCond:0,outCond:0,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=663,key=019,inCond:10,outCond:1e,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 027 ; to: 029 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=665,key=000,inCond:0,outCond:0,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_8, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_8
;; 	line = 7238 result AOP_REG=r0x104E, size=3, left -=-, size=0, right AOP_PCODE=___str_8, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	425; "../../../src/print.c"	uart_puts("\r\n");
	MOVLW	high (___str_8 + 0)	;id=683,key=001,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
	BANKSEL	r0x103E	;id=2332,key=002,inCond:0,outCond:0,flow seq=028
	MOVWF	r0x103E	;id=686,key=003,inCond:10,outCond:1,flow seq=028,rIdx=r0x104F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_8 + 0)	;id=689,key=004,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103E
	MOVWF	r0x103D	;id=692,key=005,inCond:10,outCond:1,flow seq=028,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=694,key=006,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103E
	MOVWF	r0x103F	;id=697,key=007,inCond:10,outCond:1,flow seq=028,rIdx=r0x1050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=3
;;	695 register type nRegs=3
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x103E
	MOVF	r0x103D,W	;id=711,key=008,inCond:1,outCond:14,flow seq=028,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103E's banks
	MOVWF	STK01	;id=715,key=009,inCond:10,outCond:1,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103E
	MOVF	r0x103E,W	;id=720,key=00a,inCond:1,outCond:14,flow seq=028,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103E's banks
	MOVWF	STK00	;id=724,key=00b,inCond:10,outCond:1,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103E
	MOVF	r0x103F,W	;id=729,key=00c,inCond:1,outCond:14,flow seq=028,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_uart_puts	;id=731,key=00d,inCond:0,outCond:0,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_puts	;id=733,key=00e,inCond:10,outCond:1e,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x28
;  from: 028 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=735,key=000,inCond:0,outCond:0,flow seq=029
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00117_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	427; "../../../src/print.c"	}
	RETURN		;id=748,key=001,inCond:10,outCond:e,flow seq=029
;<>Start of new flow, seq=0x2a
;  from: ; to: 
; exit point of _print_unit
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_putch
;   _lcd_gotoxy
;   _lcd_putch
;4 compiler assigned registers:
;   STK00
;   r0x1040
;   STK01
;   r0x1041
;; Starting pCode block
;<>Start of new flow, seq=0x2b ancestor = 0x2b
;  from: ; to: 02c 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=4 
;;	-----------------------------------------
;;	 function print_digit
;;	-----------------------------------------
;_print_digit:
S_print__print_digit	code
_print_digit:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
;	.line	387; "../../../src/print.c"	print_digit(uint8_t line, uint8_t column, uint8_t digit) {
	MOVF	STK00,W	;id=347,key=000,inCond:1,outCond:14,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104C 
	BANKSEL	r0x1040	;id=2342,key=001,inCond:0,outCond:0,flow seq=02b
	MOVWF	r0x1040	;id=350,key=002,inCond:10,outCond:1,flow seq=02b,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104D, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1040's banks
	MOVF	STK01,W	;id=360,key=003,inCond:1,outCond:14,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1041 present in same bank as r0x1040
	MOVWF	r0x1041	;id=363,key=004,inCond:10,outCond:1,flow seq=02b,rIdx=r0x104D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=1
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	402; "../../../src/print.c"	lcd_gotoxy(column, /*line - 1*/ 0);
	MOVLW	0x00	;id=376,key=005,inCond:400,outCond:10,flow seq=02b
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1040's banks
	MOVWF	STK00	;id=381,key=006,inCond:10,outCond:1,flow seq=02b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x1040
	MOVF	r0x1040,W	;id=386,key=007,inCond:1,outCond:14,flow seq=02b,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_gotoxy	;id=388,key=008,inCond:0,outCond:0,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_gotoxy	;id=390,key=009,inCond:10,outCond:1e,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2b
;  from: 02b ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=392,key=000,inCond:0,outCond:0,flow seq=02c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x104D 
;	.line	403; "../../../src/print.c"	lcd_putch('0' + digit);
	BANKSEL	r0x1041	;id=2348,key=001,inCond:0,outCond:0,flow seq=02c
	MOVF	r0x1041,W	;id=405,key=002,inCond:1,outCond:14,flow seq=02c,rIdx=r0x104D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x1041
	MOVWF	r0x1040	;id=408,key=003,inCond:10,outCond:1,flow seq=02c,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x104D, size=1, left AOP_REG=r0x104C, size=1, right AOP_LIT=0x30, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:530:genAddLit
	MOVLW	0x30	;id=424,key=004,inCond:400,outCond:10,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1040 present in same bank as r0x1041
	ADDWF	r0x1040,W	;id=427,key=005,inCond:11,outCond:1e,flow seq=02c,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1041 present in same bank as r0x1041
	MOVWF	r0x1041	;id=2138,key=006,inCond:10,outCond:1,flow seq=02c,rIdx=r0x104D
	PAGESEL	_lcd_putch	;id=449,key=007,inCond:0,outCond:0,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=451,key=008,inCond:10,outCond:1e,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2c
;  from: 02c ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=453,key=000,inCond:0,outCond:0,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00113_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	405; "../../../src/print.c"	}
	RETURN		;id=466,key=001,inCond:10,outCond:e,flow seq=02d
;<>Start of new flow, seq=0x2e
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
;   r0x1042
;   STK00
;   r0x1043
;   STK01
;   r0x1044
;   STK02
;   r0x1045
;   STK03
;   r0x1046
;   r0x1047
;   r0x1048
;; Starting pCode block
;<>Start of new flow, seq=0x2f ancestor = 0x2f
;  from: ; to: 030 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
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
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;	.line	33; "../../../src/print.c"	lcd_put(const char* buf, unsigned n) {
	BANKSEL	r0x1042	;id=2353,key=000,inCond:0,outCond:0,flow seq=02f
	MOVWF	r0x1042	;id=125,key=001,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1042's banks
	MOVF	STK00,W	;id=128,key=002,inCond:1,outCond:14,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1042
	MOVWF	r0x1043	;id=131,key=003,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1042's banks
	MOVF	STK01,W	;id=134,key=004,inCond:1,outCond:14,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1042
	MOVWF	r0x1044	;id=137,key=005,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1045
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1048, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1042's banks
	MOVF	STK02,W	;id=147,key=006,inCond:1,outCond:14,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
	MOVWF	r0x1045	;id=150,key=007,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1042's banks
	MOVF	STK03,W	;id=153,key=008,inCond:1,outCond:14,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1046 present in same bank as r0x1042
	MOVWF	r0x1046	;id=156,key=009,inCond:10,outCond:1,flow seq=02f,rIdx=r0x1048
;<>Start of new flow, seq=0x30 ancestor = 0x2f
;  from: 03a 02f ; to: 032 031 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_REG=r0x1048, size=2
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00105_DS_:
;	.line	35; "../../../src/print.c"	while(n--) lcd_putch(*buf++);
	BANKSEL	r0x1046	;id=2363,key=000,inCond:0,outCond:0,flow seq=030
	MOVF	r0x1046,W	;id=174,key=001,inCond:1,outCond:14,flow seq=030,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1047 present in same bank as r0x1046
	MOVWF	r0x1047	;id=177,key=002,inCond:10,outCond:1,flow seq=030,rIdx=r0x104A
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1046
	MOVF	r0x1045,W	;id=183,key=003,inCond:1,outCond:14,flow seq=030,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1048 present in same bank as r0x1046
	MOVWF	r0x1048	;id=186,key=004,inCond:10,outCond:1,flow seq=030,rIdx=r0x104B
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
	MOVLW	0xff	;id=199,key=005,inCond:400,outCond:10,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:392:genAddLit
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1046 present in same bank as r0x1046
	ADDWF	r0x1046,F	;id=202,key=006,inCond:11,outCond:f,flow seq=030,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:393:genAddLit
	BTFSS	STATUS,0	;id=204,key=007,inCond:23,outCond:0,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x30
;  from: 030 ; to: 032 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:394:genAddLit
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1046
	DECF	r0x1045,F	;id=207,key=000,inCond:1,outCond:5,flow seq=031,rIdx=r0x1049
;<>Start of new flow, seq=0x32 ancestor = 0x30
;  from: 031 030 ; to: 034 033 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=2
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1512:pic14_toBoolean
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1047 present in same bank as r0x1046
	MOVF	r0x1047,W	;id=217,key=000,inCond:1,outCond:14,flow seq=032,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1048 present in same bank as r0x1046
	IORWF	r0x1048,W	;id=220,key=001,inCond:11,outCond:14,flow seq=032,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=222,key=002,inCond:25,outCond:0,flow seq=032
;<>Start of new flow, seq=0x33 ancestor = 0x32
;  from: 032 ; to: 03b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 4
	GOTO	_00108_DS_	;id=225,key=000,inCond:0,outCond:0,flow seq=033
;<>Start of new flow, seq=0x34 ancestor = 0x32
;  from: 032 ; to: 035 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x1045, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1046
	MOVF	r0x1044,W	;id=237,key=000,inCond:1,outCond:14,flow seq=034,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1046's banks
	MOVWF	STK01	;id=240,key=001,inCond:10,outCond:1,flow seq=034
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1046
	MOVF	r0x1043,W	;id=244,key=002,inCond:1,outCond:14,flow seq=034,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1046's banks
	MOVWF	STK00	;id=247,key=003,inCond:10,outCond:1,flow seq=034
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1046
	MOVF	r0x1042,W	;id=251,key=004,inCond:1,outCond:14,flow seq=034,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=253,key=005,inCond:0,outCond:0,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=255,key=006,inCond:10,outCond:1e,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x34
;  from: 034 ; to: 037 036 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=257,key=000,inCond:0,outCond:0,flow seq=035
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104A 
	BANKSEL	r0x1047	;id=2377,key=001,inCond:0,outCond:0,flow seq=035
	MOVWF	r0x1047	;id=260,key=002,inCond:10,outCond:1,flow seq=035,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x1045, size=3, left AOP_REG=r0x1045, size=3, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1047
	INCF	r0x1044,F	;id=273,key=003,inCond:1,outCond:5,flow seq=035,rIdx=r0x1045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=275,key=004,inCond:25,outCond:0,flow seq=035
;<>Start of new flow, seq=0x36 ancestor = 0x35
;  from: 035 ; to: 037 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1047
	INCF	r0x1043,F	;id=278,key=000,inCond:1,outCond:5,flow seq=036,rIdx=r0x1046
;<>Start of new flow, seq=0x37 ancestor = 0x35
;  from: 036 035 ; to: 039 038 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=280,key=000,inCond:25,outCond:0,flow seq=037
;<>Start of new flow, seq=0x38 ancestor = 0x37
;  from: 037 ; to: 039 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1047
	INCF	r0x1042,F	;id=283,key=000,inCond:1,outCond:5,flow seq=038,rIdx=r0x1047
;<>Start of new flow, seq=0x39 ancestor = 0x37
;  from: 038 037 ; to: 03a 
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
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x1047 present in same bank as r0x1047
	MOVF	r0x1047,W	;id=297,key=000,inCond:1,outCond:14,flow seq=039,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_putch	;id=299,key=001,inCond:0,outCond:0,flow seq=039
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=301,key=002,inCond:10,outCond:1e,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x39
;  from: 039 ; to: 030 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=303,key=000,inCond:0,outCond:0,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 4
	GOTO	_00105_DS_	;id=310,key=001,inCond:0,outCond:0,flow seq=03a
;<>Start of new flow, seq=0x3b ancestor = 0x33
;  from: 033 ; to: 
;goto	_00105_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00108_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00108_DS_:
;	.line	36; "../../../src/print.c"	}
	RETURN		;id=322,key=000,inCond:10,outCond:e,flow seq=03b
;<>Start of new flow, seq=0x3c
;  from: ; to: 
; exit point of _lcd_put
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  227+   60 =   287 instructions (  694 byte)

	end
