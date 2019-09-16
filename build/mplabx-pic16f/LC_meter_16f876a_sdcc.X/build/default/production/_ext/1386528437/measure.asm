;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../src/measure.c"
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
	extern	_delay10ms
	extern	_cycle_eater
	extern	_delay_ms
	extern	_delay_us
	extern	_Delay100TCYx
	extern	_Delay10KTCYx
	extern	_Delay10TCYx
	extern	_Delay1KTCYx
	extern	_uart_putch
	extern	_uart_getch
	extern	_uart_poll
	extern	_uart_init
	extern	_uart_isr
	extern	_uart_enable
	extern	_uart_disable
	extern	_uart_puts
	extern	_uart_puts2
	extern	_put_str
	extern	_output_putch
	extern	_lcd_puts
	extern	_print_digit
	extern	_print_unit
	extern	_print_reading
	extern	_indicator
	extern	_print_print_float
	extern	_format_number
	extern	_format_xint32
	extern	_format_double
	extern	_timer0_init
	extern	_timer0_read_ps
	extern	_timer2_init
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
	extern	_F1
	extern	_F2
	extern	_F3
	extern	_CCal
	extern	_dvar
	extern	_putchar_ptr
	extern	_uart_brg
	extern	_logo_image
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
	global	_measure_inductance
	global	_measure_capacitance
	global	_measure_freq
	global	_calibrate

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_measure_0	udata
r0x1029	res	1
r0x1028	res	1
r0x102A	res	1
r0x1012	res	1
r0x101D	res	1
r0x101C	res	1
r0x101F	res	1
r0x101E	res	1
r0x1023	res	1
r0x1022	res	1
r0x1021	res	1
r0x1020	res	1
r0x1026	res	1
r0x1025	res	1
r0x1024	res	1
r0x1015	res	1
r0x1014	res	1
r0x1017	res	1
r0x1016	res	1
r0x101B	res	1
r0x101A	res	1
r0x1019	res	1
r0x1018	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_measure_0	code
___str_0
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_measure	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsdiv
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsdiv
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;15 compiler assigned registers:
;   r0x1014
;   STK00
;   r0x1015
;   STK01
;   STK02
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x1016
;   r0x1017
;   r0x1018
;   r0x1019
;   r0x101A
;   r0x101B
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=12previous max_key=11 
;;	-----------------------------------------
;;	 function measure_inductance
;;	-----------------------------------------
;_measure_inductance:
S_measure__measure_inductance	code
_measure_inductance:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	206; "../../../src/measure.c"	var = measure_freq();
	PAGESEL	_measure_freq	;id=3065,key=000,inCond:0,outCond:0,flow seq=001
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_freq	;id=3067,key=001,inCond:10,outCond:1e,flow seq=001
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 001 ; to: 003 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3069,key=000,inCond:0,outCond:0,flow seq=002
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
	BANKSEL	r0x1014	;id=5937,key=001,inCond:0,outCond:0,flow seq=002
	MOVWF	r0x1014	;id=3076,key=002,inCond:10,outCond:1,flow seq=002,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1014's banks
	MOVF	STK00,W	;id=3079,key=003,inCond:1,outCond:14,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1014
;	.line	208; "../../../src/measure.c"	F3 = (double)var;
	MOVWF	r0x1015	;id=5907,key=004,inCond:10,outCond:1,flow seq=002,rIdx=r0x105B
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1014's banks
	MOVWF	STK00	;id=3104,key=005,inCond:10,outCond:1,flow seq=002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1014
	MOVF	r0x1014,W	;id=3109,key=006,inCond:1,outCond:14,flow seq=002,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___uint2fs	;id=3111,key=007,inCond:0,outCond:0,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___uint2fs	;id=3113,key=008,inCond:10,outCond:1e,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3115,key=000,inCond:0,outCond:0,flow seq=003
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_DIR=_F3, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=3
	BANKSEL	_F3	;id=5943,key=001,inCond:0,outCond:0,flow seq=003
	MOVWF	(_F3 + 3)	;id=3124,key=002,inCond:10,outCond:1,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F3's banks
	MOVF	STK00,W	;id=3127,key=003,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVWF	(_F3 + 2)	;id=3131,key=004,inCond:10,outCond:1,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F3's banks
	MOVF	STK01,W	;id=3134,key=005,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVWF	(_F3 + 1)	;id=3138,key=006,inCond:10,outCond:1,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F3's banks
	MOVF	STK02,W	;id=3141,key=007,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=0
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVWF	_F3	;id=3145,key=008,inCond:10,outCond:1,flow seq=003
;; 	2188 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
;	.line	209; "../../../src/measure.c"	if(F3 > F1)
	MOVF	_F3,W	;id=3169,key=009,inCond:1,outCond:14,flow seq=003
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F3's banks
	MOVWF	STK06	;id=3173,key=00a,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=3179,key=00b,inCond:1,outCond:14,flow seq=003
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F3's banks
	MOVWF	STK05	;id=3183,key=00c,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=3189,key=00d,inCond:1,outCond:14,flow seq=003
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F3's banks
	MOVWF	STK04	;id=3193,key=00e,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=3199,key=00f,inCond:1,outCond:14,flow seq=003
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F3's banks
	MOVWF	STK03	;id=3205,key=010,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
	BANKSEL	_F1	;id=5958,key=011,inCond:0,outCond:0,flow seq=003
	MOVF	_F1,W	;id=3211,key=012,inCond:1,outCond:14,flow seq=003
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F1's banks
	MOVWF	STK02	;id=3215,key=013,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=3221,key=014,inCond:1,outCond:14,flow seq=003
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F1's banks
	MOVWF	STK01	;id=3225,key=015,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=3231,key=016,inCond:1,outCond:14,flow seq=003
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F1's banks
	MOVWF	STK00	;id=3235,key=017,inCond:10,outCond:1,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=3241,key=018,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=3243,key=019,inCond:0,outCond:0,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=3245,key=01a,inCond:10,outCond:1e,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 006 005 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3247,key=000,inCond:0,outCond:0,flow seq=004
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
	BANKSEL	r0x1015	;id=5966,key=001,inCond:0,outCond:0,flow seq=004
	MOVWF	r0x1015	;id=3254,key=002,inCond:10,outCond:1,flow seq=004,rIdx=r0x105B
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1015
	MOVF	r0x1015,W	;id=5908,key=003,inCond:1,outCond:14,flow seq=004,rIdx=r0x105B
	BTFSC	STATUS,2	;id=3269,key=004,inCond:25,outCond:0,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x4
;  from: 004 ; to: 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=2, label offset 27
	GOTO	_00129_DS_	;id=3272,key=000,inCond:0,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x4
;  from: 004 ; to: 007 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	line = 7046 result AOP_DIR=_F3, size=4, left -=-, size=0, right AOP_DIR=_F1, size=4
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
;	.line	210; "../../../src/measure.c"	F3 = F1; // max freq is F1;
	BANKSEL	_F1	;id=5968,key=000,inCond:0,outCond:0,flow seq=006
	MOVF	_F1,W	;id=3288,key=001,inCond:1,outCond:14,flow seq=006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=0
	BANKSEL	_F3	;id=5969,key=002,inCond:0,outCond:0,flow seq=006
	MOVWF	_F3	;id=3292,key=003,inCond:10,outCond:1,flow seq=006
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
	BANKSEL	_F1	;id=5970,key=004,inCond:0,outCond:0,flow seq=006
	MOVF	(_F1 + 1),W	;id=3299,key=005,inCond:1,outCond:14,flow seq=006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=1
	BANKSEL	_F3	;id=5971,key=006,inCond:0,outCond:0,flow seq=006
	MOVWF	(_F3 + 1)	;id=3303,key=007,inCond:10,outCond:1,flow seq=006
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
	BANKSEL	_F1	;id=5972,key=008,inCond:0,outCond:0,flow seq=006
	MOVF	(_F1 + 2),W	;id=3310,key=009,inCond:1,outCond:14,flow seq=006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=2
	BANKSEL	_F3	;id=5973,key=00a,inCond:0,outCond:0,flow seq=006
	MOVWF	(_F3 + 2)	;id=3314,key=00b,inCond:10,outCond:1,flow seq=006
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
	BANKSEL	_F1	;id=5974,key=00c,inCond:0,outCond:0,flow seq=006
	MOVF	(_F1 + 3),W	;id=3321,key=00d,inCond:1,outCond:14,flow seq=006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=3
	BANKSEL	_F3	;id=5975,key=00e,inCond:0,outCond:0,flow seq=006
	MOVWF	(_F3 + 3)	;id=3325,key=00f,inCond:10,outCond:1,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x5
;  from: 006 005 ; to: 008 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00129_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00129_DS_:
;	.line	212; "../../../src/measure.c"	numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (GATE_PERIOD * GATE_PERIOD);
	BANKSEL	_F1	;id=5977,key=000,inCond:0,outCond:0,flow seq=007
	MOVF	_F1,W	;id=3351,key=001,inCond:1,outCond:14,flow seq=007
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F1's banks
	MOVWF	STK06	;id=3355,key=002,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=3361,key=003,inCond:1,outCond:14,flow seq=007
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F1's banks
	MOVWF	STK05	;id=3365,key=004,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=3371,key=005,inCond:1,outCond:14,flow seq=007
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F1's banks
	MOVWF	STK04	;id=3375,key=006,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=3381,key=007,inCond:1,outCond:14,flow seq=007
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F1's banks
	MOVWF	STK03	;id=3387,key=008,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	_F1,W	;id=3393,key=009,inCond:1,outCond:14,flow seq=007
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F1's banks
	MOVWF	STK02	;id=3397,key=00a,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=3403,key=00b,inCond:1,outCond:14,flow seq=007
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F1's banks
	MOVWF	STK01	;id=3407,key=00c,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=3413,key=00d,inCond:1,outCond:14,flow seq=007
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F1's banks
	MOVWF	STK00	;id=3417,key=00e,inCond:10,outCond:1,flow seq=007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=3423,key=00f,inCond:1,outCond:14,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=3425,key=010,inCond:0,outCond:0,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=3427,key=011,inCond:10,outCond:1e,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 009 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3429,key=000,inCond:0,outCond:0,flow seq=008
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=5993,key=001,inCond:0,outCond:0,flow seq=008
	MOVWF	r0x1016	;id=3436,key=002,inCond:10,outCond:1,flow seq=008,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=3439,key=003,inCond:1,outCond:14,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=3442,key=004,inCond:10,outCond:1,flow seq=008,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=3445,key=005,inCond:1,outCond:14,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=3448,key=006,inCond:10,outCond:1,flow seq=008,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=3451,key=007,inCond:1,outCond:14,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
	MOVWF	r0x1015	;id=3454,key=008,inCond:10,outCond:1,flow seq=008,rIdx=r0x105B
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
	BANKSEL	_F3	;id=6000,key=009,inCond:0,outCond:0,flow seq=008
	MOVF	_F3,W	;id=3477,key=00a,inCond:1,outCond:14,flow seq=008
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F3's banks
	MOVWF	STK06	;id=3481,key=00b,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=3487,key=00c,inCond:1,outCond:14,flow seq=008
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F3's banks
	MOVWF	STK05	;id=3491,key=00d,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=3497,key=00e,inCond:1,outCond:14,flow seq=008
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F3's banks
	MOVWF	STK04	;id=3501,key=00f,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=3507,key=010,inCond:1,outCond:14,flow seq=008
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F3's banks
	MOVWF	STK03	;id=3513,key=011,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	_F3,W	;id=3519,key=012,inCond:1,outCond:14,flow seq=008
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F3's banks
	MOVWF	STK02	;id=3523,key=013,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=3529,key=014,inCond:1,outCond:14,flow seq=008
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F3's banks
	MOVWF	STK01	;id=3533,key=015,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=3539,key=016,inCond:1,outCond:14,flow seq=008
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F3's banks
	MOVWF	STK00	;id=3543,key=017,inCond:10,outCond:1,flow seq=008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=3549,key=018,inCond:1,outCond:14,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=3551,key=019,inCond:0,outCond:0,flow seq=008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=3553,key=01a,inCond:10,outCond:1e,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x8
;  from: 008 ; to: 00a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3555,key=000,inCond:0,outCond:0,flow seq=009
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6016,key=001,inCond:0,outCond:0,flow seq=009
	MOVWF	r0x1018	;id=3562,key=002,inCond:10,outCond:1,flow seq=009,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=3565,key=003,inCond:1,outCond:14,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=3568,key=004,inCond:10,outCond:1,flow seq=009,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=3571,key=005,inCond:1,outCond:14,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=3574,key=006,inCond:10,outCond:1,flow seq=009,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=3577,key=007,inCond:1,outCond:14,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=5909,key=008,inCond:10,outCond:1,flow seq=009,rIdx=r0x105F
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1018's banks
	MOVWF	STK06	;id=3603,key=009,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVF	r0x101A,W	;id=3608,key=00a,inCond:1,outCond:14,flow seq=009,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1018's banks
	MOVWF	STK05	;id=3612,key=00b,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVF	r0x1019,W	;id=3617,key=00c,inCond:1,outCond:14,flow seq=009,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1018's banks
	MOVWF	STK04	;id=3621,key=00d,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1018
	MOVF	r0x1018,W	;id=3626,key=00e,inCond:1,outCond:14,flow seq=009,rIdx=r0x1062
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1018's banks
	MOVWF	STK03	;id=3631,key=00f,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1018
	MOVF	r0x1015,W	;id=3636,key=010,inCond:1,outCond:14,flow seq=009,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVWF	STK02	;id=3640,key=011,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1018
	MOVF	r0x1014,W	;id=3645,key=012,inCond:1,outCond:14,flow seq=009,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVWF	STK01	;id=3649,key=013,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1018
	MOVF	r0x1017,W	;id=3654,key=014,inCond:1,outCond:14,flow seq=009,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVWF	STK00	;id=3658,key=015,inCond:10,outCond:1,flow seq=009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1018
	MOVF	r0x1016,W	;id=3663,key=016,inCond:1,outCond:14,flow seq=009,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fssub	;id=3665,key=017,inCond:0,outCond:0,flow seq=009
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fssub	;id=3667,key=018,inCond:10,outCond:1e,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 009 ; to: 00b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3669,key=000,inCond:0,outCond:0,flow seq=00a
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6038,key=001,inCond:0,outCond:0,flow seq=00a
	MOVWF	r0x1018	;id=3676,key=002,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=3679,key=003,inCond:1,outCond:14,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=3682,key=004,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=3685,key=005,inCond:1,outCond:14,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=3688,key=006,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=3691,key=007,inCond:1,outCond:14,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=3694,key=008,inCond:10,outCond:1,flow seq=00a,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1018
	MOVF	r0x1015,W	;id=3713,key=009,inCond:1,outCond:14,flow seq=00a,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1018's banks
	MOVWF	STK06	;id=3717,key=00a,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1018
	MOVF	r0x1014,W	;id=3722,key=00b,inCond:1,outCond:14,flow seq=00a,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1018's banks
	MOVWF	STK05	;id=3726,key=00c,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1018
	MOVF	r0x1017,W	;id=3731,key=00d,inCond:1,outCond:14,flow seq=00a,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1018's banks
	MOVWF	STK04	;id=3735,key=00e,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1018
	MOVF	r0x1016,W	;id=3740,key=00f,inCond:1,outCond:14,flow seq=00a,rIdx=r0x105E
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1018's banks
	MOVWF	STK03	;id=3745,key=010,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVF	r0x101B,W	;id=3750,key=011,inCond:1,outCond:14,flow seq=00a,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVWF	STK02	;id=3754,key=012,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVF	r0x101A,W	;id=3759,key=013,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVWF	STK01	;id=3763,key=014,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVF	r0x1019,W	;id=3768,key=015,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVWF	STK00	;id=3772,key=016,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1018
	MOVF	r0x1018,W	;id=3777,key=017,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=3779,key=018,inCond:0,outCond:0,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=3781,key=019,inCond:10,outCond:1e,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3783,key=000,inCond:0,outCond:0,flow seq=00b
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6061,key=001,inCond:0,outCond:0,flow seq=00b
	MOVWF	r0x1016	;id=3790,key=002,inCond:10,outCond:1,flow seq=00b,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=3793,key=003,inCond:1,outCond:14,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=3796,key=004,inCond:10,outCond:1,flow seq=00b,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=3799,key=005,inCond:1,outCond:14,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=3802,key=006,inCond:10,outCond:1,flow seq=00b,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=3805,key=007,inCond:1,outCond:14,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
	MOVWF	r0x1015	;id=5910,key=008,inCond:10,outCond:1,flow seq=00b,rIdx=r0x105B
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1016's banks
	MOVWF	STK06	;id=3830,key=009,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVF	r0x1014,W	;id=3835,key=00a,inCond:1,outCond:14,flow seq=00b,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1016's banks
	MOVWF	STK05	;id=3839,key=00b,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVF	r0x1017,W	;id=3844,key=00c,inCond:1,outCond:14,flow seq=00b,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1016's banks
	MOVWF	STK04	;id=3848,key=00d,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1016
	MOVF	r0x1016,W	;id=3853,key=00e,inCond:1,outCond:14,flow seq=00b,rIdx=r0x105E
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1016's banks
	MOVWF	STK03	;id=3857,key=00f,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=3860,key=010,inCond:400,outCond:10,flow seq=00b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVWF	STK02	;id=3864,key=011,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x40	;id=3867,key=012,inCond:400,outCond:10,flow seq=00b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVWF	STK01	;id=3871,key=013,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x1c	;id=3874,key=014,inCond:400,outCond:10,flow seq=00b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVWF	STK00	;id=3878,key=015,inCond:10,outCond:1,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x46	;id=3881,key=016,inCond:400,outCond:10,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=3883,key=017,inCond:0,outCond:0,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=3885,key=018,inCond:10,outCond:1e,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xb
;  from: 00b ; to: 00d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3887,key=000,inCond:0,outCond:0,flow seq=00c
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6079,key=001,inCond:0,outCond:0,flow seq=00c
	MOVWF	r0x1016	;id=3894,key=002,inCond:10,outCond:1,flow seq=00c,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=3897,key=003,inCond:1,outCond:14,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=3900,key=004,inCond:10,outCond:1,flow seq=00c,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=3903,key=005,inCond:1,outCond:14,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=3906,key=006,inCond:10,outCond:1,flow seq=00c,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=3909,key=007,inCond:1,outCond:14,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
	MOVWF	r0x1015	;id=3912,key=008,inCond:10,outCond:1,flow seq=00c,rIdx=r0x105B
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
;	.line	214; "../../../src/measure.c"	denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	BANKSEL	_F1	;id=6086,key=009,inCond:0,outCond:0,flow seq=00c
	MOVF	_F1,W	;id=3934,key=00a,inCond:1,outCond:14,flow seq=00c
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F1's banks
	MOVWF	STK06	;id=3938,key=00b,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=3944,key=00c,inCond:1,outCond:14,flow seq=00c
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F1's banks
	MOVWF	STK05	;id=3948,key=00d,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=3954,key=00e,inCond:1,outCond:14,flow seq=00c
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F1's banks
	MOVWF	STK04	;id=3958,key=00f,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=3964,key=010,inCond:1,outCond:14,flow seq=00c
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F1's banks
	MOVWF	STK03	;id=3968,key=011,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xe6	;id=3971,key=012,inCond:400,outCond:10,flow seq=00c
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F1's banks
	MOVWF	STK02	;id=3975,key=013,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xe9	;id=3978,key=014,inCond:400,outCond:10,flow seq=00c
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F1's banks
	MOVWF	STK01	;id=3982,key=015,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x1d	;id=3985,key=016,inCond:400,outCond:10,flow seq=00c
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F1's banks
	MOVWF	STK00	;id=3989,key=017,inCond:10,outCond:1,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x42	;id=3992,key=018,inCond:400,outCond:10,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=3994,key=019,inCond:0,outCond:0,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=3996,key=01a,inCond:10,outCond:1e,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 00e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3998,key=000,inCond:0,outCond:0,flow seq=00d
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6098,key=001,inCond:0,outCond:0,flow seq=00d
	MOVWF	r0x1018	;id=4005,key=002,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=4008,key=003,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=4011,key=004,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=4014,key=005,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=4017,key=006,inCond:10,outCond:1,flow seq=00d,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=4020,key=007,inCond:1,outCond:14,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=4023,key=008,inCond:10,outCond:1,flow seq=00d,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;;	695 register type nRegs=4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
	BANKSEL	_F1	;id=6105,key=009,inCond:0,outCond:0,flow seq=00d
	MOVF	_F1,W	;id=4045,key=00a,inCond:1,outCond:14,flow seq=00d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F1's banks
	MOVWF	STK06	;id=4049,key=00b,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=4055,key=00c,inCond:1,outCond:14,flow seq=00d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F1's banks
	MOVWF	STK05	;id=4059,key=00d,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=4065,key=00e,inCond:1,outCond:14,flow seq=00d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F1's banks
	MOVWF	STK04	;id=4069,key=00f,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=4075,key=010,inCond:1,outCond:14,flow seq=00d
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F1's banks
	MOVWF	STK03	;id=4080,key=011,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6113,key=012,inCond:0,outCond:0,flow seq=00d
	MOVF	r0x101B,W	;id=4085,key=013,inCond:1,outCond:14,flow seq=00d,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=4089,key=014,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=4094,key=015,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=4098,key=016,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	MOVF	r0x1019,W	;id=4103,key=017,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=4107,key=018,inCond:10,outCond:1,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x101B
	MOVF	r0x1018,W	;id=4112,key=019,inCond:1,outCond:14,flow seq=00d,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=4114,key=01a,inCond:0,outCond:0,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=4116,key=01b,inCond:10,outCond:1e,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 00d ; to: 00f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4118,key=000,inCond:0,outCond:0,flow seq=00e
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6121,key=001,inCond:0,outCond:0,flow seq=00e
	MOVWF	r0x1018	;id=4125,key=002,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=4128,key=003,inCond:1,outCond:14,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=4131,key=004,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=4134,key=005,inCond:1,outCond:14,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=4137,key=006,inCond:10,outCond:1,flow seq=00e,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=4140,key=007,inCond:1,outCond:14,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=4143,key=008,inCond:10,outCond:1,flow seq=00e,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;;	695 register type nRegs=4
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=0
	BANKSEL	_F2	;id=6128,key=009,inCond:0,outCond:0,flow seq=00e
	MOVF	_F2,W	;id=4165,key=00a,inCond:1,outCond:14,flow seq=00e
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F2's banks
	MOVWF	STK06	;id=4169,key=00b,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=1
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 1),W	;id=4175,key=00c,inCond:1,outCond:14,flow seq=00e
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F2's banks
	MOVWF	STK05	;id=4179,key=00d,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=2
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 2),W	;id=4185,key=00e,inCond:1,outCond:14,flow seq=00e
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F2's banks
	MOVWF	STK04	;id=4189,key=00f,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=3
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 3),W	;id=4195,key=010,inCond:1,outCond:14,flow seq=00e
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F2's banks
	MOVWF	STK03	;id=4200,key=011,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6136,key=012,inCond:0,outCond:0,flow seq=00e
	MOVF	r0x101B,W	;id=4205,key=013,inCond:1,outCond:14,flow seq=00e,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=4209,key=014,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=4214,key=015,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=4218,key=016,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	MOVF	r0x1019,W	;id=4223,key=017,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=4227,key=018,inCond:10,outCond:1,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x101B
	MOVF	r0x1018,W	;id=4232,key=019,inCond:1,outCond:14,flow seq=00e,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=4234,key=01a,inCond:0,outCond:0,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=4236,key=01b,inCond:10,outCond:1e,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xe
;  from: 00e ; to: 010 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4238,key=000,inCond:0,outCond:0,flow seq=00f
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6144,key=001,inCond:0,outCond:0,flow seq=00f
	MOVWF	r0x1018	;id=4245,key=002,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=4248,key=003,inCond:1,outCond:14,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=4251,key=004,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=4254,key=005,inCond:1,outCond:14,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=4257,key=006,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=4260,key=007,inCond:1,outCond:14,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=4263,key=008,inCond:10,outCond:1,flow seq=00f,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;;	695 register type nRegs=4
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=0
	BANKSEL	_F2	;id=6151,key=009,inCond:0,outCond:0,flow seq=00f
	MOVF	_F2,W	;id=4285,key=00a,inCond:1,outCond:14,flow seq=00f
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F2's banks
	MOVWF	STK06	;id=4289,key=00b,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=1
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 1),W	;id=4295,key=00c,inCond:1,outCond:14,flow seq=00f
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F2's banks
	MOVWF	STK05	;id=4299,key=00d,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=2
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 2),W	;id=4305,key=00e,inCond:1,outCond:14,flow seq=00f
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F2's banks
	MOVWF	STK04	;id=4309,key=00f,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=3
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 3),W	;id=4315,key=010,inCond:1,outCond:14,flow seq=00f
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F2's banks
	MOVWF	STK03	;id=4320,key=011,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6159,key=012,inCond:0,outCond:0,flow seq=00f
	MOVF	r0x101B,W	;id=4325,key=013,inCond:1,outCond:14,flow seq=00f,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=4329,key=014,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=4334,key=015,inCond:1,outCond:14,flow seq=00f,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=4338,key=016,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	MOVF	r0x1019,W	;id=4343,key=017,inCond:1,outCond:14,flow seq=00f,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=4347,key=018,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x101B
	MOVF	r0x1018,W	;id=4352,key=019,inCond:1,outCond:14,flow seq=00f,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=4354,key=01a,inCond:0,outCond:0,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=4356,key=01b,inCond:10,outCond:1e,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 011 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4358,key=000,inCond:0,outCond:0,flow seq=010
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6167,key=001,inCond:0,outCond:0,flow seq=010
	MOVWF	r0x1018	;id=4365,key=002,inCond:10,outCond:1,flow seq=010,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=4368,key=003,inCond:1,outCond:14,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=4371,key=004,inCond:10,outCond:1,flow seq=010,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=4374,key=005,inCond:1,outCond:14,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=4377,key=006,inCond:10,outCond:1,flow seq=010,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=4380,key=007,inCond:1,outCond:14,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=4383,key=008,inCond:10,outCond:1,flow seq=010,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;;	695 register type nRegs=4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
	BANKSEL	_F3	;id=6174,key=009,inCond:0,outCond:0,flow seq=010
	MOVF	_F3,W	;id=4405,key=00a,inCond:1,outCond:14,flow seq=010
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F3's banks
	MOVWF	STK06	;id=4409,key=00b,inCond:10,outCond:1,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=4415,key=00c,inCond:1,outCond:14,flow seq=010
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F3's banks
	MOVWF	STK05	;id=4419,key=00d,inCond:10,outCond:1,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=4425,key=00e,inCond:1,outCond:14,flow seq=010
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F3's banks
	MOVWF	STK04	;id=4429,key=00f,inCond:10,outCond:1,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=4435,key=010,inCond:1,outCond:14,flow seq=010
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F3's banks
	MOVWF	STK03	;id=4440,key=011,inCond:10,outCond:1,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6182,key=012,inCond:0,outCond:0,flow seq=010
	MOVF	r0x101B,W	;id=4445,key=013,inCond:1,outCond:14,flow seq=010,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=4449,key=014,inCond:10,outCond:1,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=4454,key=015,inCond:1,outCond:14,flow seq=010,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=4458,key=016,inCond:10,outCond:1,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	MOVF	r0x1019,W	;id=4463,key=017,inCond:1,outCond:14,flow seq=010,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=4467,key=018,inCond:10,outCond:1,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x101B
	MOVF	r0x1018,W	;id=4472,key=019,inCond:1,outCond:14,flow seq=010,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=4474,key=01a,inCond:0,outCond:0,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=4476,key=01b,inCond:10,outCond:1e,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0x10
;  from: 010 ; to: 012 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4478,key=000,inCond:0,outCond:0,flow seq=011
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6190,key=001,inCond:0,outCond:0,flow seq=011
	MOVWF	r0x1018	;id=4485,key=002,inCond:10,outCond:1,flow seq=011,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=4488,key=003,inCond:1,outCond:14,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=4491,key=004,inCond:10,outCond:1,flow seq=011,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=4494,key=005,inCond:1,outCond:14,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=4497,key=006,inCond:10,outCond:1,flow seq=011,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=4500,key=007,inCond:1,outCond:14,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=4503,key=008,inCond:10,outCond:1,flow seq=011,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;;	695 register type nRegs=4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
	BANKSEL	_F3	;id=6197,key=009,inCond:0,outCond:0,flow seq=011
	MOVF	_F3,W	;id=4525,key=00a,inCond:1,outCond:14,flow seq=011
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F3's banks
	MOVWF	STK06	;id=4529,key=00b,inCond:10,outCond:1,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=4535,key=00c,inCond:1,outCond:14,flow seq=011
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F3's banks
	MOVWF	STK05	;id=4539,key=00d,inCond:10,outCond:1,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=4545,key=00e,inCond:1,outCond:14,flow seq=011
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F3's banks
	MOVWF	STK04	;id=4549,key=00f,inCond:10,outCond:1,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=4555,key=010,inCond:1,outCond:14,flow seq=011
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F3's banks
	MOVWF	STK03	;id=4560,key=011,inCond:10,outCond:1,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6205,key=012,inCond:0,outCond:0,flow seq=011
	MOVF	r0x101B,W	;id=4565,key=013,inCond:1,outCond:14,flow seq=011,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=4569,key=014,inCond:10,outCond:1,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=4574,key=015,inCond:1,outCond:14,flow seq=011,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=4578,key=016,inCond:10,outCond:1,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	MOVF	r0x1019,W	;id=4583,key=017,inCond:1,outCond:14,flow seq=011,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=4587,key=018,inCond:10,outCond:1,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x101B
	MOVF	r0x1018,W	;id=4592,key=019,inCond:1,outCond:14,flow seq=011,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=4594,key=01a,inCond:0,outCond:0,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=4596,key=01b,inCond:10,outCond:1e,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 013 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4598,key=000,inCond:0,outCond:0,flow seq=012
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6213,key=001,inCond:0,outCond:0,flow seq=012
	MOVWF	r0x1018	;id=4605,key=002,inCond:10,outCond:1,flow seq=012,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=4608,key=003,inCond:1,outCond:14,flow seq=012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=4611,key=004,inCond:10,outCond:1,flow seq=012,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=4614,key=005,inCond:1,outCond:14,flow seq=012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=4617,key=006,inCond:10,outCond:1,flow seq=012,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=4620,key=007,inCond:1,outCond:14,flow seq=012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
	MOVWF	r0x101B	;id=4623,key=008,inCond:10,outCond:1,flow seq=012,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;;	695 register type nRegs=4
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=0
	BANKSEL	_CCal	;id=6220,key=009,inCond:0,outCond:0,flow seq=012
	MOVF	_CCal,W	;id=4645,key=00a,inCond:1,outCond:14,flow seq=012
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _CCal's banks
	MOVWF	STK06	;id=4649,key=00b,inCond:10,outCond:1,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=1
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 1),W	;id=4655,key=00c,inCond:1,outCond:14,flow seq=012
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _CCal's banks
	MOVWF	STK05	;id=4659,key=00d,inCond:10,outCond:1,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=2
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 2),W	;id=4665,key=00e,inCond:1,outCond:14,flow seq=012
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _CCal's banks
	MOVWF	STK04	;id=4669,key=00f,inCond:10,outCond:1,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=3
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 3),W	;id=4675,key=010,inCond:1,outCond:14,flow seq=012
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _CCal's banks
	MOVWF	STK03	;id=4680,key=011,inCond:10,outCond:1,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6228,key=012,inCond:0,outCond:0,flow seq=012
	MOVF	r0x101B,W	;id=4685,key=013,inCond:1,outCond:14,flow seq=012,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=4689,key=014,inCond:10,outCond:1,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x101B
	MOVF	r0x101A,W	;id=4694,key=015,inCond:1,outCond:14,flow seq=012,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=4698,key=016,inCond:10,outCond:1,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x101B
	MOVF	r0x1019,W	;id=4703,key=017,inCond:1,outCond:14,flow seq=012,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=4707,key=018,inCond:10,outCond:1,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x101B
	MOVF	r0x1018,W	;id=4712,key=019,inCond:1,outCond:14,flow seq=012,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=4714,key=01a,inCond:0,outCond:0,flow seq=012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=4716,key=01b,inCond:10,outCond:1e,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x12
;  from: 012 ; to: 014 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4718,key=000,inCond:0,outCond:0,flow seq=013
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
	BANKSEL	r0x1018	;id=6236,key=001,inCond:0,outCond:0,flow seq=013
	MOVWF	r0x1018	;id=4725,key=002,inCond:10,outCond:1,flow seq=013,rIdx=r0x1062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVF	STK00,W	;id=4728,key=003,inCond:1,outCond:14,flow seq=013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=4731,key=004,inCond:10,outCond:1,flow seq=013,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVF	STK01,W	;id=4734,key=005,inCond:1,outCond:14,flow seq=013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=4737,key=006,inCond:10,outCond:1,flow seq=013,rIdx=r0x1060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVF	STK02,W	;id=4740,key=007,inCond:1,outCond:14,flow seq=013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1018
;	.line	216; "../../../src/measure.c"	Lin = (numerator / denominator) * 1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }
	MOVWF	r0x101B	;id=5911,key=008,inCond:10,outCond:1,flow seq=013,rIdx=r0x105F
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1018's banks
	MOVWF	STK06	;id=4767,key=009,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVF	r0x101A,W	;id=4772,key=00a,inCond:1,outCond:14,flow seq=013,rIdx=r0x1060
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1018's banks
	MOVWF	STK05	;id=4776,key=00b,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVF	r0x1019,W	;id=4781,key=00c,inCond:1,outCond:14,flow seq=013,rIdx=r0x1061
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1018's banks
	MOVWF	STK04	;id=4785,key=00d,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1062 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1018
	MOVF	r0x1018,W	;id=4790,key=00e,inCond:1,outCond:14,flow seq=013,rIdx=r0x1062
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1018's banks
	MOVWF	STK03	;id=4795,key=00f,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1018
	MOVF	r0x1015,W	;id=4800,key=010,inCond:1,outCond:14,flow seq=013,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1018's banks
	MOVWF	STK02	;id=4804,key=011,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1018
	MOVF	r0x1014,W	;id=4809,key=012,inCond:1,outCond:14,flow seq=013,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVWF	STK01	;id=4813,key=013,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1018
	MOVF	r0x1017,W	;id=4818,key=014,inCond:1,outCond:14,flow seq=013,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVWF	STK00	;id=4822,key=015,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1018
	MOVF	r0x1016,W	;id=4827,key=016,inCond:1,outCond:14,flow seq=013,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=4829,key=017,inCond:0,outCond:0,flow seq=013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=4831,key=018,inCond:10,outCond:1e,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 013 ; to: 015 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4833,key=000,inCond:0,outCond:0,flow seq=014
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6258,key=001,inCond:0,outCond:0,flow seq=014
	MOVWF	r0x1016	;id=4840,key=002,inCond:10,outCond:1,flow seq=014,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=4843,key=003,inCond:1,outCond:14,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=4846,key=004,inCond:10,outCond:1,flow seq=014,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=4849,key=005,inCond:1,outCond:14,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=4852,key=006,inCond:10,outCond:1,flow seq=014,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=4855,key=007,inCond:1,outCond:14,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
	MOVWF	r0x1015	;id=5912,key=008,inCond:10,outCond:1,flow seq=014,rIdx=r0x105B
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1016's banks
	MOVWF	STK06	;id=4880,key=009,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVF	r0x1014,W	;id=4885,key=00a,inCond:1,outCond:14,flow seq=014,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1016's banks
	MOVWF	STK05	;id=4889,key=00b,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVF	r0x1017,W	;id=4894,key=00c,inCond:1,outCond:14,flow seq=014,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1016's banks
	MOVWF	STK04	;id=4898,key=00d,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1016
	MOVF	r0x1016,W	;id=4903,key=00e,inCond:1,outCond:14,flow seq=014,rIdx=r0x105E
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1016's banks
	MOVWF	STK03	;id=4907,key=00f,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xa9	;id=4910,key=010,inCond:400,outCond:10,flow seq=014
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVWF	STK02	;id=4914,key=011,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x5f	;id=4917,key=012,inCond:400,outCond:10,flow seq=014
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVWF	STK01	;id=4921,key=013,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x63	;id=4924,key=014,inCond:400,outCond:10,flow seq=014
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVWF	STK00	;id=4928,key=015,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x58	;id=4931,key=016,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=4933,key=017,inCond:0,outCond:0,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=4935,key=018,inCond:10,outCond:1e,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x14
;  from: 014 ; to: 016 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=4937,key=000,inCond:0,outCond:0,flow seq=015
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6276,key=001,inCond:0,outCond:0,flow seq=015
	MOVWF	r0x1016	;id=4944,key=002,inCond:10,outCond:1,flow seq=015,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=4947,key=003,inCond:1,outCond:14,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=4950,key=004,inCond:10,outCond:1,flow seq=015,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=4953,key=005,inCond:1,outCond:14,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=4956,key=006,inCond:10,outCond:1,flow seq=015,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=4959,key=007,inCond:1,outCond:14,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
;	.line	218; "../../../src/measure.c"	if(Lin > 999) {
	MOVWF	r0x1015	;id=5913,key=008,inCond:10,outCond:1,flow seq=015,rIdx=r0x105B
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1016's banks
	MOVWF	STK06	;id=4985,key=009,inCond:10,outCond:1,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVF	r0x1014,W	;id=4990,key=00a,inCond:1,outCond:14,flow seq=015,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1016's banks
	MOVWF	STK05	;id=4994,key=00b,inCond:10,outCond:1,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVF	r0x1017,W	;id=4999,key=00c,inCond:1,outCond:14,flow seq=015,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1016's banks
	MOVWF	STK04	;id=5003,key=00d,inCond:10,outCond:1,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1016
	MOVF	r0x1016,W	;id=5008,key=00e,inCond:1,outCond:14,flow seq=015,rIdx=r0x105E
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1016's banks
	MOVWF	STK03	;id=5012,key=00f,inCond:10,outCond:1,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=5015,key=010,inCond:400,outCond:10,flow seq=015
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVWF	STK02	;id=5019,key=011,inCond:10,outCond:1,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xc0	;id=5022,key=012,inCond:400,outCond:10,flow seq=015
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVWF	STK01	;id=5026,key=013,inCond:10,outCond:1,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x79	;id=5029,key=014,inCond:400,outCond:10,flow seq=015
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVWF	STK00	;id=5033,key=015,inCond:10,outCond:1,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x44	;id=5036,key=016,inCond:400,outCond:10,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=5038,key=017,inCond:0,outCond:0,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=5040,key=018,inCond:10,outCond:1e,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 018 017 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5042,key=000,inCond:0,outCond:0,flow seq=016
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6294,key=001,inCond:0,outCond:0,flow seq=016
	MOVWF	r0x101B	;id=5049,key=002,inCond:10,outCond:1,flow seq=016,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVF	r0x101B,W	;id=5914,key=003,inCond:1,outCond:14,flow seq=016,rIdx=r0x105F
	BTFSC	STATUS,2	;id=5064,key=004,inCond:25,outCond:0,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x16
;  from: 016 ; to: 024 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=10, label offset 27
	GOTO	_00137_DS_	;id=5067,key=000,inCond:0,outCond:0,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x16
;  from: 016 ; to: 019 
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
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x101B
;	.line	219; "../../../src/measure.c"	if(Lin > (999e+03l)) {
	MOVF	r0x1015,W	;id=5083,key=000,inCond:1,outCond:14,flow seq=018,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x101B's banks
	MOVWF	STK06	;id=5087,key=001,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x101B
	MOVF	r0x1014,W	;id=5092,key=002,inCond:1,outCond:14,flow seq=018,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x101B's banks
	MOVWF	STK05	;id=5096,key=003,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x101B
	MOVF	r0x1017,W	;id=5101,key=004,inCond:1,outCond:14,flow seq=018,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x101B's banks
	MOVWF	STK04	;id=5105,key=005,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x101B
	MOVF	r0x1016,W	;id=5110,key=006,inCond:1,outCond:14,flow seq=018,rIdx=r0x105E
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x101B's banks
	MOVWF	STK03	;id=5114,key=007,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x80	;id=5117,key=008,inCond:400,outCond:10,flow seq=018
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=5121,key=009,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xe5	;id=5124,key=00a,inCond:400,outCond:10,flow seq=018
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=5128,key=00b,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x73	;id=5131,key=00c,inCond:400,outCond:10,flow seq=018
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=5135,key=00d,inCond:10,outCond:1,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x49	;id=5138,key=00e,inCond:400,outCond:10,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=5140,key=00f,inCond:0,outCond:0,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=5142,key=010,inCond:10,outCond:1e,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x18
;  from: 018 ; to: 01b 01a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5144,key=000,inCond:0,outCond:0,flow seq=019
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6308,key=001,inCond:0,outCond:0,flow seq=019
	MOVWF	r0x101B	;id=5151,key=002,inCond:10,outCond:1,flow seq=019,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVF	r0x101B,W	;id=5915,key=003,inCond:1,outCond:14,flow seq=019,rIdx=r0x105F
	BTFSC	STATUS,2	;id=5166,key=004,inCond:25,outCond:0,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x19
;  from: 019 ; to: 022 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=7, label offset 27
	GOTO	_00134_DS_	;id=5169,key=000,inCond:0,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x19
;  from: 019 ; to: 01c 
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
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x101B
;	.line	220; "../../../src/measure.c"	if(Lin > (999e+06l)) {
	MOVF	r0x1015,W	;id=5185,key=000,inCond:1,outCond:14,flow seq=01b,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x101B's banks
	MOVWF	STK06	;id=5189,key=001,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x101B
	MOVF	r0x1014,W	;id=5194,key=002,inCond:1,outCond:14,flow seq=01b,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x101B's banks
	MOVWF	STK05	;id=5198,key=003,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x101B
	MOVF	r0x1017,W	;id=5203,key=004,inCond:1,outCond:14,flow seq=01b,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x101B's banks
	MOVWF	STK04	;id=5207,key=005,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x101B
	MOVF	r0x1016,W	;id=5212,key=006,inCond:1,outCond:14,flow seq=01b,rIdx=r0x105E
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x101B's banks
	MOVWF	STK03	;id=5216,key=007,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x1f	;id=5219,key=008,inCond:400,outCond:10,flow seq=01b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=5223,key=009,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x2e	;id=5226,key=00a,inCond:400,outCond:10,flow seq=01b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=5230,key=00b,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x6e	;id=5233,key=00c,inCond:400,outCond:10,flow seq=01b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=5237,key=00d,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x4e	;id=5240,key=00e,inCond:400,outCond:10,flow seq=01b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=5242,key=00f,inCond:0,outCond:0,flow seq=01b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=5244,key=010,inCond:10,outCond:1e,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1b
;  from: 01b ; to: 01e 01d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5246,key=000,inCond:0,outCond:0,flow seq=01c
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105F, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6322,key=001,inCond:0,outCond:0,flow seq=01c
	MOVWF	r0x101B	;id=5253,key=002,inCond:10,outCond:1,flow seq=01c,rIdx=r0x105F
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVF	r0x101B,W	;id=5916,key=003,inCond:1,outCond:14,flow seq=01c,rIdx=r0x105F
	BTFSC	STATUS,2	;id=5268,key=004,inCond:25,outCond:0,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1c
;  from: 01c ; to: 020 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 27
	GOTO	_00131_DS_	;id=5271,key=000,inCond:0,outCond:0,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1c
;  from: 01c ; to: 01f 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	221; "../../../src/measure.c"	Lin = Lin / (1e+09l);
	MOVLW	0x28	;id=5284,key=000,inCond:400,outCond:10,flow seq=01e
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x101B's banks
	MOVWF	STK06	;id=5288,key=001,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x6b	;id=5291,key=002,inCond:400,outCond:10,flow seq=01e
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x101B's banks
	MOVWF	STK05	;id=5295,key=003,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x6e	;id=5298,key=004,inCond:400,outCond:10,flow seq=01e
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x101B's banks
	MOVWF	STK04	;id=5302,key=005,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x4e	;id=5305,key=006,inCond:400,outCond:10,flow seq=01e
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x101B's banks
	MOVWF	STK03	;id=5310,key=007,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x101B
	MOVF	r0x1015,W	;id=5315,key=008,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101B's banks
	MOVWF	STK02	;id=5319,key=009,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x101B
	MOVF	r0x1014,W	;id=5324,key=00a,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101B's banks
	MOVWF	STK01	;id=5328,key=00b,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x101B
	MOVF	r0x1017,W	;id=5333,key=00c,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101B's banks
	MOVWF	STK00	;id=5337,key=00d,inCond:10,outCond:1,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x101B
	MOVF	r0x1016,W	;id=5342,key=00e,inCond:1,outCond:14,flow seq=01e,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=5344,key=00f,inCond:0,outCond:0,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=5346,key=010,inCond:10,outCond:1e,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 01e ; to: 025 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5348,key=000,inCond:0,outCond:0,flow seq=01f
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6336,key=001,inCond:0,outCond:0,flow seq=01f
	MOVWF	r0x1016	;id=5355,key=002,inCond:10,outCond:1,flow seq=01f,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=5358,key=003,inCond:1,outCond:14,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=5361,key=004,inCond:10,outCond:1,flow seq=01f,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=5364,key=005,inCond:1,outCond:14,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=5367,key=006,inCond:10,outCond:1,flow seq=01f,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=5370,key=007,inCond:1,outCond:14,flow seq=01f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
	MOVWF	r0x1015	;id=5373,key=008,inCond:10,outCond:1,flow seq=01f,rIdx=r0x105B
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1016
;	.line	222; "../../../src/measure.c"	unit = 0; // "H"
	CLRF	r0x101B	;id=5386,key=009,inCond:0,outCond:5,flow seq=01f,rIdx=r0x105F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;id=5391,key=00a,inCond:0,outCond:0,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1d
;  from: 01d ; to: 021 
;goto	_00138_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00131_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00131_DS_:
;	.line	224; "../../../src/measure.c"	Lin = Lin / (1e+06l);
	MOVLW	0x00	;id=5410,key=000,inCond:400,outCond:10,flow seq=020
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of (null)'s banks
	MOVWF	STK06	;id=5414,key=001,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x24	;id=5417,key=002,inCond:400,outCond:10,flow seq=020
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of (null)'s banks
	MOVWF	STK05	;id=5421,key=003,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x74	;id=5424,key=004,inCond:400,outCond:10,flow seq=020
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of (null)'s banks
	MOVWF	STK04	;id=5428,key=005,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x49	;id=5431,key=006,inCond:400,outCond:10,flow seq=020
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of (null)'s banks
	MOVWF	STK03	;id=5436,key=007,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
	BANKSEL	r0x1015	;id=6349,key=008,inCond:0,outCond:0,flow seq=020
	MOVF	r0x1015,W	;id=5441,key=009,inCond:1,outCond:14,flow seq=020,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1015's banks
	MOVWF	STK02	;id=5445,key=00a,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1015
	MOVF	r0x1014,W	;id=5450,key=00b,inCond:1,outCond:14,flow seq=020,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1015's banks
	MOVWF	STK01	;id=5454,key=00c,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1015
	MOVF	r0x1017,W	;id=5459,key=00d,inCond:1,outCond:14,flow seq=020,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1015's banks
	MOVWF	STK00	;id=5463,key=00e,inCond:10,outCond:1,flow seq=020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1015
	MOVF	r0x1016,W	;id=5468,key=00f,inCond:1,outCond:14,flow seq=020,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=5470,key=010,inCond:0,outCond:0,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=5472,key=011,inCond:10,outCond:1e,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 025 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5474,key=000,inCond:0,outCond:0,flow seq=021
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6357,key=001,inCond:0,outCond:0,flow seq=021
	MOVWF	r0x1016	;id=5481,key=002,inCond:10,outCond:1,flow seq=021,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=5484,key=003,inCond:1,outCond:14,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=5487,key=004,inCond:10,outCond:1,flow seq=021,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=5490,key=005,inCond:1,outCond:14,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=5493,key=006,inCond:10,outCond:1,flow seq=021,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=5496,key=007,inCond:1,outCond:14,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
	MOVWF	r0x1015	;id=5499,key=008,inCond:10,outCond:1,flow seq=021,rIdx=r0x105B
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_LIT=0x01, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	225; "../../../src/measure.c"	unit = 1; // "mH"
	MOVLW	0x01	;id=5511,key=009,inCond:400,outCond:10,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1016
	MOVWF	r0x101B	;id=5514,key=00a,inCond:10,outCond:1,flow seq=021,rIdx=r0x105F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;id=5519,key=00b,inCond:0,outCond:0,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x1a
;  from: 01a ; to: 023 
;goto	_00138_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00134_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00134_DS_:
;	.line	228; "../../../src/measure.c"	Lin = Lin / 1e+03l;
	MOVLW	0x00	;id=5538,key=000,inCond:400,outCond:10,flow seq=022
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of (null)'s banks
	MOVWF	STK06	;id=5542,key=001,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=5545,key=002,inCond:400,outCond:10,flow seq=022
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of (null)'s banks
	MOVWF	STK05	;id=5549,key=003,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x7a	;id=5552,key=004,inCond:400,outCond:10,flow seq=022
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of (null)'s banks
	MOVWF	STK04	;id=5556,key=005,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x44	;id=5559,key=006,inCond:400,outCond:10,flow seq=022
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of (null)'s banks
	MOVWF	STK03	;id=5564,key=007,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105B 
	BANKSEL	r0x1015	;id=6370,key=008,inCond:0,outCond:0,flow seq=022
	MOVF	r0x1015,W	;id=5569,key=009,inCond:1,outCond:14,flow seq=022,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1015's banks
	MOVWF	STK02	;id=5573,key=00a,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1015
	MOVF	r0x1014,W	;id=5578,key=00b,inCond:1,outCond:14,flow seq=022,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1015's banks
	MOVWF	STK01	;id=5582,key=00c,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1015
	MOVF	r0x1017,W	;id=5587,key=00d,inCond:1,outCond:14,flow seq=022,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1015's banks
	MOVWF	STK00	;id=5591,key=00e,inCond:10,outCond:1,flow seq=022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1015
	MOVF	r0x1016,W	;id=5596,key=00f,inCond:1,outCond:14,flow seq=022,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=5598,key=010,inCond:0,outCond:0,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=5600,key=011,inCond:10,outCond:1e,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 025 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5602,key=000,inCond:0,outCond:0,flow seq=023
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6378,key=001,inCond:0,outCond:0,flow seq=023
	MOVWF	r0x1016	;id=5609,key=002,inCond:10,outCond:1,flow seq=023,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=5612,key=003,inCond:1,outCond:14,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=5615,key=004,inCond:10,outCond:1,flow seq=023,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=5618,key=005,inCond:1,outCond:14,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=5621,key=006,inCond:10,outCond:1,flow seq=023,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=5624,key=007,inCond:1,outCond:14,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
	MOVWF	r0x1015	;id=5627,key=008,inCond:10,outCond:1,flow seq=023,rIdx=r0x105B
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_LIT=0x02, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	229; "../../../src/measure.c"	unit = 2; // "uH"
	MOVLW	0x02	;id=5639,key=009,inCond:400,outCond:10,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x105F 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x1016
	MOVWF	r0x101B	;id=5642,key=00a,inCond:10,outCond:1,flow seq=023,rIdx=r0x105F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;id=5647,key=00b,inCond:0,outCond:0,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x17
;  from: 017 ; to: 025 
;goto	_00138_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00137_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_LIT=0x03, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00137_DS_:
;	.line	232; "../../../src/measure.c"	unit = 3; // "nH"
	MOVLW	0x03	;id=5662,key=000,inCond:400,outCond:10,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x105F 
	BANKSEL	r0x101B	;id=6387,key=001,inCond:0,outCond:0,flow seq=024
	MOVWF	r0x101B	;id=5665,key=002,inCond:10,outCond:1,flow seq=024,rIdx=r0x105F
;<>Start of new flow, seq=0x25 ancestor = 0x1f
;  from: 024 023 021 01f ; to: 026 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00138_DS_:
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
;;	1097 rIdx = r0x105B 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00138_DS_:
;	.line	234; "../../../src/measure.c"	Lin = Lin * 100; // scale to 2 decimal place
	BANKSEL	r0x1015	;id=6389,key=000,inCond:0,outCond:0,flow seq=025
	MOVF	r0x1015,W	;id=5686,key=001,inCond:1,outCond:14,flow seq=025,rIdx=r0x105B
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1015's banks
	MOVWF	STK06	;id=5690,key=002,inCond:10,outCond:1,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1015
	MOVF	r0x1014,W	;id=5695,key=003,inCond:1,outCond:14,flow seq=025,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1015's banks
	MOVWF	STK05	;id=5699,key=004,inCond:10,outCond:1,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1015
	MOVF	r0x1017,W	;id=5704,key=005,inCond:1,outCond:14,flow seq=025,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1015's banks
	MOVWF	STK04	;id=5708,key=006,inCond:10,outCond:1,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1015
	MOVF	r0x1016,W	;id=5713,key=007,inCond:1,outCond:14,flow seq=025,rIdx=r0x105E
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1015's banks
	MOVWF	STK03	;id=5717,key=008,inCond:10,outCond:1,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=5720,key=009,inCond:400,outCond:10,flow seq=025
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1015's banks
	MOVWF	STK02	;id=5724,key=00a,inCond:10,outCond:1,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=5727,key=00b,inCond:400,outCond:10,flow seq=025
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1015's banks
	MOVWF	STK01	;id=5731,key=00c,inCond:10,outCond:1,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xc8	;id=5734,key=00d,inCond:400,outCond:10,flow seq=025
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1015's banks
	MOVWF	STK00	;id=5738,key=00e,inCond:10,outCond:1,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x42	;id=5741,key=00f,inCond:400,outCond:10,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=5743,key=010,inCond:0,outCond:0,flow seq=025
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=5745,key=011,inCond:10,outCond:1e,flow seq=025
;<>Start of new flow, seq=0x26 ancestor = 0x25
;  from: 025 ; to: 027 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5747,key=000,inCond:0,outCond:0,flow seq=026
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105E 
	BANKSEL	r0x1016	;id=6401,key=001,inCond:0,outCond:0,flow seq=026
	MOVWF	r0x1016	;id=5754,key=002,inCond:10,outCond:1,flow seq=026,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVF	STK00,W	;id=5757,key=003,inCond:1,outCond:14,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVWF	r0x1017	;id=5760,key=004,inCond:10,outCond:1,flow seq=026,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVF	STK01,W	;id=5763,key=005,inCond:1,outCond:14,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVWF	r0x1014	;id=5766,key=006,inCond:10,outCond:1,flow seq=026,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVF	STK02,W	;id=5769,key=007,inCond:1,outCond:14,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1016
;	.line	235; "../../../src/measure.c"	var = (uint16_t)Lin;
	MOVWF	r0x1015	;id=5917,key=008,inCond:10,outCond:1,flow seq=026,rIdx=r0x105B
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1016's banks
	MOVWF	STK02	;id=5794,key=009,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1016
	MOVF	r0x1014,W	;id=5799,key=00a,inCond:1,outCond:14,flow seq=026,rIdx=r0x105C
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1016's banks
	MOVWF	STK01	;id=5803,key=00b,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x1017 present in same bank as r0x1016
	MOVF	r0x1017,W	;id=5808,key=00c,inCond:1,outCond:14,flow seq=026,rIdx=r0x105D
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1016's banks
	MOVWF	STK00	;id=5812,key=00d,inCond:10,outCond:1,flow seq=026
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x1016 present in same bank as r0x1016
	MOVF	r0x1016,W	;id=5817,key=00e,inCond:1,outCond:14,flow seq=026,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fs2uint	;id=5819,key=00f,inCond:0,outCond:0,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fs2uint	;id=5821,key=010,inCond:10,outCond:1e,flow seq=026
;<>Start of new flow, seq=0x27 ancestor = 0x26
;  from: 026 ; to: 028 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5823,key=000,inCond:0,outCond:0,flow seq=027
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
	BANKSEL	r0x1014	;id=6415,key=001,inCond:0,outCond:0,flow seq=027
	MOVWF	r0x1014	;id=5830,key=002,inCond:10,outCond:1,flow seq=027,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1014's banks
	MOVF	STK00,W	;id=5833,key=003,inCond:1,outCond:14,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x1015 present in same bank as r0x1014
;	.line	237; "../../../src/measure.c"	print_reading(var);
	MOVWF	r0x1015	;id=5918,key=004,inCond:10,outCond:1,flow seq=027,rIdx=r0x105B
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1014's banks
	MOVWF	STK00	;id=5858,key=005,inCond:10,outCond:1,flow seq=027
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x1014 present in same bank as r0x1014
	MOVF	r0x1014,W	;id=5863,key=006,inCond:1,outCond:14,flow seq=027,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_print_reading	;id=5865,key=007,inCond:0,outCond:0,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_print_reading	;id=5867,key=008,inCond:10,outCond:1e,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 027 ; to: 029 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5869,key=000,inCond:0,outCond:0,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
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
;;	1097 rIdx = r0x105F 
;	.line	238; "../../../src/measure.c"	print_unit(unit);
	BANKSEL	r0x101B	;id=6421,key=001,inCond:0,outCond:0,flow seq=028
	MOVF	r0x101B,W	;id=5886,key=002,inCond:1,outCond:14,flow seq=028,rIdx=r0x105F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_print_unit	;id=5888,key=003,inCond:0,outCond:0,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_print_unit	;id=5890,key=004,inCond:10,outCond:1e,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x28
;  from: 028 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=5892,key=000,inCond:0,outCond:0,flow seq=029
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00139_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	239; "../../../src/measure.c"	}
	RETURN		;id=5905,key=001,inCond:10,outCond:e,flow seq=029
;<>Start of new flow, seq=0x2a
;  from: ; to: 
; exit point of _measure_inductance

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;19 compiler assigned registers:
;   r0x101C
;   STK00
;   r0x101D
;   STK01
;   STK02
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;   r0x1027
;; Starting pCode block
;<>Start of new flow, seq=0x2b ancestor = 0x2b
;  from: ; to: 02c 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=8previous max_key=0 
;;	-----------------------------------------
;;	 function measure_capacitance
;;	-----------------------------------------
;_measure_capacitance:
S_measure__measure_capacitance	code
_measure_capacitance:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	129; "../../../src/measure.c"	var = measure_freq();
	PAGESEL	_measure_freq	;id=1081,key=000,inCond:0,outCond:0,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_freq	;id=1083,key=001,inCond:10,outCond:1e,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2b
;  from: 02b ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1085,key=000,inCond:0,outCond:0,flow seq=02c
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
	BANKSEL	r0x101C	;id=6424,key=001,inCond:0,outCond:0,flow seq=02c
	MOVWF	r0x101C	;id=1092,key=002,inCond:10,outCond:1,flow seq=02c,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101C's banks
	MOVF	STK00,W	;id=1095,key=003,inCond:1,outCond:14,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101C
;	.line	131; "../../../src/measure.c"	F3 = (double)var;
	MOVWF	r0x101D	;id=5919,key=004,inCond:10,outCond:1,flow seq=02c,rIdx=r0x104E
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101C's banks
	MOVWF	STK00	;id=1120,key=005,inCond:10,outCond:1,flow seq=02c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101C
	MOVF	r0x101C,W	;id=1125,key=006,inCond:1,outCond:14,flow seq=02c,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___uint2fs	;id=1127,key=007,inCond:0,outCond:0,flow seq=02c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___uint2fs	;id=1129,key=008,inCond:10,outCond:1e,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2c
;  from: 02c ; to: 02e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1131,key=000,inCond:0,outCond:0,flow seq=02d
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_DIR=_F3, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=3
	BANKSEL	_F3	;id=6430,key=001,inCond:0,outCond:0,flow seq=02d
	MOVWF	(_F3 + 3)	;id=1140,key=002,inCond:10,outCond:1,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F3's banks
	MOVF	STK00,W	;id=1143,key=003,inCond:1,outCond:14,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVWF	(_F3 + 2)	;id=1147,key=004,inCond:10,outCond:1,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F3's banks
	MOVF	STK01,W	;id=1150,key=005,inCond:1,outCond:14,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVWF	(_F3 + 1)	;id=1154,key=006,inCond:10,outCond:1,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F3's banks
	MOVF	STK02,W	;id=1157,key=007,inCond:1,outCond:14,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F3   offset=0
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVWF	_F3	;id=1161,key=008,inCond:10,outCond:1,flow seq=02d
;; 	2188 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	342 size = 2, name =_output_putch
;; ***	aopForSym 316
;;	328 sym->rname = _putchar_ptr, size = 2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_output_putch
;; 	line = 7046 result AOP_DIR=_putchar_ptr, size=2, left -=-, size=0, right AOP_PCODE=_output_putch, size=2
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	154; "../../../src/measure.c"	putchar_ptr = &output_putch;
	MOVLW	low (_output_putch+0)	;id=1179,key=009,inCond:400,outCond:10,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _putchar_ptr   offset=0
	BANKSEL	_putchar_ptr	;id=6437,key=00a,inCond:0,outCond:0,flow seq=02d
	MOVWF	_putchar_ptr	;id=1183,key=00b,inCond:10,outCond:1,flow seq=02d
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	high (_output_putch+0)	;id=1187,key=00c,inCond:400,outCond:10,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _putchar_ptr   offset=1
;; BANKOPT2 BANKSEL dropped; _putchar_ptr present in same bank as _putchar_ptr
	MOVWF	(_putchar_ptr + 1)	;id=1191,key=00d,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
;	.line	156; "../../../src/measure.c"	if(F3 > F1)
	BANKSEL	_F3	;id=6439,key=00e,inCond:0,outCond:0,flow seq=02d
	MOVF	_F3,W	;id=1212,key=00f,inCond:1,outCond:14,flow seq=02d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F3's banks
	MOVWF	STK06	;id=1216,key=010,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=1222,key=011,inCond:1,outCond:14,flow seq=02d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F3's banks
	MOVWF	STK05	;id=1226,key=012,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=1232,key=013,inCond:1,outCond:14,flow seq=02d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F3's banks
	MOVWF	STK04	;id=1236,key=014,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=1242,key=015,inCond:1,outCond:14,flow seq=02d
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F3's banks
	MOVWF	STK03	;id=1248,key=016,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
	BANKSEL	_F1	;id=6447,key=017,inCond:0,outCond:0,flow seq=02d
	MOVF	_F1,W	;id=1254,key=018,inCond:1,outCond:14,flow seq=02d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F1's banks
	MOVWF	STK02	;id=1258,key=019,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=1264,key=01a,inCond:1,outCond:14,flow seq=02d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F1's banks
	MOVWF	STK01	;id=1268,key=01b,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=1274,key=01c,inCond:1,outCond:14,flow seq=02d
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F1's banks
	MOVWF	STK00	;id=1278,key=01d,inCond:10,outCond:1,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=1284,key=01e,inCond:1,outCond:14,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=1286,key=01f,inCond:0,outCond:0,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=1288,key=020,inCond:10,outCond:1e,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 030 02f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1290,key=000,inCond:0,outCond:0,flow seq=02e
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
	BANKSEL	r0x101D	;id=6455,key=001,inCond:0,outCond:0,flow seq=02e
	MOVWF	r0x101D	;id=1297,key=002,inCond:10,outCond:1,flow seq=02e,rIdx=r0x104E
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101D
	MOVF	r0x101D,W	;id=5920,key=003,inCond:1,outCond:14,flow seq=02e,rIdx=r0x104E
	BTFSC	STATUS,2	;id=1312,key=004,inCond:25,outCond:0,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2e
;  from: 02e ; to: 031 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=2, label offset 12
	GOTO	_00114_DS_	;id=1315,key=000,inCond:0,outCond:0,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2e
;  from: 02e ; to: 031 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	line = 7046 result AOP_DIR=_F3, size=4, left -=-, size=0, right AOP_DIR=_F1, size=4
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
;	.line	157; "../../../src/measure.c"	F3 = F1; // max freq is F1;
	BANKSEL	_F1	;id=6457,key=000,inCond:0,outCond:0,flow seq=030
	MOVF	_F1,W	;id=1331,key=001,inCond:1,outCond:14,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=0
	BANKSEL	_F3	;id=6458,key=002,inCond:0,outCond:0,flow seq=030
	MOVWF	_F3	;id=1335,key=003,inCond:10,outCond:1,flow seq=030
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
	BANKSEL	_F1	;id=6459,key=004,inCond:0,outCond:0,flow seq=030
	MOVF	(_F1 + 1),W	;id=1342,key=005,inCond:1,outCond:14,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=1
	BANKSEL	_F3	;id=6460,key=006,inCond:0,outCond:0,flow seq=030
	MOVWF	(_F3 + 1)	;id=1346,key=007,inCond:10,outCond:1,flow seq=030
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
	BANKSEL	_F1	;id=6461,key=008,inCond:0,outCond:0,flow seq=030
	MOVF	(_F1 + 2),W	;id=1353,key=009,inCond:1,outCond:14,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=2
	BANKSEL	_F3	;id=6462,key=00a,inCond:0,outCond:0,flow seq=030
	MOVWF	(_F3 + 2)	;id=1357,key=00b,inCond:10,outCond:1,flow seq=030
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
	BANKSEL	_F1	;id=6463,key=00c,inCond:0,outCond:0,flow seq=030
	MOVF	(_F1 + 3),W	;id=1364,key=00d,inCond:1,outCond:14,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _F3   offset=3
	BANKSEL	_F3	;id=6464,key=00e,inCond:0,outCond:0,flow seq=030
	MOVWF	(_F3 + 3)	;id=1368,key=00f,inCond:10,outCond:1,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x2f
;  from: 030 02f ; to: 032 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
;	.line	159; "../../../src/measure.c"	Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	BANKSEL	_F2	;id=6466,key=000,inCond:0,outCond:0,flow seq=031
	MOVF	_F2,W	;id=1394,key=001,inCond:1,outCond:14,flow seq=031
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F2's banks
	MOVWF	STK06	;id=1398,key=002,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=1
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 1),W	;id=1404,key=003,inCond:1,outCond:14,flow seq=031
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F2's banks
	MOVWF	STK05	;id=1408,key=004,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=2
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 2),W	;id=1414,key=005,inCond:1,outCond:14,flow seq=031
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F2's banks
	MOVWF	STK04	;id=1418,key=006,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=3
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 3),W	;id=1424,key=007,inCond:1,outCond:14,flow seq=031
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F2's banks
	MOVWF	STK03	;id=1430,key=008,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=0
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	_F2,W	;id=1436,key=009,inCond:1,outCond:14,flow seq=031
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F2's banks
	MOVWF	STK02	;id=1440,key=00a,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=1
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 1),W	;id=1446,key=00b,inCond:1,outCond:14,flow seq=031
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F2's banks
	MOVWF	STK01	;id=1450,key=00c,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=2
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 2),W	;id=1456,key=00d,inCond:1,outCond:14,flow seq=031
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F2's banks
	MOVWF	STK00	;id=1460,key=00e,inCond:10,outCond:1,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F2   offset=3
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVF	(_F2 + 3),W	;id=1466,key=00f,inCond:1,outCond:14,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=1468,key=010,inCond:0,outCond:0,flow seq=031
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=1470,key=011,inCond:10,outCond:1e,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x31
;  from: 031 ; to: 033 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1472,key=000,inCond:0,outCond:0,flow seq=032
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x101E	;id=6482,key=001,inCond:0,outCond:0,flow seq=032
	MOVWF	r0x101E	;id=1479,key=002,inCond:10,outCond:1,flow seq=032,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=1482,key=003,inCond:1,outCond:14,flow seq=032
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=1485,key=004,inCond:10,outCond:1,flow seq=032,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=1488,key=005,inCond:1,outCond:14,flow seq=032
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVWF	r0x101C	;id=1491,key=006,inCond:10,outCond:1,flow seq=032,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=1494,key=007,inCond:1,outCond:14,flow seq=032
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101E
	MOVWF	r0x101D	;id=1497,key=008,inCond:10,outCond:1,flow seq=032,rIdx=r0x104E
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
	BANKSEL	_F1	;id=6489,key=009,inCond:0,outCond:0,flow seq=032
	MOVF	_F1,W	;id=1520,key=00a,inCond:1,outCond:14,flow seq=032
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F1's banks
	MOVWF	STK06	;id=1524,key=00b,inCond:10,outCond:1,flow seq=032
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=1530,key=00c,inCond:1,outCond:14,flow seq=032
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F1's banks
	MOVWF	STK05	;id=1534,key=00d,inCond:10,outCond:1,flow seq=032
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=1540,key=00e,inCond:1,outCond:14,flow seq=032
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F1's banks
	MOVWF	STK04	;id=1544,key=00f,inCond:10,outCond:1,flow seq=032
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=1550,key=010,inCond:1,outCond:14,flow seq=032
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F1's banks
	MOVWF	STK03	;id=1556,key=011,inCond:10,outCond:1,flow seq=032
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=0
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	_F1,W	;id=1562,key=012,inCond:1,outCond:14,flow seq=032
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F1's banks
	MOVWF	STK02	;id=1566,key=013,inCond:10,outCond:1,flow seq=032
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 1),W	;id=1572,key=014,inCond:1,outCond:14,flow seq=032
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F1's banks
	MOVWF	STK01	;id=1576,key=015,inCond:10,outCond:1,flow seq=032
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 2),W	;id=1582,key=016,inCond:1,outCond:14,flow seq=032
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F1's banks
	MOVWF	STK00	;id=1586,key=017,inCond:10,outCond:1,flow seq=032
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F1   offset=3
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVF	(_F1 + 3),W	;id=1592,key=018,inCond:1,outCond:14,flow seq=032
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=1594,key=019,inCond:0,outCond:0,flow seq=032
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=1596,key=01a,inCond:10,outCond:1e,flow seq=032
;<>Start of new flow, seq=0x33 ancestor = 0x32
;  from: 032 ; to: 034 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1598,key=000,inCond:0,outCond:0,flow seq=033
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1052, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1055 
	BANKSEL	r0x1020	;id=6505,key=001,inCond:0,outCond:0,flow seq=033
	MOVWF	r0x1020	;id=1605,key=002,inCond:10,outCond:1,flow seq=033,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1020's banks
	MOVF	STK00,W	;id=1608,key=003,inCond:1,outCond:14,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1020
	MOVWF	r0x1021	;id=1611,key=004,inCond:10,outCond:1,flow seq=033,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1020's banks
	MOVF	STK01,W	;id=1614,key=005,inCond:1,outCond:14,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1020
	MOVWF	r0x1022	;id=1617,key=006,inCond:10,outCond:1,flow seq=033,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1020's banks
	MOVF	STK02,W	;id=1620,key=007,inCond:1,outCond:14,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1020
	MOVWF	r0x1023	;id=1623,key=008,inCond:10,outCond:1,flow seq=033,rIdx=r0x1052
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
	BANKSEL	_F3	;id=6512,key=009,inCond:0,outCond:0,flow seq=033
	MOVF	_F3,W	;id=1646,key=00a,inCond:1,outCond:14,flow seq=033
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _F3's banks
	MOVWF	STK06	;id=1650,key=00b,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=1656,key=00c,inCond:1,outCond:14,flow seq=033
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _F3's banks
	MOVWF	STK05	;id=1660,key=00d,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=1666,key=00e,inCond:1,outCond:14,flow seq=033
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _F3's banks
	MOVWF	STK04	;id=1670,key=00f,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=1676,key=010,inCond:1,outCond:14,flow seq=033
;; ***	aopForSym 316
;;	328 sym->rname = _F3, size = 4
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _F3's banks
	MOVWF	STK03	;id=1682,key=011,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=0
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	_F3,W	;id=1688,key=012,inCond:1,outCond:14,flow seq=033
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F3's banks
	MOVWF	STK02	;id=1692,key=013,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=1
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 1),W	;id=1698,key=014,inCond:1,outCond:14,flow seq=033
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F3's banks
	MOVWF	STK01	;id=1702,key=015,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=2
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 2),W	;id=1708,key=016,inCond:1,outCond:14,flow seq=033
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F3's banks
	MOVWF	STK00	;id=1712,key=017,inCond:10,outCond:1,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _F3   offset=3
;; BANKOPT2 BANKSEL dropped; _F3 present in same bank as _F3
	MOVF	(_F3 + 3),W	;id=1718,key=018,inCond:1,outCond:14,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=1720,key=019,inCond:0,outCond:0,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=1722,key=01a,inCond:10,outCond:1e,flow seq=033
;<>Start of new flow, seq=0x34 ancestor = 0x33
;  from: 033 ; to: 035 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1724,key=000,inCond:0,outCond:0,flow seq=034
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1056, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
	BANKSEL	r0x1024	;id=6528,key=001,inCond:0,outCond:0,flow seq=034
	MOVWF	r0x1024	;id=1731,key=002,inCond:10,outCond:1,flow seq=034,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1024's banks
	MOVF	STK00,W	;id=1734,key=003,inCond:1,outCond:14,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1024
	MOVWF	r0x1025	;id=1737,key=004,inCond:10,outCond:1,flow seq=034,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1024's banks
	MOVF	STK01,W	;id=1740,key=005,inCond:1,outCond:14,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1024
	MOVWF	r0x1026	;id=1743,key=006,inCond:10,outCond:1,flow seq=034,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1024's banks
	MOVF	STK02,W	;id=1746,key=007,inCond:1,outCond:14,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1056 
;;1	MOVWF	r0x1027
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1024's banks
	MOVWF	STK06	;id=1772,key=008,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x1026 present in same bank as r0x1024
	MOVF	r0x1026,W	;id=1777,key=009,inCond:1,outCond:14,flow seq=034,rIdx=r0x1057
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1024's banks
	MOVWF	STK05	;id=1781,key=00a,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x1025 present in same bank as r0x1024
	MOVF	r0x1025,W	;id=1786,key=00b,inCond:1,outCond:14,flow seq=034,rIdx=r0x1058
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1024's banks
	MOVWF	STK04	;id=1790,key=00c,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1024 present in same bank as r0x1024
	MOVF	r0x1024,W	;id=1795,key=00d,inCond:1,outCond:14,flow seq=034,rIdx=r0x1059
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1024's banks
	MOVWF	STK03	;id=1800,key=00e,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1024
	MOVF	r0x1023,W	;id=1805,key=00f,inCond:1,outCond:14,flow seq=034,rIdx=r0x1052
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1024's banks
	MOVWF	STK02	;id=1809,key=010,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1024
	MOVF	r0x1022,W	;id=1814,key=011,inCond:1,outCond:14,flow seq=034,rIdx=r0x1053
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1024's banks
	MOVWF	STK01	;id=1818,key=012,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1024
	MOVF	r0x1021,W	;id=1823,key=013,inCond:1,outCond:14,flow seq=034,rIdx=r0x1054
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1024's banks
	MOVWF	STK00	;id=1827,key=014,inCond:10,outCond:1,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x1024
	MOVF	r0x1020,W	;id=1832,key=015,inCond:1,outCond:14,flow seq=034,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fssub	;id=1834,key=016,inCond:0,outCond:0,flow seq=034
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fssub	;id=1836,key=017,inCond:10,outCond:1e,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x34
;  from: 034 ; to: 036 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1838,key=000,inCond:0,outCond:0,flow seq=035
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1052, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1055 
	BANKSEL	r0x1020	;id=6549,key=001,inCond:0,outCond:0,flow seq=035
	MOVWF	r0x1020	;id=1845,key=002,inCond:10,outCond:1,flow seq=035,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1020's banks
	MOVF	STK00,W	;id=1848,key=003,inCond:1,outCond:14,flow seq=035
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1020
	MOVWF	r0x1021	;id=1851,key=004,inCond:10,outCond:1,flow seq=035,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1020's banks
	MOVF	STK01,W	;id=1854,key=005,inCond:1,outCond:14,flow seq=035
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1020
	MOVWF	r0x1022	;id=1857,key=006,inCond:10,outCond:1,flow seq=035,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1020's banks
	MOVF	STK02,W	;id=1860,key=007,inCond:1,outCond:14,flow seq=035
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1020
	MOVWF	r0x1023	;id=5922,key=008,inCond:10,outCond:1,flow seq=035,rIdx=r0x1052
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1020's banks
	MOVWF	STK06	;id=1886,key=009,inCond:10,outCond:1,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1022 present in same bank as r0x1020
	MOVF	r0x1022,W	;id=1891,key=00a,inCond:1,outCond:14,flow seq=035,rIdx=r0x1053
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1020's banks
	MOVWF	STK05	;id=1895,key=00b,inCond:10,outCond:1,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x1021 present in same bank as r0x1020
	MOVF	r0x1021,W	;id=1900,key=00c,inCond:1,outCond:14,flow seq=035,rIdx=r0x1054
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1020's banks
	MOVWF	STK04	;id=1904,key=00d,inCond:10,outCond:1,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x1020 present in same bank as r0x1020
	MOVF	r0x1020,W	;id=1909,key=00e,inCond:1,outCond:14,flow seq=035,rIdx=r0x1055
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1020's banks
	MOVWF	STK03	;id=1914,key=00f,inCond:10,outCond:1,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x1020
	MOVF	r0x101D,W	;id=1919,key=010,inCond:1,outCond:14,flow seq=035,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1020's banks
	MOVWF	STK02	;id=1923,key=011,inCond:10,outCond:1,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x1020
	MOVF	r0x101C,W	;id=1928,key=012,inCond:1,outCond:14,flow seq=035,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1020's banks
	MOVWF	STK01	;id=1932,key=013,inCond:10,outCond:1,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x1020
	MOVF	r0x101F,W	;id=1937,key=014,inCond:1,outCond:14,flow seq=035,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1020's banks
	MOVWF	STK00	;id=1941,key=015,inCond:10,outCond:1,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x1020
	MOVF	r0x101E,W	;id=1946,key=016,inCond:1,outCond:14,flow seq=035,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=1948,key=017,inCond:0,outCond:0,flow seq=035
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=1950,key=018,inCond:10,outCond:1e,flow seq=035
;<>Start of new flow, seq=0x36 ancestor = 0x35
;  from: 035 ; to: 037 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1952,key=000,inCond:0,outCond:0,flow seq=036
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x101E	;id=6571,key=001,inCond:0,outCond:0,flow seq=036
	MOVWF	r0x101E	;id=1959,key=002,inCond:10,outCond:1,flow seq=036,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=1962,key=003,inCond:1,outCond:14,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=1965,key=004,inCond:10,outCond:1,flow seq=036,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=1968,key=005,inCond:1,outCond:14,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVWF	r0x101C	;id=1971,key=006,inCond:10,outCond:1,flow seq=036,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=1974,key=007,inCond:1,outCond:14,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101E
	MOVWF	r0x101D	;id=1977,key=008,inCond:10,outCond:1,flow seq=036,rIdx=r0x104E
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;;	695 register type nRegs=4
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;; 	2120 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1012  _CCal   offset=0 - had to alloc by reg name
	BANKSEL	_CCal	;id=6578,key=009,inCond:0,outCond:0,flow seq=036
	MOVF	_CCal,W	;id=1999,key=00a,inCond:1,outCond:14,flow seq=036
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of _CCal's banks
	MOVWF	STK06	;id=2003,key=00b,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=1
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 1),W	;id=2009,key=00c,inCond:1,outCond:14,flow seq=036
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of _CCal's banks
	MOVWF	STK05	;id=2013,key=00d,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=2
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 2),W	;id=2019,key=00e,inCond:1,outCond:14,flow seq=036
;; 	2120 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of _CCal's banks
	MOVWF	STK04	;id=2023,key=00f,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _CCal   offset=3
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVF	(_CCal + 3),W	;id=2029,key=010,inCond:1,outCond:14,flow seq=036
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of _CCal's banks
	MOVWF	STK03	;id=2034,key=011,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
	BANKSEL	r0x101D	;id=6586,key=012,inCond:0,outCond:0,flow seq=036
	MOVF	r0x101D,W	;id=2039,key=013,inCond:1,outCond:14,flow seq=036,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101D's banks
	MOVWF	STK02	;id=2043,key=014,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101D
	MOVF	r0x101C,W	;id=2048,key=015,inCond:1,outCond:14,flow seq=036,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101D's banks
	MOVWF	STK01	;id=2052,key=016,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101D
	MOVF	r0x101F,W	;id=2057,key=017,inCond:1,outCond:14,flow seq=036,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101D's banks
	MOVWF	STK00	;id=2061,key=018,inCond:10,outCond:1,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101D
	MOVF	r0x101E,W	;id=2066,key=019,inCond:1,outCond:14,flow seq=036,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=2068,key=01a,inCond:0,outCond:0,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=2070,key=01b,inCond:10,outCond:1e,flow seq=036
;<>Start of new flow, seq=0x37 ancestor = 0x36
;  from: 036 ; to: 038 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2072,key=000,inCond:0,outCond:0,flow seq=037
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x101E	;id=6594,key=001,inCond:0,outCond:0,flow seq=037
	MOVWF	r0x101E	;id=2079,key=002,inCond:10,outCond:1,flow seq=037,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=2082,key=003,inCond:1,outCond:14,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=2085,key=004,inCond:10,outCond:1,flow seq=037,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=2088,key=005,inCond:1,outCond:14,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVWF	r0x101C	;id=2091,key=006,inCond:10,outCond:1,flow seq=037,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=2094,key=007,inCond:1,outCond:14,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101E
;	.line	169; "../../../src/measure.c"	if(Cin > 999) {
	MOVWF	r0x101D	;id=5923,key=008,inCond:10,outCond:1,flow seq=037,rIdx=r0x104E
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x101E's banks
	MOVWF	STK06	;id=2120,key=009,inCond:10,outCond:1,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVF	r0x101C,W	;id=2125,key=00a,inCond:1,outCond:14,flow seq=037,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x101E's banks
	MOVWF	STK05	;id=2129,key=00b,inCond:10,outCond:1,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVF	r0x101F,W	;id=2134,key=00c,inCond:1,outCond:14,flow seq=037,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x101E's banks
	MOVWF	STK04	;id=2138,key=00d,inCond:10,outCond:1,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101E
	MOVF	r0x101E,W	;id=2143,key=00e,inCond:1,outCond:14,flow seq=037,rIdx=r0x1051
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x101E's banks
	MOVWF	STK03	;id=2147,key=00f,inCond:10,outCond:1,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2150,key=010,inCond:400,outCond:10,flow seq=037
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVWF	STK02	;id=2154,key=011,inCond:10,outCond:1,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xc0	;id=2157,key=012,inCond:400,outCond:10,flow seq=037
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVWF	STK01	;id=2161,key=013,inCond:10,outCond:1,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x79	;id=2164,key=014,inCond:400,outCond:10,flow seq=037
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVWF	STK00	;id=2168,key=015,inCond:10,outCond:1,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x44	;id=2171,key=016,inCond:400,outCond:10,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=2173,key=017,inCond:0,outCond:0,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=2175,key=018,inCond:10,outCond:1e,flow seq=037
;<>Start of new flow, seq=0x38 ancestor = 0x37
;  from: 037 ; to: 03a 039 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2177,key=000,inCond:0,outCond:0,flow seq=038
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
	BANKSEL	r0x1023	;id=6612,key=001,inCond:0,outCond:0,flow seq=038
	MOVWF	r0x1023	;id=2184,key=002,inCond:10,outCond:1,flow seq=038,rIdx=r0x1052
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1023
	MOVF	r0x1023,W	;id=5924,key=003,inCond:1,outCond:14,flow seq=038,rIdx=r0x1052
	BTFSC	STATUS,2	;id=2199,key=004,inCond:25,outCond:0,flow seq=038
;<>Start of new flow, seq=0x39 ancestor = 0x38
;  from: 038 ; to: 046 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=10, label offset 12
	GOTO	_00122_DS_	;id=2202,key=000,inCond:0,outCond:0,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x38
;  from: 038 ; to: 03b 
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
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x1023
;	.line	170; "../../../src/measure.c"	if(Cin > (999e+03l)) {
	MOVF	r0x101D,W	;id=2218,key=000,inCond:1,outCond:14,flow seq=03a,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1023's banks
	MOVWF	STK06	;id=2222,key=001,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x1023
	MOVF	r0x101C,W	;id=2227,key=002,inCond:1,outCond:14,flow seq=03a,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1023's banks
	MOVWF	STK05	;id=2231,key=003,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x1023
	MOVF	r0x101F,W	;id=2236,key=004,inCond:1,outCond:14,flow seq=03a,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1023's banks
	MOVWF	STK04	;id=2240,key=005,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x1023
	MOVF	r0x101E,W	;id=2245,key=006,inCond:1,outCond:14,flow seq=03a,rIdx=r0x1051
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1023's banks
	MOVWF	STK03	;id=2249,key=007,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x80	;id=2252,key=008,inCond:400,outCond:10,flow seq=03a
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1023's banks
	MOVWF	STK02	;id=2256,key=009,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xe5	;id=2259,key=00a,inCond:400,outCond:10,flow seq=03a
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1023's banks
	MOVWF	STK01	;id=2263,key=00b,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x73	;id=2266,key=00c,inCond:400,outCond:10,flow seq=03a
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1023's banks
	MOVWF	STK00	;id=2270,key=00d,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x49	;id=2273,key=00e,inCond:400,outCond:10,flow seq=03a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=2275,key=00f,inCond:0,outCond:0,flow seq=03a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=2277,key=010,inCond:10,outCond:1e,flow seq=03a
;<>Start of new flow, seq=0x3b ancestor = 0x3a
;  from: 03a ; to: 03d 03c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2279,key=000,inCond:0,outCond:0,flow seq=03b
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
	BANKSEL	r0x1023	;id=6626,key=001,inCond:0,outCond:0,flow seq=03b
	MOVWF	r0x1023	;id=2286,key=002,inCond:10,outCond:1,flow seq=03b,rIdx=r0x1052
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1023
	MOVF	r0x1023,W	;id=5925,key=003,inCond:1,outCond:14,flow seq=03b,rIdx=r0x1052
	BTFSC	STATUS,2	;id=2301,key=004,inCond:25,outCond:0,flow seq=03b
;<>Start of new flow, seq=0x3c ancestor = 0x3b
;  from: 03b ; to: 044 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=7, label offset 12
	GOTO	_00119_DS_	;id=2304,key=000,inCond:0,outCond:0,flow seq=03c
;<>Start of new flow, seq=0x3d ancestor = 0x3b
;  from: 03b ; to: 03e 
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
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x1023
;	.line	171; "../../../src/measure.c"	if(Cin > (999e+06l)) {
	MOVF	r0x101D,W	;id=2320,key=000,inCond:1,outCond:14,flow seq=03d,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1023's banks
	MOVWF	STK06	;id=2324,key=001,inCond:10,outCond:1,flow seq=03d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x1023
	MOVF	r0x101C,W	;id=2329,key=002,inCond:1,outCond:14,flow seq=03d,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1023's banks
	MOVWF	STK05	;id=2333,key=003,inCond:10,outCond:1,flow seq=03d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x1023
	MOVF	r0x101F,W	;id=2338,key=004,inCond:1,outCond:14,flow seq=03d,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1023's banks
	MOVWF	STK04	;id=2342,key=005,inCond:10,outCond:1,flow seq=03d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x1023
	MOVF	r0x101E,W	;id=2347,key=006,inCond:1,outCond:14,flow seq=03d,rIdx=r0x1051
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1023's banks
	MOVWF	STK03	;id=2351,key=007,inCond:10,outCond:1,flow seq=03d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x1f	;id=2354,key=008,inCond:400,outCond:10,flow seq=03d
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1023's banks
	MOVWF	STK02	;id=2358,key=009,inCond:10,outCond:1,flow seq=03d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x2e	;id=2361,key=00a,inCond:400,outCond:10,flow seq=03d
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1023's banks
	MOVWF	STK01	;id=2365,key=00b,inCond:10,outCond:1,flow seq=03d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x6e	;id=2368,key=00c,inCond:400,outCond:10,flow seq=03d
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1023's banks
	MOVWF	STK00	;id=2372,key=00d,inCond:10,outCond:1,flow seq=03d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x4e	;id=2375,key=00e,inCond:400,outCond:10,flow seq=03d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fslt	;id=2377,key=00f,inCond:0,outCond:0,flow seq=03d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fslt	;id=2379,key=010,inCond:10,outCond:1e,flow seq=03d
;<>Start of new flow, seq=0x3e ancestor = 0x3d
;  from: 03d ; to: 040 03f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2381,key=000,inCond:0,outCond:0,flow seq=03e
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
	BANKSEL	r0x1023	;id=6640,key=001,inCond:0,outCond:0,flow seq=03e
	MOVWF	r0x1023	;id=2388,key=002,inCond:10,outCond:1,flow seq=03e,rIdx=r0x1052
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x1023
	MOVF	r0x1023,W	;id=5926,key=003,inCond:1,outCond:14,flow seq=03e,rIdx=r0x1052
	BTFSC	STATUS,2	;id=2403,key=004,inCond:25,outCond:0,flow seq=03e
;<>Start of new flow, seq=0x3f ancestor = 0x3e
;  from: 03e ; to: 042 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 12
	GOTO	_00116_DS_	;id=2406,key=000,inCond:0,outCond:0,flow seq=03f
;<>Start of new flow, seq=0x40 ancestor = 0x3e
;  from: 03e ; to: 041 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	172; "../../../src/measure.c"	Cin = Cin / (1e+09);
	MOVLW	0x28	;id=2419,key=000,inCond:400,outCond:10,flow seq=040
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x1023's banks
	MOVWF	STK06	;id=2423,key=001,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x6b	;id=2426,key=002,inCond:400,outCond:10,flow seq=040
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x1023's banks
	MOVWF	STK05	;id=2430,key=003,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x6e	;id=2433,key=004,inCond:400,outCond:10,flow seq=040
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x1023's banks
	MOVWF	STK04	;id=2437,key=005,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x4e	;id=2440,key=006,inCond:400,outCond:10,flow seq=040
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1023's banks
	MOVWF	STK03	;id=2445,key=007,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x1023
	MOVF	r0x101D,W	;id=2450,key=008,inCond:1,outCond:14,flow seq=040,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1023's banks
	MOVWF	STK02	;id=2454,key=009,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x1023
	MOVF	r0x101C,W	;id=2459,key=00a,inCond:1,outCond:14,flow seq=040,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1023's banks
	MOVWF	STK01	;id=2463,key=00b,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x1023
	MOVF	r0x101F,W	;id=2468,key=00c,inCond:1,outCond:14,flow seq=040,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1023's banks
	MOVWF	STK00	;id=2472,key=00d,inCond:10,outCond:1,flow seq=040
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x1023
	MOVF	r0x101E,W	;id=2477,key=00e,inCond:1,outCond:14,flow seq=040,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=2479,key=00f,inCond:0,outCond:0,flow seq=040
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=2481,key=010,inCond:10,outCond:1e,flow seq=040
;<>Start of new flow, seq=0x41 ancestor = 0x40
;  from: 040 ; to: 047 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2483,key=000,inCond:0,outCond:0,flow seq=041
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x101E	;id=6654,key=001,inCond:0,outCond:0,flow seq=041
	MOVWF	r0x101E	;id=2490,key=002,inCond:10,outCond:1,flow seq=041,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=2493,key=003,inCond:1,outCond:14,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=2496,key=004,inCond:10,outCond:1,flow seq=041,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=2499,key=005,inCond:1,outCond:14,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVWF	r0x101C	;id=2502,key=006,inCond:10,outCond:1,flow seq=041,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=2505,key=007,inCond:1,outCond:14,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101E
	MOVWF	r0x101D	;id=2508,key=008,inCond:10,outCond:1,flow seq=041,rIdx=r0x104E
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_LIT=0x04, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	173; "../../../src/measure.c"	unit = 4; //"mF"
	MOVLW	0x04	;id=2520,key=009,inCond:400,outCond:10,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x101E
	MOVWF	r0x1023	;id=2523,key=00a,inCond:10,outCond:1,flow seq=041,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 12
	GOTO	_00123_DS_	;id=2528,key=00b,inCond:0,outCond:0,flow seq=041
;<>Start of new flow, seq=0x42 ancestor = 0x3f
;  from: 03f ; to: 043 
;goto	_00123_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00116_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00116_DS_:
;	.line	175; "../../../src/measure.c"	Cin = Cin / (1e+06);
	MOVLW	0x00	;id=2547,key=000,inCond:400,outCond:10,flow seq=042
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of (null)'s banks
	MOVWF	STK06	;id=2551,key=001,inCond:10,outCond:1,flow seq=042
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x24	;id=2554,key=002,inCond:400,outCond:10,flow seq=042
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of (null)'s banks
	MOVWF	STK05	;id=2558,key=003,inCond:10,outCond:1,flow seq=042
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x74	;id=2561,key=004,inCond:400,outCond:10,flow seq=042
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of (null)'s banks
	MOVWF	STK04	;id=2565,key=005,inCond:10,outCond:1,flow seq=042
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x49	;id=2568,key=006,inCond:400,outCond:10,flow seq=042
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of (null)'s banks
	MOVWF	STK03	;id=2573,key=007,inCond:10,outCond:1,flow seq=042
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
	BANKSEL	r0x101D	;id=6667,key=008,inCond:0,outCond:0,flow seq=042
	MOVF	r0x101D,W	;id=2578,key=009,inCond:1,outCond:14,flow seq=042,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101D's banks
	MOVWF	STK02	;id=2582,key=00a,inCond:10,outCond:1,flow seq=042
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101D
	MOVF	r0x101C,W	;id=2587,key=00b,inCond:1,outCond:14,flow seq=042,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101D's banks
	MOVWF	STK01	;id=2591,key=00c,inCond:10,outCond:1,flow seq=042
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101D
	MOVF	r0x101F,W	;id=2596,key=00d,inCond:1,outCond:14,flow seq=042,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101D's banks
	MOVWF	STK00	;id=2600,key=00e,inCond:10,outCond:1,flow seq=042
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101D
	MOVF	r0x101E,W	;id=2605,key=00f,inCond:1,outCond:14,flow seq=042,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=2607,key=010,inCond:0,outCond:0,flow seq=042
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=2609,key=011,inCond:10,outCond:1e,flow seq=042
;<>Start of new flow, seq=0x43 ancestor = 0x42
;  from: 042 ; to: 047 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2611,key=000,inCond:0,outCond:0,flow seq=043
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x101E	;id=6675,key=001,inCond:0,outCond:0,flow seq=043
	MOVWF	r0x101E	;id=2618,key=002,inCond:10,outCond:1,flow seq=043,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=2621,key=003,inCond:1,outCond:14,flow seq=043
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=2624,key=004,inCond:10,outCond:1,flow seq=043,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=2627,key=005,inCond:1,outCond:14,flow seq=043
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVWF	r0x101C	;id=2630,key=006,inCond:10,outCond:1,flow seq=043,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=2633,key=007,inCond:1,outCond:14,flow seq=043
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101E
	MOVWF	r0x101D	;id=2636,key=008,inCond:10,outCond:1,flow seq=043,rIdx=r0x104E
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_LIT=0x05, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	176; "../../../src/measure.c"	unit = 5; //"uF"
	MOVLW	0x05	;id=2648,key=009,inCond:400,outCond:10,flow seq=043
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x101E
	MOVWF	r0x1023	;id=2651,key=00a,inCond:10,outCond:1,flow seq=043,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 12
	GOTO	_00123_DS_	;id=2656,key=00b,inCond:0,outCond:0,flow seq=043
;<>Start of new flow, seq=0x44 ancestor = 0x3c
;  from: 03c ; to: 045 
;goto	_00123_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00119_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=4
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00119_DS_:
;	.line	179; "../../../src/measure.c"	Cin = Cin / 1e+03;
	MOVLW	0x00	;id=2675,key=000,inCond:400,outCond:10,flow seq=044
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of (null)'s banks
	MOVWF	STK06	;id=2679,key=001,inCond:10,outCond:1,flow seq=044
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2682,key=002,inCond:400,outCond:10,flow seq=044
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of (null)'s banks
	MOVWF	STK05	;id=2686,key=003,inCond:10,outCond:1,flow seq=044
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x7a	;id=2689,key=004,inCond:400,outCond:10,flow seq=044
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of (null)'s banks
	MOVWF	STK04	;id=2693,key=005,inCond:10,outCond:1,flow seq=044
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x44	;id=2696,key=006,inCond:400,outCond:10,flow seq=044
;;	695 register type nRegs=4
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of (null)'s banks
	MOVWF	STK03	;id=2701,key=007,inCond:10,outCond:1,flow seq=044
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
	BANKSEL	r0x101D	;id=6688,key=008,inCond:0,outCond:0,flow seq=044
	MOVF	r0x101D,W	;id=2706,key=009,inCond:1,outCond:14,flow seq=044,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101D's banks
	MOVWF	STK02	;id=2710,key=00a,inCond:10,outCond:1,flow seq=044
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101D
	MOVF	r0x101C,W	;id=2715,key=00b,inCond:1,outCond:14,flow seq=044,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101D's banks
	MOVWF	STK01	;id=2719,key=00c,inCond:10,outCond:1,flow seq=044
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101D
	MOVF	r0x101F,W	;id=2724,key=00d,inCond:1,outCond:14,flow seq=044,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101D's banks
	MOVWF	STK00	;id=2728,key=00e,inCond:10,outCond:1,flow seq=044
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101D
	MOVF	r0x101E,W	;id=2733,key=00f,inCond:1,outCond:14,flow seq=044,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsdiv	;id=2735,key=010,inCond:0,outCond:0,flow seq=044
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsdiv	;id=2737,key=011,inCond:10,outCond:1e,flow seq=044
;<>Start of new flow, seq=0x45 ancestor = 0x44
;  from: 044 ; to: 047 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2739,key=000,inCond:0,outCond:0,flow seq=045
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x101E	;id=6696,key=001,inCond:0,outCond:0,flow seq=045
	MOVWF	r0x101E	;id=2746,key=002,inCond:10,outCond:1,flow seq=045,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=2749,key=003,inCond:1,outCond:14,flow seq=045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=2752,key=004,inCond:10,outCond:1,flow seq=045,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=2755,key=005,inCond:1,outCond:14,flow seq=045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVWF	r0x101C	;id=2758,key=006,inCond:10,outCond:1,flow seq=045,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=2761,key=007,inCond:1,outCond:14,flow seq=045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101E
	MOVWF	r0x101D	;id=2764,key=008,inCond:10,outCond:1,flow seq=045,rIdx=r0x104E
;; 	2188 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_LIT=0x06, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	180; "../../../src/measure.c"	unit = 6; //"nF"
	MOVLW	0x06	;id=2776,key=009,inCond:400,outCond:10,flow seq=045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1023 present in same bank as r0x101E
	MOVWF	r0x1023	;id=2779,key=00a,inCond:10,outCond:1,flow seq=045,rIdx=r0x1052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 12
	GOTO	_00123_DS_	;id=2784,key=00b,inCond:0,outCond:0,flow seq=045
;<>Start of new flow, seq=0x46 ancestor = 0x39
;  from: 039 ; to: 047 
;goto	_00123_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00122_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_LIT=0x07, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00122_DS_:
;	.line	183; "../../../src/measure.c"	unit = 7; //"pF"
	MOVLW	0x07	;id=2799,key=000,inCond:400,outCond:10,flow seq=046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1052 
	BANKSEL	r0x1023	;id=6705,key=001,inCond:0,outCond:0,flow seq=046
	MOVWF	r0x1023	;id=2802,key=002,inCond:10,outCond:1,flow seq=046,rIdx=r0x1052
;<>Start of new flow, seq=0x47 ancestor = 0x41
;  from: 046 045 043 041 ; to: 048 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00123_DS_:
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
;;	1097 rIdx = r0x104E 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00123_DS_:
;	.line	185; "../../../src/measure.c"	Cin = Cin * 100; // scale to 2 decimal place
	BANKSEL	r0x101D	;id=6707,key=000,inCond:0,outCond:0,flow seq=047
	MOVF	r0x101D,W	;id=2823,key=001,inCond:1,outCond:14,flow seq=047,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x79
;; BANKOPT1 BANKSEL dropped; STK06 present in all of r0x101D's banks
	MOVWF	STK06	;id=2827,key=002,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101D
	MOVF	r0x101C,W	;id=2832,key=003,inCond:1,outCond:14,flow seq=047,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7a
;; BANKOPT1 BANKSEL dropped; STK05 present in all of r0x101D's banks
	MOVWF	STK05	;id=2836,key=004,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101D
	MOVF	r0x101F,W	;id=2841,key=005,inCond:1,outCond:14,flow seq=047,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7b
;; BANKOPT1 BANKSEL dropped; STK04 present in all of r0x101D's banks
	MOVWF	STK04	;id=2845,key=006,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101D
	MOVF	r0x101E,W	;id=2850,key=007,inCond:1,outCond:14,flow seq=047,rIdx=r0x1051
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x101D's banks
	MOVWF	STK03	;id=2854,key=008,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2857,key=009,inCond:400,outCond:10,flow seq=047
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101D's banks
	MOVWF	STK02	;id=2861,key=00a,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2864,key=00b,inCond:400,outCond:10,flow seq=047
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101D's banks
	MOVWF	STK01	;id=2868,key=00c,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0xc8	;id=2871,key=00d,inCond:400,outCond:10,flow seq=047
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101D's banks
	MOVWF	STK00	;id=2875,key=00e,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x42	;id=2878,key=00f,inCond:400,outCond:10,flow seq=047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fsmul	;id=2880,key=010,inCond:0,outCond:0,flow seq=047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fsmul	;id=2882,key=011,inCond:10,outCond:1e,flow seq=047
;<>Start of new flow, seq=0x48 ancestor = 0x47
;  from: 047 ; to: 049 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2884,key=000,inCond:0,outCond:0,flow seq=048
;;	695 register type nRegs=4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
	BANKSEL	r0x101E	;id=6719,key=001,inCond:0,outCond:0,flow seq=048
	MOVWF	r0x101E	;id=2891,key=002,inCond:10,outCond:1,flow seq=048,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVF	STK00,W	;id=2894,key=003,inCond:1,outCond:14,flow seq=048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVWF	r0x101F	;id=2897,key=004,inCond:10,outCond:1,flow seq=048,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVF	STK01,W	;id=2900,key=005,inCond:1,outCond:14,flow seq=048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVWF	r0x101C	;id=2903,key=006,inCond:10,outCond:1,flow seq=048,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVF	STK02,W	;id=2906,key=007,inCond:1,outCond:14,flow seq=048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101E
;	.line	186; "../../../src/measure.c"	var = (uint16_t)Cin;
	MOVWF	r0x101D	;id=5927,key=008,inCond:10,outCond:1,flow seq=048,rIdx=r0x104E
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x101E's banks
	MOVWF	STK02	;id=2931,key=009,inCond:10,outCond:1,flow seq=048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101E
	MOVF	r0x101C,W	;id=2936,key=00a,inCond:1,outCond:14,flow seq=048,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x101E's banks
	MOVWF	STK01	;id=2940,key=00b,inCond:10,outCond:1,flow seq=048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101F present in same bank as r0x101E
	MOVF	r0x101F,W	;id=2945,key=00c,inCond:1,outCond:14,flow seq=048,rIdx=r0x1050
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101E's banks
	MOVWF	STK00	;id=2949,key=00d,inCond:10,outCond:1,flow seq=048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x101E present in same bank as r0x101E
	MOVF	r0x101E,W	;id=2954,key=00e,inCond:1,outCond:14,flow seq=048,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___fs2uint	;id=2956,key=00f,inCond:0,outCond:0,flow seq=048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___fs2uint	;id=2958,key=010,inCond:10,outCond:1e,flow seq=048
;<>Start of new flow, seq=0x49 ancestor = 0x48
;  from: 048 ; to: 04a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2960,key=000,inCond:0,outCond:0,flow seq=049
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104E, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
	BANKSEL	r0x101C	;id=6733,key=001,inCond:0,outCond:0,flow seq=049
	MOVWF	r0x101C	;id=2967,key=002,inCond:10,outCond:1,flow seq=049,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101C's banks
	MOVF	STK00,W	;id=2970,key=003,inCond:1,outCond:14,flow seq=049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x101D present in same bank as r0x101C
;	.line	188; "../../../src/measure.c"	print_reading(var);
	MOVWF	r0x101D	;id=5928,key=004,inCond:10,outCond:1,flow seq=049,rIdx=r0x104E
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x101C's banks
	MOVWF	STK00	;id=2995,key=005,inCond:10,outCond:1,flow seq=049
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101C
	MOVF	r0x101C,W	;id=3000,key=006,inCond:1,outCond:14,flow seq=049,rIdx=r0x104F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_print_reading	;id=3002,key=007,inCond:0,outCond:0,flow seq=049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_print_reading	;id=3004,key=008,inCond:10,outCond:1e,flow seq=049
;<>Start of new flow, seq=0x4a ancestor = 0x49
;  from: 049 ; to: 04b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3006,key=000,inCond:0,outCond:0,flow seq=04a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
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
;	.line	189; "../../../src/measure.c"	print_unit(unit);
	BANKSEL	r0x1023	;id=6739,key=001,inCond:0,outCond:0,flow seq=04a
	MOVF	r0x1023,W	;id=3023,key=002,inCond:1,outCond:14,flow seq=04a,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_print_unit	;id=3025,key=003,inCond:0,outCond:0,flow seq=04a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_print_unit	;id=3027,key=004,inCond:10,outCond:1e,flow seq=04a
;<>Start of new flow, seq=0x4b ancestor = 0x4a
;  from: 04a ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3029,key=000,inCond:0,outCond:0,flow seq=04b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00124_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	190; "../../../src/measure.c"	}
	RETURN		;id=3042,key=001,inCond:10,outCond:e,flow seq=04b
;<>Start of new flow, seq=0x4c
;  from: ; to: 
; exit point of _measure_capacitance
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _timer0_read_ps
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _timer0_read_ps
;3 compiler assigned registers:
;   STK00
;   r0x1012
;   r0x1013
;; Starting pCode block
;<>Start of new flow, seq=0x4d ancestor = 0x4d
;  from: ; to: 04e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=0 
;;	-----------------------------------------
;;	 function measure_freq
;;	-----------------------------------------
;_measure_freq:
S_measure__measure_freq	code
_measure_freq:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT1 BANKSEL dropped; INTCON present in all of (null)'s banks
;	.line	72; "../../../src/measure.c"	INTCON &= ~0b100; // TMR0IF = 0;
	BCF	INTCON,2	;id=650,key=000,inCond:21,outCond:21,flow seq=04d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISA, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISA, size=1, left AOP_DIR=_TRISA, size=1, right AOP_LIT=0xef, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	76; "../../../src/measure.c"	TRISA &= ~0b00010000;
	BANKSEL	_TRISA	;id=6742,key=001,inCond:0,outCond:0,flow seq=04d
	BCF	_TRISA,4	;id=660,key=002,inCond:21,outCond:21,flow seq=04d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	78; "../../../src/measure.c"	__delay_ms(20); // stablize oscillator
	MOVLW	0x14	;id=671,key=003,inCond:400,outCond:10,flow seq=04d
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _TRISA's banks
	MOVWF	STK00	;id=675,key=004,inCond:10,outCond:1,flow seq=04d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=678,key=005,inCond:400,outCond:10,flow seq=04d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=680,key=006,inCond:0,outCond:0,flow seq=04d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=682,key=007,inCond:10,outCond:1e,flow seq=04d
;<>Start of new flow, seq=0x4e ancestor = 0x4d
;  from: 04d ; to: 04f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=684,key=000,inCond:0,outCond:0,flow seq=04e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
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
;	.line	81; "../../../src/measure.c"	TMR0 = 0x00;
	BANKSEL	_TMR0	;id=6745,key=001,inCond:0,outCond:0,flow seq=04e
	CLRF	_TMR0	;id=698,key=002,inCond:0,outCond:5,flow seq=04e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _PORTC present in same bank as _TMR0
;	.line	83; "../../../src/measure.c"	SET_LED(1);
	BCF	_PORTC,1	;id=708,key=003,inCond:21,outCond:21,flow seq=04e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4272 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; _PORTC present in same bank as _TMR0
	BSF	_PORTC,1	;id=718,key=004,inCond:21,outCond:21,flow seq=04e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	86; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=729,key=005,inCond:400,outCond:10,flow seq=04e
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _TMR0's banks
	MOVWF	STK00	;id=733,key=006,inCond:10,outCond:1,flow seq=04e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=736,key=007,inCond:400,outCond:10,flow seq=04e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=738,key=008,inCond:0,outCond:0,flow seq=04e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=740,key=009,inCond:10,outCond:1e,flow seq=04e
;<>Start of new flow, seq=0x4f ancestor = 0x4e
;  from: 04e ; to: 050 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=742,key=000,inCond:0,outCond:0,flow seq=04f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	87; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=755,key=001,inCond:400,outCond:10,flow seq=04f
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=759,key=002,inCond:10,outCond:1,flow seq=04f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=762,key=003,inCond:400,outCond:10,flow seq=04f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=764,key=004,inCond:0,outCond:0,flow seq=04f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=766,key=005,inCond:10,outCond:1e,flow seq=04f
;<>Start of new flow, seq=0x50 ancestor = 0x4f
;  from: 04f ; to: 051 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=768,key=000,inCond:0,outCond:0,flow seq=050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	88; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=781,key=001,inCond:400,outCond:10,flow seq=050
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=785,key=002,inCond:10,outCond:1,flow seq=050
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=788,key=003,inCond:400,outCond:10,flow seq=050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=790,key=004,inCond:0,outCond:0,flow seq=050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=792,key=005,inCond:10,outCond:1e,flow seq=050
;<>Start of new flow, seq=0x51 ancestor = 0x50
;  from: 050 ; to: 052 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=794,key=000,inCond:0,outCond:0,flow seq=051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	89; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=807,key=001,inCond:400,outCond:10,flow seq=051
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=811,key=002,inCond:10,outCond:1,flow seq=051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=814,key=003,inCond:400,outCond:10,flow seq=051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=816,key=004,inCond:0,outCond:0,flow seq=051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=818,key=005,inCond:10,outCond:1e,flow seq=051
;<>Start of new flow, seq=0x52 ancestor = 0x51
;  from: 051 ; to: 053 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=820,key=000,inCond:0,outCond:0,flow seq=052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	90; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=833,key=001,inCond:400,outCond:10,flow seq=052
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=837,key=002,inCond:10,outCond:1,flow seq=052
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=840,key=003,inCond:400,outCond:10,flow seq=052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=842,key=004,inCond:0,outCond:0,flow seq=052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=844,key=005,inCond:10,outCond:1e,flow seq=052
;<>Start of new flow, seq=0x53 ancestor = 0x52
;  from: 052 ; to: 054 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=846,key=000,inCond:0,outCond:0,flow seq=053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	91; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=859,key=001,inCond:400,outCond:10,flow seq=053
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=863,key=002,inCond:10,outCond:1,flow seq=053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=866,key=003,inCond:400,outCond:10,flow seq=053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=868,key=004,inCond:0,outCond:0,flow seq=053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=870,key=005,inCond:10,outCond:1e,flow seq=053
;<>Start of new flow, seq=0x54 ancestor = 0x53
;  from: 053 ; to: 055 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=872,key=000,inCond:0,outCond:0,flow seq=054
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	92; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=885,key=001,inCond:400,outCond:10,flow seq=054
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=889,key=002,inCond:10,outCond:1,flow seq=054
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=892,key=003,inCond:400,outCond:10,flow seq=054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=894,key=004,inCond:0,outCond:0,flow seq=054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=896,key=005,inCond:10,outCond:1e,flow seq=054
;<>Start of new flow, seq=0x55 ancestor = 0x54
;  from: 054 ; to: 056 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=898,key=000,inCond:0,outCond:0,flow seq=055
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	93; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=911,key=001,inCond:400,outCond:10,flow seq=055
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=915,key=002,inCond:10,outCond:1,flow seq=055
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=918,key=003,inCond:400,outCond:10,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=920,key=004,inCond:0,outCond:0,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=922,key=005,inCond:10,outCond:1e,flow seq=055
;<>Start of new flow, seq=0x56 ancestor = 0x55
;  from: 055 ; to: 057 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=924,key=000,inCond:0,outCond:0,flow seq=056
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	94; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=937,key=001,inCond:400,outCond:10,flow seq=056
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=941,key=002,inCond:10,outCond:1,flow seq=056
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=944,key=003,inCond:400,outCond:10,flow seq=056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=946,key=004,inCond:0,outCond:0,flow seq=056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=948,key=005,inCond:10,outCond:1e,flow seq=056
;<>Start of new flow, seq=0x57 ancestor = 0x56
;  from: 056 ; to: 058 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=950,key=000,inCond:0,outCond:0,flow seq=057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	95; "../../../src/measure.c"	__delay_ms(10);
	MOVLW	0x0a	;id=963,key=001,inCond:400,outCond:10,flow seq=057
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=967,key=002,inCond:10,outCond:1,flow seq=057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=970,key=003,inCond:400,outCond:10,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=972,key=004,inCond:0,outCond:0,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=974,key=005,inCond:10,outCond:1e,flow seq=057
;<>Start of new flow, seq=0x58 ancestor = 0x57
;  from: 057 ; to: 059 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=976,key=000,inCond:0,outCond:0,flow seq=058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	97; "../../../src/measure.c"	SET_LED(0);
	BANKSEL	_PORTC	;id=6768,key=001,inCond:0,outCond:0,flow seq=058
	BCF	_PORTC,1	;id=988,key=002,inCond:21,outCond:21,flow seq=058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TRISA, size = 1
;; 	line = 4246 result AOP_DIR=_TRISA, size=1, left AOP_DIR=_TRISA, size=1, right AOP_LIT=0x10, size=1
;; 	line = 4272 result AOP_DIR=_TRISA, size=1, left AOP_DIR=_TRISA, size=1, right AOP_LIT=0x10, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	100; "../../../src/measure.c"	TRISA |= 0b00010000;
	BANKSEL	_TRISA	;id=6769,key=003,inCond:0,outCond:0,flow seq=058
	BSF	_TRISA,4	;id=1001,key=004,inCond:21,outCond:21,flow seq=058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	103; "../../../src/measure.c"	count = timer0_read_ps();
	PAGESEL	_timer0_read_ps	;id=1009,key=005,inCond:0,outCond:0,flow seq=058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_timer0_read_ps	;id=1011,key=006,inCond:10,outCond:1e,flow seq=058
;<>Start of new flow, seq=0x59 ancestor = 0x58
;  from: 058 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1013,key=000,inCond:0,outCond:0,flow seq=059
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104A, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104B 
	BANKSEL	r0x1012	;id=6771,key=001,inCond:0,outCond:0,flow seq=059
	MOVWF	r0x1012	;id=1020,key=002,inCond:10,outCond:1,flow seq=059,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1012's banks
	MOVF	STK00,W	;id=1023,key=003,inCond:1,outCond:14,flow seq=059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104A 
;;1	MOVWF	r0x1013
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1012's banks
;	.line	111; "../../../src/measure.c"	return count;
	MOVWF	STK00	;id=1042,key=004,inCond:10,outCond:1,flow seq=059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x1012 present in same bank as r0x1012
	MOVF	r0x1012,W	;id=1047,key=005,inCond:1,outCond:14,flow seq=059,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00109_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	112; "../../../src/measure.c"	}
	RETURN		;id=1058,key=006,inCond:10,outCond:e,flow seq=059
;<>Start of new flow, seq=0x5a
;  from: ; to: 
; exit point of _measure_freq
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _uart_puts
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _uart_puts
;6 compiler assigned registers:
;   r0x1028
;   STK00
;   r0x1029
;   STK01
;   STK02
;   r0x102A
;; Starting pCode block
;<>Start of new flow, seq=0x5b ancestor = 0x5b
;  from: ; to: 05c 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function calibrate
;;	-----------------------------------------
;_calibrate:
S_measure__calibrate	code
_calibrate:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	38; "../../../src/measure.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=6775,key=000,inCond:0,outCond:0,flow seq=05b
	BCF	_PORTC,5	;id=125,key=001,inCond:21,outCond:21,flow seq=05b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	40; "../../../src/measure.c"	F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
	PAGESEL	_measure_freq	;id=133,key=002,inCond:0,outCond:0,flow seq=05b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_freq	;id=135,key=003,inCond:10,outCond:1e,flow seq=05b
;<>Start of new flow, seq=0x5c ancestor = 0x5b
;  from: 05b ; to: 05d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=137,key=000,inCond:0,outCond:0,flow seq=05c
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1028	;id=6777,key=001,inCond:0,outCond:0,flow seq=05c
	MOVWF	r0x1028	;id=144,key=002,inCond:10,outCond:1,flow seq=05c,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVF	STK00,W	;id=147,key=003,inCond:1,outCond:14,flow seq=05c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVWF	r0x1029	;id=5930,key=004,inCond:10,outCond:1,flow seq=05c,rIdx=r0x1047
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVWF	STK00	;id=171,key=005,inCond:10,outCond:1,flow seq=05c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	MOVF	r0x1028,W	;id=176,key=006,inCond:1,outCond:14,flow seq=05c,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___uint2fs	;id=178,key=007,inCond:0,outCond:0,flow seq=05c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___uint2fs	;id=180,key=008,inCond:10,outCond:1e,flow seq=05c
;<>Start of new flow, seq=0x5d ancestor = 0x5c
;  from: 05c ; to: 05e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=182,key=000,inCond:0,outCond:0,flow seq=05d
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_DIR=_F1, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=3
	BANKSEL	_F1	;id=6783,key=001,inCond:0,outCond:0,flow seq=05d
	MOVWF	(_F1 + 3)	;id=191,key=002,inCond:10,outCond:1,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F1's banks
	MOVF	STK00,W	;id=194,key=003,inCond:1,outCond:14,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVWF	(_F1 + 2)	;id=198,key=004,inCond:10,outCond:1,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F1's banks
	MOVF	STK01,W	;id=201,key=005,inCond:1,outCond:14,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVWF	(_F1 + 1)	;id=205,key=006,inCond:10,outCond:1,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F1's banks
	MOVF	STK02,W	;id=208,key=007,inCond:1,outCond:14,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=0
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVWF	_F1	;id=212,key=008,inCond:10,outCond:1,flow seq=05d
;; 	2188 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	41; "../../../src/measure.c"	delay10ms(50);
	MOVLW	0x32	;id=226,key=009,inCond:400,outCond:10,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=228,key=00a,inCond:0,outCond:0,flow seq=05d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=230,key=00b,inCond:10,outCond:1e,flow seq=05d
;<>Start of new flow, seq=0x5e ancestor = 0x5d
;  from: 05d ; to: 05f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=232,key=000,inCond:0,outCond:0,flow seq=05e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	43; "../../../src/measure.c"	F1 = (double)measure_freq();
	PAGESEL	_measure_freq	;id=242,key=001,inCond:0,outCond:0,flow seq=05e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_freq	;id=244,key=002,inCond:10,outCond:1e,flow seq=05e
;<>Start of new flow, seq=0x5f ancestor = 0x5e
;  from: 05e ; to: 060 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=246,key=000,inCond:0,outCond:0,flow seq=05f
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1028	;id=6792,key=001,inCond:0,outCond:0,flow seq=05f
	MOVWF	r0x1028	;id=253,key=002,inCond:10,outCond:1,flow seq=05f,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVF	STK00,W	;id=256,key=003,inCond:1,outCond:14,flow seq=05f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVWF	r0x1029	;id=5931,key=004,inCond:10,outCond:1,flow seq=05f,rIdx=r0x1047
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVWF	STK00	;id=280,key=005,inCond:10,outCond:1,flow seq=05f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	MOVF	r0x1028,W	;id=285,key=006,inCond:1,outCond:14,flow seq=05f,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___uint2fs	;id=287,key=007,inCond:0,outCond:0,flow seq=05f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___uint2fs	;id=289,key=008,inCond:10,outCond:1e,flow seq=05f
;<>Start of new flow, seq=0x60 ancestor = 0x5f
;  from: 05f ; to: 061 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=291,key=000,inCond:0,outCond:0,flow seq=060
;; ***	aopForSym 316
;;	328 sym->rname = _F1, size = 4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_DIR=_F1, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=3
	BANKSEL	_F1	;id=6798,key=001,inCond:0,outCond:0,flow seq=060
	MOVWF	(_F1 + 3)	;id=300,key=002,inCond:10,outCond:1,flow seq=060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F1's banks
	MOVF	STK00,W	;id=303,key=003,inCond:1,outCond:14,flow seq=060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=2
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVWF	(_F1 + 2)	;id=307,key=004,inCond:10,outCond:1,flow seq=060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F1's banks
	MOVF	STK01,W	;id=310,key=005,inCond:1,outCond:14,flow seq=060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=1
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVWF	(_F1 + 1)	;id=314,key=006,inCond:10,outCond:1,flow seq=060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F1's banks
	MOVF	STK02,W	;id=317,key=007,inCond:1,outCond:14,flow seq=060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F1   offset=0
;; BANKOPT2 BANKSEL dropped; _F1 present in same bank as _F1
	MOVWF	_F1	;id=321,key=008,inCond:10,outCond:1,flow seq=060
;; 	2188 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	44; "../../../src/measure.c"	ADD_CCAL();
	BANKSEL	_PORTC	;id=6805,key=009,inCond:0,outCond:0,flow seq=060
	BSF	_PORTC,5	;id=335,key=00a,inCond:21,outCond:21,flow seq=060
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	46; "../../../src/measure.c"	F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
	PAGESEL	_measure_freq	;id=343,key=00b,inCond:0,outCond:0,flow seq=060
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_freq	;id=345,key=00c,inCond:10,outCond:1e,flow seq=060
;<>Start of new flow, seq=0x61 ancestor = 0x60
;  from: 060 ; to: 062 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=347,key=000,inCond:0,outCond:0,flow seq=061
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1028	;id=6807,key=001,inCond:0,outCond:0,flow seq=061
	MOVWF	r0x1028	;id=354,key=002,inCond:10,outCond:1,flow seq=061,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVF	STK00,W	;id=357,key=003,inCond:1,outCond:14,flow seq=061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVWF	r0x1029	;id=5932,key=004,inCond:10,outCond:1,flow seq=061,rIdx=r0x1047
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVWF	STK00	;id=381,key=005,inCond:10,outCond:1,flow seq=061
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	MOVF	r0x1028,W	;id=386,key=006,inCond:1,outCond:14,flow seq=061,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___uint2fs	;id=388,key=007,inCond:0,outCond:0,flow seq=061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___uint2fs	;id=390,key=008,inCond:10,outCond:1e,flow seq=061
;<>Start of new flow, seq=0x62 ancestor = 0x61
;  from: 061 ; to: 063 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=392,key=000,inCond:0,outCond:0,flow seq=062
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_DIR=_F2, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=3
	BANKSEL	_F2	;id=6813,key=001,inCond:0,outCond:0,flow seq=062
	MOVWF	(_F2 + 3)	;id=401,key=002,inCond:10,outCond:1,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F2's banks
	MOVF	STK00,W	;id=404,key=003,inCond:1,outCond:14,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=2
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVWF	(_F2 + 2)	;id=408,key=004,inCond:10,outCond:1,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F2's banks
	MOVF	STK01,W	;id=411,key=005,inCond:1,outCond:14,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=1
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVWF	(_F2 + 1)	;id=415,key=006,inCond:10,outCond:1,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F2's banks
	MOVF	STK02,W	;id=418,key=007,inCond:1,outCond:14,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=0
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVWF	_F2	;id=422,key=008,inCond:10,outCond:1,flow seq=062
;; 	2188 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	47; "../../../src/measure.c"	delay10ms(50);
	MOVLW	0x32	;id=436,key=009,inCond:400,outCond:10,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=438,key=00a,inCond:0,outCond:0,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=440,key=00b,inCond:10,outCond:1e,flow seq=062
;<>Start of new flow, seq=0x63 ancestor = 0x62
;  from: 062 ; to: 064 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=442,key=000,inCond:0,outCond:0,flow seq=063
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	49; "../../../src/measure.c"	F2 = (double)measure_freq();
	PAGESEL	_measure_freq	;id=452,key=001,inCond:0,outCond:0,flow seq=063
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_freq	;id=454,key=002,inCond:10,outCond:1e,flow seq=063
;<>Start of new flow, seq=0x64 ancestor = 0x63
;  from: 063 ; to: 065 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=456,key=000,inCond:0,outCond:0,flow seq=064
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1047, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1028	;id=6822,key=001,inCond:0,outCond:0,flow seq=064
	MOVWF	r0x1028	;id=463,key=002,inCond:10,outCond:1,flow seq=064,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVF	STK00,W	;id=466,key=003,inCond:1,outCond:14,flow seq=064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVWF	r0x1029	;id=5933,key=004,inCond:10,outCond:1,flow seq=064,rIdx=r0x1047
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVWF	STK00	;id=490,key=005,inCond:10,outCond:1,flow seq=064
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	MOVF	r0x1028,W	;id=495,key=006,inCond:1,outCond:14,flow seq=064,rIdx=r0x1048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	___uint2fs	;id=497,key=007,inCond:0,outCond:0,flow seq=064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	___uint2fs	;id=499,key=008,inCond:10,outCond:1e,flow seq=064
;<>Start of new flow, seq=0x65 ancestor = 0x64
;  from: 064 ; to: 066 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=501,key=000,inCond:0,outCond:0,flow seq=065
;; ***	aopForSym 316
;;	328 sym->rname = _F2, size = 4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_DIR=_F2, size=4, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=3
	BANKSEL	_F2	;id=6828,key=001,inCond:0,outCond:0,flow seq=065
	MOVWF	(_F2 + 3)	;id=510,key=002,inCond:10,outCond:1,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _F2's banks
	MOVF	STK00,W	;id=513,key=003,inCond:1,outCond:14,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=2
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVWF	(_F2 + 2)	;id=517,key=004,inCond:10,outCond:1,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _F2's banks
	MOVF	STK01,W	;id=520,key=005,inCond:1,outCond:14,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=1
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVWF	(_F2 + 1)	;id=524,key=006,inCond:10,outCond:1,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of _F2's banks
	MOVF	STK02,W	;id=527,key=007,inCond:1,outCond:14,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	998
;;	1016  _F2   offset=0
;; BANKOPT2 BANKSEL dropped; _F2 present in same bank as _F2
	MOVWF	_F2	;id=531,key=008,inCond:10,outCond:1,flow seq=065
;; 	2188 left AOP_DIR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	50; "../../../src/measure.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=6835,key=009,inCond:0,outCond:0,flow seq=065
	BCF	_PORTC,5	;id=544,key=00a,inCond:21,outCond:21,flow seq=065
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	614
;;	aopForRemat 393
;;	419: rname ___str_0, val 0, const = 0
;;	695 register type nRegs=3
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	___str_0
;; 	line = 7238 result AOP_REG=r0x1047, size=3, left -=-, size=0, right AOP_PCODE=___str_0, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	62; "../../../src/measure.c"	uart_puts("\r\n");
	MOVLW	high (___str_0 + 0)	;id=560,key=00b,inCond:400,outCond:10,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x1028	;id=6836,key=00c,inCond:0,outCond:0,flow seq=065
	MOVWF	r0x1028	;id=563,key=00d,inCond:10,outCond:1,flow seq=065,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_0 + 0)	;id=566,key=00e,inCond:400,outCond:10,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVWF	r0x1029	;id=569,key=00f,inCond:10,outCond:1,flow seq=065,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=571,key=010,inCond:400,outCond:10,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x1028
	MOVWF	r0x102A	;id=574,key=011,inCond:10,outCond:1,flow seq=065,rIdx=r0x1049
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
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	MOVF	r0x1029,W	;id=588,key=012,inCond:1,outCond:14,flow seq=065,rIdx=r0x1047
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1028's banks
	MOVWF	STK01	;id=592,key=013,inCond:10,outCond:1,flow seq=065
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	MOVF	r0x1028,W	;id=597,key=014,inCond:1,outCond:14,flow seq=065,rIdx=r0x1048
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1028's banks
	MOVWF	STK00	;id=601,key=015,inCond:10,outCond:1,flow seq=065
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x1028
	MOVF	r0x102A,W	;id=606,key=016,inCond:1,outCond:14,flow seq=065,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_uart_puts	;id=608,key=017,inCond:0,outCond:0,flow seq=065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_puts	;id=610,key=018,inCond:10,outCond:1e,flow seq=065
;<>Start of new flow, seq=0x66 ancestor = 0x65
;  from: 065 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=612,key=000,inCond:0,outCond:0,flow seq=066
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	63; "../../../src/measure.c"	}
	RETURN		;id=625,key=001,inCond:10,outCond:e,flow seq=066
;<>Start of new flow, seq=0x67
;  from: ; to: 
; exit point of _calibrate
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	 1029+  247 =  1276 instructions ( 3046 byte)

	end
