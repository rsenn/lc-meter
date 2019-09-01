;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
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
	extern	_print_print_float
	extern	_measure_freq
	extern	_calibrate
	extern	_measure_capacitance
	extern	_measure_inductance
	extern	_delay10ms
	extern	_ser_isrx
	extern	_ser_getch
	extern	_ser_putch
	extern	_ser_put
	extern	_ser_puts
	extern	_ser_puts2
	extern	_ser_puthex
	extern	_ser_init
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
	extern	_rxfifo
	extern	_rxiptr
	extern	_rxoptr
	extern	_txfifo
	extern	_txiptr
	extern	_txoptr
	extern	_ser_tmp
	extern	_ser_brg
	extern	_putchar_ptr
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
r0x1009	res	1
r0x1008	res	1
r0x1007	res	1
r0x100A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100E	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1004	res	1
r0x1003	res	1
r0x1005	res	1
r0x1006	res	1
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
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=29previous max_key=0 
;;	-----------------------------------------
;;	 function indicator
;;	-----------------------------------------
;_indicator:
S_print__indicator	code
_indicator:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00134_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	490; "../../../src/print.c"	}
	RETURN		;id=620,key=000,inCond:10,outCond:e,flow seq=001
;<>Start of new flow, seq=0x2
;  from: ; to: 
; exit point of _indicator

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x3 ancestor = 0x3
;  from: ; to: 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=25previous max_key=0 
;;	-----------------------------------------
;;	 function print_reading
;;	-----------------------------------------
;_print_reading:
S_print__print_reading	code
_print_reading:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00130_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	465; "../../../src/print.c"	}
	RETURN		;id=594,key=000,inCond:10,outCond:e,flow seq=003
;<>Start of new flow, seq=0x4
;  from: ; to: 
; exit point of _print_reading
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x5 ancestor = 0x5
;  from: ; to: 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=21previous max_key=0 
;;	-----------------------------------------
;;	 function print_unit
;;	-----------------------------------------
;_print_unit:
S_print__print_unit	code
_print_unit:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00126_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	426; "../../../src/print.c"	}
	RETURN		;id=568,key=000,inCond:10,outCond:e,flow seq=005
;<>Start of new flow, seq=0x6
;  from: ; to: 
; exit point of _print_unit
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;<>Start of new flow, seq=0x7 ancestor = 0x7
;  from: ; to: 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=13previous max_key=4 
;;	-----------------------------------------
;;	 function print_digit
;;	-----------------------------------------
;_print_digit:
S_print__print_digit	code
_print_digit:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00122_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	404; "../../../src/print.c"	}
	RETURN		;id=542,key=000,inCond:10,outCond:e,flow seq=007
;<>Start of new flow, seq=0x8
;  from: ; to: 
; exit point of _print_digit
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

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
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK03
;   r0x1004
;   r0x1005
;   r0x1006
;; Starting pCode block
;<>Start of new flow, seq=0x9 ancestor = 0x9
;  from: ; to: 00a 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=5 
;;	-----------------------------------------
;;	 function lcd_put
;;	-----------------------------------------
;_lcd_put:
S_print__lcd_put	code
_lcd_put:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104D, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104F 
;	.line	31; "../../../src/print.c"	lcd_put(const char* buf, unsigned n) {
	BANKSEL	r0x1000	;id=623,key=000,inCond:0,outCond:0,flow seq=009
	MOVWF	r0x1000	;id=319,key=001,inCond:10,outCond:1,flow seq=009,rIdx=r0x104F
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1000's banks
	MOVF	STK00,W	;id=322,key=002,inCond:1,outCond:14,flow seq=009
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1000
	MOVWF	r0x1001	;id=325,key=003,inCond:10,outCond:1,flow seq=009,rIdx=r0x104E
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1000's banks
	MOVF	STK01,W	;id=328,key=004,inCond:1,outCond:14,flow seq=009
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1000
	MOVWF	r0x1002	;id=331,key=005,inCond:10,outCond:1,flow seq=009,rIdx=r0x104D
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1050, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1000's banks
	MOVF	STK02,W	;id=341,key=006,inCond:1,outCond:14,flow seq=009
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1000
	MOVWF	r0x1003	;id=344,key=007,inCond:10,outCond:1,flow seq=009,rIdx=r0x1051
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7c
;; BANKOPT1 BANKSEL dropped; STK03 present in all of r0x1000's banks
	MOVF	STK03,W	;id=347,key=008,inCond:1,outCond:14,flow seq=009
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1000
	MOVWF	r0x1004	;id=350,key=009,inCond:10,outCond:1,flow seq=009,rIdx=r0x1050
;<>Start of new flow, seq=0xa ancestor = 0x9
;  from: 014 009 ; to: 00c 00b 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00114_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1052, size=2, left -=-, size=0, right AOP_REG=r0x1050, size=2
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1050 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_:
;	.line	33; "../../../src/print.c"	while(n--) lcd_putch(*buf++);
	BANKSEL	r0x1004	;id=633,key=000,inCond:0,outCond:0,flow seq=00a
	MOVF	r0x1004,W	;id=368,key=001,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1050
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1004
	MOVWF	r0x1005	;id=371,key=002,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1052
;; ***	genAssign  7132
;;; ../../../../src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1004
	MOVF	r0x1003,W	;id=377,key=003,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1051
;; >>> ../../../../src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	MOVWF	r0x1006	;id=380,key=004,inCond:10,outCond:1,flow seq=00a,rIdx=r0x1053
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
	MOVLW	0xff	;id=393,key=005,inCond:400,outCond:10,flow seq=00a
;; >>> ../../../../src/pic14/genarith.c:392:genAddLit
;;	1097 rIdx = r0x1050 
;; BANKOPT2 BANKSEL dropped; r0x1004 present in same bank as r0x1004
	ADDWF	r0x1004,F	;id=396,key=006,inCond:11,outCond:f,flow seq=00a,rIdx=r0x1050
;; >>> ../../../../src/pic14/genarith.c:393:genAddLit
	BTFSS	STATUS,0	;id=398,key=007,inCond:23,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00c 
;; >>> ../../../../src/pic14/genarith.c:394:genAddLit
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1003 present in same bank as r0x1004
	DECF	r0x1003,F	;id=401,key=000,inCond:1,outCond:5,flow seq=00b,rIdx=r0x1051
;<>Start of new flow, seq=0xc ancestor = 0xa
;  from: 00b 00a ; to: 00e 00d 
;; ***	addSign  857
;;; ../../../../src/pic14/genarith.c:858:addSign *{*
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=2
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1512:pic14_toBoolean
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1004
	MOVF	r0x1005,W	;id=411,key=000,inCond:1,outCond:14,flow seq=00c,rIdx=r0x1052
;; >>> ../../../../src/pic14/gen.c:1518:pic14_toBoolean
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1006 present in same bank as r0x1004
	IORWF	r0x1006,W	;id=414,key=001,inCond:11,outCond:14,flow seq=00c,rIdx=r0x1053
;; >>> ../../../../src/pic14/gen.c:6922:genIfx
	BTFSC	STATUS,2	;id=416,key=002,inCond:25,outCond:0,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 015 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 13
	GOTO	_00117_DS_	;id=419,key=000,inCond:0,outCond:0,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xc
;  from: 00c ; to: 00f 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; ../../../../src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1052, size=1, left AOP_REG=r0x104D, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1004
	MOVF	r0x1002,W	;id=431,key=000,inCond:1,outCond:14,flow seq=00e,rIdx=r0x104D
;; >>> ../../../../src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1004's banks
	MOVWF	STK01	;id=434,key=001,inCond:10,outCond:1,flow seq=00e
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1004
	MOVF	r0x1001,W	;id=438,key=002,inCond:1,outCond:14,flow seq=00e,rIdx=r0x104E
;; >>> ../../../../src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1004's banks
	MOVWF	STK00	;id=441,key=003,inCond:10,outCond:1,flow seq=00e
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1004
	MOVF	r0x1000,W	;id=445,key=004,inCond:1,outCond:14,flow seq=00e,rIdx=r0x104F
;; >>> ../../../../src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=447,key=005,inCond:0,outCond:0,flow seq=00e
;; >>> ../../../../src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=449,key=006,inCond:10,outCond:1e,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xe
;  from: 00e ; to: 011 010 
;; >>> ../../../../src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=451,key=000,inCond:0,outCond:0,flow seq=00f
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
	BANKSEL	r0x1005	;id=647,key=001,inCond:0,outCond:0,flow seq=00f
	MOVWF	r0x1005	;id=454,key=002,inCond:10,outCond:1,flow seq=00f,rIdx=r0x1052
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	576
;; 	line = 614 result AOP_REG=r0x104D, size=3, left AOP_REG=r0x104D, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1002 present in same bank as r0x1005
	INCF	r0x1002,F	;id=467,key=003,inCond:1,outCond:5,flow seq=00f,rIdx=r0x104D
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=469,key=004,inCond:25,outCond:0,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 011 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x104E 
;; BANKOPT2 BANKSEL dropped; r0x1001 present in same bank as r0x1005
	INCF	r0x1001,F	;id=472,key=000,inCond:1,outCond:5,flow seq=010,rIdx=r0x104E
;<>Start of new flow, seq=0x11 ancestor = 0xf
;  from: 010 00f ; to: 013 012 
;; >>> ../../../../src/pic14/genarith.c:168:genPlusIncr
	BTFSC	STATUS,2	;id=474,key=000,inCond:25,outCond:0,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x11
;  from: 011 ; to: 013 
;; >>> ../../../../src/pic14/genarith.c:169:genPlusIncr
;;	1097 rIdx = r0x104F 
;; BANKOPT2 BANKSEL dropped; r0x1000 present in same bank as r0x1005
	INCF	r0x1000,F	;id=477,key=000,inCond:1,outCond:5,flow seq=012,rIdx=r0x104F
;<>Start of new flow, seq=0x13 ancestor = 0x11
;  from: 012 011 ; to: 014 
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
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1005 present in same bank as r0x1005
	MOVF	r0x1005,W	;id=491,key=000,inCond:1,outCond:14,flow seq=013,rIdx=r0x1052
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_putch	;id=493,key=001,inCond:0,outCond:0,flow seq=013
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=495,key=002,inCond:10,outCond:1e,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 013 ; to: 00a 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=497,key=000,inCond:0,outCond:0,flow seq=014
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=1, label offset 13
	GOTO	_00114_DS_	;id=504,key=001,inCond:0,outCond:0,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0xd
;  from: 00d ; to: 
;goto	_00114_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00117_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00117_DS_:
;	.line	34; "../../../src/print.c"	}
	RETURN		;id=516,key=000,inCond:10,outCond:e,flow seq=015
;<>Start of new flow, seq=0x16
;  from: ; to: 
; exit point of _lcd_put
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*

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
;   r0x1007
;   STK00
;   r0x1008
;   STK01
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;; Starting pCode block
;<>Start of new flow, seq=0x17 ancestor = 0x17
;  from: ; to: 018 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_puts
;;	-----------------------------------------
;_lcd_puts:
S_print__lcd_puts	code
_lcd_puts:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1045, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;	.line	24; "../../../src/print.c"	lcd_puts(const char* string) {
	BANKSEL	r0x1007	;id=654,key=000,inCond:0,outCond:0,flow seq=017
	MOVWF	r0x1007	;id=125,key=001,inCond:10,outCond:1,flow seq=017,rIdx=r0x1047
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1007's banks
	MOVF	STK00,W	;id=128,key=002,inCond:1,outCond:14,flow seq=017
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x1007
	MOVWF	r0x1008	;id=131,key=003,inCond:10,outCond:1,flow seq=017,rIdx=r0x1046
;; >>> ../../../../src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1007's banks
	MOVF	STK01,W	;id=134,key=004,inCond:1,outCond:14,flow seq=017
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x1007
	MOVWF	r0x1009	;id=137,key=005,inCond:10,outCond:1,flow seq=017,rIdx=r0x1045
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> ../../../../src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x100A present in same bank as r0x1007
;	.line	26; "../../../src/print.c"	for(i = 0; string[i]; i++) lcd_putch(string[i]);
	CLRF	r0x100A	;id=147,key=006,inCond:0,outCond:5,flow seq=017,rIdx=r0x1048
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 020 017 ; to: 01a 019 
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00107_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;;	695 register type nRegs=3
;; 	line = 614 result AOP_REG=r0x1049, size=3, left AOP_REG=r0x1045, size=3, right AOP_REG=r0x1048, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> ../../../../src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1048 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00107_DS_:
	BANKSEL	r0x100A	;id=661,key=000,inCond:0,outCond:0,flow seq=018
	MOVF	r0x100A,W	;id=166,key=001,inCond:1,outCond:14,flow seq=018,rIdx=r0x1048
;; >>> ../../../../src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x1009 present in same bank as r0x100A
	ADDWF	r0x1009,W	;id=169,key=002,inCond:11,outCond:1e,flow seq=018,rIdx=r0x1045
;; >>> ../../../../src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100A
	MOVWF	r0x100B	;id=172,key=003,inCond:10,outCond:1,flow seq=018,rIdx=r0x1049
;; >>> ../../../../src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1046 
;; BANKOPT2 BANKSEL dropped; r0x1008 present in same bank as r0x100A
	MOVF	r0x1008,W	;id=175,key=004,inCond:1,outCond:14,flow seq=018,rIdx=r0x1046
;; >>> ../../../../src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=177,key=005,inCond:23,outCond:0,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x18
;  from: 018 ; to: 01a 
;; >>> ../../../../src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=179,key=000,inCond:410,outCond:1e,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x18
;  from: 019 018 ; to: 01c 01b 
;; >>> ../../../../src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVWF	r0x100C	;id=182,key=000,inCond:10,outCond:1,flow seq=01a,rIdx=r0x104A
;; >>> ../../../../src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1047 
;; BANKOPT2 BANKSEL dropped; r0x1007 present in same bank as r0x100A
	MOVF	r0x1007,W	;id=185,key=001,inCond:1,outCond:14,flow seq=01a,rIdx=r0x1047
;; >>> ../../../../src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=187,key=002,inCond:23,outCond:0,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x1a
;  from: 01a ; to: 01c 
;; >>> ../../../../src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=189,key=000,inCond:410,outCond:1e,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1a
;  from: 01b 01a ; to: 01d 
;; >>> ../../../../src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100A
	MOVWF	r0x100D	;id=192,key=000,inCond:10,outCond:1,flow seq=01c,rIdx=r0x104B
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; ../../../../src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x104C, size=1, left AOP_REG=r0x1049, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x100B present in same bank as r0x100A
	MOVF	r0x100B,W	;id=204,key=001,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1049
;; >>> ../../../../src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x100A's banks
	MOVWF	STK01	;id=207,key=002,inCond:10,outCond:1,flow seq=01c
;; ***	mov2w  1366  offset=1
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x100C present in same bank as r0x100A
	MOVF	r0x100C,W	;id=211,key=003,inCond:1,outCond:14,flow seq=01c,rIdx=r0x104A
;; >>> ../../../../src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x100A's banks
	MOVWF	STK00	;id=214,key=004,inCond:10,outCond:1,flow seq=01c
;; ***	mov2w  1366  offset=2
;; >>> ../../../../src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x100D present in same bank as r0x100A
	MOVF	r0x100D,W	;id=218,key=005,inCond:1,outCond:14,flow seq=01c,rIdx=r0x104B
;; >>> ../../../../src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=220,key=006,inCond:0,outCond:0,flow seq=01c
;; >>> ../../../../src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=222,key=007,inCond:10,outCond:1e,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1c
;  from: 01c ; to: 01f 01e 
;; >>> ../../../../src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=224,key=000,inCond:0,outCond:0,flow seq=01d
;; >>> ../../../../src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104C 
	BANKSEL	r0x100E	;id=674,key=001,inCond:0,outCond:0,flow seq=01d
	MOVWF	r0x100E	;id=227,key=002,inCond:10,outCond:1,flow seq=01d,rIdx=r0x104C
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> ../../../../src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100E
	MOVF	r0x100E,W	;id=622,key=003,inCond:1,outCond:14,flow seq=01d,rIdx=r0x104C
	BTFSC	STATUS,2	;id=239,key=004,inCond:25,outCond:0,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 01d ; to: 021 
;; >>> ../../../../src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_	;id=242,key=000,inCond:0,outCond:0,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1d
;  from: 01d ; to: 020 
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
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x100E present in same bank as r0x100E
	MOVF	r0x100E,W	;id=256,key=000,inCond:1,outCond:14,flow seq=01f,rIdx=r0x104C
;; >>> ../../../../src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_putch	;id=258,key=001,inCond:0,outCond:0,flow seq=01f
;; >>> ../../../../src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=260,key=002,inCond:10,outCond:1e,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x1f
;  from: 01f ; to: 018 
;; >>> ../../../../src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=262,key=000,inCond:0,outCond:0,flow seq=020
;;; ../../../../src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; ../../../../src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	576
;; 	line = 614 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> ../../../../src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1048 
	BANKSEL	r0x100A	;id=678,key=001,inCond:0,outCond:0,flow seq=020
	INCF	r0x100A,F	;id=277,key=002,inCond:1,outCond:5,flow seq=020,rIdx=r0x1048
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2770:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_	;id=282,key=003,inCond:0,outCond:0,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x1e
;  from: 01e ; to: 
;goto	_00107_DS_
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00109_DS_:
;;; ../../../../src/pic14/gen.c:2308:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00109_DS_:
;	.line	27; "../../../src/print.c"	}
	RETURN		;id=294,key=000,inCond:10,outCond:e,flow seq=021
;<>Start of new flow, seq=0x22
;  from: ; to: 
; exit point of _lcd_puts
;;; ../../../../src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	   73+   15 =    88 instructions (  206 byte)

	end
