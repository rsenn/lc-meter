;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"src/print.c"
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
	extern	__moduint
	extern	__divuint
	extern	_format_number
	extern	_ser_puts
	extern	_ser_putch
	extern	_lcd_putch
	extern	_lcd_gotoxy
	extern	_lcd_puts
	extern	_buffer_putch
	extern	_buffer
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
	global	_lcd_put
	global	_print_digit
	global	_print_unit
	global	_print_reading
	global	_print_indicator
	global	_output_putch
	global	_put_str
	global	_print_buffer

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
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
r0x1032	res	1
r0x1031	res	1
r0x1033	res	1
r0x1034	res	1
r0x102C	res	1
r0x102D	res	1
r0x1029	res	1
r0x102A	res	1
r0x102B	res	1
r0x1024	res	1
r0x1023	res	1
r0x1026	res	1
r0x1025	res	1
r0x1027	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x1016	res	1
r0x1019	res	1
r0x1018	res	1
r0x1017	res	1
r0x101A	res	1
r0x101B	res	1
r0x101C	res	1
r0x101D	res	1
r0x101F	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

IDD_print_0	idata
_print_unit_units_65536_50
	db	low(___str_0), high(___str_0), 0x80
	db	low(___str_1), high(___str_1), 0x80
	db	low(___str_2), high(___str_2), 0x80
	db	low(___str_3), high(___str_3), 0x80
	db	low(___str_4), high(___str_4), 0x80
	db	low(___str_5), high(___str_5), 0x80
	db	low(___str_6), high(___str_6), 0x80
	db	low(___str_7), high(___str_7), 0x80


IDC_print_1	code
___str_0
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_2	code
___str_1
	retlw 0x6d ; 'm'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_3	code
___str_2
	retlw 0x75 ; 'u'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_4	code
___str_3
	retlw 0x6e ; 'n'
	retlw 0x48 ; 'H'
	retlw 0x00 ; '.'

IDC_print_5	code
___str_4
	retlw 0x6d ; 'm'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_6	code
___str_5
	retlw 0x75 ; 'u'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_7	code
___str_6
	retlw 0x6e ; 'n'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_8	code
___str_7
	retlw 0x70 ; 'p'
	retlw 0x46 ; 'F'
	retlw 0x00 ; '.'

IDC_print_9	code
___str_8
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_print_10	code
___str_9
	retlw 0x2d ; '-'
	retlw 0x2a ; '*'
	retlw 0x2d ; '-'
	retlw 0x00 ; '.'

IDC_print_11	code
___str_10
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_print_12	code
___str_11
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'
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
code_print	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_putch
;   _ser_puts
;   _ser_putch
;   _ser_puts
;7 compiler assigned registers:
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   STK01
;   STK00
;; Starting pCode block
S_print__print_buffer	code
_print_buffer:
; 2 exit points
;	.line	513; "src/print.c"	for(i = 0; i < buffer.n; i++) {
	BANKSEL	r0x1011
	CLRF	r0x1011
_00148_DS_:
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1012
	MOVWF	r0x1012
	SWAPF	r0x1012,F
	MOVLW	0x0f
	ANDWF	r0x1012,F
;;111	MOVF	r0x1011,W
;;113	MOVF	r0x1012,W
;;110	MOVF	r0x1013,W
	MOVF	r0x1011,W
	MOVWF	r0x1013
	ADDLW	0x80
	MOVWF	r0x1015
;;112	MOVF	r0x1014,W
	MOVF	r0x1012,W
	MOVWF	r0x1014
	ADDLW	0x80
	SUBWF	r0x1015,W
	BTFSC	STATUS,0
	GOTO	_00146_DS_
;;genSkipc:3307: created from rifx:0x7fffa180ef70
;	.line	514; "src/print.c"	ser_putch(buffer.x[i]);
	MOVF	r0x1011,W
	ADDLW	(_buffer + 0)
	MOVWF	r0x1012
	MOVLW	high (_buffer + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1013
	MOVF	r0x1012,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1013
	BTFSC	r0x1013,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
;	.line	513; "src/print.c"	for(i = 0; i < buffer.n; i++) {
	BANKSEL	r0x1011
	INCF	r0x1011,F
	GOTO	_00148_DS_
_00146_DS_:
;	.line	516; "src/print.c"	ser_puts("\r\n");
	MOVLW	high (___str_11 + 0)
	BANKSEL	r0x1012
	MOVWF	r0x1012
	MOVLW	(___str_11 + 0)
	MOVWF	r0x1011
	MOVLW	0x80
	MOVWF	r0x1013
	MOVF	r0x1011,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1013,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	518; "src/print.c"	}
	RETURN	
; exit point of _print_buffer

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
;   r0x1017
;   STK00
;   r0x1018
;   STK01
;   r0x1019
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;; Starting pCode block
S_print__put_str	code
_put_str:
; 2 exit points
;	.line	501; "src/print.c"	put_str(const char* s) {
	BANKSEL	r0x1017
	MOVWF	r0x1017
	MOVF	STK00,W
	MOVWF	r0x1018
	MOVF	STK01,W
	MOVWF	r0x1019
;	.line	504; "src/print.c"	for(i = 0; s[i]; i++) {
	CLRF	r0x101A
	CLRF	r0x101B
_00139_DS_:
	BANKSEL	r0x101A
	MOVF	r0x101A,W
	ADDWF	r0x1019,W
	MOVWF	r0x101C
	MOVF	r0x1018,W
	MOVWF	r0x101D
	MOVF	r0x101B,W
	BTFSC	STATUS,0
	INCFSZ	r0x101B,W
	ADDWF	r0x101D,F
;;104	MOVF	r0x1017,W
;;102	MOVWF	r0x101E
	MOVF	r0x101C,W
	MOVWF	STK01
	MOVF	r0x101D,W
	MOVWF	STK00
;;103	MOVF	r0x101E,W
	MOVF	r0x1017,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x101F
	MOVWF	r0x101F
	MOVF	r0x101F,W
	BTFSC	STATUS,2
	GOTO	_00141_DS_
;	.line	505; "src/print.c"	output_putch(s[i]);
	MOVF	r0x101F,W
	PAGESEL	_output_putch
	CALL	_output_putch
	PAGESEL	$
;	.line	504; "src/print.c"	for(i = 0; s[i]; i++) {
	BANKSEL	r0x101A
	INCF	r0x101A,F
	BTFSC	STATUS,2
	INCF	r0x101B,F
	GOTO	_00139_DS_
_00141_DS_:
;	.line	507; "src/print.c"	}
	RETURN	
; exit point of _put_str

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_putch
;   _ser_putch
;   _lcd_putch
;   _ser_putch
;1 compiler assigned register :
;   r0x1016
;; Starting pCode block
S_print__output_putch	code
_output_putch:
; 2 exit points
;	.line	488; "src/print.c"	output_putch(char c) {
	BANKSEL	r0x1016
	MOVWF	r0x1016
;	.line	490; "src/print.c"	lcd_putch(c);
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
;	.line	493; "src/print.c"	ser_putch(c);
	BANKSEL	r0x1016
	MOVF	r0x1016,W
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
;	.line	495; "src/print.c"	}
	RETURN	
; exit point of _output_putch

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
;   r0x1020
;   STK00
;   r0x1021
;   r0x1022
;   STK01
;; Starting pCode block
S_print__print_indicator	code
_print_indicator:
; 2 exit points
;	.line	464; "src/print.c"	print_indicator(uint8_t indicate) {
	BANKSEL	r0x1020
	MOVWF	r0x1020
;	.line	478; "src/print.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	479; "src/print.c"	if(indicate) {
	BANKSEL	r0x1020
	MOVF	r0x1020,W
	BTFSC	STATUS,2
	GOTO	_00126_DS_
;	.line	480; "src/print.c"	lcd_puts("-*-");
	MOVLW	high (___str_9 + 0)
	MOVWF	r0x1021
	MOVLW	(___str_9 + 0)
	MOVWF	r0x1020
	MOVLW	0x80
	MOVWF	r0x1022
	MOVF	r0x1020,W
	MOVWF	STK01
	MOVF	r0x1021,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
	GOTO	_00128_DS_
_00126_DS_:
;	.line	482; "src/print.c"	lcd_puts("   ");
	MOVLW	high (___str_10 + 0)
	BANKSEL	r0x1021
	MOVWF	r0x1021
	MOVLW	(___str_10 + 0)
	MOVWF	r0x1020
	MOVLW	0x80
	MOVWF	r0x1022
	MOVF	r0x1020,W
	MOVWF	STK01
	MOVF	r0x1021,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
_00128_DS_:
;	.line	485; "src/print.c"	}
	RETURN	
; exit point of _print_indicator

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
;11 compiler assigned registers:
;   r0x1023
;   STK00
;   r0x1024
;   r0x1025
;   r0x1026
;   r0x1027
;   STK01
;   STK02
;   r0x1028
;   STK04
;   STK03
;; Starting pCode block
S_print__print_reading	code
_print_reading:
; 2 exit points
;	.line	424; "src/print.c"	print_reading(uint16_t measurement) {
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
;	.line	451; "src/print.c"	lcd_gotoxy(9, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x09
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	452; "src/print.c"	lcd_puts("     ");
	MOVLW	high (___str_8 + 0)
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVLW	(___str_8 + 0)
	MOVWF	r0x1026
	MOVLW	0x80
	MOVWF	r0x1027
	MOVF	r0x1026,W
	MOVWF	STK01
	MOVF	r0x1025,W
	MOVWF	STK00
	MOVF	r0x1027,W
	PAGESEL	_lcd_puts
	CALL	_lcd_puts
	PAGESEL	$
;	.line	453; "src/print.c"	lcd_gotoxy(9, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x09
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;;107	MOVF	r0x1024,W
;;109	MOVF	r0x1023,W
;	.line	455; "src/print.c"	format_number(&buffer_putch, measurement / 100, 10, 0);
	MOVLW	0x64
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
;;106	MOVF	r0x1026,W
	BANKSEL	r0x1024
	MOVF	r0x1024,W
	MOVWF	r0x1026
	MOVWF	STK00
;;108	MOVF	r0x1025,W
	MOVF	r0x1023,W
	MOVWF	r0x1025
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVWF	r0x1027
;;101	MOVF	r0x1023,W
;;99	MOVWF	r0x1028
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x0a
	MOVWF	STK03
	MOVF	r0x1027,W
	MOVWF	STK02
;;100	MOVF	r0x1028,W
	MOVF	r0x1023,W
	MOVWF	STK01
	MOVLW	low (_buffer_putch+0)
	MOVWF	STK00
	MOVLW	high (_buffer_putch+0)
	PAGESEL	_format_number
	CALL	_format_number
	PAGESEL	$
;	.line	457; "src/print.c"	format_number(&buffer_putch, measurement % 100, 10, 0);
	MOVLW	0x64
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	BANKSEL	r0x1026
	MOVF	r0x1026,W
	MOVWF	STK00
	MOVF	r0x1025,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVWF	r0x1026
;;105	MOVF	r0x1023,W
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x0a
	MOVWF	STK03
	MOVF	r0x1026,W
	MOVWF	STK02
	MOVF	r0x1025,W
	MOVWF	STK01
	MOVLW	low (_buffer_putch+0)
	MOVWF	STK00
	MOVLW	high (_buffer_putch+0)
	PAGESEL	_format_number
	CALL	_format_number
	PAGESEL	$
;	.line	460; "src/print.c"	}
	RETURN	
; exit point of _print_reading

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _lcd_gotoxy
;   _lcd_gotoxy
;4 compiler assigned registers:
;   STK00
;   r0x1029
;   r0x102A
;   r0x102B
;; Starting pCode block
S_print__print_unit	code
_print_unit:
; 2 exit points
;	.line	410; "src/print.c"	lcd_gotoxy(14, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x0e
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	414; "src/print.c"	lcd_gotoxy(16 - BUFFER_LEN(), 0);
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1029
	MOVWF	r0x1029
	SWAPF	r0x1029,F
	MOVLW	0x0f
	ANDWF	r0x1029,F
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0x0f
	BANKSEL	r0x102A
	MOVWF	r0x102A
	MOVF	r0x1029,W
	MOVWF	r0x102B
	MOVF	r0x102A,W
	MOVWF	r0x1029
	SUBWF	r0x102B,W
	MOVWF	r0x102A
	SUBLW	0x10
	MOVWF	r0x102A
	MOVLW	0x00
	MOVWF	STK00
	MOVF	r0x102A,W
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	421; "src/print.c"	}
	RETURN	
; exit point of _print_unit

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
;   r0x102C
;   STK01
;   r0x102D
;; Starting pCode block
S_print__print_digit	code
_print_digit:
; 2 exit points
;	.line	379; "src/print.c"	print_digit(uint8_t line, uint8_t column, uint8_t digit) {
	MOVF	STK00,W
	BANKSEL	r0x102C
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102D
;	.line	394; "src/print.c"	lcd_gotoxy(column, /*line - 1*/ 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVF	r0x102C,W
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	395; "src/print.c"	lcd_putch('0' + digit);
	BANKSEL	r0x102D
	MOVF	r0x102D,W
	MOVWF	r0x102C
	MOVLW	0x30
	ADDWF	r0x102C,W
	MOVWF	r0x102D
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
;	.line	397; "src/print.c"	}
	RETURN	
; exit point of _print_digit

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
;   r0x102E
;   STK00
;   r0x102F
;   STK01
;   r0x1030
;   STK02
;   r0x1031
;   STK03
;   r0x1032
;   r0x1033
;   r0x1034
;; Starting pCode block
S_print__lcd_put	code
_lcd_put:
; 2 exit points
;	.line	23; "src/print.c"	lcd_put(const char* buf, unsigned n) {
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	MOVF	STK03,W
	MOVWF	r0x1032
_00105_DS_:
;	.line	26; "src/print.c"	while(n--) lcd_putch(*buf++);
	BANKSEL	r0x1032
	MOVF	r0x1032,W
	MOVWF	r0x1033
	MOVF	r0x1031,W
	MOVWF	r0x1034
	MOVLW	0xff
	ADDWF	r0x1032,F
	BTFSS	STATUS,0
	DECF	r0x1031,F
	MOVF	r0x1034,W
	IORWF	r0x1033,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1033
	MOVWF	r0x1033
	INCF	r0x1030,F
	BTFSC	STATUS,2
	INCF	r0x102F,F
	BTFSC	STATUS,2
	INCF	r0x102E,F
	MOVF	r0x1033,W
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
	GOTO	_00105_DS_
_00108_DS_:
;	.line	28; "src/print.c"	}
	RETURN	
; exit point of _lcd_put


;	code size estimation:
;	  272+   77 =   349 instructions (  852 byte)

	end
