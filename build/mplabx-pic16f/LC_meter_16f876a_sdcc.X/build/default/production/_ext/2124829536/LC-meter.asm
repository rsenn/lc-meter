;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../LC-meter.c"
	list	p=16f876a
	radix dec
	include "p16f876a.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3f32
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
	extern	_timer0_init
	extern	_timer0_read_ps
	extern	_timer1_init
	extern	_timer2_init
	extern	_uart_putch
	extern	_uart_getch
	extern	_uart_poll
	extern	_uart_init
	extern	_uart_isr
	extern	_uart_enable
	extern	_uart_disable
	extern	_uart_puts
	extern	_uart_puts2
	extern	_calibrate
	extern	_measure_freq
	extern	_measure_capacitance
	extern	_measure_inductance
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
	extern	_loop
	extern	_initialize
	extern	_milliseconds
	extern	_put_number
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
	extern	___sdcc_saved_fsr
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_testloop
	global	_main
	global	_delay10ms
	global	_isr
	global	_bres
	global	_msecpart
	global	_seconds
	global	_msecs
	global	_timer1of
	global	_F1
	global	_F2
	global	_F3
	global	_CCal
	global	_blink

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_LC_meter_0	udata
_bres	res	2

UD_LC_meter_1	udata
_msecpart	res	2

UD_LC_meter_2	udata
_seconds	res	4

UD_LC_meter_3	udata
_msecs	res	4

UD_LC_meter_4	udata
_timer1of	res	4

UD_LC_meter_5	udata
_F1	res	4

UD_LC_meter_6	udata
_F2	res	4

UD_LC_meter_7	udata
_F3	res	4

UD_LC_meter_8	udata
_CCal	res	4

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_LC_meter_0	udata
r0x101B	res	1
r0x101C	res	1
r0x1019	res	1
r0x1018	res	1
r0x101A	res	1
r0x1016	res	1
r0x1017	res	1
_testloop_prev_s_65536_69	res	2
_testloop_led_65536_69	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_LC_meter_0	idata
_blink
	db	0x00, 0x00


ID_LC_meter_1	code
___str_0
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x0004
__sdcc_interrupt:
;***
;  pBlock Stats: dbName = I
;***
;2 compiler assigned registers:
;   r0x101B
;   r0x101C
;; Starting pCode block
;<>Start of new flow, seq=0x24 ancestor = 0x24
;  from: ; to: 026 025 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=0 
;;	-----------------------------------------
;;	 function isr
;;	-----------------------------------------
;_isr:
_isr:	;Function start
; 0 exit points
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2399:genFunction
;; BANKOPT1 BANKSEL dropped; WSAVE present in all of (null)'s banks
;	.line	75; "../../../LC-meter.c"	INTERRUPT_FN() {
	MOVWF	WSAVE	;id=143,key=000,inCond:10,outCond:1,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2400:genFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
	SWAPF	STATUS,W	;id=145,key=001,inCond:1,outCond:10,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2405:genFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
	CLRF	STATUS	;id=147,key=002,inCond:0,outCond:5,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2406:genFunction
;; BANKOPT1 BANKSEL dropped; SSAVE present in all of (null)'s banks
	MOVWF	SSAVE	;id=149,key=003,inCond:10,outCond:1,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2408:genFunction
;; BANKOPT1 BANKSEL dropped; PCLATH present in all of (null)'s banks
	MOVF	PCLATH,W	;id=151,key=004,inCond:1,outCond:14,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2410:genFunction
;; BANKOPT1 BANKSEL dropped; PCLATH present in all of (null)'s banks
	CLRF	PCLATH	;id=153,key=005,inCond:0,outCond:5,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2411:genFunction
;; BANKOPT1 BANKSEL dropped; PSAVE present in all of (null)'s banks
	MOVWF	PSAVE	;id=155,key=006,inCond:10,outCond:1,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2413:genFunction
;; BANKOPT1 BANKSEL dropped; FSR present in all of (null)'s banks
	MOVF	FSR,W	;id=157,key=007,inCond:1,outCond:14,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2414:genFunction
	BANKSEL	___sdcc_saved_fsr	;id=1692,key=008,inCond:0,outCond:0,flow seq=024
	MOVWF	___sdcc_saved_fsr	;id=159,key=009,inCond:10,outCond:1,flow seq=024
;push	psw
;mov	psw,#0x00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_PIR1, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _PIR1   offset=0
;	.line	77; "../../../LC-meter.c"	if(PIR1 & 0b10) {
	BANKSEL	_PIR1	;id=1693,key=00a,inCond:0,outCond:0,flow seq=024
	MOVF	_PIR1,W	;id=178,key=00b,inCond:1,outCond:14,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x104A 
	BANKSEL	r0x101B	;id=1694,key=00c,inCond:0,outCond:0,flow seq=024
	MOVWF	r0x101B	;id=181,key=00d,inCond:10,outCond:1,flow seq=024,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	BTFSS	r0x101B,1	;id=190,key=00e,inCond:21,outCond:0,flow seq=024
;<>Start of new flow, seq=0x25 ancestor = 0x24
;  from: 024 ; to: 055 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=9, label offset 8
	GOTO	_00117_DS_	;id=193,key=000,inCond:0,outCond:0,flow seq=025
;<>Start of new flow, seq=0x26 ancestor = 0x24
;  from: 024 ; to: 028 027 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;;	576
;; 	line = 614 result AOP_DIR=_bres, size=2, left AOP_DIR=_bres, size=2, right AOP_LIT=0x00, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi = 1	genAddLit  350
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:354:genAddLit
;;	998
;;	1016  _bres   offset=1
;	.line	79; "../../../LC-meter.c"	bres += 256;
	BANKSEL	_bres	;id=1696,key=000,inCond:0,outCond:0,flow seq=026
	INCF	(_bres + 1),F	;id=214,key=001,inCond:1,outCond:5,flow seq=026
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0x1388=5000), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	81; "../../../LC-meter.c"	if(bres >= 5000) {
	MOVLW	0x13	;id=226,key=002,inCond:400,outCond:10,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _bres   offset=1
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	SUBWF	(_bres + 1),W	;id=230,key=003,inCond:11,outCond:1e,flow seq=026
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=232,key=004,inCond:25,outCond:0,flow seq=026
;<>Start of new flow, seq=0x27 ancestor = 0x26
;  from: 026 ; to: 029 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=27, label offset 8
	GOTO	_00135_DS_	;id=235,key=000,inCond:0,outCond:0,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x26
;  from: 026 ; to: 029 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x88	;id=237,key=000,inCond:400,outCond:10,flow seq=028
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _bres   offset=0
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	SUBWF	_bres,W	;id=241,key=001,inCond:11,outCond:1e,flow seq=028
;<>Start of new flow, seq=0x29 ancestor = 0x27
;  from: 028 027 ; to: 02b 02a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00135_DS_:
	BTFSS	STATUS,0	;id=245,key=000,inCond:23,outCond:0,flow seq=029
;<>Start of new flow, seq=0x2a ancestor = 0x29
;  from: 029 ; to: 054 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=6, label offset 8
	GOTO	_00114_DS_	;id=248,key=000,inCond:0,outCond:0,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x29
;  from: 029 ; to: 02d 02c 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;;	576
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi is generic	236   genAddLit  400
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:415:genAddLit
;	.line	82; "../../../LC-meter.c"	bres -= 5000;
	MOVLW	0x78	;id=265,key=000,inCond:400,outCond:10,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:416:genAddLit
;;	998
;;	1016  _bres   offset=0
	BANKSEL	_bres	;id=1701,key=001,inCond:0,outCond:0,flow seq=02b
	ADDWF	_bres,F	;id=269,key=002,inCond:11,outCond:f,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:417:genAddLit
	MOVLW	0xec	;id=271,key=003,inCond:400,outCond:10,flow seq=02b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:418:genAddLit
	BTFSC	STATUS,0	;id=273,key=004,inCond:23,outCond:0,flow seq=02b
;<>Start of new flow, seq=0x2c ancestor = 0x2b
;  from: 02b ; to: 02d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:419:genAddLit
	MOVLW	0xed	;id=275,key=000,inCond:400,outCond:10,flow seq=02c
;<>Start of new flow, seq=0x2d ancestor = 0x2b
;  from: 02c 02b ; to: 02f 02e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:420:genAddLit
;;	998
;;	1016  _bres   offset=1
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	ADDWF	(_bres + 1),F	;id=279,key=000,inCond:11,outCond:f,flow seq=02d
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;;	576
;; 	line = 614 result AOP_DIR=_msecpart, size=2, left AOP_DIR=_msecpart, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _msecpart   offset=0
;	.line	83; "../../../LC-meter.c"	msecpart++;
	BANKSEL	_msecpart	;id=1703,key=001,inCond:0,outCond:0,flow seq=02d
	INCF	_msecpart,F	;id=297,key=002,inCond:1,outCond:5,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=299,key=003,inCond:25,outCond:0,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 02f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecpart   offset=1
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	INCF	(_msecpart + 1),F	;id=303,key=000,inCond:1,outCond:5,flow seq=02e
;<>Start of new flow, seq=0x2f ancestor = 0x2d
;  from: 02e 02d ; to: 031 030 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _msecs, size = 4
;;	576
;; 	line = 614 result AOP_DIR=_msecs, size=4, left AOP_DIR=_msecs, size=4, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _msecs   offset=0
;	.line	84; "../../../LC-meter.c"	msecs++;
	BANKSEL	_msecs	;id=1705,key=000,inCond:0,outCond:0,flow seq=02f
	INCF	_msecs,F	;id=319,key=001,inCond:1,outCond:5,flow seq=02f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=321,key=002,inCond:25,outCond:0,flow seq=02f
;<>Start of new flow, seq=0x30 ancestor = 0x2f
;  from: 02f ; to: 031 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecs   offset=1
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	INCF	(_msecs + 1),F	;id=325,key=000,inCond:1,outCond:5,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x2f
;  from: 030 02f ; to: 033 032 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=327,key=000,inCond:25,outCond:0,flow seq=031
;<>Start of new flow, seq=0x32 ancestor = 0x31
;  from: 031 ; to: 033 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecs   offset=2
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	INCF	(_msecs + 2),F	;id=331,key=000,inCond:1,outCond:5,flow seq=032
;<>Start of new flow, seq=0x33 ancestor = 0x31
;  from: 032 031 ; to: 035 034 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=333,key=000,inCond:25,outCond:0,flow seq=033
;<>Start of new flow, seq=0x34 ancestor = 0x33
;  from: 033 ; to: 035 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _msecs   offset=3
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	INCF	(_msecs + 3),F	;id=337,key=000,inCond:1,outCond:5,flow seq=034
;<>Start of new flow, seq=0x35 ancestor = 0x33
;  from: 034 033 ; to: 037 036 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	86; "../../../LC-meter.c"	SET_LED((blink > 200));
	BANKSEL	_PORTC	;id=1709,key=000,inCond:0,outCond:0,flow seq=035
	BCF	_PORTC,1	;id=347,key=001,inCond:21,outCond:21,flow seq=035
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xC9=201), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x00	;id=358,key=002,inCond:400,outCond:10,flow seq=035
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _blink   offset=1
	BANKSEL	_blink	;id=1710,key=003,inCond:0,outCond:0,flow seq=035
	SUBWF	(_blink + 1),W	;id=362,key=004,inCond:11,outCond:1e,flow seq=035
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=364,key=005,inCond:25,outCond:0,flow seq=035
;<>Start of new flow, seq=0x36 ancestor = 0x35
;  from: 035 ; to: 038 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=28, label offset 8
	GOTO	_00136_DS_	;id=367,key=000,inCond:0,outCond:0,flow seq=036
;<>Start of new flow, seq=0x37 ancestor = 0x35
;  from: 035 ; to: 038 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0xc9	;id=369,key=000,inCond:400,outCond:10,flow seq=037
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _blink   offset=0
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	SUBWF	_blink,W	;id=373,key=001,inCond:11,outCond:1e,flow seq=037
;<>Start of new flow, seq=0x38 ancestor = 0x36
;  from: 037 036 ; to: 03a 039 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3529:genCmp
;;	1097 rIdx = r0x104A 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00136_DS_:
	BANKSEL	r0x101B	;id=1713,key=000,inCond:0,outCond:0,flow seq=038
	CLRF	r0x101B	;id=377,key=001,inCond:0,outCond:5,flow seq=038,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3538:genCmp
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	RLF	r0x101B,F	;id=380,key=002,inCond:3,outCond:3,flow seq=038,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x104B, size=1, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVF	r0x101B,W	;id=390,key=003,inCond:1,outCond:14,flow seq=038,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=392,key=004,inCond:400,outCond:10,flow seq=038
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=394,key=005,inCond:25,outCond:0,flow seq=038
;<>Start of new flow, seq=0x39 ancestor = 0x38
;  from: 038 ; to: 03a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=396,key=000,inCond:400,outCond:10,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x38
;  from: 039 038 ; to: 03c 03b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101B
	MOVWF	r0x101C	;id=399,key=000,inCond:10,outCond:1,flow seq=03a,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:genNot *{*
;; ***	genNot  1535
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 1540 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104B, size=1, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101B
	MOVF	r0x101C,W	;id=409,key=001,inCond:1,outCond:14,flow seq=03a,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1567:genNot
	MOVLW	0x00	;id=411,key=002,inCond:400,outCond:10,flow seq=03a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1568:genNot
	BTFSC	STATUS,2	;id=413,key=003,inCond:25,outCond:0,flow seq=03a
;<>Start of new flow, seq=0x3b ancestor = 0x3a
;  from: 03a ; to: 03c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1569:genNot
	MOVLW	0x01	;id=415,key=000,inCond:400,outCond:10,flow seq=03b
;<>Start of new flow, seq=0x3c ancestor = 0x3a
;  from: 03b 03a ; to: 03e 03d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVWF	r0x101B	;id=1601,key=000,inCond:10,outCond:1,flow seq=03c,rIdx=r0x104A
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101B
	MOVWF	r0x101C	;id=431,key=001,inCond:10,outCond:1,flow seq=03c,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5232:shiftLeft_Left2ResultLit
	BCF	STATUS,0	;id=438,key=002,inCond:23,outCond:23,flow seq=03c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5241:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x101C present in same bank as r0x101B
	RLF	r0x101C,W	;id=441,key=003,inCond:3,outCond:12,flow seq=03c,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5242:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101B
	MOVWF	r0x101B	;id=444,key=004,inCond:10,outCond:1,flow seq=03c,rIdx=r0x104A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x104B, size=1, left -=-, size=0, right AOP_DIR=_PORTC, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _PORTC   offset=0
	BANKSEL	_PORTC	;id=1722,key=005,inCond:0,outCond:0,flow seq=03c
	MOVF	_PORTC,W	;id=456,key=006,inCond:1,outCond:14,flow seq=03c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x104B 
	BANKSEL	r0x101C	;id=1723,key=007,inCond:0,outCond:0,flow seq=03c
	MOVWF	r0x101C	;id=1602,key=008,inCond:10,outCond:1,flow seq=03c,rIdx=r0x104B
;; BANKOPT2 BANKSEL dropped; r0x101B present in same bank as r0x101C
	IORWF	r0x101B,W	;id=1603,key=009,inCond:11,outCond:14,flow seq=03c,rIdx=r0x104A
	BANKSEL	_PORTC	;id=1725,key=00a,inCond:0,outCond:0,flow seq=03c
	MOVWF	_PORTC	;id=477,key=00b,inCond:10,outCond:1,flow seq=03c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0x190=400), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	87; "../../../LC-meter.c"	if(blink >= 400)
	MOVLW	0x01	;id=487,key=00c,inCond:400,outCond:10,flow seq=03c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _blink   offset=1
	BANKSEL	_blink	;id=1726,key=00d,inCond:0,outCond:0,flow seq=03c
	SUBWF	(_blink + 1),W	;id=491,key=00e,inCond:11,outCond:1e,flow seq=03c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=493,key=00f,inCond:25,outCond:0,flow seq=03c
;<>Start of new flow, seq=0x3d ancestor = 0x3c
;  from: 03c ; to: 03f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=29, label offset 8
	GOTO	_00137_DS_	;id=496,key=000,inCond:0,outCond:0,flow seq=03d
;<>Start of new flow, seq=0x3e ancestor = 0x3c
;  from: 03c ; to: 03f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x90	;id=498,key=000,inCond:400,outCond:10,flow seq=03e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _blink   offset=0
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	SUBWF	_blink,W	;id=502,key=001,inCond:11,outCond:1e,flow seq=03e
;<>Start of new flow, seq=0x3f ancestor = 0x3d
;  from: 03e 03d ; to: 041 040 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00137_DS_:
	BTFSS	STATUS,0	;id=506,key=000,inCond:23,outCond:0,flow seq=03f
;<>Start of new flow, seq=0x40 ancestor = 0x3f
;  from: 03f ; to: 044 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=2, label offset 8
	GOTO	_00110_DS_	;id=509,key=000,inCond:0,outCond:0,flow seq=040
;<>Start of new flow, seq=0x41 ancestor = 0x3f
;  from: 03f ; to: 043 042 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;;	576
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi is generic	254   genAddLit  400
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:415:genAddLit
;	.line	88; "../../../LC-meter.c"	blink -= 400;
	MOVLW	0x70	;id=526,key=000,inCond:400,outCond:10,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:416:genAddLit
;;	998
;;	1016  _blink   offset=0
	BANKSEL	_blink	;id=1730,key=001,inCond:0,outCond:0,flow seq=041
	ADDWF	_blink,F	;id=530,key=002,inCond:11,outCond:f,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:417:genAddLit
	MOVLW	0xfe	;id=532,key=003,inCond:400,outCond:10,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:418:genAddLit
	BTFSC	STATUS,0	;id=534,key=004,inCond:23,outCond:0,flow seq=041
;<>Start of new flow, seq=0x42 ancestor = 0x41
;  from: 041 ; to: 043 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:419:genAddLit
	MOVLW	0xff	;id=536,key=000,inCond:400,outCond:10,flow seq=042
;<>Start of new flow, seq=0x43 ancestor = 0x41
;  from: 042 041 ; to: 044 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:420:genAddLit
;;	998
;;	1016  _blink   offset=1
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	ADDWF	(_blink + 1),F	;id=540,key=000,inCond:11,outCond:f,flow seq=043
;<>Start of new flow, seq=0x44 ancestor = 0x40
;  from: 043 040 ; to: 046 045 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00110_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _blink, size = 2
;; 	line = 614 result AOP_DIR=_blink, size=2, left AOP_DIR=_blink, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _blink   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00110_DS_:
;	.line	89; "../../../LC-meter.c"	++blink;
	BANKSEL	_blink	;id=1733,key=000,inCond:0,outCond:0,flow seq=044
	INCF	_blink,F	;id=562,key=001,inCond:1,outCond:5,flow seq=044
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=564,key=002,inCond:25,outCond:0,flow seq=044
;<>Start of new flow, seq=0x45 ancestor = 0x44
;  from: 044 ; to: 046 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _blink   offset=1
;; BANKOPT2 BANKSEL dropped; _blink present in same bank as _blink
	INCF	(_blink + 1),F	;id=568,key=000,inCond:1,outCond:5,flow seq=045
;<>Start of new flow, seq=0x46 ancestor = 0x44
;  from: 045 044 ; to: 048 047 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0x3E8=1000), size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	92; "../../../LC-meter.c"	if(msecpart >= 1000) {
	MOVLW	0x03	;id=578,key=000,inCond:400,outCond:10,flow seq=046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	998
;;	1016  _msecpart   offset=1
	BANKSEL	_msecpart	;id=1735,key=001,inCond:0,outCond:0,flow seq=046
	SUBWF	(_msecpart + 1),W	;id=582,key=002,inCond:11,outCond:1e,flow seq=046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3487:genCmp
	BTFSS	STATUS,2	;id=584,key=003,inCond:25,outCond:0,flow seq=046
;<>Start of new flow, seq=0x47 ancestor = 0x46
;  from: 046 ; to: 049 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3495:genCmp
;; ***	popGetLabel  key=30, label offset 8
	GOTO	_00138_DS_	;id=587,key=000,inCond:0,outCond:0,flow seq=047
;<>Start of new flow, seq=0x48 ancestor = 0x46
;  from: 046 ; to: 049 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0xe8	;id=589,key=000,inCond:400,outCond:10,flow seq=048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3499:genCmp
;;	998
;;	1016  _msecpart   offset=0
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	SUBWF	_msecpart,W	;id=593,key=001,inCond:11,outCond:1e,flow seq=048
;<>Start of new flow, seq=0x49 ancestor = 0x47
;  from: 048 047 ; to: 04b 04a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; STATUS present in all of (null)'s banks
_00138_DS_:
	BTFSS	STATUS,0	;id=597,key=000,inCond:23,outCond:0,flow seq=049
;<>Start of new flow, seq=0x4a ancestor = 0x49
;  from: 049 ; to: 054 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=6, label offset 8
	GOTO	_00114_DS_	;id=600,key=000,inCond:0,outCond:0,flow seq=04a
;<>Start of new flow, seq=0x4b ancestor = 0x49
;  from: 049 ; to: 04d 04c 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;; ***	aopForSym 316
;;	328 sym->rname = _seconds, size = 4
;;	576
;; 	line = 614 result AOP_DIR=_seconds, size=4, left AOP_DIR=_seconds, size=4, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	998
;;	1016  _seconds   offset=0
;	.line	94; "../../../LC-meter.c"	seconds++;
	BANKSEL	_seconds	;id=1739,key=000,inCond:0,outCond:0,flow seq=04b
	INCF	_seconds,F	;id=618,key=001,inCond:1,outCond:5,flow seq=04b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=620,key=002,inCond:25,outCond:0,flow seq=04b
;<>Start of new flow, seq=0x4c ancestor = 0x4b
;  from: 04b ; to: 04d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _seconds   offset=1
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	INCF	(_seconds + 1),F	;id=624,key=000,inCond:1,outCond:5,flow seq=04c
;<>Start of new flow, seq=0x4d ancestor = 0x4b
;  from: 04c 04b ; to: 04f 04e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=626,key=000,inCond:25,outCond:0,flow seq=04d
;<>Start of new flow, seq=0x4e ancestor = 0x4d
;  from: 04d ; to: 04f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _seconds   offset=2
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	INCF	(_seconds + 2),F	;id=630,key=000,inCond:1,outCond:5,flow seq=04e
;<>Start of new flow, seq=0x4f ancestor = 0x4d
;  from: 04e 04d ; to: 051 050 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=632,key=000,inCond:25,outCond:0,flow seq=04f
;<>Start of new flow, seq=0x50 ancestor = 0x4f
;  from: 04f ; to: 051 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:169:genPlusIncr
;;	998
;;	1016  _seconds   offset=3
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	INCF	(_seconds + 3),F	;id=636,key=000,inCond:1,outCond:5,flow seq=050
;<>Start of new flow, seq=0x51 ancestor = 0x4f
;  from: 050 04f ; to: 053 052 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;;	576
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;; hi is generic	252   genAddLit  400
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:415:genAddLit
;	.line	95; "../../../LC-meter.c"	msecpart -= 1000;
	MOVLW	0x18	;id=651,key=000,inCond:400,outCond:10,flow seq=051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:416:genAddLit
;;	998
;;	1016  _msecpart   offset=0
	BANKSEL	_msecpart	;id=1743,key=001,inCond:0,outCond:0,flow seq=051
	ADDWF	_msecpart,F	;id=655,key=002,inCond:11,outCond:f,flow seq=051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:417:genAddLit
	MOVLW	0xfc	;id=657,key=003,inCond:400,outCond:10,flow seq=051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:418:genAddLit
	BTFSC	STATUS,0	;id=659,key=004,inCond:23,outCond:0,flow seq=051
;<>Start of new flow, seq=0x52 ancestor = 0x51
;  from: 051 ; to: 053 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:419:genAddLit
	MOVLW	0xfd	;id=661,key=000,inCond:400,outCond:10,flow seq=052
;<>Start of new flow, seq=0x53 ancestor = 0x51
;  from: 052 051 ; to: 054 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:420:genAddLit
;;	998
;;	1016  _msecpart   offset=1
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	ADDWF	(_msecpart + 1),F	;id=665,key=000,inCond:11,outCond:f,flow seq=053
;<>Start of new flow, seq=0x54 ancestor = 0x2a
;  from: 053 04a 02a ; to: 055 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PIR1, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
;	.line	99; "../../../LC-meter.c"	PIR1 &= ~0b10; // TMR2IF = 0
	BANKSEL	_PIR1	;id=1746,key=000,inCond:0,outCond:0,flow seq=054
	BCF	_PIR1,1	;id=682,key=001,inCond:21,outCond:21,flow seq=054
;<>Start of new flow, seq=0x55 ancestor = 0x25
;  from: 054 025 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00117_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;pop	psw
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2614:genEndFunction
;; BANKOPT3 drop assumptions: PCI with label or call found
_00117_DS_:
;	.line	107; "../../../LC-meter.c"	}
	BANKSEL	___sdcc_saved_fsr	;id=1748,key=000,inCond:0,outCond:0,flow seq=055
	MOVF	___sdcc_saved_fsr,W	;id=694,key=001,inCond:1,outCond:14,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2615:genEndFunction
	BANKSEL	FSR	;id=1749,key=002,inCond:0,outCond:0,flow seq=055
	MOVWF	FSR	;id=696,key=003,inCond:10,outCond:1,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2617:genEndFunction
;; BANKOPT1 BANKSEL dropped; PSAVE present in all of FSR's banks
	MOVF	PSAVE,W	;id=698,key=004,inCond:1,outCond:14,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2618:genEndFunction
;; BANKOPT1 BANKSEL dropped; PCLATH present in all of FSR's banks
	MOVWF	PCLATH	;id=700,key=005,inCond:10,outCond:1,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2619:genEndFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	CLRF	STATUS	;id=702,key=006,inCond:0,outCond:5,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2621:genEndFunction
;; BANKOPT1 BANKSEL dropped; SSAVE present in all of FSR's banks
	SWAPF	SSAVE,W	;id=704,key=007,inCond:1,outCond:10,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2622:genEndFunction
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	MOVWF	STATUS	;id=706,key=008,inCond:10,outCond:1,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2623:genEndFunction
;; BANKOPT1 BANKSEL dropped; WSAVE present in all of FSR's banks
	SWAPF	WSAVE,F	;id=708,key=009,inCond:1,outCond:1,flow seq=055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2624:genEndFunction
;; BANKOPT1 BANKSEL dropped; WSAVE present in all of FSR's banks
	SWAPF	WSAVE,W	;id=710,key=00a,inCond:1,outCond:10,flow seq=055
;; BANKOPT3 drop assumptions: PCI with label or call found
END_OF_INTERRUPT:
	RETFIE		;id=712,key=00b,inCond:0,outCond:e,flow seq=055
;<>Start of new flow, seq=0x56
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_LC_meter	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _timer0_init
;   _timer2_init
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _uart_init
;   _delay10ms
;   _calibrate
;   _uart_puts
;   _measure_capacitance
;   _measure_inductance
;   _indicator
;   _delay10ms
;   _indicator
;   _delay10ms
;   _timer0_init
;   _timer2_init
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _delay10ms
;   _uart_init
;   _delay10ms
;   _calibrate
;   _uart_puts
;   _measure_capacitance
;   _measure_inductance
;   _indicator
;   _delay10ms
;   _indicator
;   _delay10ms
;5 compiler assigned registers:
;   r0x1018
;   r0x1019
;   r0x101A
;   STK01
;   STK00
;; Starting pCode block
;<>Start of new flow, seq=0xa ancestor = 0xa
;  from: ; to: 00b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=8previous max_key=30 
;;	-----------------------------------------
;;	 function main
;;	-----------------------------------------
;_main:
S_LC_meter__main	code
_main:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _seconds, size = 4
;; 	line = 7046 result AOP_DIR=_seconds, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=0
;	.line	112; "../../../LC-meter.c"	bres = msecpart = msecs = seconds = 0;
	BANKSEL	_seconds	;id=1624,key=000,inCond:0,outCond:0,flow seq=00a
	CLRF	_seconds	;id=738,key=001,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=1
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	CLRF	(_seconds + 1)	;id=743,key=002,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=2
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	CLRF	(_seconds + 2)	;id=748,key=003,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _seconds   offset=3
;; BANKOPT2 BANKSEL dropped; _seconds present in same bank as _seconds
	CLRF	(_seconds + 3)	;id=753,key=004,inCond:0,outCond:5,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _msecs, size = 4
;; 	line = 7046 result AOP_DIR=_msecs, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=0
	BANKSEL	_msecs	;id=1628,key=005,inCond:0,outCond:0,flow seq=00a
	CLRF	_msecs	;id=764,key=006,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=1
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	CLRF	(_msecs + 1)	;id=769,key=007,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=2
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	CLRF	(_msecs + 2)	;id=774,key=008,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecs   offset=3
;; BANKOPT2 BANKSEL dropped; _msecs present in same bank as _msecs
	CLRF	(_msecs + 3)	;id=779,key=009,inCond:0,outCond:5,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _msecpart, size = 2
;; 	line = 7046 result AOP_DIR=_msecpart, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecpart   offset=0
	BANKSEL	_msecpart	;id=1632,key=00a,inCond:0,outCond:0,flow seq=00a
	CLRF	_msecpart	;id=790,key=00b,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _msecpart   offset=1
;; BANKOPT2 BANKSEL dropped; _msecpart present in same bank as _msecpart
	CLRF	(_msecpart + 1)	;id=795,key=00c,inCond:0,outCond:5,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _bres, size = 2
;; 	line = 7046 result AOP_DIR=_bres, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _bres   offset=0
	BANKSEL	_bres	;id=1634,key=00d,inCond:0,outCond:0,flow seq=00a
	CLRF	_bres	;id=806,key=00e,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _bres   offset=1
;; BANKOPT2 BANKSEL dropped; _bres present in same bank as _bres
	CLRF	(_bres + 1)	;id=811,key=00f,inCond:0,outCond:5,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _CCal, size = 4
;; 	line = 7046 result AOP_DIR=_CCal, size=4, left -=-, size=0, right AOP_LIT=0x00, size=4
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _CCal   offset=0
;	.line	114; "../../../LC-meter.c"	CCal = C_CAL;
	BANKSEL	_CCal	;id=1636,key=010,inCond:0,outCond:0,flow seq=00a
	CLRF	_CCal	;id=823,key=011,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _CCal   offset=1
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	CLRF	(_CCal + 1)	;id=828,key=012,inCond:0,outCond:5,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x7a	;id=831,key=013,inCond:400,outCond:10,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _CCal   offset=2
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVWF	(_CCal + 2)	;id=835,key=014,inCond:10,outCond:1,flow seq=00a
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
	MOVLW	0x44	;id=838,key=015,inCond:400,outCond:10,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _CCal   offset=3
;; BANKOPT2 BANKSEL dropped; _CCal present in same bank as _CCal
	MOVWF	(_CCal + 3)	;id=842,key=016,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _CMCON, size = 1
;; 	line = 7046 result AOP_DIR=_CMCON, size=1, left -=-, size=0, right AOP_LIT=0x05, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	121; "../../../LC-meter.c"	CMCON = 0b00000101;
	MOVLW	0x05	;id=852,key=017,inCond:400,outCond:10,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _CMCON   offset=0
	BANKSEL	_CMCON	;id=1640,key=018,inCond:0,outCond:0,flow seq=00a
	MOVWF	_CMCON	;id=856,key=019,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _TRISA, size = 1
;; 	line = 7046 result AOP_DIR=_TRISA, size=1, left -=-, size=0, right AOP_LIT=0xcf, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	123; "../../../LC-meter.c"	TRISA = 0b11001111;
	MOVLW	0xcf	;id=866,key=01a,inCond:400,outCond:10,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _TRISA   offset=0
;; BANKOPT2 BANKSEL dropped; _TRISA present in same bank as _CMCON
	MOVWF	_TRISA	;id=870,key=01b,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	126; "../../../LC-meter.c"	timer0_init(PRESCALE_1_16 | TIMER0_FLAGS_EXTCLK);
	MOVLW	0x44	;id=881,key=01c,inCond:400,outCond:10,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_timer0_init	;id=883,key=01d,inCond:0,outCond:0,flow seq=00a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_timer0_init	;id=885,key=01e,inCond:10,outCond:1e,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=887,key=000,inCond:0,outCond:0,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _OPTION_REG, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_OPTION_REG, size=1, left AOP_DIR=_OPTION_REG, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	144; "../../../LC-meter.c"	OPTION_REG &= ~0b100000;
	BANKSEL	_OPTION_REG	;id=1643,key=001,inCond:0,outCond:0,flow seq=00b
	BCF	_OPTION_REG,5	;id=899,key=002,inCond:21,outCond:21,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _OPTION_REG
;	.line	148; "../../../LC-meter.c"	INIT_LED();
	BCF	_TRISC,1	;id=909,key=003,inCond:21,outCond:21,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	149; "../../../LC-meter.c"	SET_LED(1);
	BANKSEL	_PORTC	;id=1645,key=004,inCond:0,outCond:0,flow seq=00b
	BCF	_PORTC,1	;id=919,key=005,inCond:21,outCond:21,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4272 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; _PORTC present in same bank as _PORTC
	BSF	_PORTC,1	;id=929,key=006,inCond:21,outCond:21,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _SSPCON, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_SSPCON, size=1, left AOP_DIR=_SSPCON, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _SSPCON present in same bank as _PORTC
;	.line	154; "../../../LC-meter.c"	SSPCON &= ~0b100;
	BCF	_SSPCON,2	;id=939,key=007,inCond:21,outCond:21,flow seq=00b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	160; "../../../LC-meter.c"	timer2_init(PRESCALE_1_1 | TIMER2_FLAGS_INTR);
	MOVLW	0x80	;id=950,key=008,inCond:400,outCond:10,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_timer2_init	;id=952,key=009,inCond:0,outCond:0,flow seq=00b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_timer2_init	;id=954,key=00a,inCond:10,outCond:1e,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xb
;  from: 00b ; to: 00d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=956,key=000,inCond:0,outCond:0,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xb5, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	165; "../../../LC-meter.c"	TRISC &= 0b10110101;
	MOVLW	0xb5	;id=967,key=001,inCond:400,outCond:10,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _TRISC   offset=0
	BANKSEL	_TRISC	;id=1649,key=002,inCond:0,outCond:0,flow seq=00c
	ANDWF	_TRISC,F	;id=971,key=003,inCond:11,outCond:5,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 4246 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x10, size=1
;; 	line = 4272 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0x10, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _TRISC
;	.line	181; "../../../LC-meter.c"	LC_TRIS();
	BSF	_TRISC,4	;id=982,key=004,inCond:21,outCond:21,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISC, size=1, left AOP_DIR=_TRISC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _TRISC present in same bank as _TRISC
;	.line	182; "../../../LC-meter.c"	RELAY_TRIS();
	BCF	_TRISC,5	;id=992,key=005,inCond:21,outCond:21,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTC, size=1, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	184; "../../../LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=1652,key=006,inCond:0,outCond:0,flow seq=00c
	BCF	_PORTC,5	;id=1002,key=007,inCond:21,outCond:21,flow seq=00c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	185; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1013,key=008,inCond:400,outCond:10,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1015,key=009,inCond:0,outCond:0,flow seq=00c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1017,key=00a,inCond:10,outCond:1e,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 00e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1019,key=000,inCond:0,outCond:0,flow seq=00d
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
;	.line	186; "../../../LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC	;id=1654,key=001,inCond:0,outCond:0,flow seq=00d
	BSF	_PORTC,5	;id=1032,key=002,inCond:21,outCond:21,flow seq=00d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	187; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1043,key=003,inCond:400,outCond:10,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1045,key=004,inCond:0,outCond:0,flow seq=00d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1047,key=005,inCond:10,outCond:1e,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xd
;  from: 00d ; to: 00f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1049,key=000,inCond:0,outCond:0,flow seq=00e
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
;	.line	188; "../../../LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=1656,key=001,inCond:0,outCond:0,flow seq=00e
	BCF	_PORTC,5	;id=1061,key=002,inCond:21,outCond:21,flow seq=00e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	189; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1072,key=003,inCond:400,outCond:10,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1074,key=004,inCond:0,outCond:0,flow seq=00e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1076,key=005,inCond:10,outCond:1e,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xe
;  from: 00e ; to: 010 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1078,key=000,inCond:0,outCond:0,flow seq=00f
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
;	.line	190; "../../../LC-meter.c"	ADD_CCAL();
	BANKSEL	_PORTC	;id=1658,key=001,inCond:0,outCond:0,flow seq=00f
	BSF	_PORTC,5	;id=1091,key=002,inCond:21,outCond:21,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	191; "../../../LC-meter.c"	delay10ms(50);
	MOVLW	0x32	;id=1102,key=003,inCond:400,outCond:10,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1104,key=004,inCond:0,outCond:0,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1106,key=005,inCond:10,outCond:1e,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 011 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1108,key=000,inCond:0,outCond:0,flow seq=010
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
;	.line	192; "../../../LC-meter.c"	REMOVE_CCAL();
	BANKSEL	_PORTC	;id=1660,key=001,inCond:0,outCond:0,flow seq=010
	BCF	_PORTC,5	;id=1120,key=002,inCond:21,outCond:21,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	198; "../../../LC-meter.c"	uart_init();
	PAGESEL	_uart_init	;id=1128,key=003,inCond:0,outCond:0,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_init	;id=1130,key=004,inCond:10,outCond:1e,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0x10
;  from: 010 ; to: 012 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1132,key=000,inCond:0,outCond:0,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;; 	line = 4246 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; 	line = 4272 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4428:genOr
;	.line	202; "../../../LC-meter.c"	INTCON |= 0xc0; // PEIE = 1; GIE = 1;
	MOVLW	0xc0	;id=1144,key=001,inCond:400,outCond:10,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4430:genOr
;;	998
;;	1012  _INTCON   offset=0 - had to alloc by reg name
	BANKSEL	_INTCON	;id=1662,key=002,inCond:0,outCond:0,flow seq=011
	IORWF	_INTCON,F	;id=1148,key=003,inCond:11,outCond:5,flow seq=011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	221; "../../../LC-meter.c"	delay10ms(200);
	MOVLW	0xc8	;id=1159,key=004,inCond:400,outCond:10,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1161,key=005,inCond:0,outCond:0,flow seq=011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1163,key=006,inCond:10,outCond:1e,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 013 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1165,key=000,inCond:0,outCond:0,flow seq=012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	224; "../../../LC-meter.c"	calibrate();
	PAGESEL	_calibrate	;id=1175,key=001,inCond:0,outCond:0,flow seq=012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_calibrate	;id=1177,key=002,inCond:10,outCond:1e,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x12
;  from: 012 ; to: 014 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1179,key=000,inCond:0,outCond:0,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 01f 013 ; to: 015 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00147_DS_:
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
;; 	line = 7238 result AOP_REG=r0x104E, size=3, left -=-, size=0, right AOP_PCODE=___str_0, size=2
;; ***	genCast  7283
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00147_DS_:
;	.line	237; "../../../LC-meter.c"	uart_puts("...\r\n");
	MOVLW	high (___str_0 + 0)	;id=1202,key=000,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
	BANKSEL	r0x1018	;id=1666,key=001,inCond:0,outCond:0,flow seq=014
	MOVWF	r0x1018	;id=1205,key=002,inCond:10,outCond:1,flow seq=014,rIdx=r0x104F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	(___str_0 + 0)	;id=1208,key=003,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVWF	r0x1019	;id=1211,key=004,inCond:10,outCond:1,flow seq=014,rIdx=r0x104E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7343:genCast
	MOVLW	0x80	;id=1213,key=005,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVWF	r0x101A	;id=1216,key=006,inCond:10,outCond:1,flow seq=014,rIdx=r0x1050
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
;; BANKOPT2 BANKSEL dropped; r0x1019 present in same bank as r0x1018
	MOVF	r0x1019,W	;id=1230,key=007,inCond:1,outCond:14,flow seq=014,rIdx=r0x104E
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1018's banks
	MOVWF	STK01	;id=1234,key=008,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1018 present in same bank as r0x1018
	MOVF	r0x1018,W	;id=1239,key=009,inCond:1,outCond:14,flow seq=014,rIdx=r0x104F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1018's banks
	MOVWF	STK00	;id=1243,key=00a,inCond:10,outCond:1,flow seq=014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x101A present in same bank as r0x1018
	MOVF	r0x101A,W	;id=1248,key=00b,inCond:1,outCond:14,flow seq=014,rIdx=r0x1050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_uart_puts	;id=1250,key=00c,inCond:0,outCond:0,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_uart_puts	;id=1252,key=00d,inCond:10,outCond:1e,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x14
;  from: 014 ; to: 017 016 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1254,key=000,inCond:0,outCond:0,flow seq=015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTC, size = 1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_DIR=_PORTC, size=1, right AOP_LIT=0x10, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;	.line	238; "../../../LC-meter.c"	if(PORTC & (1 << 4))
	BANKSEL	_PORTC	;id=1675,key=001,inCond:0,outCond:0,flow seq=015
	BTFSS	_PORTC,4	;id=1267,key=002,inCond:21,outCond:0,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 019 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=2, label offset 42
	GOTO	_00144_DS_	;id=1270,key=000,inCond:0,outCond:0,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x15
;  from: 015 ; to: 018 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;	.line	239; "../../../LC-meter.c"	measure_capacitance();
	PAGESEL	_measure_capacitance	;id=1279,key=000,inCond:0,outCond:0,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_capacitance	;id=1281,key=001,inCond:10,outCond:1e,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 017 ; to: 01b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1283,key=000,inCond:0,outCond:0,flow seq=018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 42
	GOTO	_00145_DS_	;id=1290,key=001,inCond:0,outCond:0,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x16
;  from: 016 ; to: 01a 
;goto	_00145_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00144_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
_00144_DS_:
;	.line	241; "../../../LC-meter.c"	measure_inductance();
	PAGESEL	_measure_inductance	;id=1304,key=000,inCond:0,outCond:0,flow seq=019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_measure_inductance	;id=1306,key=001,inCond:10,outCond:1e,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x19
;  from: 019 ; to: 01b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1308,key=000,inCond:0,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x18
;  from: 01a 018 ; to: 01c 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00145_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;; BANKOPT3 drop assumptions: PCI with label or call found
_00145_DS_:
;	.line	243; "../../../LC-meter.c"	indicator(1);
	MOVLW	0x01	;id=1326,key=000,inCond:400,outCond:10,flow seq=01b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_indicator	;id=1328,key=001,inCond:0,outCond:0,flow seq=01b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_indicator	;id=1330,key=002,inCond:10,outCond:1e,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1b
;  from: 01b ; to: 01d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1332,key=000,inCond:0,outCond:0,flow seq=01c
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
;	.line	244; "../../../LC-meter.c"	delay10ms(30);
	MOVLW	0x1e	;id=1345,key=001,inCond:400,outCond:10,flow seq=01c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1347,key=002,inCond:0,outCond:0,flow seq=01c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1349,key=003,inCond:10,outCond:1e,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1c
;  from: 01c ; to: 01e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1351,key=000,inCond:0,outCond:0,flow seq=01d
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
;	.line	245; "../../../LC-meter.c"	indicator(0);
	MOVLW	0x00	;id=1364,key=001,inCond:400,outCond:10,flow seq=01d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_indicator	;id=1366,key=002,inCond:0,outCond:0,flow seq=01d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_indicator	;id=1368,key=003,inCond:10,outCond:1e,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 01d ; to: 01f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1370,key=000,inCond:0,outCond:0,flow seq=01e
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
;	.line	246; "../../../LC-meter.c"	delay10ms(20);
	MOVLW	0x14	;id=1383,key=001,inCond:400,outCond:10,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1385,key=002,inCond:0,outCond:0,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1387,key=003,inCond:10,outCond:1e,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 01e ; to: 014 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1389,key=000,inCond:0,outCond:0,flow seq=01f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=5, label offset 42
	GOTO	_00147_DS_	;id=1396,key=001,inCond:0,outCond:0,flow seq=01f
;<>Start of new flow, seq=0x20
;  from: ; to: 
;goto	_00147_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00149_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	248; "../../../LC-meter.c"	}
	RETURN		;id=1408,key=000,inCond:10,outCond:e,flow seq=020
;<>Start of new flow, seq=0x21
;  from: ; to: 
; exit point of _main
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _delay10ms
;   _delay10ms
;2 compiler assigned registers:
;   r0x1016
;   r0x1017
;; Starting pCode block
;<>Start of new flow, seq=0x2 ancestor = 0x2
;  from: ; to: 003 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=42previous max_key=5 
;;	-----------------------------------------
;;	 function testloop
;;	-----------------------------------------
;_testloop:
S_LC_meter__testloop	code
_testloop:	;Function start
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
;	.line	257; "../../../LC-meter.c"	delay10ms(10);
	MOVLW	0x0a	;id=1434,key=000,inCond:400,outCond:10,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay10ms	;id=1436,key=001,inCond:0,outCond:0,flow seq=002
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay10ms	;id=1438,key=002,inCond:10,outCond:1e,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x2
;  from: 002 ; to: 005 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1440,key=000,inCond:0,outCond:0,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x7f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	259; "../../../LC-meter.c"	INTCON &= ~0x80; // GIE = 0;
	BANKSEL	_INTCON	;id=1608,key=001,inCond:0,outCond:0,flow seq=003
	BCF	_INTCON,7	;id=1452,key=002,inCond:21,outCond:21,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;; ***	aopForSym 316
;;	328 sym->rname = _seconds, size = 4
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1053, size=2, left -=-, size=0, right AOP_DIR=_seconds, size=4
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _seconds   offset=0
;	.line	260; "../../../LC-meter.c"	s = seconds;
	BANKSEL	_seconds	;id=1609,key=003,inCond:0,outCond:0,flow seq=003
	MOVF	_seconds,W	;id=1465,key=004,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1053 
	BANKSEL	r0x1016	;id=1610,key=005,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x1016	;id=1468,key=006,inCond:10,outCond:1,flow seq=003,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	998
;;	1016  _seconds   offset=1
	BANKSEL	_seconds	;id=1611,key=007,inCond:0,outCond:0,flow seq=003
	MOVF	(_seconds + 1),W	;id=1472,key=008,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1054 
	BANKSEL	r0x1017	;id=1612,key=009,inCond:0,outCond:0,flow seq=003
	MOVWF	r0x1017	;id=1475,key=00a,inCond:10,outCond:1,flow seq=003,rIdx=r0x1054
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _INTCON, size = 1
;; 	line = 4246 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4272 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	261; "../../../LC-meter.c"	INTCON |= 0x80; // GIE = 1;
	BANKSEL	_INTCON	;id=1613,key=00b,inCond:0,outCond:0,flow seq=003
	BSF	_INTCON,7	;id=1485,key=00c,inCond:21,outCond:21,flow seq=003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3638:genCmpEq *{*
;; ***	genCmpEq  3639
;; ifx is non-null
;;	695 register type nRegs=2
;; ***	aopForSym 316
;;	328 sym->rname = _testloop_prev_s_65536_69, size = 2
;; 	line = 3650 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1053, size=2, right AOP_DIR=_testloop_prev_s_65536_69, size=2
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _testloop_prev_s_65536_69   offset=0
;	.line	291; "../../../LC-meter.c"	if(s != prev_s) {
	BANKSEL	_testloop_prev_s_65536_69	;id=1614,key=00d,inCond:0,outCond:0,flow seq=003
	MOVF	_testloop_prev_s_65536_69,W	;id=1499,key=00e,inCond:1,outCond:14,flow seq=003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3722:genCmpEq
;;	1097 rIdx = r0x1053 
	BANKSEL	r0x1016	;id=1615,key=00f,inCond:0,outCond:0,flow seq=003
	XORWF	r0x1016,W	;id=1502,key=010,inCond:11,outCond:14,flow seq=003,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3724:genCmpEq
	BTFSS	STATUS,2	;id=1504,key=011,inCond:25,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x3
;  from: 003 ; to: 007 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3727:genCmpEq
;; ***	popGetLabel  key=9, label offset 51
	GOTO	_00160_DS_	;id=1507,key=000,inCond:0,outCond:0,flow seq=004
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 003 ; to: 007 006 
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _testloop_prev_s_65536_69   offset=1
	BANKSEL	_testloop_prev_s_65536_69	;id=1616,key=000,inCond:0,outCond:0,flow seq=005
	MOVF	(_testloop_prev_s_65536_69 + 1),W	;id=1512,key=001,inCond:1,outCond:14,flow seq=005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3722:genCmpEq
;;	1097 rIdx = r0x1054 
;	.line	298; "../../../LC-meter.c"	prev_s = s;
	BANKSEL	r0x1017	;id=1617,key=002,inCond:0,outCond:0,flow seq=005
	XORWF	r0x1017,W	;id=1597,key=003,inCond:11,outCond:14,flow seq=005,rIdx=r0x1054
	BTFSC	STATUS,2	;id=1598,key=004,inCond:25,outCond:0,flow seq=005
;<>Start of new flow, seq=0x6 ancestor = 0x5
;  from: 005 ; to: 008 
	GOTO	_00154_DS_	;id=1599,key=000,inCond:0,outCond:0,flow seq=006
;<>Start of new flow, seq=0x7 ancestor = 0x4
;  from: 005 004 ; to: 008 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00160_DS_:
	BANKSEL	r0x1016	;id=1619,key=000,inCond:0,outCond:0,flow seq=007
	MOVF	r0x1016,W	;id=1600,key=001,inCond:1,outCond:14,flow seq=007,rIdx=r0x1053
	BANKSEL	_testloop_prev_s_65536_69	;id=1620,key=002,inCond:0,outCond:0,flow seq=007
	MOVWF	_testloop_prev_s_65536_69	;id=1543,key=003,inCond:10,outCond:1,flow seq=007
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1054 
	BANKSEL	r0x1017	;id=1621,key=004,inCond:0,outCond:0,flow seq=007
	MOVF	r0x1017,W	;id=1549,key=005,inCond:1,outCond:14,flow seq=007,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	998
;;	1016  _testloop_prev_s_65536_69   offset=1
	BANKSEL	_testloop_prev_s_65536_69	;id=1622,key=006,inCond:0,outCond:0,flow seq=007
	MOVWF	(_testloop_prev_s_65536_69 + 1)	;id=1553,key=007,inCond:10,outCond:1,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x6
;  from: 007 006 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00154_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00154_DS_:
;	.line	300; "../../../LC-meter.c"	}
	RETURN		;id=1564,key=000,inCond:10,outCond:e,flow seq=008
;<>Start of new flow, seq=0x9
;  from: ; to: 
; exit point of _testloop
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x22 ancestor = 0x22
;  from: ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function delay10ms
;;	-----------------------------------------
;_delay10ms:
S_LC_meter__delay10ms	code
_delay10ms:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00105_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	58; "../../../LC-meter.c"	}
	RETURN		;id=126,key=000,inCond:10,outCond:e,flow seq=022
;<>Start of new flow, seq=0x23
;  from: ; to: 
; exit point of _delay10ms
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  217+   87 =   304 instructions (  782 byte)

	end
