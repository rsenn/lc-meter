;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"lib/lcd44780.c"
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
	extern	__divuint
	extern	__moduint
	extern	_delay_us
	extern	_delay_ms
	extern	_TRISB
	extern	_PORTB
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
	global	_lcd_send
	global	_lcd_gotoxy
	global	_lcd_puts
	global	_lcd_putch
	global	_lcd_print_number
	global	_lcd_home
	global	_lcd_clear
	global	_lcd_display
	global	_lcd_no_cursor
	global	_lcd_cursor
	global	_lcd_blink
	global	_lcd_left_to_right
	global	_lcd_autoscroll
	global	_lcd_begin
	global	_lcd_init

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_lcd44780_0	udata
; Flcd44780_LCD_function_0_0 == .
_LCD_function	res	1

UD_lcd44780_1	udata
; Flcd44780_LCD_ctrl_0_0 == .
_LCD_ctrl	res	1

UD_lcd44780_2	udata
; Flcd44780_LCD_mode_0_0 == .
_LCD_mode	res	1

UD_lcd44780_3	udata
; Flcd44780_LCD_lines_0_0 == .
_LCD_lines	res	1

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
r0x104E	res	1
r0x1037	res	1
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
r0x102F	res	1
r0x1030	res	1
r0x1028	res	1
r0x1029	res	1
_lcd_gotoxy_row_offsets_65536_45	res	4
_lcd_print_number_buf_65536_53	res	32
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized absolute data
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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=93previous max_key=8 
S_lcd44780__lcd_init	code
_lcd_init:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1074, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1074 
	.line	489; "lib/lcd44780.c"	lcd_init(char fourbitmode) {
	BANKSEL	r0x1028
	MOVWF	r0x1028
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;; 	line = 7169 result AOP_DIR=_LCD_ctrl, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _LCD_ctrl   offset=0
	.line	491; "lib/lcd44780.c"	LCD_ctrl = 0;
	BANKSEL	_LCD_ctrl
	CLRF	_LCD_ctrl
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1074 
	.line	492; "lib/lcd44780.c"	LCD_function = (fourbitmode ? LCD_4BITMODE : LCD_8BITMODE);
	BANKSEL	r0x1028
	MOVF	r0x1028,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=3, label offset 105
	GOTO	_00208_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1074, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1074 
	CLRF	r0x1028
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1075 
	CLRF	r0x1029
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=4, label offset 105
	GOTO	_00209_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=2
;; 	line = 7169 result AOP_REG=r0x1074, size=2, left -=-, size=0, right AOP_LIT=0x10, size=2
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
_00208_DS_:
	MOVLW	0x10
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x1074 
	BANKSEL	r0x1028
	MOVWF	r0x1028
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1075 
	CLRF	r0x1029
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=2
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_function, size = 1
;; 	line = 7362 result AOP_DIR=_LCD_function, size=1, left -=-, size=0, right AOP_REG=r0x1074, size=2
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1074 
_00209_DS_:
	BANKSEL	r0x1028
	MOVF	r0x1028,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1027
;;	1045  _LCD_function   offset=0
	BANKSEL	_LCD_function
	MOVWF	_LCD_function
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_lines, size = 1
;; 	line = 7169 result AOP_DIR=_LCD_lines, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _LCD_lines   offset=0
	.line	494; "lib/lcd44780.c"	LCD_lines = 0;
	BANKSEL	_LCD_lines
	CLRF	_LCD_lines
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_mode, size = 1
;; 	line = 7169 result AOP_DIR=_LCD_mode, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1027
;;	1045  _LCD_mode   offset=0
	.line	496; "lib/lcd44780.c"	LCD_mode = 0;
	BANKSEL	_LCD_mode
	CLRF	_LCD_mode
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_TRISB, size=1, left AOP_DIR=_TRISB, size=1, right AOP_LIT=0xfb, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	498; "lib/lcd44780.c"	RS_TRIS();
	BANKSEL	_TRISB
	BCF	_TRISB,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xfb, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	499; "lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_TRISB, size=1, left AOP_DIR=_TRISB, size=1, right AOP_LIT=0xf7, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	504; "lib/lcd44780.c"	EN_TRIS();
	BANKSEL	_TRISB
	BCF	_TRISB,3
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xf7, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	505; "lib/lcd44780.c"	EN_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,3
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	507; "lib/lcd44780.c"	DATA_TRIS();
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1027
;;	1045  _PORTB   offset=0
	ANDWF	_PORTB,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	517; "lib/lcd44780.c"	}
	RETURN	
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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=89previous max_key=0 
S_lcd44780__lcd_begin	code
_lcd_begin:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1072, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1072 
	.line	416; "lib/lcd44780.c"	lcd_begin(uint8_t lines, uint8_t dotsize) {
	BANKSEL	r0x102F
	MOVWF	r0x102F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1073, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1073 
	MOVWF	r0x1030
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x2=2), size=1
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	417; "lib/lcd44780.c"	if(lines > 1)
	MOVLW	0x02
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1072 
	.line	418; "lib/lcd44780.c"	LCD_function |= LCD_2LINE;
	SUBWF	r0x102F,W
	.line	421; "lib/lcd44780.c"	LCD_lines = lines;
	BTFSS	STATUS,0
	GOTO	_00001_DS_
	BANKSEL	_LCD_function
	BSF	_LCD_function,3
_00001_DS_:
	BANKSEL	r0x102F
	MOVF	r0x102F,W
	BANKSEL	_LCD_lines
	MOVWF	_LCD_lines
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1073 
	.line	425; "lib/lcd44780.c"	if((dotsize != 0) && (lines == 1))
	BANKSEL	r0x1030
	MOVF	r0x1030,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=4, label offset 93
	GOTO	_00002_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;;	708 register type nRegs=1
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x01, size=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1072 
	MOVF	r0x102F,W
;; >>> ../../../../src/pic14/gen.c:3769:genCmpEq
	.line	426; "lib/lcd44780.c"	LCD_function |= LCD_5x10DOTS;
	XORLW	0x01
	.line	428; "lib/lcd44780.c"	delay_ms(15); // Wait more than 15 ms after VDD rises to 4.5V
	BTFSS	STATUS,2
	GOTO	_00002_DS_
	BANKSEL	_LCD_function
	BSF	_LCD_function,2
_00002_DS_:
	MOVLW	0x0f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xfb, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	431; "lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xf7, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	432; "lib/lcd44780.c"	EN_LOW();
	BCF	_PORTB,3
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_function, size = 1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1072, size=1, left -=-, size=0, right AOP_DIR=_LCD_function, size=1
;; ***	genAssign  7235
;; WARNING	genAssign  7244 ignoring register storage
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _LCD_function   offset=0
	.line	435; "lib/lcd44780.c"	if(!(LCD_function & LCD_8BITMODE)) {
	BANKSEL	_LCD_function
	MOVF	_LCD_function,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x1072 
	BANKSEL	r0x102F
	MOVWF	r0x102F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1072, size=1, right AOP_LIT=0x10, size=1
;;; ../../../../src/pic14/gen.c:3946:isLiteralBit *{*
;; ***	isLiteralBit  3947
;; >>> ../../../../src/pic14/gen.c:4143:genAnd
	BTFSC	r0x102F,4
;; >>> ../../../../src/pic14/gen.c:4144:genAnd
;; ***	popGetLabel  key=7, label offset 93
	GOTO	_00200_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	439; "lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	440; "lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	442; "lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	443; "lib/lcd44780.c"	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	445; "lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	446; "lib/lcd44780.c"	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	448; "lib/lcd44780.c"	lcd_write4bits(0x02);
	MOVLW	0x02
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 93
	GOTO	_00201_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_function, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4357 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
_00200_DS_:
	.line	455; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_function   offset=0
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x1072 
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	456; "lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_function, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4357 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	459; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_function   offset=0
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x1072 
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	460; "lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_function, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4357 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	464; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_function   offset=0
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x1072 
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_function, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4357 result AOP_REG=r0x1072, size=1, left AOP_DIR=_LCD_function, size=1, right AOP_LIT=0x20, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
_00201_DS_:
	.line	468; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_function   offset=0
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x1072 
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;; 	line = 7169 result AOP_DIR=_LCD_ctrl, size=1, left -=-, size=0, right AOP_LIT=0x04, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	471; "lib/lcd44780.c"	LCD_ctrl = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
	MOVLW	0x04
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _LCD_ctrl   offset=0
	BANKSEL	_LCD_ctrl
	MOVWF	_LCD_ctrl
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	472; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x0c
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	475; "lib/lcd44780.c"	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	476; "lib/lcd44780.c"	delay_ms(2);
	MOVLW	0x02
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_mode, size = 1
;; 	line = 7169 result AOP_DIR=_LCD_mode, size=1, left -=-, size=0, right AOP_LIT=0x02, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	479; "lib/lcd44780.c"	LCD_mode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
	MOVLW	0x02
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1027
;;	1045  _LCD_mode   offset=0
	BANKSEL	_LCD_mode
	MOVWF	_LCD_mode
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	481; "lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x06
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	482; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_begin
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=85previous max_key=0 
S_lcd44780__lcd_autoscroll	code
_lcd_autoscroll:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_mode, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4357 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x01, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	398; "lib/lcd44780.c"	LCD_mode |= LCD_ENTRYSHIFTINCREMENT;
	BANKSEL	_LCD_mode
	BSF	_LCD_mode,0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_mode, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x1070, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4357 result AOP_REG=r0x1070, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x04, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	399; "lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x04
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_mode   offset=0
	IORWF	_LCD_mode,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x1070 
;;1	MOVWF	r0x1031
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	400; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_autoscroll
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=81previous max_key=0 
S_lcd44780__lcd_left_to_right	code
_lcd_left_to_right:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_mode, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4357 result AOP_DIR=_LCD_mode, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x02, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	378; "lib/lcd44780.c"	LCD_mode |= LCD_ENTRYLEFT;
	BANKSEL	_LCD_mode
	BSF	_LCD_mode,1
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_mode, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x106F, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4357 result AOP_REG=r0x106F, size=1, left AOP_DIR=_LCD_mode, size=1, right AOP_LIT=0x04, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	379; "lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x04
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_mode   offset=0
	IORWF	_LCD_mode,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x106F 
;;1	MOVWF	r0x1032
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	380; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_left_to_right
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=77previous max_key=0 
S_lcd44780__lcd_blink	code
_lcd_blink:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4357 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x01, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	351; "lib/lcd44780.c"	LCD_ctrl |= LCD_BLINKON;
	BANKSEL	_LCD_ctrl
	BSF	_LCD_ctrl,0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x106D, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4357 result AOP_REG=r0x106D, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	352; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_ctrl   offset=0
	IORWF	_LCD_ctrl,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x106D 
;;1	MOVWF	r0x1033
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	353; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_blink
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=73previous max_key=0 
S_lcd44780__lcd_cursor	code
_lcd_cursor:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4357 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x02, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	332; "lib/lcd44780.c"	LCD_ctrl |= LCD_CURSORON;
	BANKSEL	_LCD_ctrl
	BSF	_LCD_ctrl,1
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x106C, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4357 result AOP_REG=r0x106C, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	333; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_ctrl   offset=0
	IORWF	_LCD_ctrl,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x106C 
;;1	MOVWF	r0x1034
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	334; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_cursor
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=69previous max_key=0 
S_lcd44780__lcd_no_cursor	code
_lcd_no_cursor:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0xfd, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	.line	323; "lib/lcd44780.c"	LCD_ctrl &= ~LCD_CURSORON;
	BANKSEL	_LCD_ctrl
	BCF	_LCD_ctrl,1
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x106B, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4357 result AOP_REG=r0x106B, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	324; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_ctrl   offset=0
	IORWF	_LCD_ctrl,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x106B 
;;1	MOVWF	r0x1035
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	325; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_no_cursor
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=65previous max_key=0 
S_lcd44780__lcd_display	code
_lcd_display:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4357 result AOP_DIR=_LCD_ctrl, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x04, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	313; "lib/lcd44780.c"	LCD_ctrl |= LCD_DISPLAYON;
	BANKSEL	_LCD_ctrl
	BSF	_LCD_ctrl,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_ctrl, size = 1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x106A, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4357 result AOP_REG=r0x106A, size=1, left AOP_DIR=_LCD_ctrl, size=1, right AOP_LIT=0x08, size=1
;; >>> ../../../../src/pic14/gen.c:4574:genOr
	.line	314; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
;; >>> ../../../../src/pic14/gen.c:4575:genOr
;;	1027
;;	1045  _LCD_ctrl   offset=0
	IORWF	_LCD_ctrl,W
;; >>> ../../../../src/pic14/gen.c:4576:genOr
;;	1126 rIdx = r0x106A 
;;1	MOVWF	r0x1036
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	315; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_display
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=61previous max_key=0 
S_lcd44780__lcd_clear	code
_lcd_clear:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	293; "lib/lcd44780.c"	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	294; "lib/lcd44780.c"	delay_ms(2);                   // Wait for more than 4.1 ms
	MOVLW	0x02
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	296; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_clear
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=38previous max_key=19 
S_lcd44780__lcd_home	code
_lcd_home:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	282; "lib/lcd44780.c"	lcd_command(LCD_RETURNHOME);
	MOVLW	0x02
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	283; "lib/lcd44780.c"	delay_ms(2); // Wait for more than 4.1 ms
	MOVLW	0x02
;; 	2158 left AOP_LIT
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_ms
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	285; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_home
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=34previous max_key=0 
S_lcd44780__lcd_print_number	code
_lcd_print_number:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1059, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	.line	197; "lib/lcd44780.c"	lcd_print_number(uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
	BANKSEL	r0x1038
	MOVWF	r0x1038
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	MOVWF	r0x1039
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105B, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	MOVWF	r0x103A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105C, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x103B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x105D, size=1, left -=-, size=0, right AOP_LIT=0x20, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	201; "lib/lcd44780.c"	char padchar = ' ';
	MOVLW	0x20
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x105D 
	MOVWF	r0x103C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;signed compare: left < lit(0x0=0), size=1, mask=ff
;; >>> ../../../../src/pic14/gen.c:3469:genCmp
	.line	203; "lib/lcd44780.c"	if(pad < 0) {
	BSF	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3472:genCmp
	BTFSS	r0x103B,7
;; >>> ../../../../src/pic14/gen.c:3474:genCmp
	BCF	STATUS,0
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=19, label offset 38
	GOTO	_00157_DS_
;;genSkipc:3307: created from rifx:0x7ffd7264a3d0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:1679:genUminus *{*
;; ***	genUminus  1681
;;	708 register type nRegs=1
;;	589
;; >>> ../../../../src/pic14/gen.c:1713:genUminus
;;	1126 rIdx = r0x105C 
	.line	204; "lib/lcd44780.c"	pad = -pad;
	COMF	r0x103B,F
;; >>> ../../../../src/pic14/gen.c:1721:genUminus
;;	1126 rIdx = r0x105C 
	INCF	r0x103B,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x105D, size=1, left -=-, size=0, right AOP_LIT=0x30, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7260:genAssign
	.line	205; "lib/lcd44780.c"	padchar = '0';
	MOVLW	0x30
;; >>> ../../../../src/pic14/gen.c:7262:genAssign
;;	1126 rIdx = r0x105D 
	MOVWF	r0x103C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x105E, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x105E 
_00157_DS_:
	.line	213; "lib/lcd44780.c"	do {
	BANKSEL	r0x103D
	CLRF	r0x103D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x105F, size=2, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x105B 
;;104	MOVF	r0x103A,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x105F 
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1060 
_00141_DS_:
	.line	217; "lib/lcd44780.c"	di = n % base;
	BANKSEL	r0x103F
	CLRF	r0x103F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105F 
;;103	MOVF	r0x103E,W
	MOVF	r0x103A,W
	MOVWF	r0x103E
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
	MOVLW	0x00
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1039,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1038,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	__moduint
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	__moduint
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1061, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
;;1	MOVWF	r0x1040
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	BANKSEL	r0x1041
	MOVWF	r0x1041
	MOVWF	r0x1042
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1061, size=1, left -=-, size=0, right AOP_REG=r0x105E, size=1
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	.line	218; "lib/lcd44780.c"	buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	MOVF	r0x103D,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x1061 
	MOVWF	r0x1043
	MOVWF	r0x1041
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	589
;; 	line = 714 result AOP_REG=r0x105E, size=1, left AOP_REG=r0x105E, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x105E 
	INCF	r0x103D,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1064, size=2, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x1061 
;;105	MOVF	r0x1041,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x1064 
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1094:addSign
;;	1126 rIdx = r0x1065 
	CLRF	r0x1044
;; >>> ../../../../src/pic14/genarith.c:1095:addSign
	BTFSC	r0x1043,7
;; >>> ../../../../src/pic14/genarith.c:1096:addSign
;;	1126 rIdx = r0x1065 
	DECF	r0x1044,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_print_number_buf_65536_53, val 0, const = 0
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_53
;; 	line = 714 result AOP_REG=r0x1064, size=2, left AOP_PCODE=_lcd_print_number_buf_65536_53, size=2, right AOP_REG=r0x1064, size=2
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_53
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x1064 
	MOVF	r0x1043,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_lcd_print_number_buf_65536_53 + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1043
;; >>> ../../../../src/pic14/genarith.c:880:genPlus
	MOVLW	high (_lcd_print_number_buf_65536_53 + 0)
;; >>> ../../../../src/pic14/genarith.c:881:genPlus
;;	1126 rIdx = r0x1061 
	MOVWF	r0x1041
;; >>> ../../../../src/pic14/genarith.c:883:genPlus
;;	1126 rIdx = r0x1065 
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/genarith.c:884:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:885:genPlus
;;	1126 rIdx = r0x1065 
	INCFSZ	r0x1044,W
;; >>> ../../../../src/pic14/genarith.c:886:genPlus
;;	1126 rIdx = r0x1061 
	ADDWF	r0x1041,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;unsigned compare: left < lit(0xA=10), size=1
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x0a
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1063 
	SUBWF	r0x1042,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=15, label offset 38
	GOTO	_00153_DS_
;;genSkipc:3307: created from rifx:0x7ffd7264a3d0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1065, size=1, left AOP_REG=r0x1063, size=1, right AOP_LIT=0x30, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  left and result aren't same	genAddLit  537
;; >>> ../../../../src/pic14/genarith.c:581:genAddLit
	MOVLW	0x30
;; >>> ../../../../src/pic14/genarith.c:582:genAddLit
;;	1126 rIdx = r0x1063 
	ADDWF	r0x1042,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1044
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=16, label offset 38
	GOTO	_00154_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1066, size=1, left -=-, size=0, right AOP_REG=r0x1063, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1063 
_00153_DS_:
	BANKSEL	r0x1042
	MOVF	r0x1042,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1045
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1065, size=1, left AOP_REG=r0x1066, size=1, right AOP_LIT=0x37, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;;	adding lit to something. size 1
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  left and result aren't same	genAddLit  537
;; >>> ../../../../src/pic14/genarith.c:581:genAddLit
	MOVLW	0x37
;; >>> ../../../../src/pic14/genarith.c:582:genAddLit
;;	1126 rIdx = r0x1066 
	ADDWF	r0x1045,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1044
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	708 register type nRegs=2
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;; 	line = 6855 result AOP_REG=r0x1064, size=2, left -=-, size=0, right AOP_REG=r0x1065, size=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
_00154_DS_:
	BANKSEL	r0x1043
	MOVF	r0x1043,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1041
	BTFSC	r0x1041,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6605:emitPtrPut
;;	1126 rIdx = r0x1065 
	MOVF	r0x1044,W
;; >>> ../../../../src/pic14/gen.c:6606:emitPtrPut
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105F 
	.line	220; "lib/lcd44780.c"	n /= base;
	BANKSEL	r0x103E
	MOVF	r0x103E,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVWF	STK02
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
	MOVF	r0x103F,W
;;	708 register type nRegs=2
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1039,W
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1038,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	__divuint
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	__divuint
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1059, size=2, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1038
	MOVWF	r0x1038
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	.line	221; "lib/lcd44780.c"	} while(n > 0);
	MOVWF	r0x1039
	IORWF	r0x1038,W
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7041:genIfx
;; ***	popGetLabel  key=3, label offset 38
	GOTO	_00141_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1059, size=1, left -=-, size=0, right AOP_REG=r0x105E, size=1
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	.line	223; "lib/lcd44780.c"	while(pad-- >= i) lcd_putch(padchar);
	MOVF	r0x103D,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x1059 
	MOVWF	r0x1039
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105C, size=1
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x103B,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1038
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
_00144_DS_:
	BANKSEL	r0x1038
	MOVF	r0x1038,W
;; >>> ../../../../src/pic14/gen.c:3522:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3523:genCmp
	MOVWF	r0x1046
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
	MOVF	r0x1039,W
;; >>> ../../../../src/pic14/gen.c:3525:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3526:genCmp
	SUBWF	r0x1046,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=11, label offset 38
	GOTO	_00149_DS_
;;genSkipc:3307: created from rifx:0x7ffd7264a3d0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=1
;;	589
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;; ../../../../src/pic14/genarith.c:250:genAddLit2byte *{*
;; >>> ../../../../src/pic14/genarith.c:259:genAddLit2byte
;;	1126 rIdx = r0x105A 
	DECF	r0x1038,F
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x103C,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=6, label offset 38
	GOTO	_00144_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;signed compare: left >= lit(0x1=1), size=1, mask=ff
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
_00149_DS_:
	.line	225; "lib/lcd44780.c"	for(; i > 0; i--) lcd_putch((char)buf[(int16_t)i - 1]);
	BANKSEL	r0x1039
	MOVF	r0x1039,W
;; >>> ../../../../src/pic14/gen.c:3514:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3515:genCmp
	ADDLW	0x7f
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3304:genSkipc
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=13, label offset 38
	GOTO	_00151_DS_
;;genSkipc:3307: created from rifx:0x7ffd7264a3d0
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;;; ../../../../src/pic14/genarith.c:286:genAddLit *{*
;; ***	genAddLit  287
;;  left and result aren't same	genAddLit  537
;; >>> ../../../../src/pic14/genarith.c:569:genAddLit
;;	1126 rIdx = r0x1059 
	DECF	r0x1039,W
;;; ../../../../src/pic14/genarith.c:270:emitMOVWF *{*
;; >>> ../../../../src/pic14/genarith.c:274:emitMOVWF
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1038
	MOVWF	r0x103A
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1094:addSign
;;	1126 rIdx = r0x105C 
	CLRF	r0x103B
;; >>> ../../../../src/pic14/genarith.c:1095:addSign
	BTFSC	r0x103A,7
;; >>> ../../../../src/pic14/genarith.c:1096:addSign
;;	1126 rIdx = r0x105C 
	DECF	r0x103B,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_print_number_buf_65536_53, val 0, const = 0
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_53
;; 	line = 714 result AOP_REG=r0x105B, size=2, left AOP_PCODE=_lcd_print_number_buf_65536_53, size=2, right AOP_REG=r0x105B, size=2
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_print_number_buf_65536_53
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x105B 
	MOVF	r0x103A,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_lcd_print_number_buf_65536_53 + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x105B 
	MOVWF	r0x103A
;; >>> ../../../../src/pic14/genarith.c:849:genPlus
;;	1126 rIdx = r0x105C 
	MOVF	r0x103B,W
;; >>> ../../../../src/pic14/genarith.c:850:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:851:genPlus
;;	1126 rIdx = r0x105C 
	INCFSZ	r0x103B,W
;; >>> ../../../../src/pic14/genarith.c:852:genPlus
	ADDLW	high (_lcd_print_number_buf_65536_53 + 0)
;; >>> ../../../../src/pic14/genarith.c:853:genPlus
;;	1126 rIdx = r0x105C 
	MOVWF	r0x103B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	708 register type nRegs=2
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x103A,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x103B
	BTFSC	r0x103B,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	BANKSEL	r0x103C
	MOVWF	r0x103C
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1059, size=1, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; ***	genAssign  7253
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x1038
	MOVF	r0x1038,W
;; >>> ../../../../src/pic14/gen.c:7280:genAssign
;;	1126 rIdx = r0x1059 
	MOVWF	r0x1039
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=11, label offset 38
	GOTO	_00149_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00151_DS_:
	.line	227; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_print_number
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=25previous max_key=5 
S_lcd44780__lcd_putch	code
_lcd_putch:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1058, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	.line	170; "lib/lcd44780.c"	lcd_putch(char value) {
	BANKSEL	r0x1037
	MOVWF	r0x1037
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	171; "lib/lcd44780.c"	lcd_send((unsigned char)value, HIGH);
	MOVLW	0x01
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1058 
	MOVF	r0x1037,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_send
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_send
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	172; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_putch
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=19previous max_key=2 
S_lcd44780__lcd_puts	code
_lcd_puts:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1050, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	.line	163; "lib/lcd44780.c"	lcd_puts(const char* string) {
	BANKSEL	r0x1047
	MOVWF	r0x1047
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1048
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1050 
	MOVWF	r0x1049
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1053, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1053 
	.line	165; "lib/lcd44780.c"	for(i = 0; string[i]; i++) lcd_putch(string[i]);
	CLRF	r0x104A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;;	708 register type nRegs=3
;; 	line = 714 result AOP_REG=r0x1054, size=3, left AOP_REG=r0x1050, size=3, right AOP_REG=r0x1053, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  814
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x1053 
_00128_DS_:
	BANKSEL	r0x104A
	MOVF	r0x104A,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
;;	1126 rIdx = r0x1050 
	ADDWF	r0x1049,W
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1054 
	MOVWF	r0x104B
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
	MOVF	r0x1048,W
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x1055 
	MOVWF	r0x104C
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
;;101	MOVF	r0x1047,W
;; >>> ../../../../src/pic14/genarith.c:1024:genPlus
;;	1126 rIdx = r0x1056 
;;99	MOVWF	r0x104D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x1057, size=1, left AOP_REG=r0x1054, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1054 
	MOVF	r0x104B,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
	MOVF	r0x104C,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
;;100	MOVF	r0x104D,W
	MOVF	r0x1047,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
;;	popGetExternal 1008 added extern __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1057 
	BANKSEL	r0x104E
	MOVWF	r0x104E
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
	MOVF	r0x104E,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=5, label offset 25
	GOTO	_00130_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
	MOVF	r0x104E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	589
;; 	line = 714 result AOP_REG=r0x1053, size=1, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1053 
	BANKSEL	r0x104A
	INCF	r0x104A,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=3, label offset 25
	GOTO	_00128_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00130_DS_:
	.line	166; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_puts
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=15previous max_key=0 
S_lcd44780__lcd_gotoxy	code
_lcd_gotoxy:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104A 
	.line	135; "lib/lcd44780.c"	lcd_gotoxy(uint8_t col, uint8_t row) {
	BANKSEL	r0x104F
	MOVWF	r0x104F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104B, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104B 
	MOVWF	r0x1050
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 0, const = 0
;;; ../../../../src/pic14/gen.c:6767:genDataPointerSet *{*
;; ***	genDataPointerSet  6768
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;; >>> ../../../../src/pic14/gen.c:6809:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _lcd_gotoxy_row_offsets_65536_45
	.line	137; "lib/lcd44780.c"	uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	BANKSEL	_lcd_gotoxy_row_offsets_65536_45
	CLRF	(_lcd_gotoxy_row_offsets_65536_45 + 0)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 1, const = 0
;;; ../../../../src/pic14/gen.c:6767:genDataPointerSet *{*
;; ***	genDataPointerSet  6768
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;; >>> ../../../../src/pic14/gen.c:6804:genDataPointerSet
	MOVLW	0x40
;; >>> ../../../../src/pic14/gen.c:6805:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _lcd_gotoxy_row_offsets_65536_45
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 2, const = 0
;;; ../../../../src/pic14/gen.c:6767:genDataPointerSet *{*
;; ***	genDataPointerSet  6768
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;; >>> ../../../../src/pic14/gen.c:6804:genDataPointerSet
	MOVLW	0x14
;; >>> ../../../../src/pic14/gen.c:6805:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _lcd_gotoxy_row_offsets_65536_45
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 2)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 3, const = 0
;;; ../../../../src/pic14/gen.c:6767:genDataPointerSet *{*
;; ***	genDataPointerSet  6768
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;; >>> ../../../../src/pic14/gen.c:6804:genDataPointerSet
	MOVLW	0x54
;; >>> ../../../../src/pic14/gen.c:6805:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _lcd_gotoxy_row_offsets_65536_45
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;; ***	aopForSym 324
;;	336 sym->rname = _LCD_lines, size = 1
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_DIR=_LCD_lines, size=1, right AOP_LIT=0x01, size=1
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1027
;;	1041  _LCD_lines   offset=0 - had to alloc by reg name
	.line	146; "lib/lcd44780.c"	if(LCD_lines == 1) {
	BANKSEL	_LCD_lines
	MOVF	_LCD_lines,W
;; >>> ../../../../src/pic14/gen.c:3769:genCmpEq
	XORLW	0x01
;; >>> ../../../../src/pic14/gen.c:3771:genCmpEq
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3774:genCmpEq
;; ***	popGetLabel  key=2, label offset 19
	GOTO	_00121_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 1, const = 0
;;; ../../../../src/pic14/gen.c:6767:genDataPointerSet *{*
;; ***	genDataPointerSet  6768
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;; >>> ../../../../src/pic14/gen.c:6804:genDataPointerSet
	.line	147; "lib/lcd44780.c"	row_offsets[1] = 0x14;
	MOVLW	0x14
;; >>> ../../../../src/pic14/gen.c:6805:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _lcd_gotoxy_row_offsets_65536_45
	BANKSEL	_lcd_gotoxy_row_offsets_65536_45
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 1)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 2, const = 0
;;; ../../../../src/pic14/gen.c:6767:genDataPointerSet *{*
;; ***	genDataPointerSet  6768
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;; >>> ../../../../src/pic14/gen.c:6804:genDataPointerSet
	.line	148; "lib/lcd44780.c"	row_offsets[2] = 0x28;
	MOVLW	0x28
;; >>> ../../../../src/pic14/gen.c:6805:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _lcd_gotoxy_row_offsets_65536_45
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 2)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 3, const = 0
;;; ../../../../src/pic14/gen.c:6767:genDataPointerSet *{*
;; ***	genDataPointerSet  6768
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;; >>> ../../../../src/pic14/gen.c:6804:genDataPointerSet
	.line	149; "lib/lcd44780.c"	row_offsets[3] = 0x3C;
	MOVLW	0x3c
;; >>> ../../../../src/pic14/gen.c:6805:genDataPointerSet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _lcd_gotoxy_row_offsets_65536_45
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 3)
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _lcd_gotoxy_row_offsets_65536_45, val 0, const = 0
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_gotoxy_row_offsets_65536_45
;; 	line = 714 result AOP_REG=r0x104B, size=2, left AOP_PCODE=_lcd_gotoxy_row_offsets_65536_45, size=2, right AOP_REG=r0x104B, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_lcd_gotoxy_row_offsets_65536_45
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x104B 
_00121_DS_:
	.line	156; "lib/lcd44780.c"	lcd_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
	BANKSEL	r0x1050
	MOVF	r0x1050,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_lcd_gotoxy_row_offsets_65536_45 + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x104B 
	MOVWF	r0x1050
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_lcd_gotoxy_row_offsets_65536_45 + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x104C 
	MOVWF	r0x1051
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	708 register type nRegs=2
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104B 
	MOVF	r0x1050,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BANKSEL	r0x1051
	BTFSC	r0x1051,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6027:emitPtrGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
;;1	MOVWF	r0x1052
	BANKSEL	r0x104F
	ADDWF	r0x104F,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4331 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x80, size=1
;; 	line = 4357 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x80, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	BSF	r0x104F,7
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104A 
	MOVF	r0x104F,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_command
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	157; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_gotoxy
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=8previous max_key=3 
S_lcd44780__lcd_command	code
_lcd_command:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1049 
	.line	127; "lib/lcd44780.c"	lcd_command(uint8_t value) {
	BANKSEL	r0x102E
	MOVWF	r0x102E
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	128; "lib/lcd44780.c"	lcd_send(value, LOW);
	MOVLW	0x00
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> ../../../../src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x102E,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_send
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_send
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	129; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_command
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=0 
S_lcd44780__lcd_send	code
_lcd_send:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1047, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	.line	103; "lib/lcd44780.c"	lcd_send(uint8_t value, uint8_t mode) {
	BANKSEL	r0x102C
	MOVWF	r0x102C
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	MOVWF	r0x102D
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	.line	104; "lib/lcd44780.c"	if(mode) {
	MOVF	r0x102D,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=2, label offset 8
	GOTO	_00110_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4357 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	105; "lib/lcd44780.c"	RS_HIGH();
	BANKSEL	_PORTB
	BSF	_PORTB,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=3, label offset 8
	GOTO	_00111_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xfb, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
_00110_DS_:
	.line	107; "lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,2
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5634:genGenericShift *{*
;; ***	genGenericShift  5637
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> ../../../../src/pic14/gen.c:5522:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1047 
_00111_DS_:
	.line	116; "lib/lcd44780.c"	lcd_write4bits(value >> 4); // Upper 4 bits first
	BANKSEL	r0x102C
	SWAPF	r0x102C,W
;; >>> ../../../../src/pic14/gen.c:5523:shiftRight_Left2ResultLit
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5524:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1048 
	MOVWF	r0x102D
	PAGESEL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	589
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1047 
	.line	117; "lib/lcd44780.c"	lcd_write4bits(value);      // Lower 4 bits second
	BANKSEL	r0x102C
	MOVF	r0x102C,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_lcd_write4bits
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	119; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_send
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

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
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_lcd44780__lcd_write4bits	code
_lcd_write4bits:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1045, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1045 
	BANKSEL	r0x102B
	MOVWF	r0x102B
	.line	34; "lib/lcd44780.c"	lcd_write4bits(uint8_t value) {
	MOVWF	r0x102A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x0f, size=1
;; >>> ../../../../src/pic14/gen.c:4232:genAnd
	.line	39; "lib/lcd44780.c"	OUTB &= 0b00001111;
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:4234:genAnd
;;	1027
;;	1045  _PORTB   offset=0
	BANKSEL	_PORTB
	ANDWF	_PORTB,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1046, size=1, left -=-, size=0, right AOP_REG=r0x1045, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1045 
;;102	MOVF	r0x102A,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1046 
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:5634:genGenericShift *{*
;; ***	genGenericShift  5637
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> ../../../../src/pic14/gen.c:5347:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x1046 
	.line	40; "lib/lcd44780.c"	OUTB |= value << 4;
	BANKSEL	r0x102B
	SWAPF	r0x102B,W
;; >>> ../../../../src/pic14/gen.c:5348:shiftLeft_Left2ResultLit
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:5349:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x1045 
	MOVWF	r0x102A
	BANKSEL	_PORTB
	IORWF	_PORTB,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4331 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4357 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x08, size=1
;; >>> ../../../../src/pic14/gen.c:4508:genOr
	.line	55; "lib/lcd44780.c"	lcd_pulse_enable();
	BSF	_PORTB,3
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x04
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	589
;; 	line = 4059 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0xf7, size=1
;; >>> ../../../../src/pic14/gen.c:4226:genAnd
	BANKSEL	_PORTB
	BCF	_PORTB,3
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;; 	2158 left AOP_LIT
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	0x64
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_delay_us
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	60; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_write4bits
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*


;	code size estimation:
;	  388+  162 =   550 instructions ( 1424 byte)

	end
