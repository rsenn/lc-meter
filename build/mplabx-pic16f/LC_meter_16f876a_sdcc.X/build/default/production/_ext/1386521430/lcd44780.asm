;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11377 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"../../../lib/lcd44780.c"
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
	extern	_lcd_no_autoscroll
	extern	_lcd_right_to_left
	extern	_lcd_scroll_print_right
	extern	_lcd_scroll_print_left
	extern	_lcd_no_blink
	extern	_lcd_no_display
	extern	_lcd_print_float
	extern	_printf
	extern	_sprintf
	extern	_fprintf
	extern	_vprintf
	extern	_vsprintf
	extern	_vfprintf
	extern	_fputs
	extern	_fputc
	extern	_printf_small
	extern	_puts
	extern	_getchar
	extern	_putchar
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
	extern	_dvar
	extern	_usart_out
	extern	_mssp_out
	extern	_gpsim_out
	extern	_stdout
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
	global	_lcd_init
	global	_lcd_begin
	global	_lcd_autoscroll
	global	_lcd_left_to_right
	global	_lcd_blink
	global	_lcd_cursor
	global	_lcd_no_cursor
	global	_lcd_display
	global	_lcd_clear
	global	_lcd_home
	global	_lcd_print_number
	global	_lcd_puts
	global	_lcd_gotoxy
	global	_lcd_putch

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_lcd44780_0	udata
r0x102A	res	1
r0x102B	res	1
r0x102C	res	1
r0x102D	res	1
r0x1037	res	1
r0x102E	res	1
r0x104F	res	1
r0x1050	res	1
r0x1051	res	1
r0x1049	res	1
r0x1048	res	1
r0x1047	res	1
r0x104A	res	1
r0x104B	res	1
r0x104C	res	1
r0x104D	res	1
r0x104E	res	1
r0x1039	res	1
r0x1038	res	1
r0x103A	res	1
r0x103B	res	1
r0x103C	res	1
r0x103D	res	1
r0x103E	res	1
r0x103F	res	1
r0x1041	res	1
r0x1042	res	1
r0x1043	res	1
r0x1044	res	1
r0x1045	res	1
r0x1046	res	1
r0x1036	res	1
r0x1035	res	1
r0x1034	res	1
r0x1033	res	1
r0x1032	res	1
r0x1031	res	1
r0x102F	res	1
r0x1030	res	1
r0x1028	res	1
r0x1029	res	1
_lcd_gotoxy_row_offsets_65536_66	res	4
_LCD_lines	res	1
_lcd_print_number_buf_65536_72	res	32
_LCD_ctrl	res	1
_LCD_mode	res	1
_LCD_function	res	1
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
code_lcd44780	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x1028
;   r0x1029
;; Starting pCode block
;<>Start of new flow, seq=0x1 ancestor = 0x1
;  from: ; to: 003 002 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=93previous max_key=8 
;;	-----------------------------------------
;;	 function lcd_init
;;	-----------------------------------------
;_lcd_init:
S_lcd44780__lcd_init	code
_lcd_init:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1074, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1074 
;	.line	511; "../../../lib/lcd44780.c"	lcd_init(char fourbitmode) {
	BANKSEL	r0x1028	;id=3543,key=000,inCond:0,outCond:0,flow seq=001
	MOVWF	r0x1028	;id=3337,key=001,inCond:10,outCond:1,flow seq=001,rIdx=r0x1074
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;; 	line = 7046 result AOP_DIR=_LCD_ctrl, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _LCD_ctrl   offset=0
;	.line	513; "../../../lib/lcd44780.c"	LCD_ctrl = 0;
	BANKSEL	_LCD_ctrl	;id=3544,key=002,inCond:0,outCond:0,flow seq=001
	CLRF	_LCD_ctrl	;id=3349,key=003,inCond:0,outCond:5,flow seq=001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;	.line	514; "../../../lib/lcd44780.c"	LCD_function = (fourbitmode ? LCD_4BITMODE : LCD_8BITMODE);
	BANKSEL	r0x1028	;id=3545,key=004,inCond:0,outCond:0,flow seq=001
	MOVF	r0x1028,W	;id=3515,key=005,inCond:1,outCond:14,flow seq=001,rIdx=r0x1074
	BTFSC	STATUS,2	;id=3362,key=006,inCond:25,outCond:0,flow seq=001
;<>Start of new flow, seq=0x2 ancestor = 0x1
;  from: 001 ; to: 004 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=3, label offset 105
	GOTO	_00208_DS_	;id=3365,key=000,inCond:0,outCond:0,flow seq=002
;<>Start of new flow, seq=0x3 ancestor = 0x1
;  from: 001 ; to: 005 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1074, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1074 
;; BANKOPT2 BANKSEL dropped; r0x1028 present in same bank as r0x1028
	CLRF	r0x1028	;id=3374,key=000,inCond:0,outCond:5,flow seq=003,rIdx=r0x1074
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	CLRF	r0x1029	;id=3378,key=001,inCond:0,outCond:5,flow seq=003,rIdx=r0x1075
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=4, label offset 105
	GOTO	_00209_DS_	;id=3383,key=002,inCond:0,outCond:0,flow seq=003
;<>Start of new flow, seq=0x4 ancestor = 0x2
;  from: 002 ; to: 005 
;goto	_00209_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00208_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=2
;; 	line = 7046 result AOP_REG=r0x1074, size=2, left -=-, size=0, right AOP_LIT=0x10, size=2
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;; BANKOPT3 drop assumptions: PCI with label or call found
_00208_DS_:
	MOVLW	0x10	;id=3397,key=000,inCond:400,outCond:10,flow seq=004
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x1074 
	BANKSEL	r0x1028	;id=3549,key=001,inCond:0,outCond:0,flow seq=004
	MOVWF	r0x1028	;id=3400,key=002,inCond:10,outCond:1,flow seq=004,rIdx=r0x1074
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1075 
;; BANKOPT2 BANKSEL dropped; r0x1029 present in same bank as r0x1028
	CLRF	r0x1029	;id=3404,key=003,inCond:0,outCond:5,flow seq=004,rIdx=r0x1075
;<>Start of new flow, seq=0x5 ancestor = 0x3
;  from: 004 003 ; to: 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00209_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=2
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_function, size = 1
;; 	line = 7238 result AOP_DIR=_LCD_function, size=1, left -=-, size=0, right AOP_REG=r0x1074, size=2
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1074 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00209_DS_:
	BANKSEL	r0x1028	;id=3552,key=000,inCond:0,outCond:0,flow seq=005
	MOVF	r0x1028,W	;id=3420,key=001,inCond:1,outCond:14,flow seq=005,rIdx=r0x1074
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	998
;;	1016  _LCD_function   offset=0
	BANKSEL	_LCD_function	;id=3553,key=002,inCond:0,outCond:0,flow seq=005
	MOVWF	_LCD_function	;id=3424,key=003,inCond:10,outCond:1,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_lines, size = 1
;; 	line = 7046 result AOP_DIR=_LCD_lines, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _LCD_lines   offset=0
;	.line	516; "../../../lib/lcd44780.c"	LCD_lines = 0;
	BANKSEL	_LCD_lines	;id=3554,key=004,inCond:0,outCond:0,flow seq=005
	CLRF	_LCD_lines	;id=3436,key=005,inCond:0,outCond:5,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_mode, size = 1
;; 	line = 7046 result AOP_DIR=_LCD_mode, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	998
;;	1016  _LCD_mode   offset=0
;	.line	518; "../../../lib/lcd44780.c"	LCD_mode = 0;
	BANKSEL	_LCD_mode	;id=3555,key=006,inCond:0,outCond:0,flow seq=005
	CLRF	_LCD_mode	;id=3448,key=007,inCond:0,outCond:5,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISB, size=1, left AOP_DIR=_TRISB, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	520; "../../../lib/lcd44780.c"	RS_TRIS();
	BANKSEL	_TRISB	;id=3556,key=008,inCond:0,outCond:0,flow seq=005
	BCF	_TRISB,2	;id=3458,key=009,inCond:21,outCond:21,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	521; "../../../lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB	;id=3557,key=00a,inCond:0,outCond:0,flow seq=005
	BCF	_PORTB,2	;id=3468,key=00b,inCond:21,outCond:21,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _TRISB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_TRISB, size=1, left AOP_DIR=_TRISB, size=1, right AOP_LIT=0xf7, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	526; "../../../lib/lcd44780.c"	EN_TRIS();
	BANKSEL	_TRISB	;id=3558,key=00c,inCond:0,outCond:0,flow seq=005
	BCF	_TRISB,3	;id=3478,key=00d,inCond:21,outCond:21,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xf7, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	527; "../../../lib/lcd44780.c"	EN_LOW();
	BANKSEL	_PORTB	;id=3559,key=00e,inCond:0,outCond:0,flow seq=005
	BCF	_PORTB,3	;id=3488,key=00f,inCond:21,outCond:21,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x0f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	529; "../../../lib/lcd44780.c"	DATA_TRIS();
	MOVLW	0x0f	;id=3498,key=010,inCond:400,outCond:10,flow seq=005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _PORTB   offset=0
;; BANKOPT2 BANKSEL dropped; _PORTB present in same bank as _PORTB
	ANDWF	_PORTB,F	;id=3502,key=011,inCond:11,outCond:5,flow seq=005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00206_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	539; "../../../lib/lcd44780.c"	}
	RETURN		;id=3513,key=012,inCond:10,outCond:e,flow seq=005
;<>Start of new flow, seq=0x6
;  from: ; to: 
; exit point of _lcd_init

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _delay_ms
;   _lcd_write4bits
;   _delay_ms
;   _lcd_write4bits
;   _delay_us
;   _lcd_write4bits
;   _delay_us
;   _lcd_write4bits
;   _lcd_command
;   _delay_ms
;   _lcd_command
;   _delay_ms
;   _lcd_command
;   _lcd_command
;   _lcd_command
;   _lcd_command
;   _delay_ms
;   _lcd_command
;   _delay_ms
;   _lcd_write4bits
;   _delay_ms
;   _lcd_write4bits
;   _delay_us
;   _lcd_write4bits
;   _delay_us
;   _lcd_write4bits
;   _lcd_command
;   _delay_ms
;   _lcd_command
;   _delay_ms
;   _lcd_command
;   _lcd_command
;   _lcd_command
;   _lcd_command
;   _delay_ms
;   _lcd_command
;3 compiler assigned registers:
;   r0x102F
;   STK00
;   r0x1030
;; Starting pCode block
;<>Start of new flow, seq=0x7 ancestor = 0x7
;  from: ; to: 009 008 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=89previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_begin
;;	-----------------------------------------
;_lcd_begin:
S_lcd44780__lcd_begin	code
_lcd_begin:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1072, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1072 
;	.line	438; "../../../lib/lcd44780.c"	lcd_begin(uint8_t lines, uint8_t dotsize) {
	BANKSEL	r0x102F	;id=3561,key=000,inCond:0,outCond:0,flow seq=007
	MOVWF	r0x102F	;id=2582,key=001,inCond:10,outCond:1,flow seq=007,rIdx=r0x1072
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1073, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102F's banks
	MOVF	STK00,W	;id=2592,key=002,inCond:1,outCond:14,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1073 
;; BANKOPT2 BANKSEL dropped; r0x1030 present in same bank as r0x102F
	MOVWF	r0x1030	;id=2595,key=003,inCond:10,outCond:1,flow seq=007,rIdx=r0x1073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x2=2), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
;	.line	439; "../../../lib/lcd44780.c"	if(lines > 1)
	MOVLW	0x02	;id=2605,key=004,inCond:400,outCond:10,flow seq=007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
;	.line	440; "../../../lib/lcd44780.c"	LCD_function |= LCD_2LINE;
	SUBWF	r0x102F,W	;id=3516,key=005,inCond:11,outCond:1e,flow seq=007,rIdx=r0x1072
;	.line	443; "../../../lib/lcd44780.c"	LCD_lines = lines;
	BTFSS	STATUS,0	;id=3568,key=006,inCond:23,outCond:0,flow seq=007
;<>Start of new flow, seq=0x8 ancestor = 0x7
;  from: 007 ; to: 00a 
	GOTO	_00001_DS_	;id=3567,key=000,inCond:0,outCond:0,flow seq=008
;<>Start of new flow, seq=0x9 ancestor = 0x7
;  from: 007 ; to: 00a 
	BANKSEL	_LCD_function	;id=3565,key=000,inCond:0,outCond:0,flow seq=009
	BSF	_LCD_function,3	;id=3518,key=001,inCond:21,outCond:21,flow seq=009
;<>Start of new flow, seq=0xa ancestor = 0x8
;  from: 009 008 ; to: 00c 00b 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00001_DS_:
	BANKSEL	r0x102F	;id=3570,key=000,inCond:0,outCond:0,flow seq=00a
	MOVF	r0x102F,W	;id=3519,key=001,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1072
	BANKSEL	_LCD_lines	;id=3571,key=002,inCond:0,outCond:0,flow seq=00a
	MOVWF	_LCD_lines	;id=2650,key=003,inCond:10,outCond:1,flow seq=00a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;	.line	447; "../../../lib/lcd44780.c"	if((dotsize != 0) && (lines == 1))
	BANKSEL	r0x1030	;id=3572,key=004,inCond:0,outCond:0,flow seq=00a
	MOVF	r0x1030,W	;id=3520,key=005,inCond:1,outCond:14,flow seq=00a,rIdx=r0x1073
	BTFSC	STATUS,2	;id=2663,key=006,inCond:25,outCond:0,flow seq=00a
;<>Start of new flow, seq=0xb ancestor = 0xa
;  from: 00a ; to: 00f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=4, label offset 93
	GOTO	_00002_DS_	;id=2666,key=000,inCond:0,outCond:0,flow seq=00b
;<>Start of new flow, seq=0xc ancestor = 0xa
;  from: 00a ; to: 00e 00d 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3638:genCmpEq *{*
;; ***	genCmpEq  3639
;; ifx is non-null
;;	695 register type nRegs=1
;; 	line = 3650 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x01, size=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x1030
	MOVF	r0x102F,W	;id=2676,key=000,inCond:1,outCond:14,flow seq=00c,rIdx=r0x1072
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3704:genCmpEq
;	.line	448; "../../../lib/lcd44780.c"	LCD_function |= LCD_5x10DOTS;
	XORLW	0x01	;id=3521,key=001,inCond:410,outCond:14,flow seq=00c
;	.line	450; "../../../lib/lcd44780.c"	delay_ms(15); // Wait more than 15 ms after VDD rises to 4.5V
	BTFSS	STATUS,2	;id=3577,key=002,inCond:25,outCond:0,flow seq=00c
;<>Start of new flow, seq=0xd ancestor = 0xc
;  from: 00c ; to: 00f 
	GOTO	_00002_DS_	;id=3576,key=000,inCond:0,outCond:0,flow seq=00d
;<>Start of new flow, seq=0xe ancestor = 0xc
;  from: 00c ; to: 00f 
	BANKSEL	_LCD_function	;id=3574,key=000,inCond:0,outCond:0,flow seq=00e
	BSF	_LCD_function,2	;id=3523,key=001,inCond:21,outCond:21,flow seq=00e
;<>Start of new flow, seq=0xf ancestor = 0xb
;  from: 00e 00d 00b ; to: 010 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00002_DS_:
	MOVLW	0x0f	;id=3524,key=000,inCond:400,outCond:10,flow seq=00f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=2714,key=001,inCond:10,outCond:1,flow seq=00f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2717,key=002,inCond:400,outCond:10,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=2719,key=003,inCond:0,outCond:0,flow seq=00f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=2721,key=004,inCond:10,outCond:1e,flow seq=00f
;<>Start of new flow, seq=0x10 ancestor = 0xf
;  from: 00f ; to: 012 011 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2723,key=000,inCond:0,outCond:0,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	453; "../../../lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB	;id=3581,key=001,inCond:0,outCond:0,flow seq=010
	BCF	_PORTB,2	;id=2735,key=002,inCond:21,outCond:21,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xf7, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT2 BANKSEL dropped; _PORTB present in same bank as _PORTB
;	.line	454; "../../../lib/lcd44780.c"	EN_LOW();
	BCF	_PORTB,3	;id=2745,key=003,inCond:21,outCond:21,flow seq=010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_function, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1072, size=1, left -=-, size=0, right AOP_DIR=_LCD_function, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_function   offset=0
;	.line	457; "../../../lib/lcd44780.c"	if(!(LCD_function & LCD_8BITMODE)) {
	BANKSEL	_LCD_function	;id=3583,key=004,inCond:0,outCond:0,flow seq=010
	MOVF	_LCD_function,W	;id=2762,key=005,inCond:1,outCond:14,flow seq=010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1072 
	BANKSEL	r0x102F	;id=3584,key=006,inCond:0,outCond:0,flow seq=010
	MOVWF	r0x102F	;id=2765,key=007,inCond:10,outCond:1,flow seq=010,rIdx=r0x1072
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;;	695 register type nRegs=1
;; 	line = 3974 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x10, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:isLiteralBit *{*
;; ***	isLiteralBit  3862
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4058:genAnd
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	BTFSC	r0x102F,4	;id=2774,key=008,inCond:21,outCond:0,flow seq=010
;<>Start of new flow, seq=0x11 ancestor = 0x10
;  from: 010 ; to: 01a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4059:genAnd
;; ***	popGetLabel  key=7, label offset 93
	GOTO	_00200_DS_	;id=2777,key=000,inCond:0,outCond:0,flow seq=011
;<>Start of new flow, seq=0x12 ancestor = 0x10
;  from: 010 ; to: 013 
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
;	.line	461; "../../../lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03	;id=2789,key=000,inCond:400,outCond:10,flow seq=012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_write4bits	;id=2791,key=001,inCond:0,outCond:0,flow seq=012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_write4bits	;id=2793,key=002,inCond:10,outCond:1e,flow seq=012
;<>Start of new flow, seq=0x13 ancestor = 0x12
;  from: 012 ; to: 014 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2795,key=000,inCond:0,outCond:0,flow seq=013
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
;	.line	462; "../../../lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05	;id=2808,key=001,inCond:400,outCond:10,flow seq=013
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=2812,key=002,inCond:10,outCond:1,flow seq=013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2815,key=003,inCond:400,outCond:10,flow seq=013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=2817,key=004,inCond:0,outCond:0,flow seq=013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=2819,key=005,inCond:10,outCond:1e,flow seq=013
;<>Start of new flow, seq=0x14 ancestor = 0x13
;  from: 013 ; to: 015 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2821,key=000,inCond:0,outCond:0,flow seq=014
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
;	.line	464; "../../../lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03	;id=2834,key=001,inCond:400,outCond:10,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_write4bits	;id=2836,key=002,inCond:0,outCond:0,flow seq=014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_write4bits	;id=2838,key=003,inCond:10,outCond:1e,flow seq=014
;<>Start of new flow, seq=0x15 ancestor = 0x14
;  from: 014 ; to: 016 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2840,key=000,inCond:0,outCond:0,flow seq=015
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
;	.line	465; "../../../lib/lcd44780.c"	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96	;id=2853,key=001,inCond:400,outCond:10,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_us	;id=2855,key=002,inCond:0,outCond:0,flow seq=015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_us	;id=2857,key=003,inCond:10,outCond:1e,flow seq=015
;<>Start of new flow, seq=0x16 ancestor = 0x15
;  from: 015 ; to: 017 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2859,key=000,inCond:0,outCond:0,flow seq=016
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
;	.line	467; "../../../lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03	;id=2872,key=001,inCond:400,outCond:10,flow seq=016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_write4bits	;id=2874,key=002,inCond:0,outCond:0,flow seq=016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_write4bits	;id=2876,key=003,inCond:10,outCond:1e,flow seq=016
;<>Start of new flow, seq=0x17 ancestor = 0x16
;  from: 016 ; to: 018 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2878,key=000,inCond:0,outCond:0,flow seq=017
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
;	.line	468; "../../../lib/lcd44780.c"	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96	;id=2891,key=001,inCond:400,outCond:10,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_us	;id=2893,key=002,inCond:0,outCond:0,flow seq=017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_us	;id=2895,key=003,inCond:10,outCond:1e,flow seq=017
;<>Start of new flow, seq=0x18 ancestor = 0x17
;  from: 017 ; to: 019 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2897,key=000,inCond:0,outCond:0,flow seq=018
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
;	.line	470; "../../../lib/lcd44780.c"	lcd_write4bits(0x02);
	MOVLW	0x02	;id=2910,key=001,inCond:400,outCond:10,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_write4bits	;id=2912,key=002,inCond:0,outCond:0,flow seq=018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_write4bits	;id=2914,key=003,inCond:10,outCond:1e,flow seq=018
;<>Start of new flow, seq=0x19 ancestor = 0x18
;  from: 018 ; to: 020 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2916,key=000,inCond:0,outCond:0,flow seq=019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=8, label offset 93
	GOTO	_00201_DS_	;id=2923,key=001,inCond:0,outCond:0,flow seq=019
;<>Start of new flow, seq=0x1a ancestor = 0x11
;  from: 011 ; to: 01b 
;goto	_00201_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00200_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_function, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1072, size=1, left -=-, size=0, right AOP_DIR=_LCD_function, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_function   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00200_DS_:
;	.line	477; "../../../lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	BANKSEL	_LCD_function	;id=3595,key=000,inCond:0,outCond:0,flow seq=01a
	MOVF	_LCD_function,W	;id=2946,key=001,inCond:1,outCond:14,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1072 
	BANKSEL	r0x102F	;id=3596,key=002,inCond:0,outCond:0,flow seq=01a
	MOVWF	r0x102F	;id=2949,key=003,inCond:10,outCond:1,flow seq=01a,rIdx=r0x1072
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	BSF	r0x102F,5	;id=2958,key=004,inCond:21,outCond:21,flow seq=01a
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
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	MOVF	r0x102F,W	;id=2972,key=005,inCond:1,outCond:14,flow seq=01a,rIdx=r0x1072
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=2974,key=006,inCond:0,outCond:0,flow seq=01a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=2976,key=007,inCond:10,outCond:1e,flow seq=01a
;<>Start of new flow, seq=0x1b ancestor = 0x1a
;  from: 01a ; to: 01c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2978,key=000,inCond:0,outCond:0,flow seq=01b
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
;	.line	478; "../../../lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05	;id=2991,key=001,inCond:400,outCond:10,flow seq=01b
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=2995,key=002,inCond:10,outCond:1,flow seq=01b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2998,key=003,inCond:400,outCond:10,flow seq=01b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=3000,key=004,inCond:0,outCond:0,flow seq=01b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=3002,key=005,inCond:10,outCond:1e,flow seq=01b
;<>Start of new flow, seq=0x1c ancestor = 0x1b
;  from: 01b ; to: 01d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3004,key=000,inCond:0,outCond:0,flow seq=01c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_function, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1072, size=1, left -=-, size=0, right AOP_DIR=_LCD_function, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_function   offset=0
;	.line	481; "../../../lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	BANKSEL	_LCD_function	;id=3602,key=001,inCond:0,outCond:0,flow seq=01c
	MOVF	_LCD_function,W	;id=3023,key=002,inCond:1,outCond:14,flow seq=01c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1072 
	BANKSEL	r0x102F	;id=3603,key=003,inCond:0,outCond:0,flow seq=01c
	MOVWF	r0x102F	;id=3026,key=004,inCond:10,outCond:1,flow seq=01c,rIdx=r0x1072
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	BSF	r0x102F,5	;id=3035,key=005,inCond:21,outCond:21,flow seq=01c
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
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	MOVF	r0x102F,W	;id=3049,key=006,inCond:1,outCond:14,flow seq=01c,rIdx=r0x1072
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=3051,key=007,inCond:0,outCond:0,flow seq=01c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=3053,key=008,inCond:10,outCond:1e,flow seq=01c
;<>Start of new flow, seq=0x1d ancestor = 0x1c
;  from: 01c ; to: 01e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3055,key=000,inCond:0,outCond:0,flow seq=01d
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
;	.line	482; "../../../lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05	;id=3068,key=001,inCond:400,outCond:10,flow seq=01d
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=3072,key=002,inCond:10,outCond:1,flow seq=01d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=3075,key=003,inCond:400,outCond:10,flow seq=01d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=3077,key=004,inCond:0,outCond:0,flow seq=01d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=3079,key=005,inCond:10,outCond:1e,flow seq=01d
;<>Start of new flow, seq=0x1e ancestor = 0x1d
;  from: 01d ; to: 01f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3081,key=000,inCond:0,outCond:0,flow seq=01e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_function, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1072, size=1, left -=-, size=0, right AOP_DIR=_LCD_function, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_function   offset=0
;	.line	486; "../../../lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	BANKSEL	_LCD_function	;id=3609,key=001,inCond:0,outCond:0,flow seq=01e
	MOVF	_LCD_function,W	;id=3100,key=002,inCond:1,outCond:14,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1072 
	BANKSEL	r0x102F	;id=3610,key=003,inCond:0,outCond:0,flow seq=01e
	MOVWF	r0x102F	;id=3103,key=004,inCond:10,outCond:1,flow seq=01e,rIdx=r0x1072
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	BSF	r0x102F,5	;id=3112,key=005,inCond:21,outCond:21,flow seq=01e
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
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	MOVF	r0x102F,W	;id=3126,key=006,inCond:1,outCond:14,flow seq=01e,rIdx=r0x1072
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=3128,key=007,inCond:0,outCond:0,flow seq=01e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=3130,key=008,inCond:10,outCond:1e,flow seq=01e
;<>Start of new flow, seq=0x1f ancestor = 0x1e
;  from: 01e ; to: 020 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3132,key=000,inCond:0,outCond:0,flow seq=01f
;<>Start of new flow, seq=0x20 ancestor = 0x19
;  from: 01f 019 ; to: 021 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00201_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_function, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1072, size=1, left -=-, size=0, right AOP_DIR=_LCD_function, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_function   offset=0
;; BANKOPT3 drop assumptions: PCI with label or call found
_00201_DS_:
;	.line	490; "../../../lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	BANKSEL	_LCD_function	;id=3615,key=000,inCond:0,outCond:0,flow seq=020
	MOVF	_LCD_function,W	;id=3156,key=001,inCond:1,outCond:14,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1072 
	BANKSEL	r0x102F	;id=3616,key=002,inCond:0,outCond:0,flow seq=020
	MOVWF	r0x102F	;id=3159,key=003,inCond:10,outCond:1,flow seq=020,rIdx=r0x1072
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4272 result AOP_REG=r0x1072, size=1, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	BSF	r0x102F,5	;id=3168,key=004,inCond:21,outCond:21,flow seq=020
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
;;	1097 rIdx = r0x1072 
;; BANKOPT2 BANKSEL dropped; r0x102F present in same bank as r0x102F
	MOVF	r0x102F,W	;id=3182,key=005,inCond:1,outCond:14,flow seq=020,rIdx=r0x1072
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=3184,key=006,inCond:0,outCond:0,flow seq=020
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=3186,key=007,inCond:10,outCond:1e,flow seq=020
;<>Start of new flow, seq=0x21 ancestor = 0x20
;  from: 020 ; to: 022 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3188,key=000,inCond:0,outCond:0,flow seq=021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;; 	line = 7046 result AOP_DIR=_LCD_ctrl, size=1, left -=-, size=0, right AOP_LIT=0x04, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	493; "../../../lib/lcd44780.c"	LCD_ctrl = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
	MOVLW	0x04	;id=3200,key=001,inCond:400,outCond:10,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _LCD_ctrl   offset=0
	BANKSEL	_LCD_ctrl	;id=3620,key=002,inCond:0,outCond:0,flow seq=021
	MOVWF	_LCD_ctrl	;id=3204,key=003,inCond:10,outCond:1,flow seq=021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	494; "../../../lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x0c	;id=3215,key=004,inCond:400,outCond:10,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=3217,key=005,inCond:0,outCond:0,flow seq=021
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=3219,key=006,inCond:10,outCond:1e,flow seq=021
;<>Start of new flow, seq=0x22 ancestor = 0x21
;  from: 021 ; to: 023 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3221,key=000,inCond:0,outCond:0,flow seq=022
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
;	.line	497; "../../../lib/lcd44780.c"	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01	;id=3234,key=001,inCond:400,outCond:10,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=3236,key=002,inCond:0,outCond:0,flow seq=022
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=3238,key=003,inCond:10,outCond:1e,flow seq=022
;<>Start of new flow, seq=0x23 ancestor = 0x22
;  from: 022 ; to: 024 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3240,key=000,inCond:0,outCond:0,flow seq=023
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
;	.line	498; "../../../lib/lcd44780.c"	delay_ms(2);
	MOVLW	0x02	;id=3253,key=001,inCond:400,outCond:10,flow seq=023
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=3257,key=002,inCond:10,outCond:1,flow seq=023
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=3260,key=003,inCond:400,outCond:10,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=3262,key=004,inCond:0,outCond:0,flow seq=023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=3264,key=005,inCond:10,outCond:1e,flow seq=023
;<>Start of new flow, seq=0x24 ancestor = 0x23
;  from: 023 ; to: 025 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3266,key=000,inCond:0,outCond:0,flow seq=024
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_mode, size = 1
;; 	line = 7046 result AOP_DIR=_LCD_mode, size=1, left -=-, size=0, right AOP_LIT=0x02, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	501; "../../../lib/lcd44780.c"	LCD_mode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
	MOVLW	0x02	;id=3278,key=001,inCond:400,outCond:10,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	998
;;	1016  _LCD_mode   offset=0
	BANKSEL	_LCD_mode	;id=3625,key=002,inCond:0,outCond:0,flow seq=024
	MOVWF	_LCD_mode	;id=3282,key=003,inCond:10,outCond:1,flow seq=024
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
;	.line	503; "../../../lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x06	;id=3293,key=004,inCond:400,outCond:10,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=3295,key=005,inCond:0,outCond:0,flow seq=024
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=3297,key=006,inCond:10,outCond:1e,flow seq=024
;<>Start of new flow, seq=0x25 ancestor = 0x24
;  from: 024 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=3299,key=000,inCond:0,outCond:0,flow seq=025
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00202_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	504; "../../../lib/lcd44780.c"	}
	RETURN		;id=3312,key=001,inCond:10,outCond:e,flow seq=025
;<>Start of new flow, seq=0x26
;  from: ; to: 
; exit point of _lcd_begin
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _lcd_command
;1 compiler assigned register :
;   r0x1031
;; Starting pCode block
;<>Start of new flow, seq=0x27 ancestor = 0x27
;  from: ; to: 028 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=85previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_autoscroll
;;	-----------------------------------------
;_lcd_autoscroll:
S_lcd44780__lcd_autoscroll	code
_lcd_autoscroll:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_mode, size = 1
;; 	line = 4246 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4272 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	420; "../../../lib/lcd44780.c"	LCD_mode |= LCD_ENTRYSHIFTINCREMENT;
	BANKSEL	_LCD_mode	;id=3627,key=000,inCond:0,outCond:0,flow seq=027
	BSF	_LCD_mode,0	;id=2495,key=001,inCond:21,outCond:21,flow seq=027
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_mode, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1070, size=1, left -=-, size=0, right AOP_DIR=_LCD_mode, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_mode   offset=0
;; BANKOPT2 BANKSEL dropped; _LCD_mode present in same bank as _LCD_mode
;	.line	421; "../../../lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVF	_LCD_mode,W	;id=2512,key=002,inCond:1,outCond:14,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1070 
	BANKSEL	r0x1031	;id=3629,key=003,inCond:0,outCond:0,flow seq=027
	MOVWF	r0x1031	;id=2515,key=004,inCond:10,outCond:1,flow seq=027,rIdx=r0x1070
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x1070, size=1, left AOP_REG=r0x1070, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4272 result AOP_REG=r0x1070, size=1, left AOP_REG=r0x1070, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x1031 present in same bank as r0x1031
	BSF	r0x1031,2	;id=2524,key=005,inCond:21,outCond:21,flow seq=027
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
;;	1097 rIdx = r0x1070 
;; BANKOPT2 BANKSEL dropped; r0x1031 present in same bank as r0x1031
	MOVF	r0x1031,W	;id=2538,key=006,inCond:1,outCond:14,flow seq=027,rIdx=r0x1070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=2540,key=007,inCond:0,outCond:0,flow seq=027
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=2542,key=008,inCond:10,outCond:1e,flow seq=027
;<>Start of new flow, seq=0x28 ancestor = 0x27
;  from: 027 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2544,key=000,inCond:0,outCond:0,flow seq=028
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00190_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	422; "../../../lib/lcd44780.c"	}
	RETURN		;id=2557,key=001,inCond:10,outCond:e,flow seq=028
;<>Start of new flow, seq=0x29
;  from: ; to: 
; exit point of _lcd_autoscroll
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _lcd_command
;1 compiler assigned register :
;   r0x1032
;; Starting pCode block
;<>Start of new flow, seq=0x2a ancestor = 0x2a
;  from: ; to: 02b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=81previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_left_to_right
;;	-----------------------------------------
;_lcd_left_to_right:
S_lcd44780__lcd_left_to_right	code
_lcd_left_to_right:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_mode, size = 1
;; 	line = 4246 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4272 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	400; "../../../lib/lcd44780.c"	LCD_mode |= LCD_ENTRYLEFT;
	BANKSEL	_LCD_mode	;id=3633,key=000,inCond:0,outCond:0,flow seq=02a
	BSF	_LCD_mode,1	;id=2408,key=001,inCond:21,outCond:21,flow seq=02a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_mode, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x106F, size=1, left -=-, size=0, right AOP_DIR=_LCD_mode, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_mode   offset=0
;; BANKOPT2 BANKSEL dropped; _LCD_mode present in same bank as _LCD_mode
;	.line	401; "../../../lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVF	_LCD_mode,W	;id=2425,key=002,inCond:1,outCond:14,flow seq=02a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x106F 
	BANKSEL	r0x1032	;id=3635,key=003,inCond:0,outCond:0,flow seq=02a
	MOVWF	r0x1032	;id=2428,key=004,inCond:10,outCond:1,flow seq=02a,rIdx=r0x106F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x106F, size=1, left AOP_REG=r0x106F, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4272 result AOP_REG=r0x106F, size=1, left AOP_REG=r0x106F, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x1032
	BSF	r0x1032,2	;id=2437,key=005,inCond:21,outCond:21,flow seq=02a
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
;;	1097 rIdx = r0x106F 
;; BANKOPT2 BANKSEL dropped; r0x1032 present in same bank as r0x1032
	MOVF	r0x1032,W	;id=2451,key=006,inCond:1,outCond:14,flow seq=02a,rIdx=r0x106F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=2453,key=007,inCond:0,outCond:0,flow seq=02a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=2455,key=008,inCond:10,outCond:1e,flow seq=02a
;<>Start of new flow, seq=0x2b ancestor = 0x2a
;  from: 02a ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2457,key=000,inCond:0,outCond:0,flow seq=02b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00186_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	402; "../../../lib/lcd44780.c"	}
	RETURN		;id=2470,key=001,inCond:10,outCond:e,flow seq=02b
;<>Start of new flow, seq=0x2c
;  from: ; to: 
; exit point of _lcd_left_to_right
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _lcd_command
;1 compiler assigned register :
;   r0x1033
;; Starting pCode block
;<>Start of new flow, seq=0x2d ancestor = 0x2d
;  from: ; to: 02e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=77previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_blink
;;	-----------------------------------------
;_lcd_blink:
S_lcd44780__lcd_blink	code
_lcd_blink:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;; 	line = 4246 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4272 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	373; "../../../lib/lcd44780.c"	LCD_ctrl |= LCD_BLINKON;
	BANKSEL	_LCD_ctrl	;id=3639,key=000,inCond:0,outCond:0,flow seq=02d
	BSF	_LCD_ctrl,0	;id=2321,key=001,inCond:21,outCond:21,flow seq=02d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x106D, size=1, left -=-, size=0, right AOP_DIR=_LCD_ctrl, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_ctrl   offset=0
;; BANKOPT2 BANKSEL dropped; _LCD_ctrl present in same bank as _LCD_ctrl
;	.line	374; "../../../lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVF	_LCD_ctrl,W	;id=2338,key=002,inCond:1,outCond:14,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x106D 
	BANKSEL	r0x1033	;id=3641,key=003,inCond:0,outCond:0,flow seq=02d
	MOVWF	r0x1033	;id=2341,key=004,inCond:10,outCond:1,flow seq=02d,rIdx=r0x106D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x106D, size=1, left AOP_REG=r0x106D, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4272 result AOP_REG=r0x106D, size=1, left AOP_REG=r0x106D, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x1033
	BSF	r0x1033,3	;id=2350,key=005,inCond:21,outCond:21,flow seq=02d
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
;;	1097 rIdx = r0x106D 
;; BANKOPT2 BANKSEL dropped; r0x1033 present in same bank as r0x1033
	MOVF	r0x1033,W	;id=2364,key=006,inCond:1,outCond:14,flow seq=02d,rIdx=r0x106D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=2366,key=007,inCond:0,outCond:0,flow seq=02d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=2368,key=008,inCond:10,outCond:1e,flow seq=02d
;<>Start of new flow, seq=0x2e ancestor = 0x2d
;  from: 02d ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2370,key=000,inCond:0,outCond:0,flow seq=02e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00182_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	375; "../../../lib/lcd44780.c"	}
	RETURN		;id=2383,key=001,inCond:10,outCond:e,flow seq=02e
;<>Start of new flow, seq=0x2f
;  from: ; to: 
; exit point of _lcd_blink
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _lcd_command
;1 compiler assigned register :
;   r0x1034
;; Starting pCode block
;<>Start of new flow, seq=0x30 ancestor = 0x30
;  from: ; to: 031 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=73previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_cursor
;;	-----------------------------------------
;_lcd_cursor:
S_lcd44780__lcd_cursor	code
_lcd_cursor:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;; 	line = 4246 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4272 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	354; "../../../lib/lcd44780.c"	LCD_ctrl |= LCD_CURSORON;
	BANKSEL	_LCD_ctrl	;id=3645,key=000,inCond:0,outCond:0,flow seq=030
	BSF	_LCD_ctrl,1	;id=2234,key=001,inCond:21,outCond:21,flow seq=030
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x106C, size=1, left -=-, size=0, right AOP_DIR=_LCD_ctrl, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_ctrl   offset=0
;; BANKOPT2 BANKSEL dropped; _LCD_ctrl present in same bank as _LCD_ctrl
;	.line	355; "../../../lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVF	_LCD_ctrl,W	;id=2251,key=002,inCond:1,outCond:14,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x106C 
	BANKSEL	r0x1034	;id=3647,key=003,inCond:0,outCond:0,flow seq=030
	MOVWF	r0x1034	;id=2254,key=004,inCond:10,outCond:1,flow seq=030,rIdx=r0x106C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x106C, size=1, left AOP_REG=r0x106C, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4272 result AOP_REG=r0x106C, size=1, left AOP_REG=r0x106C, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1034
	BSF	r0x1034,3	;id=2263,key=005,inCond:21,outCond:21,flow seq=030
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
;;	1097 rIdx = r0x106C 
;; BANKOPT2 BANKSEL dropped; r0x1034 present in same bank as r0x1034
	MOVF	r0x1034,W	;id=2277,key=006,inCond:1,outCond:14,flow seq=030,rIdx=r0x106C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=2279,key=007,inCond:0,outCond:0,flow seq=030
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=2281,key=008,inCond:10,outCond:1e,flow seq=030
;<>Start of new flow, seq=0x31 ancestor = 0x30
;  from: 030 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2283,key=000,inCond:0,outCond:0,flow seq=031
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00178_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	356; "../../../lib/lcd44780.c"	}
	RETURN		;id=2296,key=001,inCond:10,outCond:e,flow seq=031
;<>Start of new flow, seq=0x32
;  from: ; to: 
; exit point of _lcd_cursor
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _lcd_command
;1 compiler assigned register :
;   r0x1035
;; Starting pCode block
;<>Start of new flow, seq=0x33 ancestor = 0x33
;  from: ; to: 034 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=69previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_no_cursor
;;	-----------------------------------------
;_lcd_no_cursor:
S_lcd44780__lcd_no_cursor	code
_lcd_no_cursor:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;	.line	345; "../../../lib/lcd44780.c"	LCD_ctrl &= ~LCD_CURSORON;
	BANKSEL	_LCD_ctrl	;id=3651,key=000,inCond:0,outCond:0,flow seq=033
	BCF	_LCD_ctrl,1	;id=2147,key=001,inCond:21,outCond:21,flow seq=033
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x106B, size=1, left -=-, size=0, right AOP_DIR=_LCD_ctrl, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_ctrl   offset=0
;; BANKOPT2 BANKSEL dropped; _LCD_ctrl present in same bank as _LCD_ctrl
;	.line	346; "../../../lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVF	_LCD_ctrl,W	;id=2164,key=002,inCond:1,outCond:14,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x106B 
	BANKSEL	r0x1035	;id=3653,key=003,inCond:0,outCond:0,flow seq=033
	MOVWF	r0x1035	;id=2167,key=004,inCond:10,outCond:1,flow seq=033,rIdx=r0x106B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x106B, size=1, left AOP_REG=r0x106B, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4272 result AOP_REG=r0x106B, size=1, left AOP_REG=r0x106B, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1035
	BSF	r0x1035,3	;id=2176,key=005,inCond:21,outCond:21,flow seq=033
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
;;	1097 rIdx = r0x106B 
;; BANKOPT2 BANKSEL dropped; r0x1035 present in same bank as r0x1035
	MOVF	r0x1035,W	;id=2190,key=006,inCond:1,outCond:14,flow seq=033,rIdx=r0x106B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=2192,key=007,inCond:0,outCond:0,flow seq=033
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=2194,key=008,inCond:10,outCond:1e,flow seq=033
;<>Start of new flow, seq=0x34 ancestor = 0x33
;  from: 033 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2196,key=000,inCond:0,outCond:0,flow seq=034
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00174_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	347; "../../../lib/lcd44780.c"	}
	RETURN		;id=2209,key=001,inCond:10,outCond:e,flow seq=034
;<>Start of new flow, seq=0x35
;  from: ; to: 
; exit point of _lcd_no_cursor
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _lcd_command
;1 compiler assigned register :
;   r0x1036
;; Starting pCode block
;<>Start of new flow, seq=0x36 ancestor = 0x36
;  from: ; to: 037 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=65previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_display
;;	-----------------------------------------
;_lcd_display:
S_lcd44780__lcd_display	code
_lcd_display:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;; 	line = 4246 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4272 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	335; "../../../lib/lcd44780.c"	LCD_ctrl |= LCD_DISPLAYON;
	BANKSEL	_LCD_ctrl	;id=3657,key=000,inCond:0,outCond:0,flow seq=036
	BSF	_LCD_ctrl,2	;id=2060,key=001,inCond:21,outCond:21,flow seq=036
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_ctrl, size = 1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x106A, size=1, left -=-, size=0, right AOP_DIR=_LCD_ctrl, size=1
;; ***	genAssign  7116
;; WARNING	genAssign  7125 ignoring register storage
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1016  _LCD_ctrl   offset=0
;; BANKOPT2 BANKSEL dropped; _LCD_ctrl present in same bank as _LCD_ctrl
;	.line	336; "../../../lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVF	_LCD_ctrl,W	;id=2077,key=002,inCond:1,outCond:14,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x106A 
	BANKSEL	r0x1036	;id=3659,key=003,inCond:0,outCond:0,flow seq=036
	MOVWF	r0x1036	;id=2080,key=004,inCond:10,outCond:1,flow seq=036,rIdx=r0x106A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x106A, size=1, left AOP_REG=r0x106A, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4272 result AOP_REG=r0x106A, size=1, left AOP_REG=r0x106A, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1036
	BSF	r0x1036,3	;id=2089,key=005,inCond:21,outCond:21,flow seq=036
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
;;	1097 rIdx = r0x106A 
;; BANKOPT2 BANKSEL dropped; r0x1036 present in same bank as r0x1036
	MOVF	r0x1036,W	;id=2103,key=006,inCond:1,outCond:14,flow seq=036,rIdx=r0x106A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=2105,key=007,inCond:0,outCond:0,flow seq=036
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=2107,key=008,inCond:10,outCond:1e,flow seq=036
;<>Start of new flow, seq=0x37 ancestor = 0x36
;  from: 036 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2109,key=000,inCond:0,outCond:0,flow seq=037
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00170_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	337; "../../../lib/lcd44780.c"	}
	RETURN		;id=2122,key=001,inCond:10,outCond:e,flow seq=037
;<>Start of new flow, seq=0x38
;  from: ; to: 
; exit point of _lcd_display
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _delay_ms
;   _lcd_command
;   _delay_ms
;1 compiler assigned register :
;   STK00
;; Starting pCode block
;<>Start of new flow, seq=0x39 ancestor = 0x39
;  from: ; to: 03a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=61previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_clear
;;	-----------------------------------------
;_lcd_clear:
S_lcd44780__lcd_clear	code
_lcd_clear:	;Function start
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
;	.line	315; "../../../lib/lcd44780.c"	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01	;id=1990,key=000,inCond:400,outCond:10,flow seq=039
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=1992,key=001,inCond:0,outCond:0,flow seq=039
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=1994,key=002,inCond:10,outCond:1e,flow seq=039
;<>Start of new flow, seq=0x3a ancestor = 0x39
;  from: 039 ; to: 03b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1996,key=000,inCond:0,outCond:0,flow seq=03a
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
;	.line	316; "../../../lib/lcd44780.c"	delay_ms(2);                   // Wait for more than 4.1 ms
	MOVLW	0x02	;id=2009,key=001,inCond:400,outCond:10,flow seq=03a
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=2013,key=002,inCond:10,outCond:1,flow seq=03a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=2016,key=003,inCond:400,outCond:10,flow seq=03a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=2018,key=004,inCond:0,outCond:0,flow seq=03a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=2020,key=005,inCond:10,outCond:1e,flow seq=03a
;<>Start of new flow, seq=0x3b ancestor = 0x3a
;  from: 03a ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=2022,key=000,inCond:0,outCond:0,flow seq=03b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00166_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	318; "../../../lib/lcd44780.c"	}
	RETURN		;id=2035,key=001,inCond:10,outCond:e,flow seq=03b
;<>Start of new flow, seq=0x3c
;  from: ; to: 
; exit point of _lcd_clear
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _delay_ms
;   _lcd_command
;   _delay_ms
;1 compiler assigned register :
;   STK00
;; Starting pCode block
;<>Start of new flow, seq=0x3d ancestor = 0x3d
;  from: ; to: 03e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=38previous max_key=19 
;;	-----------------------------------------
;;	 function lcd_home
;;	-----------------------------------------
;_lcd_home:
S_lcd44780__lcd_home	code
_lcd_home:	;Function start
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
;	.line	304; "../../../lib/lcd44780.c"	lcd_command(LCD_RETURNHOME);
	MOVLW	0x02	;id=1919,key=000,inCond:400,outCond:10,flow seq=03d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=1921,key=001,inCond:0,outCond:0,flow seq=03d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=1923,key=002,inCond:10,outCond:1e,flow seq=03d
;<>Start of new flow, seq=0x3e ancestor = 0x3d
;  from: 03d ; to: 03f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1925,key=000,inCond:0,outCond:0,flow seq=03e
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
;	.line	305; "../../../lib/lcd44780.c"	delay_ms(2); // Wait for more than 4.1 ms
	MOVLW	0x02	;id=1938,key=001,inCond:400,outCond:10,flow seq=03e
;; 	2120 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVWF	STK00	;id=1942,key=002,inCond:10,outCond:1,flow seq=03e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x00	;id=1945,key=003,inCond:400,outCond:10,flow seq=03e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_ms	;id=1947,key=004,inCond:0,outCond:0,flow seq=03e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_ms	;id=1949,key=005,inCond:10,outCond:1e,flow seq=03e
;<>Start of new flow, seq=0x3f ancestor = 0x3e
;  from: 03e ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1951,key=000,inCond:0,outCond:0,flow seq=03f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00162_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	307; "../../../lib/lcd44780.c"	}
	RETURN		;id=1964,key=001,inCond:10,outCond:e,flow seq=03f
;<>Start of new flow, seq=0x40
;  from: ; to: 
; exit point of _lcd_home
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __moduint
;   __divuint
;   _lcd_putch
;   _lcd_putch
;   __moduint
;   __divuint
;   _lcd_putch
;   _lcd_putch
;18 compiler assigned registers:
;   r0x1038
;   STK00
;   r0x1039
;   STK01
;   r0x103A
;   STK02
;   r0x103B
;   r0x103C
;   r0x103D
;   r0x103E
;   r0x103F
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;   r0x1044
;   r0x1045
;   r0x1046
;; Starting pCode block
;<>Start of new flow, seq=0x41 ancestor = 0x41
;  from: ; to: 043 042 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=29previous max_key=5 
;;	-----------------------------------------
;;	 function lcd_print_number
;;	-----------------------------------------
;_lcd_print_number:
S_lcd44780__lcd_print_number	code
_lcd_print_number:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1059, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105A 
;	.line	219; "../../../lib/lcd44780.c"	lcd_print_number(uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
	BANKSEL	r0x1038	;id=3669,key=000,inCond:0,outCond:0,flow seq=041
	MOVWF	r0x1038	;id=1077,key=001,inCond:10,outCond:1,flow seq=041,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1038's banks
	MOVF	STK00,W	;id=1080,key=002,inCond:1,outCond:14,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVWF	r0x1039	;id=1083,key=003,inCond:10,outCond:1,flow seq=041,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105B, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1038's banks
	MOVF	STK01,W	;id=1093,key=004,inCond:1,outCond:14,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1038
	MOVWF	r0x103A	;id=1096,key=005,inCond:10,outCond:1,flow seq=041,rIdx=r0x105B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x105C, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x1038's banks
	MOVF	STK02,W	;id=1106,key=006,inCond:1,outCond:14,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1038
	MOVWF	r0x103B	;id=1109,key=007,inCond:10,outCond:1,flow seq=041,rIdx=r0x105C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105D, size=1, left -=-, size=0, right AOP_LIT=0x20, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	223; "../../../lib/lcd44780.c"	char padchar = ' ';
	MOVLW	0x20	;id=1118,key=008,inCond:400,outCond:10,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x1038
	MOVWF	r0x103C	;id=1121,key=009,inCond:10,outCond:1,flow seq=041,rIdx=r0x105D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;signed compare: left < lit(0x0=0), size=1, mask=ff
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3419:genCmp
;	.line	225; "../../../lib/lcd44780.c"	if(pad < 0) {
	BSF	STATUS,0	;id=1130,key=00a,inCond:23,outCond:23,flow seq=041
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3422:genCmp
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1038
	BTFSS	r0x103B,7	;id=1132,key=00b,inCond:21,outCond:0,flow seq=041
;<>Start of new flow, seq=0x42 ancestor = 0x41
;  from: 041 ; to: 043 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3424:genCmp
	BCF	STATUS,0	;id=1134,key=000,inCond:23,outCond:23,flow seq=042
;<>Start of new flow, seq=0x43 ancestor = 0x41
;  from: 042 041 ; to: 045 044 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
	BTFSS	STATUS,0	;id=1137,key=000,inCond:23,outCond:0,flow seq=043
;<>Start of new flow, seq=0x44 ancestor = 0x43
;  from: 043 ; to: 046 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=19, label offset 38
	GOTO	_00157_DS_	;id=1140,key=000,inCond:0,outCond:0,flow seq=044
;<>Start of new flow, seq=0x45 ancestor = 0x43
;  from: 043 ; to: 046 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1664:genUminus *{*
;; ***	genUminus  1666
;;	695 register type nRegs=1
;;	576
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1698:genUminus
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1038
;	.line	226; "../../../lib/lcd44780.c"	pad = -pad;
	COMF	r0x103B,F	;id=1151,key=000,inCond:1,outCond:5,flow seq=045,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1706:genUminus
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1038
	INCF	r0x103B,F	;id=1154,key=001,inCond:1,outCond:5,flow seq=045,rIdx=r0x105C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105D, size=1, left -=-, size=0, right AOP_LIT=0x30, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7139:genAssign
;	.line	227; "../../../lib/lcd44780.c"	padchar = '0';
	MOVLW	0x30	;id=1163,key=002,inCond:400,outCond:10,flow seq=045
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7141:genAssign
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x1038
	MOVWF	r0x103C	;id=1166,key=003,inCond:10,outCond:1,flow seq=045,rIdx=r0x105D
;<>Start of new flow, seq=0x46 ancestor = 0x44
;  from: 045 044 ; to: 047 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00157_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105E, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x105E 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00157_DS_:
;	.line	235; "../../../lib/lcd44780.c"	do {
	BANKSEL	r0x103D	;id=3682,key=000,inCond:0,outCond:0,flow seq=046
	CLRF	r0x103D	;id=1182,key=001,inCond:0,outCond:5,flow seq=046,rIdx=r0x105E
;<>Start of new flow, seq=0x47 ancestor = 0x46
;  from: 055 046 ; to: 048 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00141_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x105F, size=2, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x105B 
;;101	MOVF	r0x103A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x105F 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:877:addSign
;;	1097 rIdx = r0x1060 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00141_DS_:
;	.line	239; "../../../lib/lcd44780.c"	di = n % base;
	BANKSEL	r0x103F	;id=3684,key=000,inCond:0,outCond:0,flow seq=047
	CLRF	r0x103F	;id=1205,key=001,inCond:0,outCond:5,flow seq=047,rIdx=r0x1060
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
;;100	MOVF	r0x103E,W
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x103F
	MOVF	r0x103A,W	;id=3538,key=002,inCond:1,outCond:14,flow seq=047,rIdx=r0x105B
;; BANKOPT2 BANKSEL dropped; r0x103E present in same bank as r0x103F
	MOVWF	r0x103E	;id=1200,key=003,inCond:10,outCond:1,flow seq=047,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103F's banks
	MOVWF	STK02	;id=1225,key=004,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
	MOVLW	0x00	;id=3541,key=005,inCond:400,outCond:10,flow seq=047
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103F's banks
	MOVWF	STK01	;id=1235,key=006,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x103F
	MOVF	r0x1039,W	;id=1240,key=007,inCond:1,outCond:14,flow seq=047,rIdx=r0x1059
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103F's banks
	MOVWF	STK00	;id=1244,key=008,inCond:10,outCond:1,flow seq=047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x103F
	MOVF	r0x1038,W	;id=1249,key=009,inCond:1,outCond:14,flow seq=047,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	__moduint	;id=1251,key=00a,inCond:0,outCond:0,flow seq=047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__moduint	;id=1253,key=00b,inCond:10,outCond:1e,flow seq=047
;<>Start of new flow, seq=0x48 ancestor = 0x47
;  from: 047 ; to: 04a 049 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1255,key=000,inCond:0,outCond:0,flow seq=048
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1061, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1062 
;;1	MOVWF	r0x1040
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of (null)'s banks
	MOVF	STK00,W	;id=1265,key=001,inCond:1,outCond:14,flow seq=048
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1061 
	BANKSEL	r0x1041	;id=3694,key=002,inCond:0,outCond:0,flow seq=048
	MOVWF	r0x1041	;id=3525,key=003,inCond:10,outCond:1,flow seq=048,rIdx=r0x1061
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1041
	MOVWF	r0x1042	;id=1284,key=004,inCond:10,outCond:1,flow seq=048,rIdx=r0x1063
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1061, size=1, left -=-, size=0, right AOP_REG=r0x105E, size=1
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x1041
;	.line	240; "../../../lib/lcd44780.c"	buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	MOVF	r0x103D,W	;id=1297,key=005,inCond:1,outCond:14,flow seq=048,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1041
	MOVWF	r0x1043	;id=1325,key=006,inCond:10,outCond:1,flow seq=048,rIdx=r0x1064
;; BANKOPT2 BANKSEL dropped; r0x1041 present in same bank as r0x1041
	MOVWF	r0x1041	;id=1300,key=007,inCond:10,outCond:1,flow seq=048,rIdx=r0x1061
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	576
;; 	line = 614 result AOP_REG=r0x105E, size=1, left AOP_REG=r0x105E, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x1041
	INCF	r0x103D,F	;id=1313,key=008,inCond:1,outCond:5,flow seq=048,rIdx=r0x105E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;; 	line = 7238 result AOP_REG=r0x1064, size=2, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7407:genCast
;;	1097 rIdx = r0x1061 
;;102	MOVF	r0x1041,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7408:genCast
;;	1097 rIdx = r0x1064 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:864:addSign
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1041
	CLRF	r0x1044	;id=1330,key=009,inCond:0,outCond:5,flow seq=048,rIdx=r0x1065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:865:addSign
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1041
	BTFSC	r0x1043,7	;id=1332,key=00a,inCond:21,outCond:0,flow seq=048
;<>Start of new flow, seq=0x49 ancestor = 0x48
;  from: 048 ; to: 04a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:866:addSign
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1041
	DECF	r0x1044,F	;id=1335,key=000,inCond:1,outCond:5,flow seq=049,rIdx=r0x1065
;<>Start of new flow, seq=0x4a ancestor = 0x48
;  from: 049 048 ; to: 04c 04b 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_print_number_buf_65536_72, val 0, const = 0
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_72
;; 	line = 614 result AOP_REG=r0x1064, size=2, left AOP_PCODE=_lcd_print_number_buf_65536_72, size=2, right AOP_REG=r0x1064, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  713
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_72
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1041
	MOVF	r0x1043,W	;id=1355,key=000,inCond:1,outCond:14,flow seq=04a,rIdx=r0x1064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
	ADDLW	(_lcd_print_number_buf_65536_72 + 0)	;id=1357,key=001,inCond:410,outCond:1e,flow seq=04a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1064 
;; BANKOPT2 BANKSEL dropped; r0x1043 present in same bank as r0x1041
	MOVWF	r0x1043	;id=1360,key=002,inCond:10,outCond:1,flow seq=04a,rIdx=r0x1064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:767:genPlus
	MOVLW	high (_lcd_print_number_buf_65536_72 + 0)	;id=1362,key=003,inCond:400,outCond:10,flow seq=04a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:768:genPlus
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1041 present in same bank as r0x1041
	MOVWF	r0x1041	;id=1365,key=004,inCond:10,outCond:1,flow seq=04a,rIdx=r0x1061
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:770:genPlus
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1041
	MOVF	r0x1044,W	;id=1368,key=005,inCond:1,outCond:14,flow seq=04a,rIdx=r0x1065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	BTFSC	STATUS,0	;id=1370,key=006,inCond:23,outCond:0,flow seq=04a
;<>Start of new flow, seq=0x4b ancestor = 0x4a
;  from: 04a ; to: 04d 04c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1041
	INCFSZ	r0x1044,W	;id=1373,key=000,inCond:1,outCond:14,flow seq=04b,rIdx=r0x1065
;<>Start of new flow, seq=0x4c ancestor = 0x4a
;  from: 04b 04a ; to: 04d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:773:genPlus
;;	1097 rIdx = r0x1061 
;; BANKOPT2 BANKSEL dropped; r0x1041 present in same bank as r0x1041
	ADDWF	r0x1041,F	;id=1376,key=000,inCond:11,outCond:f,flow seq=04c,rIdx=r0x1061
;<>Start of new flow, seq=0x4d ancestor = 0x4b
;  from: 04c 04b ; to: 04f 04e 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;unsigned compare: left < lit(0xA=10), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3275:pic14_mov2w_regOrLit
	MOVLW	0x0a	;id=1384,key=000,inCond:400,outCond:10,flow seq=04d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3442:genCmp
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1041
	SUBWF	r0x1042,W	;id=1387,key=001,inCond:11,outCond:1e,flow seq=04d,rIdx=r0x1063
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3252:genSkipc
	BTFSC	STATUS,0	;id=1391,key=002,inCond:23,outCond:0,flow seq=04d
;<>Start of new flow, seq=0x4e ancestor = 0x4d
;  from: 04d ; to: 050 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=15, label offset 38
	GOTO	_00153_DS_	;id=1394,key=000,inCond:0,outCond:0,flow seq=04e
;<>Start of new flow, seq=0x4f ancestor = 0x4d
;  from: 04d ; to: 051 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1065, size=1, left AOP_REG=r0x1063, size=1, right AOP_LIT=0x30, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:530:genAddLit
	MOVLW	0x30	;id=1412,key=000,inCond:400,outCond:10,flow seq=04f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x1063 
;; BANKOPT2 BANKSEL dropped; r0x1042 present in same bank as r0x1041
	ADDWF	r0x1042,W	;id=1415,key=001,inCond:11,outCond:1e,flow seq=04f,rIdx=r0x1063
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1041
	MOVWF	r0x1044	;id=1419,key=002,inCond:10,outCond:1,flow seq=04f,rIdx=r0x1065
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=16, label offset 38
	GOTO	_00154_DS_	;id=1426,key=003,inCond:0,outCond:0,flow seq=04f
;<>Start of new flow, seq=0x50 ancestor = 0x4e
;  from: 04e ; to: 051 
;goto	_00154_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00153_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1066, size=1, left -=-, size=0, right AOP_REG=r0x1063, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1063 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00153_DS_:
	BANKSEL	r0x1042	;id=3713,key=000,inCond:0,outCond:0,flow seq=050
	MOVF	r0x1042,W	;id=1442,key=001,inCond:1,outCond:14,flow seq=050,rIdx=r0x1063
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
	MOVWF	r0x1045	;id=1445,key=002,inCond:10,outCond:1,flow seq=050,rIdx=r0x1066
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 614 result AOP_REG=r0x1065, size=1, left AOP_REG=r0x1066, size=1, right AOP_LIT=0x37, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;;	adding lit to something. size 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:530:genAddLit
	MOVLW	0x37	;id=1461,key=003,inCond:400,outCond:10,flow seq=050
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:531:genAddLit
;;	1097 rIdx = r0x1066 
;; BANKOPT2 BANKSEL dropped; r0x1045 present in same bank as r0x1042
	ADDWF	r0x1045,W	;id=1464,key=004,inCond:11,outCond:1e,flow seq=050,rIdx=r0x1066
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1042
	MOVWF	r0x1044	;id=1468,key=005,inCond:10,outCond:1,flow seq=050,rIdx=r0x1065
;<>Start of new flow, seq=0x51 ancestor = 0x4f
;  from: 050 04f ; to: 053 052 
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00154_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	695 register type nRegs=2
;; ***	genNearPointerSet  6631
;;	695 register type nRegs=1
;; 	line = 6633 result AOP_REG=r0x1064, size=2, left -=-, size=0, right AOP_REG=r0x1065, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1064 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00154_DS_:
	BANKSEL	r0x1043	;id=3718,key=000,inCond:0,outCond:0,flow seq=051
	MOVF	r0x1043,W	;id=1489,key=001,inCond:1,outCond:14,flow seq=051,rIdx=r0x1064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=3719,key=002,inCond:0,outCond:0,flow seq=051
	MOVWF	FSR	;id=1491,key=003,inCond:10,outCond:1,flow seq=051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5651:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=1494,key=004,inCond:21,outCond:21,flow seq=051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x1041	;id=3721,key=005,inCond:0,outCond:0,flow seq=051
	BTFSC	r0x1041,0	;id=1496,key=006,inCond:21,outCond:0,flow seq=051
;<>Start of new flow, seq=0x52 ancestor = 0x51
;  from: 051 ; to: 053 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=1498,key=000,inCond:21,outCond:21,flow seq=052
;<>Start of new flow, seq=0x53 ancestor = 0x51
;  from: 052 051 ; to: 054 
;; ***	genNearPointerSet  6658
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6674:genNearPointerSet
;;	1097 rIdx = r0x1065 
;; BANKOPT2 BANKSEL dropped; r0x1044 present in same bank as r0x1041
	MOVF	r0x1044,W	;id=1502,key=000,inCond:1,outCond:14,flow seq=053,rIdx=r0x1065
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6679:genNearPointerSet
	BANKSEL	INDF	;id=3723,key=001,inCond:0,outCond:0,flow seq=053
	MOVWF	INDF	;id=1504,key=002,inCond:10,outCond:1,flow seq=053
;; ***	genNearPointerSet  6687
;; ***	genNearPointerSet  6713
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105F 
;	.line	242; "../../../lib/lcd44780.c"	n /= base;
	BANKSEL	r0x103E	;id=3724,key=003,inCond:0,outCond:0,flow seq=053
	MOVF	r0x103E,W	;id=1523,key=004,inCond:1,outCond:14,flow seq=053,rIdx=r0x105F
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7d
;; BANKOPT1 BANKSEL dropped; STK02 present in all of r0x103E's banks
	MOVWF	STK02	;id=1527,key=005,inCond:10,outCond:1,flow seq=053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1060 
;; BANKOPT2 BANKSEL dropped; r0x103F present in same bank as r0x103E
	MOVF	r0x103F,W	;id=1532,key=006,inCond:1,outCond:14,flow seq=053,rIdx=r0x1060
;;	695 register type nRegs=2
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x103E's banks
	MOVWF	STK01	;id=1537,key=007,inCond:10,outCond:1,flow seq=053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x103E
	MOVF	r0x1039,W	;id=1542,key=008,inCond:1,outCond:14,flow seq=053,rIdx=r0x1059
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x103E's banks
	MOVWF	STK00	;id=1546,key=009,inCond:10,outCond:1,flow seq=053
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x103E
	MOVF	r0x1038,W	;id=1551,key=00a,inCond:1,outCond:14,flow seq=053,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	__divuint	;id=1553,key=00b,inCond:0,outCond:0,flow seq=053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__divuint	;id=1555,key=00c,inCond:10,outCond:1e,flow seq=053
;<>Start of new flow, seq=0x54 ancestor = 0x53
;  from: 053 ; to: 056 055 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1557,key=000,inCond:0,outCond:0,flow seq=054
;;	695 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1059, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x105A 
	BANKSEL	r0x1038	;id=3732,key=001,inCond:0,outCond:0,flow seq=054
	MOVWF	r0x1038	;id=1564,key=002,inCond:10,outCond:1,flow seq=054,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1038's banks
	MOVF	STK00,W	;id=1567,key=003,inCond:1,outCond:14,flow seq=054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
;	.line	243; "../../../lib/lcd44780.c"	} while(n > 0);
	MOVWF	r0x1039	;id=3526,key=004,inCond:10,outCond:1,flow seq=054,rIdx=r0x1059
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1038
	IORWF	r0x1038,W	;id=1585,key=005,inCond:11,outCond:14,flow seq=054,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6917:genIfx
	BTFSS	STATUS,2	;id=1587,key=006,inCond:25,outCond:0,flow seq=054
;<>Start of new flow, seq=0x55 ancestor = 0x54
;  from: 054 ; to: 047 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6918:genIfx
;; ***	popGetLabel  key=3, label offset 38
	GOTO	_00141_DS_	;id=1590,key=000,inCond:0,outCond:0,flow seq=055
;<>Start of new flow, seq=0x56 ancestor = 0x54
;  from: 054 ; to: 057 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1059, size=1, left -=-, size=0, right AOP_REG=r0x105E, size=1
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105E 
;; BANKOPT2 BANKSEL dropped; r0x103D present in same bank as r0x1038
;	.line	245; "../../../lib/lcd44780.c"	while(pad-- >= i) lcd_putch(padchar);
	MOVF	r0x103D,W	;id=1603,key=000,inCond:1,outCond:14,flow seq=056,rIdx=r0x105E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVWF	r0x1039	;id=1606,key=001,inCond:10,outCond:1,flow seq=056,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105C, size=1
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1038
	MOVF	r0x103B,W	;id=1618,key=002,inCond:1,outCond:14,flow seq=056,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1038
	MOVWF	r0x1038	;id=1621,key=003,inCond:10,outCond:1,flow seq=056,rIdx=r0x105A
;<>Start of new flow, seq=0x57 ancestor = 0x56
;  from: 05a 056 ; to: 059 058 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00144_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3602:genCmpLt *{*
;; ***	genCmpLt  3603
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00144_DS_:
	BANKSEL	r0x1038	;id=3741,key=000,inCond:0,outCond:0,flow seq=057
	MOVF	r0x1038,W	;id=1636,key=001,inCond:1,outCond:14,flow seq=057,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3472:genCmp
	ADDLW	0x80	;id=1638,key=002,inCond:410,outCond:1e,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3473:genCmp
;; BANKOPT2 BANKSEL dropped; r0x1046 present in same bank as r0x1038
	MOVWF	r0x1046	;id=1640,key=003,inCond:10,outCond:1,flow seq=057,rIdx=r0x1068
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVF	r0x1039,W	;id=1644,key=004,inCond:1,outCond:14,flow seq=057,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3475:genCmp
	ADDLW	0x80	;id=1646,key=005,inCond:410,outCond:1e,flow seq=057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3476:genCmp
;; BANKOPT2 BANKSEL dropped; r0x1046 present in same bank as r0x1038
	SUBWF	r0x1046,W	;id=1648,key=006,inCond:11,outCond:1e,flow seq=057,rIdx=r0x1068
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
	BTFSS	STATUS,0	;id=1652,key=007,inCond:23,outCond:0,flow seq=057
;<>Start of new flow, seq=0x58 ancestor = 0x57
;  from: 057 ; to: 05b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=11, label offset 38
	GOTO	_00149_DS_	;id=1655,key=000,inCond:0,outCond:0,flow seq=058
;<>Start of new flow, seq=0x59 ancestor = 0x57
;  from: 057 ; to: 05a 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
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
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1038
	DECF	r0x1038,F	;id=1671,key=000,inCond:1,outCond:5,flow seq=059,rIdx=r0x105A
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
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
;;	1097 rIdx = r0x105D 
;; BANKOPT2 BANKSEL dropped; r0x103C present in same bank as r0x1038
	MOVF	r0x103C,W	;id=1687,key=001,inCond:1,outCond:14,flow seq=059,rIdx=r0x105D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_putch	;id=1689,key=002,inCond:0,outCond:0,flow seq=059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=1691,key=003,inCond:10,outCond:1e,flow seq=059
;<>Start of new flow, seq=0x5a ancestor = 0x59
;  from: 059 ; to: 057 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1693,key=000,inCond:0,outCond:0,flow seq=05a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=6, label offset 38
	GOTO	_00144_DS_	;id=1700,key=001,inCond:0,outCond:0,flow seq=05a
;<>Start of new flow, seq=0x5b ancestor = 0x58
;  from: 065 058 ; to: 05d 05c 
;goto	_00144_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00149_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3566:genCmpGt *{*
;; ***	genCmpGt  3567
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3304:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;signed compare: left >= lit(0x1=1), size=1, mask=ff
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1059 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00149_DS_:
;	.line	247; "../../../lib/lcd44780.c"	for(; i > 0; i--) lcd_putch((char)buf[(int16_t)i - 1]);
	BANKSEL	r0x1039	;id=3749,key=000,inCond:0,outCond:0,flow seq=05b
	MOVF	r0x1039,W	;id=1718,key=001,inCond:1,outCond:14,flow seq=05b,rIdx=r0x1059
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3464:genCmp
	ADDLW	0x80	;id=1720,key=002,inCond:410,outCond:1e,flow seq=05b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3465:genCmp
	ADDLW	0x7f	;id=1722,key=003,inCond:410,outCond:1e,flow seq=05b
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3247:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3254:genSkipc
	BTFSS	STATUS,0	;id=1726,key=004,inCond:23,outCond:0,flow seq=05b
;<>Start of new flow, seq=0x5c ancestor = 0x5b
;  from: 05b ; to: 066 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3256:genSkipc
;; ***	popGetLabel  key=13, label offset 38
	GOTO	_00151_DS_	;id=1729,key=000,inCond:0,outCond:0,flow seq=05c
;<>Start of new flow, seq=0x5d ancestor = 0x5b
;  from: 05b ; to: 05f 05e 
;;genSkipc:3257: created from rifx:0000000004785780
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genDjnz *{*
;; ***	genDjnz  7427
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:892:genMinus *{*
;; ***	genMinus  893
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:265:genAddLit *{*
;; ***	genAddLit  266
;;  left and result aren't same	genAddLit  510
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:526:genAddLit
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1039
	DECF	r0x1039,W	;id=1745,key=000,inCond:1,outCond:14,flow seq=05d,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:249:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF
;;	1097 rIdx = r0x105A 
;; BANKOPT2 BANKSEL dropped; r0x1038 present in same bank as r0x1039
	MOVWF	r0x1038	;id=3527,key=001,inCond:10,outCond:1,flow seq=05d,rIdx=r0x105A
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1039
	MOVWF	r0x103A	;id=1763,key=002,inCond:10,outCond:1,flow seq=05d,rIdx=r0x105B
;; ***	addSign  857
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:858:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:864:addSign
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1039
	CLRF	r0x103B	;id=1768,key=003,inCond:0,outCond:5,flow seq=05d,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:865:addSign
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1039
	BTFSC	r0x103A,7	;id=1770,key=004,inCond:21,outCond:0,flow seq=05d
;<>Start of new flow, seq=0x5e ancestor = 0x5d
;  from: 05d ; to: 05f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:866:addSign
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1039
	DECF	r0x103B,F	;id=1773,key=000,inCond:1,outCond:5,flow seq=05e,rIdx=r0x105C
;<>Start of new flow, seq=0x5f ancestor = 0x5d
;  from: 05e 05d ; to: 061 060 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_print_number_buf_65536_72, val 0, const = 0
;;	695 register type nRegs=2
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_72
;; 	line = 614 result AOP_REG=r0x105B, size=2, left AOP_PCODE=_lcd_print_number_buf_65536_72, size=2, right AOP_REG=r0x105B, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  713
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_72
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1039
	MOVF	r0x103A,W	;id=1793,key=000,inCond:1,outCond:14,flow seq=05f,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
	ADDLW	(_lcd_print_number_buf_65536_72 + 0)	;id=1795,key=001,inCond:410,outCond:1e,flow seq=05f
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1039
	MOVWF	r0x103A	;id=1798,key=002,inCond:10,outCond:1,flow seq=05f,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:745:genPlus
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1039
	MOVF	r0x103B,W	;id=1801,key=003,inCond:1,outCond:14,flow seq=05f,rIdx=r0x105C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:746:genPlus
	BTFSC	STATUS,0	;id=1803,key=004,inCond:23,outCond:0,flow seq=05f
;<>Start of new flow, seq=0x60 ancestor = 0x5f
;  from: 05f ; to: 062 061 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:747:genPlus
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1039
	INCFSZ	r0x103B,W	;id=1806,key=000,inCond:1,outCond:14,flow seq=060,rIdx=r0x105C
;<>Start of new flow, seq=0x61 ancestor = 0x5f
;  from: 060 05f ; to: 062 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:748:genPlus
	ADDLW	high (_lcd_print_number_buf_65536_72 + 0)	;id=1808,key=000,inCond:410,outCond:1e,flow seq=061
;<>Start of new flow, seq=0x62 ancestor = 0x60
;  from: 061 060 ; to: 064 063 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1097 rIdx = r0x105C 
;; BANKOPT2 BANKSEL dropped; r0x103B present in same bank as r0x1039
	MOVWF	r0x103B	;id=1811,key=000,inCond:10,outCond:1,flow seq=062,rIdx=r0x105C
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
;;	1097 rIdx = r0x105B 
;; BANKOPT2 BANKSEL dropped; r0x103A present in same bank as r0x1039
	MOVF	r0x103A,W	;id=1824,key=001,inCond:1,outCond:14,flow seq=062,rIdx=r0x105B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=3762,key=002,inCond:0,outCond:0,flow seq=062
	MOVWF	FSR	;id=1826,key=003,inCond:10,outCond:1,flow seq=062
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5651:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=1829,key=004,inCond:21,outCond:21,flow seq=062
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x103B	;id=3764,key=005,inCond:0,outCond:0,flow seq=062
	BTFSC	r0x103B,0	;id=1831,key=006,inCond:21,outCond:0,flow seq=062
;<>Start of new flow, seq=0x63 ancestor = 0x62
;  from: 062 ; to: 064 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=1833,key=000,inCond:21,outCond:21,flow seq=063
;<>Start of new flow, seq=0x64 ancestor = 0x62
;  from: 063 062 ; to: 065 
;; ***	genNearPointerGet  6086
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6093:genNearPointerGet
	BANKSEL	INDF	;id=3765,key=000,inCond:0,outCond:0,flow seq=064
	MOVF	INDF,W	;id=1836,key=001,inCond:1,outCond:14,flow seq=064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6100:genNearPointerGet
;;	1097 rIdx = r0x105D 
	BANKSEL	r0x103C	;id=3766,key=002,inCond:0,outCond:0,flow seq=064
	MOVWF	r0x103C	;id=3528,key=003,inCond:10,outCond:1,flow seq=064,rIdx=r0x105D
	PAGESEL	_lcd_putch	;id=1855,key=004,inCond:0,outCond:0,flow seq=064
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=1857,key=005,inCond:10,outCond:1e,flow seq=064
;<>Start of new flow, seq=0x65 ancestor = 0x64
;  from: 064 ; to: 05b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1859,key=000,inCond:0,outCond:0,flow seq=065
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1059, size=1, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; ***	genAssign  7132
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x105A 
	BANKSEL	r0x1038	;id=3768,key=001,inCond:0,outCond:0,flow seq=065
	MOVF	r0x1038,W	;id=1873,key=002,inCond:1,outCond:14,flow seq=065,rIdx=r0x105A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7159:genAssign
;;	1097 rIdx = r0x1059 
;; BANKOPT2 BANKSEL dropped; r0x1039 present in same bank as r0x1038
	MOVWF	r0x1039	;id=1876,key=003,inCond:10,outCond:1,flow seq=065,rIdx=r0x1059
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=11, label offset 38
	GOTO	_00149_DS_	;id=1881,key=004,inCond:0,outCond:0,flow seq=065
;<>Start of new flow, seq=0x66 ancestor = 0x5c
;  from: 05c ; to: 
;goto	_00149_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00151_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00151_DS_:
;	.line	249; "../../../lib/lcd44780.c"	}
	RETURN		;id=1893,key=000,inCond:10,outCond:e,flow seq=066
;<>Start of new flow, seq=0x67
;  from: ; to: 
; exit point of _lcd_print_number
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
;   r0x1047
;   STK00
;   r0x1048
;   STK01
;   r0x1049
;   r0x104A
;   r0x104B
;   r0x104C
;   r0x104D
;   r0x104E
;; Starting pCode block
;<>Start of new flow, seq=0x68 ancestor = 0x68
;  from: ; to: 069 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=23previous max_key=2 
;;	-----------------------------------------
;;	 function lcd_puts
;;	-----------------------------------------
;_lcd_puts:
S_lcd44780__lcd_puts	code
_lcd_puts:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1051, size=3, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1053 
;	.line	190; "../../../lib/lcd44780.c"	lcd_puts(const char* string) {
	BANKSEL	r0x1047	;id=3771,key=000,inCond:0,outCond:0,flow seq=068
	MOVWF	r0x1047	;id=883,key=001,inCond:10,outCond:1,flow seq=068,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1047's banks
	MOVF	STK00,W	;id=886,key=002,inCond:1,outCond:14,flow seq=068
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1048 present in same bank as r0x1047
	MOVWF	r0x1048	;id=889,key=003,inCond:10,outCond:1,flow seq=068,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x1047's banks
	MOVF	STK01,W	;id=892,key=004,inCond:1,outCond:14,flow seq=068
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1049 present in same bank as r0x1047
	MOVWF	r0x1049	;id=895,key=005,inCond:10,outCond:1,flow seq=068,rIdx=r0x1051
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7036:genAssign *{*
;; ***	genAssign  7037
;;	695 register type nRegs=1
;; 	line = 7046 result AOP_REG=r0x1054, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7132
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7144:genAssign
;;	1097 rIdx = r0x1054 
;; BANKOPT2 BANKSEL dropped; r0x104A present in same bank as r0x1047
;	.line	192; "../../../lib/lcd44780.c"	for(i = 0; string[i]; i++) lcd_putch(string[i]);
	CLRF	r0x104A	;id=905,key=006,inCond:0,outCond:5,flow seq=068,rIdx=r0x1054
;<>Start of new flow, seq=0x69 ancestor = 0x68
;  from: 071 068 ; to: 06b 06a 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00132_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;;	695 register type nRegs=3
;; 	line = 614 result AOP_REG=r0x1055, size=3, left AOP_REG=r0x1051, size=3, right AOP_REG=r0x1054, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  713
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x1054 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00132_DS_:
	BANKSEL	r0x104A	;id=3778,key=000,inCond:0,outCond:0,flow seq=069
	MOVF	r0x104A,W	;id=924,key=001,inCond:1,outCond:14,flow seq=069,rIdx=r0x1054
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
;;	1097 rIdx = r0x1051 
;; BANKOPT2 BANKSEL dropped; r0x1049 present in same bank as r0x104A
	ADDWF	r0x1049,W	;id=927,key=002,inCond:11,outCond:1e,flow seq=069,rIdx=r0x1051
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x104B present in same bank as r0x104A
	MOVWF	r0x104B	;id=930,key=003,inCond:10,outCond:1,flow seq=069,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1052 
;; BANKOPT2 BANKSEL dropped; r0x1048 present in same bank as r0x104A
	MOVF	r0x1048,W	;id=933,key=004,inCond:1,outCond:14,flow seq=069,rIdx=r0x1052
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=935,key=005,inCond:23,outCond:0,flow seq=069
;<>Start of new flow, seq=0x6a ancestor = 0x69
;  from: 069 ; to: 06b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=937,key=000,inCond:410,outCond:1e,flow seq=06a
;<>Start of new flow, seq=0x6b ancestor = 0x69
;  from: 06a 069 ; to: 06d 06c 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x104C present in same bank as r0x104A
	MOVWF	r0x104C	;id=940,key=000,inCond:10,outCond:1,flow seq=06b,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
;;	1097 rIdx = r0x1053 
;; BANKOPT2 BANKSEL dropped; r0x1047 present in same bank as r0x104A
	MOVF	r0x1047,W	;id=943,key=001,inCond:1,outCond:14,flow seq=06b,rIdx=r0x1053
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=945,key=002,inCond:23,outCond:0,flow seq=06b
;<>Start of new flow, seq=0x6c ancestor = 0x6b
;  from: 06b ; to: 06d 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=947,key=000,inCond:410,outCond:1e,flow seq=06c
;<>Start of new flow, seq=0x6d ancestor = 0x6b
;  from: 06c 06b ; to: 06e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x104D present in same bank as r0x104A
	MOVWF	r0x104D	;id=950,key=000,inCond:10,outCond:1,flow seq=06d,rIdx=r0x1057
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6260:genPointerGet *{*
;; ***	genPointerGet  6261
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6149:genGenPointerGet *{*
;; ***	genGenPointerGet  6150
;;	695 register type nRegs=3
;;	695 register type nRegs=1
;; 	line = 6155 result AOP_REG=r0x1058, size=1, left AOP_REG=r0x1055, size=3, right -=-, size=0
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1055 
;; BANKOPT2 BANKSEL dropped; r0x104B present in same bank as r0x104A
	MOVF	r0x104B,W	;id=962,key=001,inCond:1,outCond:14,flow seq=06d,rIdx=r0x1055
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6174:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7e
;; BANKOPT1 BANKSEL dropped; STK01 present in all of r0x104A's banks
	MOVWF	STK01	;id=965,key=002,inCond:10,outCond:1,flow seq=06d
;; ***	mov2w  1366  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1056 
;; BANKOPT2 BANKSEL dropped; r0x104C present in same bank as r0x104A
	MOVF	r0x104C,W	;id=969,key=003,inCond:1,outCond:14,flow seq=06d,rIdx=r0x1056
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6176:genGenPointerGet
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x104A's banks
	MOVWF	STK00	;id=972,key=004,inCond:10,outCond:1,flow seq=06d
;; ***	mov2w  1366  offset=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1057 
;; BANKOPT2 BANKSEL dropped; r0x104D present in same bank as r0x104A
	MOVF	r0x104D,W	;id=976,key=005,inCond:1,outCond:14,flow seq=06d,rIdx=r0x1057
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1418:call_libraryfunc
	PAGESEL	__gptrget1	;id=978,key=006,inCond:0,outCond:0,flow seq=06d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1420:call_libraryfunc
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1	;id=980,key=007,inCond:10,outCond:1e,flow seq=06d
;<>Start of new flow, seq=0x6e ancestor = 0x6d
;  from: 06d ; to: 070 06f 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1422:call_libraryfunc
	PAGESEL	$	;id=982,key=000,inCond:0,outCond:0,flow seq=06e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1058 
	BANKSEL	r0x104E	;id=3791,key=001,inCond:0,outCond:0,flow seq=06e
	MOVWF	r0x104E	;id=985,key=002,inCond:10,outCond:1,flow seq=06e,rIdx=r0x1058
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104E
	MOVF	r0x104E,W	;id=3529,key=003,inCond:1,outCond:14,flow seq=06e,rIdx=r0x1058
	BTFSC	STATUS,2	;id=997,key=004,inCond:25,outCond:0,flow seq=06e
;<>Start of new flow, seq=0x6f ancestor = 0x6e
;  from: 06e ; to: 072 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=5, label offset 29
	GOTO	_00134_DS_	;id=1000,key=000,inCond:0,outCond:0,flow seq=06f
;<>Start of new flow, seq=0x70 ancestor = 0x6e
;  from: 06e ; to: 071 
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
;;	1097 rIdx = r0x1058 
;; BANKOPT2 BANKSEL dropped; r0x104E present in same bank as r0x104E
	MOVF	r0x104E,W	;id=1014,key=000,inCond:1,outCond:14,flow seq=070,rIdx=r0x1058
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_putch	;id=1016,key=001,inCond:0,outCond:0,flow seq=070
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_putch	;id=1018,key=002,inCond:10,outCond:1e,flow seq=070
;<>Start of new flow, seq=0x71 ancestor = 0x70
;  from: 070 ; to: 069 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=1020,key=000,inCond:0,outCond:0,flow seq=071
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	695 register type nRegs=1
;;	576
;; 	line = 614 result AOP_REG=r0x1054, size=1, left AOP_REG=r0x1054, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  152
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:164:genPlusIncr
;;	1097 rIdx = r0x1054 
	BANKSEL	r0x104A	;id=3795,key=001,inCond:0,outCond:0,flow seq=071
	INCF	r0x104A,F	;id=1035,key=002,inCond:1,outCond:5,flow seq=071,rIdx=r0x1054
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 29
	GOTO	_00132_DS_	;id=1040,key=003,inCond:0,outCond:0,flow seq=071
;<>Start of new flow, seq=0x72 ancestor = 0x6f
;  from: 06f ; to: 
;goto	_00132_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00134_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;; BANKOPT3 drop assumptions: PCI with label or call found
_00134_DS_:
;	.line	193; "../../../lib/lcd44780.c"	}
	RETURN		;id=1052,key=000,inCond:10,outCond:e,flow seq=072
;<>Start of new flow, seq=0x73
;  from: ; to: 
; exit point of _lcd_puts
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_command
;   _lcd_command
;5 compiler assigned registers:
;   r0x104F
;   STK00
;   r0x1050
;   r0x1051
;   r0x1052
;; Starting pCode block
;<>Start of new flow, seq=0x74 ancestor = 0x74
;  from: ; to: 076 075 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=19previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_gotoxy
;;	-----------------------------------------
;_lcd_gotoxy:
S_lcd44780__lcd_gotoxy	code
_lcd_gotoxy:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104B, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104B 
;	.line	162; "../../../lib/lcd44780.c"	lcd_gotoxy(uint8_t col, uint8_t row) {
	BANKSEL	r0x104F	;id=3797,key=000,inCond:0,outCond:0,flow seq=074
	MOVWF	r0x104F	;id=579,key=001,inCond:10,outCond:1,flow seq=074,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x104F's banks
	MOVF	STK00,W	;id=589,key=002,inCond:1,outCond:14,flow seq=074
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1050 present in same bank as r0x104F
	MOVWF	r0x1050	;id=592,key=003,inCond:10,outCond:1,flow seq=074,rIdx=r0x104C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 0, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6585:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _lcd_gotoxy_row_offsets_65536_66
;	.line	164; "../../../lib/lcd44780.c"	uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	BANKSEL	_lcd_gotoxy_row_offsets_65536_66	;id=3800,key=004,inCond:0,outCond:0,flow seq=074
	CLRF	(_lcd_gotoxy_row_offsets_65536_66 + 0)	;id=608,key=005,inCond:0,outCond:5,flow seq=074
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 1, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6580:genDataPointerSet
	MOVLW	0x40	;id=622,key=006,inCond:400,outCond:10,flow seq=074
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6581:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _lcd_gotoxy_row_offsets_65536_66
;; BANKOPT2 BANKSEL dropped; _lcd_gotoxy_row_offsets_65536_66 present in same bank as _lcd_gotoxy_row_offsets_65536_66
	MOVWF	(_lcd_gotoxy_row_offsets_65536_66 + 1)	;id=625,key=007,inCond:10,outCond:1,flow seq=074
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 2, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6580:genDataPointerSet
	MOVLW	0x14	;id=639,key=008,inCond:400,outCond:10,flow seq=074
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6581:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _lcd_gotoxy_row_offsets_65536_66
;; BANKOPT2 BANKSEL dropped; _lcd_gotoxy_row_offsets_65536_66 present in same bank as _lcd_gotoxy_row_offsets_65536_66
	MOVWF	(_lcd_gotoxy_row_offsets_65536_66 + 2)	;id=642,key=009,inCond:10,outCond:1,flow seq=074
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 3, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6580:genDataPointerSet
	MOVLW	0x54	;id=656,key=00a,inCond:400,outCond:10,flow seq=074
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6581:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _lcd_gotoxy_row_offsets_65536_66
;; BANKOPT2 BANKSEL dropped; _lcd_gotoxy_row_offsets_65536_66 present in same bank as _lcd_gotoxy_row_offsets_65536_66
	MOVWF	(_lcd_gotoxy_row_offsets_65536_66 + 3)	;id=659,key=00b,inCond:10,outCond:1,flow seq=074
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3638:genCmpEq *{*
;; ***	genCmpEq  3639
;; ifx is non-null
;; ***	aopForSym 316
;;	328 sym->rname = _LCD_lines, size = 1
;; 	line = 3650 result AOP_CRY=0x00, size=0, left AOP_DIR=_LCD_lines, size=1, right AOP_LIT=0x01, size=1
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	998
;;	1012  _LCD_lines   offset=0 - had to alloc by reg name
;	.line	173; "../../../lib/lcd44780.c"	if(LCD_lines == 1) {
	BANKSEL	_LCD_lines	;id=3804,key=00c,inCond:0,outCond:0,flow seq=074
	MOVF	_LCD_lines,W	;id=672,key=00d,inCond:1,outCond:14,flow seq=074
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3704:genCmpEq
	XORLW	0x01	;id=674,key=00e,inCond:410,outCond:14,flow seq=074
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3706:genCmpEq
	BTFSS	STATUS,2	;id=676,key=00f,inCond:25,outCond:0,flow seq=074
;<>Start of new flow, seq=0x75 ancestor = 0x74
;  from: 074 ; to: 077 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3709:genCmpEq
;; ***	popGetLabel  key=2, label offset 23
	GOTO	_00125_DS_	;id=679,key=000,inCond:0,outCond:0,flow seq=075
;<>Start of new flow, seq=0x76 ancestor = 0x74
;  from: 074 ; to: 077 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 1, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6580:genDataPointerSet
;	.line	174; "../../../lib/lcd44780.c"	row_offsets[1] = 0x14;
	MOVLW	0x14	;id=694,key=000,inCond:400,outCond:10,flow seq=076
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6581:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _lcd_gotoxy_row_offsets_65536_66
	BANKSEL	_lcd_gotoxy_row_offsets_65536_66	;id=3805,key=001,inCond:0,outCond:0,flow seq=076
	MOVWF	(_lcd_gotoxy_row_offsets_65536_66 + 1)	;id=697,key=002,inCond:10,outCond:1,flow seq=076
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 2, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6580:genDataPointerSet
;	.line	175; "../../../lib/lcd44780.c"	row_offsets[2] = 0x28;
	MOVLW	0x28	;id=711,key=003,inCond:400,outCond:10,flow seq=076
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6581:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _lcd_gotoxy_row_offsets_65536_66
;; BANKOPT2 BANKSEL dropped; _lcd_gotoxy_row_offsets_65536_66 present in same bank as _lcd_gotoxy_row_offsets_65536_66
	MOVWF	(_lcd_gotoxy_row_offsets_65536_66 + 2)	;id=714,key=004,inCond:10,outCond:1,flow seq=076
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6796:genPointerSet *{*
;; ***	genPointerSet  6797
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6615:genNearPointerSet *{*
;; ***	genNearPointerSet  6616
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 3, const = 0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6542:genDataPointerSet *{*
;; ***	genDataPointerSet  6543
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6571: size=0, offset=0, AOP_TYPE(res)=8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6580:genDataPointerSet
;	.line	176; "../../../lib/lcd44780.c"	row_offsets[3] = 0x3C;
	MOVLW	0x3c	;id=728,key=005,inCond:400,outCond:10,flow seq=076
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6581:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1118 _lcd_gotoxy_row_offsets_65536_66
;; BANKOPT2 BANKSEL dropped; _lcd_gotoxy_row_offsets_65536_66 present in same bank as _lcd_gotoxy_row_offsets_65536_66
	MOVWF	(_lcd_gotoxy_row_offsets_65536_66 + 3)	;id=731,key=006,inCond:10,outCond:1,flow seq=076
;<>Start of new flow, seq=0x77 ancestor = 0x75
;  from: 076 075 ; to: 079 078 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00125_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;; ***	genPlus  607
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:608:genPlus *{*
;;	614
;;	aopForRemat 393
;;	419: rname _lcd_gotoxy_row_offsets_65536_66, val 0, const = 0
;;	695 register type nRegs=1
;;	695 register type nRegs=2
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_gotoxy_row_offsets_65536_66
;; 	line = 614 result AOP_REG=r0x104C, size=2, left AOP_PCODE=_lcd_gotoxy_row_offsets_65536_66, size=2, right AOP_REG=r0x104C, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:138:genPlusIncr *{*
;; ***	genPlusIncr  140
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  713
;;	824: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_gotoxy_row_offsets_65536_66
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:722:genPlus
;;	1097 rIdx = r0x104C 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00125_DS_:
;	.line	183; "../../../lib/lcd44780.c"	lcd_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
	BANKSEL	r0x1050	;id=3809,key=000,inCond:0,outCond:0,flow seq=077
	MOVF	r0x1050,W	;id=757,key=001,inCond:1,outCond:14,flow seq=077,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:731:genPlus
	ADDLW	(_lcd_gotoxy_row_offsets_65536_66 + 0)	;id=759,key=002,inCond:410,outCond:1e,flow seq=077
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:732:genPlus
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1050 present in same bank as r0x1050
	MOVWF	r0x1050	;id=762,key=003,inCond:10,outCond:1,flow seq=077,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:795:genPlus
	MOVLW	high (_lcd_gotoxy_row_offsets_65536_66 + 0)	;id=764,key=004,inCond:400,outCond:10,flow seq=077
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:796:genPlus
	BTFSC	STATUS,0	;id=766,key=005,inCond:23,outCond:0,flow seq=077
;<>Start of new flow, seq=0x78 ancestor = 0x77
;  from: 077 ; to: 079 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:797:genPlus
	ADDLW	0x01	;id=768,key=000,inCond:410,outCond:1e,flow seq=078
;<>Start of new flow, seq=0x79 ancestor = 0x77
;  from: 078 077 ; to: 07b 07a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:genPlus
;;	1097 rIdx = r0x104D 
;; BANKOPT2 BANKSEL dropped; r0x1051 present in same bank as r0x1050
	MOVWF	r0x1051	;id=771,key=000,inCond:10,outCond:1,flow seq=079,rIdx=r0x104D
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
;;	1097 rIdx = r0x104C 
;; BANKOPT2 BANKSEL dropped; r0x1050 present in same bank as r0x1050
	MOVF	r0x1050,W	;id=784,key=001,inCond:1,outCond:14,flow seq=079,rIdx=r0x104C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5700:setup_fsr
	BANKSEL	FSR	;id=3813,key=002,inCond:0,outCond:0,flow seq=079
	MOVWF	FSR	;id=786,key=003,inCond:10,outCond:1,flow seq=079
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5651:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5678:SetIrp
;; BANKOPT1 BANKSEL dropped; STATUS present in all of FSR's banks
	BCF	STATUS,7	;id=789,key=004,inCond:21,outCond:21,flow seq=079
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5681:SetIrp
	BANKSEL	r0x1051	;id=3815,key=005,inCond:0,outCond:0,flow seq=079
	BTFSC	r0x1051,0	;id=791,key=006,inCond:21,outCond:0,flow seq=079
;<>Start of new flow, seq=0x7a ancestor = 0x79
;  from: 079 ; to: 07b 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5682:SetIrp
	BSF	STATUS,7	;id=793,key=000,inCond:21,outCond:21,flow seq=07a
;<>Start of new flow, seq=0x7b ancestor = 0x79
;  from: 07a 079 ; to: 07c 
;; ***	genNearPointerGet  6086
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6093:genNearPointerGet
	BANKSEL	INDF	;id=3816,key=000,inCond:0,outCond:0,flow seq=07b
	MOVF	INDF,W	;id=796,key=001,inCond:1,outCond:14,flow seq=07b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6100:genNearPointerGet
;;	1097 rIdx = r0x104E 
;;1	MOVWF	r0x1052
	BANKSEL	r0x104F	;id=3817,key=002,inCond:0,outCond:0,flow seq=07b
	ADDWF	r0x104F,F	;id=816,key=003,inCond:11,outCond:f,flow seq=07b,rIdx=r0x104B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 4246 result AOP_REG=r0x104B, size=1, left AOP_REG=r0x104B, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4272 result AOP_REG=r0x104B, size=1, left AOP_REG=r0x104B, size=1, right AOP_LIT=0x80, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; r0x104F present in same bank as r0x104F
	BSF	r0x104F,7	;id=825,key=004,inCond:21,outCond:21,flow seq=07b
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
;;	1097 rIdx = r0x104B 
;; BANKOPT2 BANKSEL dropped; r0x104F present in same bank as r0x104F
	MOVF	r0x104F,W	;id=839,key=005,inCond:1,outCond:14,flow seq=07b,rIdx=r0x104B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_command	;id=841,key=006,inCond:0,outCond:0,flow seq=07b
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_command	;id=843,key=007,inCond:10,outCond:1e,flow seq=07b
;<>Start of new flow, seq=0x7c ancestor = 0x7b
;  from: 07b ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=845,key=000,inCond:0,outCond:0,flow seq=07c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00126_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	184; "../../../lib/lcd44780.c"	}
	RETURN		;id=858,key=001,inCond:10,outCond:e,flow seq=07c
;<>Start of new flow, seq=0x7d
;  from: ; to: 
; exit point of _lcd_gotoxy
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_send
;   _lcd_send
;2 compiler assigned registers:
;   r0x102E
;   STK00
;; Starting pCode block
;<>Start of new flow, seq=0x7e ancestor = 0x7e
;  from: ; to: 07f 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=15previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_command
;;	-----------------------------------------
;_lcd_command:
S_lcd44780__lcd_command	code
_lcd_command:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x104A 
;	.line	154; "../../../lib/lcd44780.c"	lcd_command(uint8_t value) {
	BANKSEL	r0x102E	;id=3821,key=000,inCond:0,outCond:0,flow seq=07e
	MOVWF	r0x102E	;id=512,key=001,inCond:10,outCond:1,flow seq=07e,rIdx=r0x104A
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
;	.line	155; "../../../lib/lcd44780.c"	lcd_send(value, LOW);
	MOVLW	0x00	;id=525,key=002,inCond:400,outCond:10,flow seq=07e
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102E's banks
	MOVWF	STK00	;id=530,key=003,inCond:10,outCond:1,flow seq=07e
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x104A 
;; BANKOPT2 BANKSEL dropped; r0x102E present in same bank as r0x102E
	MOVF	r0x102E,W	;id=535,key=004,inCond:1,outCond:14,flow seq=07e,rIdx=r0x104A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_send	;id=537,key=005,inCond:0,outCond:0,flow seq=07e
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_send	;id=539,key=006,inCond:10,outCond:1e,flow seq=07e
;<>Start of new flow, seq=0x7f ancestor = 0x7e
;  from: 07e ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=541,key=000,inCond:0,outCond:0,flow seq=07f
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00120_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	156; "../../../lib/lcd44780.c"	}
	RETURN		;id=554,key=001,inCond:10,outCond:e,flow seq=07f
;<>Start of new flow, seq=0x80
;  from: ; to: 
; exit point of _lcd_command
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_send
;   _lcd_send
;2 compiler assigned registers:
;   r0x1037
;   STK00
;; Starting pCode block
;<>Start of new flow, seq=0x81 ancestor = 0x81
;  from: ; to: 082 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=8previous max_key=3 
;;	-----------------------------------------
;;	 function lcd_putch
;;	-----------------------------------------
;_lcd_putch:
S_lcd44780__lcd_putch	code
_lcd_putch:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1049 
;	.line	147; "../../../lib/lcd44780.c"	lcd_putch(char value) {
	BANKSEL	r0x1037	;id=3825,key=000,inCond:0,outCond:0,flow seq=081
	MOVWF	r0x1037	;id=445,key=001,inCond:10,outCond:1,flow seq=081,rIdx=r0x1049
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
;	.line	148; "../../../lib/lcd44780.c"	lcd_send((unsigned)value, HIGH);
	MOVLW	0x01	;id=458,key=002,inCond:400,outCond:10,flow seq=081
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2128:genCall
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x1037's banks
	MOVWF	STK00	;id=463,key=003,inCond:10,outCond:1,flow seq=081
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1049 
;; BANKOPT2 BANKSEL dropped; r0x1037 present in same bank as r0x1037
	MOVF	r0x1037,W	;id=468,key=004,inCond:1,outCond:14,flow seq=081,rIdx=r0x1049
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_send	;id=470,key=005,inCond:0,outCond:0,flow seq=081
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_send	;id=472,key=006,inCond:10,outCond:1e,flow seq=081
;<>Start of new flow, seq=0x82 ancestor = 0x81
;  from: 081 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=474,key=000,inCond:0,outCond:0,flow seq=082
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00116_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	149; "../../../lib/lcd44780.c"	}
	RETURN		;id=487,key=001,inCond:10,outCond:e,flow seq=082
;<>Start of new flow, seq=0x83
;  from: ; to: 
; exit point of _lcd_putch
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_write4bits
;   _lcd_write4bits
;   _lcd_write4bits
;   _lcd_write4bits
;3 compiler assigned registers:
;   r0x102C
;   STK00
;   r0x102D
;; Starting pCode block
;<>Start of new flow, seq=0x84 ancestor = 0x84
;  from: ; to: 086 085 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=4previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_send
;;	-----------------------------------------
;_lcd_send:
S_lcd44780__lcd_send	code
_lcd_send:	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1047, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1047 
;	.line	126; "../../../lib/lcd44780.c"	lcd_send(uint8_t value, uint8_t mode) {
	BANKSEL	r0x102C	;id=3829,key=000,inCond:0,outCond:0,flow seq=084
	MOVWF	r0x102C	;id=284,key=001,inCond:10,outCond:1,flow seq=084,rIdx=r0x1047
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7467:genReceive *{*
;; ***	genReceive  7468
;;	695 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1892:assignResultValue *{*
;; ***	assignResultValue  1894
;; 	line = 1896 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1408:get_returnvalue
;; ***	popRegFromIdx,1030  , rIdx=0x7f
;; BANKOPT1 BANKSEL dropped; STK00 present in all of r0x102C's banks
	MOVF	STK00,W	;id=294,key=002,inCond:1,outCond:14,flow seq=084
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1378:movwf
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102C
	MOVWF	r0x102D	;id=297,key=003,inCond:10,outCond:1,flow seq=084,rIdx=r0x1048
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6868:genIfx *{*
;; ***	genIfx  6869
;;	695 register type nRegs=1
;; ***	pic14_toBoolean  1500
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1507:pic14_toBoolean
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102C
;	.line	127; "../../../lib/lcd44780.c"	if(mode) {
	MOVF	r0x102D,W	;id=3531,key=004,inCond:1,outCond:14,flow seq=084,rIdx=r0x1048
	BTFSC	STATUS,2	;id=310,key=005,inCond:25,outCond:0,flow seq=084
;<>Start of new flow, seq=0x85 ancestor = 0x84
;  from: 084 ; to: 087 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6923:genIfx
;; ***	popGetLabel  key=2, label offset 8
	GOTO	_00110_DS_	;id=313,key=000,inCond:0,outCond:0,flow seq=085
;<>Start of new flow, seq=0x86 ancestor = 0x84
;  from: 084 ; to: 088 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;; 	line = 4246 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4272 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;	.line	128; "../../../lib/lcd44780.c"	RS_HIGH();
	BANKSEL	_PORTB	;id=3833,key=000,inCond:0,outCond:0,flow seq=086
	BSF	_PORTB,2	;id=323,key=001,inCond:21,outCond:21,flow seq=086
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2770:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2772:genGoto
;; ***	popGetLabel  key=3, label offset 8
	GOTO	_00111_DS_	;id=328,key=002,inCond:0,outCond:0,flow seq=086
;<>Start of new flow, seq=0x87 ancestor = 0x85
;  from: 085 ; to: 088 
;goto	_00111_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00110_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
;; BANKOPT3 drop assumptions: PCI with label or call found
_00110_DS_:
;	.line	130; "../../../lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB	;id=3835,key=000,inCond:0,outCond:0,flow seq=087
	BCF	_PORTB,2	;id=344,key=001,inCond:21,outCond:21,flow seq=087
;<>Start of new flow, seq=0x88 ancestor = 0x86
;  from: 087 086 ; to: 089 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00111_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5404:shiftRight_Left2ResultLit
;;	1097 rIdx = r0x1047 
;; BANKOPT3 drop assumptions: PCI with label or call found
_00111_DS_:
;	.line	139; "../../../lib/lcd44780.c"	lcd_write4bits(value >> 4); // Upper 4 bits first
	BANKSEL	r0x102C	;id=3837,key=000,inCond:0,outCond:0,flow seq=088
	SWAPF	r0x102C,W	;id=358,key=001,inCond:1,outCond:10,flow seq=088,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5405:shiftRight_Left2ResultLit
	ANDLW	0x0f	;id=360,key=002,inCond:410,outCond:14,flow seq=088
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5406:shiftRight_Left2ResultLit
;;	1097 rIdx = r0x1048 
;; BANKOPT2 BANKSEL dropped; r0x102D present in same bank as r0x102C
	MOVWF	r0x102D	;id=3532,key=003,inCond:10,outCond:1,flow seq=088,rIdx=r0x1048
	PAGESEL	_lcd_write4bits	;id=380,key=004,inCond:0,outCond:0,flow seq=088
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_write4bits	;id=382,key=005,inCond:10,outCond:1e,flow seq=088
;<>Start of new flow, seq=0x89 ancestor = 0x88
;  from: 088 ; to: 08a 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=384,key=000,inCond:0,outCond:0,flow seq=089
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;;	576
;;	695 register type nRegs=1
;; 	2120 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; ***	mov2w  1366  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1371:mov2w
;;	1097 rIdx = r0x1047 
;	.line	140; "../../../lib/lcd44780.c"	lcd_write4bits(value);      // Lower 4 bits second
	BANKSEL	r0x102C	;id=3840,key=001,inCond:0,outCond:0,flow seq=089
	MOVF	r0x102C,W	;id=401,key=002,inCond:1,outCond:14,flow seq=089,rIdx=r0x1047
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_lcd_write4bits	;id=403,key=003,inCond:0,outCond:0,flow seq=089
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_lcd_write4bits	;id=405,key=004,inCond:10,outCond:1e,flow seq=089
;<>Start of new flow, seq=0x8a ancestor = 0x89
;  from: 089 ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=407,key=000,inCond:0,outCond:0,flow seq=08a
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;_00112_DS_:
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2520:genEndFunction *{*
;; ***	genEndFunction  2522
;return
;	.line	142; "../../../lib/lcd44780.c"	}
	RETURN		;id=420,key=001,inCond:10,outCond:e,flow seq=08a
;<>Start of new flow, seq=0x8b
;  from: ; to: 
; exit point of _lcd_send
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _delay_us
;   _delay_us
;   _delay_us
;   _delay_us
;2 compiler assigned registers:
;   r0x102A
;   r0x102B
;; Starting pCode block
;<>Start of new flow, seq=0x8c ancestor = 0x8c
;  from: ; to: 08d 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2752:genLabel *{*
;; ***	genLabel  2755
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2332:genFunction *{*
;; ***	genFunction  2334 curr label offset=0previous max_key=0 
;;	-----------------------------------------
;;	 function lcd_write4bits
;;	-----------------------------------------
;_lcd_write4bits:
S_lcd44780__lcd_write4bits	code
_lcd_write4bits:	;Function start
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
	BANKSEL	r0x102B	;id=3842,key=000,inCond:0,outCond:0,flow seq=08c
	MOVWF	r0x102B	;id=152,key=001,inCond:10,outCond:1,flow seq=08c,rIdx=r0x1046
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102B
;	.line	57; "../../../lib/lcd44780.c"	lcd_write4bits(uint8_t value) {
	MOVWF	r0x102A	;id=125,key=002,inCond:10,outCond:1,flow seq=08c,rIdx=r0x1045
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x0f, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4147:genAnd
;	.line	62; "../../../lib/lcd44780.c"	OUTB &= 0b00001111;
	MOVLW	0x0f	;id=134,key=003,inCond:400,outCond:10,flow seq=08c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4149:genAnd
;;	998
;;	1016  _PORTB   offset=0
	BANKSEL	_PORTB	;id=3844,key=004,inCond:0,outCond:0,flow seq=08c
	ANDWF	_PORTB,F	;id=138,key=005,inCond:11,outCond:5,flow seq=08c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7229:genCast *{*
;; ***	genCast  7230
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; 	line = 7238 result AOP_REG=r0x1046, size=1, left -=-, size=0, right AOP_REG=r0x1045, size=1
;; ***	genCast  7362
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast
;;	1097 rIdx = r0x1045 
;;99	MOVF	r0x102A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7387:genCast
;;	1097 rIdx = r0x1046 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5516:genGenericShift *{*
;; ***	genGenericShift  5519
;;	695 register type nRegs=1
;;	695 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5251:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1046 
;	.line	63; "../../../lib/lcd44780.c"	OUTB |= value << 4;
	BANKSEL	r0x102B	;id=3845,key=006,inCond:0,outCond:0,flow seq=08c
	SWAPF	r0x102B,W	;id=160,key=007,inCond:1,outCond:10,flow seq=08c,rIdx=r0x1046
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5252:shiftLeft_Left2ResultLit
	ANDLW	0xf0	;id=162,key=008,inCond:410,outCond:14,flow seq=08c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5253:shiftLeft_Left2ResultLit
;;	1097 rIdx = r0x1045 
;; BANKOPT2 BANKSEL dropped; r0x102A present in same bank as r0x102B
	MOVWF	r0x102A	;id=3533,key=009,inCond:10,outCond:1,flow seq=08c,rIdx=r0x1045
;; BANKOPT2 BANKSEL dropped; r0x102B present in same bank as r0x102B
	MOVWF	r0x102B	;id=3534,key=00a,inCond:10,outCond:1,flow seq=08c,rIdx=r0x1046
	BANKSEL	_PORTB	;id=3848,key=00b,inCond:0,outCond:0,flow seq=08c
	IORWF	_PORTB,F	;id=193,key=00c,inCond:11,outCond:5,flow seq=08c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4239:genOr *{*
;; ***	genOr  4240
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;; 	line = 4246 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4272 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4423:genOr
;; BANKOPT2 BANKSEL dropped; _PORTB present in same bank as _PORTB
;	.line	78; "../../../lib/lcd44780.c"	lcd_pulse_enable();
	BSF	_PORTB,3	;id=203,key=00d,inCond:21,outCond:21,flow seq=08c
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x04	;id=213,key=00e,inCond:400,outCond:10,flow seq=08c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_us	;id=215,key=00f,inCond:0,outCond:0,flow seq=08c
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_us	;id=217,key=010,inCond:10,outCond:1e,flow seq=08c
;<>Start of new flow, seq=0x8d ancestor = 0x8c
;  from: 08c ; to: 08e 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=219,key=000,inCond:0,outCond:0,flow seq=08d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1830:unsaveRegisters *{*
;; ***	unsaveRegisters  1832
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3938:genAnd *{*
;; ***	genAnd  3939
;; ***	aopForSym 316
;;	328 sym->rname = _PORTB, size = 1
;;	576
;; 	line = 3974 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xf7, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4141:genAnd
	BANKSEL	_PORTB	;id=3851,key=001,inCond:0,outCond:0,flow seq=08d
	BCF	_PORTB,3	;id=230,key=002,inCond:21,outCond:21,flow seq=08d
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2308:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2071:genCall *{*
;; ***	genCall  2073
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1786:saveRegisters *{*
;; ***	saveRegisters  1788
;; 	2120 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1328:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1346:mov2w_op
	MOVLW	0x64	;id=240,key=003,inCond:400,outCond:10,flow seq=08d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2160:genCall
	PAGESEL	_delay_us	;id=242,key=004,inCond:0,outCond:0,flow seq=08d
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2165:genCall
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	_delay_us	;id=244,key=005,inCond:10,outCond:1e,flow seq=08d
;<>Start of new flow, seq=0x8e ancestor = 0x8d
;  from: 08d ; to: 
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	$	;id=246,key=000,inCond:0,outCond:0,flow seq=08e
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
;	.line	83; "../../../lib/lcd44780.c"	}
	RETURN		;id=259,key=001,inCond:10,outCond:e,flow seq=08e
;<>Start of new flow, seq=0x8f
;  from: ; to: 
; exit point of _lcd_write4bits
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7535:genpic14Code *{*


;	code size estimation:
;	  409+  168 =   577 instructions ( 1490 byte)

	end
