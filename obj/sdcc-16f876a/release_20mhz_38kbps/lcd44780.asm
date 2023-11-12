;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"lib/lcd44780.c"
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
_LCD_function	res	1

UD_lcd44780_1	udata
_LCD_ctrl	res	1

UD_lcd44780_2	udata
_LCD_mode	res	1

UD_lcd44780_3	udata
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
S_lcd44780__lcd_init	code
_lcd_init:
; 2 exit points
;	.line	489; "lib/lcd44780.c"	lcd_init(char fourbitmode) {
	BANKSEL	r0x1028
	MOVWF	r0x1028
;	.line	491; "lib/lcd44780.c"	LCD_ctrl = 0;
	BANKSEL	_LCD_ctrl
	CLRF	_LCD_ctrl
;	.line	492; "lib/lcd44780.c"	LCD_function = (fourbitmode ? LCD_4BITMODE : LCD_8BITMODE);
	BANKSEL	r0x1028
	MOVF	r0x1028,W
	BTFSC	STATUS,2
	GOTO	_00208_DS_
	CLRF	r0x1028
	CLRF	r0x1029
	GOTO	_00209_DS_
_00208_DS_:
	MOVLW	0x10
	BANKSEL	r0x1028
	MOVWF	r0x1028
	CLRF	r0x1029
_00209_DS_:
	BANKSEL	r0x1028
	MOVF	r0x1028,W
	BANKSEL	_LCD_function
	MOVWF	_LCD_function
;	.line	494; "lib/lcd44780.c"	LCD_lines = 0;
	BANKSEL	_LCD_lines
	CLRF	_LCD_lines
;	.line	496; "lib/lcd44780.c"	LCD_mode = 0;
	BANKSEL	_LCD_mode
	CLRF	_LCD_mode
;	.line	498; "lib/lcd44780.c"	RS_TRIS();
	BANKSEL	_TRISB
	BCF	_TRISB,2
;	.line	499; "lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,2
;	.line	504; "lib/lcd44780.c"	EN_TRIS();
	BANKSEL	_TRISB
	BCF	_TRISB,3
;	.line	505; "lib/lcd44780.c"	EN_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,3
;	.line	507; "lib/lcd44780.c"	DATA_TRIS();
	MOVLW	0x0f
	ANDWF	_PORTB,F
;	.line	517; "lib/lcd44780.c"	}
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
S_lcd44780__lcd_begin	code
_lcd_begin:
; 2 exit points
;	.line	416; "lib/lcd44780.c"	lcd_begin(uint8_t lines, uint8_t dotsize) {
	BANKSEL	r0x102F
	MOVWF	r0x102F
	MOVF	STK00,W
	MOVWF	r0x1030
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x2=2), size=1
;	.line	417; "lib/lcd44780.c"	if(lines > 1)
	MOVLW	0x02
;	.line	418; "lib/lcd44780.c"	LCD_function |= LCD_2LINE;
	SUBWF	r0x102F,W
;	.line	421; "lib/lcd44780.c"	LCD_lines = lines;
	BTFSS	STATUS,0
	GOTO	_00001_DS_
	BANKSEL	_LCD_function
	BSF	_LCD_function,3
_00001_DS_:
	BANKSEL	r0x102F
	MOVF	r0x102F,W
	BANKSEL	_LCD_lines
	MOVWF	_LCD_lines
;	.line	425; "lib/lcd44780.c"	if((dotsize != 0) && (lines == 1))
	BANKSEL	r0x1030
	MOVF	r0x1030,W
	BTFSC	STATUS,2
	GOTO	_00002_DS_
	MOVF	r0x102F,W
;	.line	426; "lib/lcd44780.c"	LCD_function |= LCD_5x10DOTS;
	XORLW	0x01
;	.line	428; "lib/lcd44780.c"	delay_ms(15); // Wait more than 15 ms after VDD rises to 4.5V
	BTFSS	STATUS,2
	GOTO	_00002_DS_
	BANKSEL	_LCD_function
	BSF	_LCD_function,2
_00002_DS_:
	MOVLW	0x0f
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	431; "lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,2
;	.line	432; "lib/lcd44780.c"	EN_LOW();
	BCF	_PORTB,3
;	.line	435; "lib/lcd44780.c"	if(!(LCD_function & LCD_8BITMODE)) {
	BANKSEL	_LCD_function
	MOVF	_LCD_function,W
	BANKSEL	r0x102F
	MOVWF	r0x102F
	BTFSC	r0x102F,4
	GOTO	_00200_DS_
;	.line	439; "lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03
	PAGESEL	_lcd_write4bits
	CALL	_lcd_write4bits
	PAGESEL	$
;	.line	440; "lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	442; "lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03
	PAGESEL	_lcd_write4bits
	CALL	_lcd_write4bits
	PAGESEL	$
;	.line	443; "lib/lcd44780.c"	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
	PAGESEL	_delay_us
	CALL	_delay_us
	PAGESEL	$
;	.line	445; "lib/lcd44780.c"	lcd_write4bits(0x03);
	MOVLW	0x03
	PAGESEL	_lcd_write4bits
	CALL	_lcd_write4bits
	PAGESEL	$
;	.line	446; "lib/lcd44780.c"	delay_us(150); // Wait more than 100 μs
	MOVLW	0x96
	PAGESEL	_delay_us
	CALL	_delay_us
	PAGESEL	$
;	.line	448; "lib/lcd44780.c"	lcd_write4bits(0x02);
	MOVLW	0x02
	PAGESEL	_lcd_write4bits
	CALL	_lcd_write4bits
	PAGESEL	$
	GOTO	_00201_DS_
_00200_DS_:
;	.line	455; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	456; "lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	459; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	460; "lib/lcd44780.c"	delay_ms(5); // Wait for more than 4.1 ms
	MOVLW	0x05
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	464; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
_00201_DS_:
;	.line	468; "lib/lcd44780.c"	lcd_command(LCD_FUNCTIONSET | LCD_function);
	MOVLW	0x20
	BANKSEL	_LCD_function
	IORWF	_LCD_function,W
	BANKSEL	r0x102F
	MOVWF	r0x102F
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	471; "lib/lcd44780.c"	LCD_ctrl = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
	MOVLW	0x04
	BANKSEL	_LCD_ctrl
	MOVWF	_LCD_ctrl
;	.line	472; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x0c
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	475; "lib/lcd44780.c"	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	476; "lib/lcd44780.c"	delay_ms(2);
	MOVLW	0x02
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	479; "lib/lcd44780.c"	LCD_mode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
	MOVLW	0x02
	BANKSEL	_LCD_mode
	MOVWF	_LCD_mode
;	.line	481; "lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x06
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	482; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_begin

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
S_lcd44780__lcd_autoscroll	code
_lcd_autoscroll:
; 2 exit points
;	.line	398; "lib/lcd44780.c"	LCD_mode |= LCD_ENTRYSHIFTINCREMENT;
	BANKSEL	_LCD_mode
	BSF	_LCD_mode,0
;	.line	399; "lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x04
	IORWF	_LCD_mode,W
;;1	MOVWF	r0x1031
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	400; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_autoscroll

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
S_lcd44780__lcd_left_to_right	code
_lcd_left_to_right:
; 2 exit points
;	.line	378; "lib/lcd44780.c"	LCD_mode |= LCD_ENTRYLEFT;
	BANKSEL	_LCD_mode
	BSF	_LCD_mode,1
;	.line	379; "lib/lcd44780.c"	lcd_command(LCD_ENTRYMODESET | LCD_mode);
	MOVLW	0x04
	IORWF	_LCD_mode,W
;;1	MOVWF	r0x1032
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	380; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_left_to_right

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
S_lcd44780__lcd_blink	code
_lcd_blink:
; 2 exit points
;	.line	351; "lib/lcd44780.c"	LCD_ctrl |= LCD_BLINKON;
	BANKSEL	_LCD_ctrl
	BSF	_LCD_ctrl,0
;	.line	352; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
	IORWF	_LCD_ctrl,W
;;1	MOVWF	r0x1033
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	353; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_blink

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
S_lcd44780__lcd_cursor	code
_lcd_cursor:
; 2 exit points
;	.line	332; "lib/lcd44780.c"	LCD_ctrl |= LCD_CURSORON;
	BANKSEL	_LCD_ctrl
	BSF	_LCD_ctrl,1
;	.line	333; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
	IORWF	_LCD_ctrl,W
;;1	MOVWF	r0x1034
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	334; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_cursor

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
S_lcd44780__lcd_no_cursor	code
_lcd_no_cursor:
; 2 exit points
;	.line	323; "lib/lcd44780.c"	LCD_ctrl &= ~LCD_CURSORON;
	BANKSEL	_LCD_ctrl
	BCF	_LCD_ctrl,1
;	.line	324; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
	IORWF	_LCD_ctrl,W
;;1	MOVWF	r0x1035
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	325; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_no_cursor

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
S_lcd44780__lcd_display	code
_lcd_display:
; 2 exit points
;	.line	313; "lib/lcd44780.c"	LCD_ctrl |= LCD_DISPLAYON;
	BANKSEL	_LCD_ctrl
	BSF	_LCD_ctrl,2
;	.line	314; "lib/lcd44780.c"	lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
	MOVLW	0x08
	IORWF	_LCD_ctrl,W
;;1	MOVWF	r0x1036
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	315; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_display

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
S_lcd44780__lcd_clear	code
_lcd_clear:
; 2 exit points
;	.line	293; "lib/lcd44780.c"	lcd_command(LCD_CLEARDISPLAY); // clear display, set cursor position to zero
	MOVLW	0x01
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	294; "lib/lcd44780.c"	delay_ms(2);                   // Wait for more than 4.1 ms
	MOVLW	0x02
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	296; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_clear

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
S_lcd44780__lcd_home	code
_lcd_home:
; 2 exit points
;	.line	282; "lib/lcd44780.c"	lcd_command(LCD_RETURNHOME);
	MOVLW	0x02
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	283; "lib/lcd44780.c"	delay_ms(2); // Wait for more than 4.1 ms
	MOVLW	0x02
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	285; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_home

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
S_lcd44780__lcd_print_number	code
_lcd_print_number:
; 2 exit points
;	.line	197; "lib/lcd44780.c"	lcd_print_number(uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
	BANKSEL	r0x1038
	MOVWF	r0x1038
	MOVF	STK00,W
	MOVWF	r0x1039
	MOVF	STK01,W
	MOVWF	r0x103A
	MOVF	STK02,W
	MOVWF	r0x103B
;	.line	201; "lib/lcd44780.c"	char padchar = ' ';
	MOVLW	0x20
	MOVWF	r0x103C
;;signed compare: left < lit(0x0=0), size=1, mask=ff
;	.line	203; "lib/lcd44780.c"	if(pad < 0) {
	BSF	STATUS,0
	BTFSS	r0x103B,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00157_DS_
;;genSkipc:3307: created from rifx:0x7ffeaf136ee0
;	.line	204; "lib/lcd44780.c"	pad = -pad;
	COMF	r0x103B,F
	INCF	r0x103B,F
;	.line	205; "lib/lcd44780.c"	padchar = '0';
	MOVLW	0x30
	MOVWF	r0x103C
_00157_DS_:
;	.line	213; "lib/lcd44780.c"	do {
	BANKSEL	r0x103D
	CLRF	r0x103D
;;104	MOVF	r0x103A,W
_00141_DS_:
;	.line	217; "lib/lcd44780.c"	di = n % base;
	BANKSEL	r0x103F
	CLRF	r0x103F
;;103	MOVF	r0x103E,W
	MOVF	r0x103A,W
	MOVWF	r0x103E
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVF	r0x1039,W
	MOVWF	STK00
	MOVF	r0x1038,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
;;1	MOVWF	r0x1040
	MOVF	STK00,W
	BANKSEL	r0x1041
	MOVWF	r0x1041
	MOVWF	r0x1042
;	.line	218; "lib/lcd44780.c"	buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	MOVF	r0x103D,W
	MOVWF	r0x1043
	MOVWF	r0x1041
	INCF	r0x103D,F
;;105	MOVF	r0x1041,W
	CLRF	r0x1044
	BTFSC	r0x1043,7
	DECF	r0x1044,F
	MOVF	r0x1043,W
	ADDLW	(_lcd_print_number_buf_65536_53 + 0)
	MOVWF	r0x1043
	MOVLW	high (_lcd_print_number_buf_65536_53 + 0)
	MOVWF	r0x1041
	MOVF	r0x1044,W
	BTFSC	STATUS,0
	INCFSZ	r0x1044,W
	ADDWF	r0x1041,F
;;unsigned compare: left < lit(0xA=10), size=1
	MOVLW	0x0a
	SUBWF	r0x1042,W
	BTFSC	STATUS,0
	GOTO	_00153_DS_
;;genSkipc:3307: created from rifx:0x7ffeaf136ee0
	MOVLW	0x30
	ADDWF	r0x1042,W
	MOVWF	r0x1044
	GOTO	_00154_DS_
_00153_DS_:
	BANKSEL	r0x1042
	MOVF	r0x1042,W
	MOVWF	r0x1045
	MOVLW	0x37
	ADDWF	r0x1045,W
	MOVWF	r0x1044
_00154_DS_:
	BANKSEL	r0x1043
	MOVF	r0x1043,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1041
	BTFSC	r0x1041,0
	BSF	STATUS,7
	MOVF	r0x1044,W
	BANKSEL	INDF
	MOVWF	INDF
;	.line	220; "lib/lcd44780.c"	n /= base;
	BANKSEL	r0x103E
	MOVF	r0x103E,W
	MOVWF	STK02
	MOVF	r0x103F,W
	MOVWF	STK01
	MOVF	r0x1039,W
	MOVWF	STK00
	MOVF	r0x1038,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1038
	MOVWF	r0x1038
	MOVF	STK00,W
;	.line	221; "lib/lcd44780.c"	} while(n > 0);
	MOVWF	r0x1039
	IORWF	r0x1038,W
	BTFSS	STATUS,2
	GOTO	_00141_DS_
;	.line	223; "lib/lcd44780.c"	while(pad-- >= i) lcd_putch(padchar);
	MOVF	r0x103D,W
	MOVWF	r0x1039
	MOVF	r0x103B,W
	MOVWF	r0x1038
_00144_DS_:
	BANKSEL	r0x1038
	MOVF	r0x1038,W
	ADDLW	0x80
	MOVWF	r0x1046
	MOVF	r0x1039,W
	ADDLW	0x80
	SUBWF	r0x1046,W
	BTFSS	STATUS,0
	GOTO	_00149_DS_
;;genSkipc:3307: created from rifx:0x7ffeaf136ee0
	DECF	r0x1038,F
	MOVF	r0x103C,W
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
	GOTO	_00144_DS_
;;swapping arguments (AOP_TYPEs 1/2)
;;signed compare: left >= lit(0x1=1), size=1, mask=ff
_00149_DS_:
;	.line	225; "lib/lcd44780.c"	for(; i > 0; i--) lcd_putch((char)buf[(int16_t)i - 1]);
	BANKSEL	r0x1039
	MOVF	r0x1039,W
	ADDLW	0x80
	ADDLW	0x7f
	BTFSS	STATUS,0
	GOTO	_00151_DS_
;;genSkipc:3307: created from rifx:0x7ffeaf136ee0
	DECF	r0x1039,W
	MOVWF	r0x1038
	MOVWF	r0x103A
	CLRF	r0x103B
	BTFSC	r0x103A,7
	DECF	r0x103B,F
	MOVF	r0x103A,W
	ADDLW	(_lcd_print_number_buf_65536_53 + 0)
	MOVWF	r0x103A
	MOVF	r0x103B,W
	BTFSC	STATUS,0
	INCFSZ	r0x103B,W
	ADDLW	high (_lcd_print_number_buf_65536_53 + 0)
	MOVWF	r0x103B
	MOVF	r0x103A,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x103B
	BTFSC	r0x103B,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x103C
	MOVWF	r0x103C
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
	BANKSEL	r0x1038
	MOVF	r0x1038,W
	MOVWF	r0x1039
	GOTO	_00149_DS_
_00151_DS_:
;	.line	227; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_print_number

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
S_lcd44780__lcd_putch	code
_lcd_putch:
; 2 exit points
;	.line	170; "lib/lcd44780.c"	lcd_putch(char value) {
	BANKSEL	r0x1037
	MOVWF	r0x1037
;	.line	171; "lib/lcd44780.c"	lcd_send((unsigned char)value, HIGH);
	MOVLW	0x01
	MOVWF	STK00
	MOVF	r0x1037,W
	PAGESEL	_lcd_send
	CALL	_lcd_send
	PAGESEL	$
;	.line	172; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_putch

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
S_lcd44780__lcd_puts	code
_lcd_puts:
; 2 exit points
;	.line	163; "lib/lcd44780.c"	lcd_puts(const char* string) {
	BANKSEL	r0x1047
	MOVWF	r0x1047
	MOVF	STK00,W
	MOVWF	r0x1048
	MOVF	STK01,W
	MOVWF	r0x1049
;	.line	165; "lib/lcd44780.c"	for(i = 0; string[i]; i++) lcd_putch(string[i]);
	CLRF	r0x104A
_00128_DS_:
	BANKSEL	r0x104A
	MOVF	r0x104A,W
	ADDWF	r0x1049,W
	MOVWF	r0x104B
	MOVF	r0x1048,W
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x104C
;;101	MOVF	r0x1047,W
;;99	MOVWF	r0x104D
	MOVF	r0x104B,W
	MOVWF	STK01
	MOVF	r0x104C,W
	MOVWF	STK00
;;100	MOVF	r0x104D,W
	MOVF	r0x1047,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x104E
	MOVWF	r0x104E
	MOVF	r0x104E,W
	BTFSC	STATUS,2
	GOTO	_00130_DS_
	MOVF	r0x104E,W
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
	BANKSEL	r0x104A
	INCF	r0x104A,F
	GOTO	_00128_DS_
_00130_DS_:
;	.line	166; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_puts

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
S_lcd44780__lcd_gotoxy	code
_lcd_gotoxy:
; 2 exit points
;	.line	135; "lib/lcd44780.c"	lcd_gotoxy(uint8_t col, uint8_t row) {
	BANKSEL	r0x104F
	MOVWF	r0x104F
	MOVF	STK00,W
	MOVWF	r0x1050
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;	.line	137; "lib/lcd44780.c"	uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	BANKSEL	_lcd_gotoxy_row_offsets_65536_45
	CLRF	(_lcd_gotoxy_row_offsets_65536_45 + 0)
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x40
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 1)
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x14
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 2)
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x54
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 3)
;	.line	146; "lib/lcd44780.c"	if(LCD_lines == 1) {
	BANKSEL	_LCD_lines
	MOVF	_LCD_lines,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00121_DS_
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;	.line	147; "lib/lcd44780.c"	row_offsets[1] = 0x14;
	MOVLW	0x14
	BANKSEL	_lcd_gotoxy_row_offsets_65536_45
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 1)
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;	.line	148; "lib/lcd44780.c"	row_offsets[2] = 0x28;
	MOVLW	0x28
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 2)
;;../../../../src/pic14/gen.c:6795: size=0, offset=0, AOP_TYPE(res)=8
;	.line	149; "lib/lcd44780.c"	row_offsets[3] = 0x3C;
	MOVLW	0x3c
	MOVWF	(_lcd_gotoxy_row_offsets_65536_45 + 3)
_00121_DS_:
;	.line	156; "lib/lcd44780.c"	lcd_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
	BANKSEL	r0x1050
	MOVF	r0x1050,W
	ADDLW	(_lcd_gotoxy_row_offsets_65536_45 + 0)
	MOVWF	r0x1050
	MOVLW	high (_lcd_gotoxy_row_offsets_65536_45 + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1051
	MOVF	r0x1050,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1051
	BTFSC	r0x1051,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
;;1	MOVWF	r0x1052
	BANKSEL	r0x104F
	ADDWF	r0x104F,F
	BSF	r0x104F,7
	MOVF	r0x104F,W
	PAGESEL	_lcd_command
	CALL	_lcd_command
	PAGESEL	$
;	.line	157; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_gotoxy

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
S_lcd44780__lcd_command	code
_lcd_command:
; 2 exit points
;	.line	127; "lib/lcd44780.c"	lcd_command(uint8_t value) {
	BANKSEL	r0x102E
	MOVWF	r0x102E
;	.line	128; "lib/lcd44780.c"	lcd_send(value, LOW);
	MOVLW	0x00
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	_lcd_send
	CALL	_lcd_send
	PAGESEL	$
;	.line	129; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_command

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
S_lcd44780__lcd_send	code
_lcd_send:
; 2 exit points
;	.line	103; "lib/lcd44780.c"	lcd_send(uint8_t value, uint8_t mode) {
	BANKSEL	r0x102C
	MOVWF	r0x102C
	MOVF	STK00,W
	MOVWF	r0x102D
;	.line	104; "lib/lcd44780.c"	if(mode) {
	MOVF	r0x102D,W
	BTFSC	STATUS,2
	GOTO	_00110_DS_
;	.line	105; "lib/lcd44780.c"	RS_HIGH();
	BANKSEL	_PORTB
	BSF	_PORTB,2
	GOTO	_00111_DS_
_00110_DS_:
;	.line	107; "lib/lcd44780.c"	RS_LOW();
	BANKSEL	_PORTB
	BCF	_PORTB,2
_00111_DS_:
;	.line	116; "lib/lcd44780.c"	lcd_write4bits(value >> 4); // Upper 4 bits first
	BANKSEL	r0x102C
	SWAPF	r0x102C,W
	ANDLW	0x0f
	MOVWF	r0x102D
	PAGESEL	_lcd_write4bits
	CALL	_lcd_write4bits
	PAGESEL	$
;	.line	117; "lib/lcd44780.c"	lcd_write4bits(value);      // Lower 4 bits second
	BANKSEL	r0x102C
	MOVF	r0x102C,W
	PAGESEL	_lcd_write4bits
	CALL	_lcd_write4bits
	PAGESEL	$
;	.line	119; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_send

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
S_lcd44780__lcd_write4bits	code
_lcd_write4bits:
; 2 exit points
	BANKSEL	r0x102B
	MOVWF	r0x102B
;	.line	34; "lib/lcd44780.c"	lcd_write4bits(uint8_t value) {
	MOVWF	r0x102A
;	.line	39; "lib/lcd44780.c"	OUTB &= 0b00001111;
	MOVLW	0x0f
	BANKSEL	_PORTB
	ANDWF	_PORTB,F
;;102	MOVF	r0x102A,W
;	.line	40; "lib/lcd44780.c"	OUTB |= value << 4;
	BANKSEL	r0x102B
	SWAPF	r0x102B,W
	ANDLW	0xf0
	MOVWF	r0x102A
	BANKSEL	_PORTB
	IORWF	_PORTB,F
;	.line	55; "lib/lcd44780.c"	lcd_pulse_enable();
	BSF	_PORTB,3
	MOVLW	0x04
	PAGESEL	_delay_us
	CALL	_delay_us
	PAGESEL	$
	BANKSEL	_PORTB
	BCF	_PORTB,3
	MOVLW	0x64
	PAGESEL	_delay_us
	CALL	_delay_us
	PAGESEL	$
;	.line	60; "lib/lcd44780.c"	}
	RETURN	
; exit point of _lcd_write4bits


;	code size estimation:
;	  388+  162 =   550 instructions ( 1424 byte)

	end
