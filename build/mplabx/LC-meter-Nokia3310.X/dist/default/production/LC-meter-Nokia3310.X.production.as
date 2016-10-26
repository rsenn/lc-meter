opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 10 "../../../src/config-16f876a.h"
	psect config,class=CONFIG,delta=2 ;#
# 10 "../../../src/config-16f876a.h"
	dw 0xFFFD & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_initialize
	FNCALL	_main,_lcd_set_cursor
	FNCALL	_main,_lcd_print
	FNCALL	_main,_display_print_number
	FNCALL	_main,_format_number
	FNCALL	_main,_ser_puts
	FNCALL	_initialize,_setup_timer0
	FNCALL	_initialize,_ser_init
	FNCALL	_initialize,_lcd_init
	FNCALL	_initialize,_lcd_begin
	FNCALL	_display_print_number,___lwmod
	FNCALL	_display_print_number,___lwdiv
	FNCALL	_display_print_number,_lcd_putch
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_lcd_print,_lcd_putch
	FNCALL	_lcd_set_cursor,_lcd_command
	FNCALL	_lcd_command,_lcd_send
	FNCALL	_lcd_putch,_lcd_send
	FNCALL	_lcd_send,_lcd_write4bits
	FNCALL	_lcd_write4bits,_lcd_pulse_enable
	FNCALL	_ser_puts,_ser_putch
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,_ser_putch
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	lcd_set_cursor@F1157
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"../../../lib/lcd44780.c"
	line	162

;initializer for lcd_set_cursor@F1157
	retlw	0
	retlw	040h
	retlw	014h
	retlw	054h
	global	_ccp1t
	global	_ccp1t_lr
	global	_bres
	global	_seconds
	global	_tmr0_overflow
	global	_LCD_ctrl
	global	_LCD_lines
	global	_LCD_mode
	global	_rxiptr
	global	_rxoptr
	global	_ser_tmp
	global	_LCD_function
	global	_txiptr
	global	_txoptr
	global	_rxfifo
	global	_txfifo
	global	_RCREG
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA2
_RA2	set	42
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC3
_RC3	set	59
	global	_RCIF
_RCIF	set	101
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_SSPEN
_SSPEN	set	165
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_TXIF
_TXIF	set	100
	global	_OPTION_REGbits
_OPTION_REGbits	set	129
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_BRGH
_BRGH	set	1218
	global	_CM0
_CM0	set	1248
	global	_CM1
_CM1	set	1249
	global	_CM2
_CM2	set	1250
	global	_PSA
_PSA	set	1035
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_TRISA2
_TRISA2	set	1066
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB3
_TRISB3	set	1075
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_TXIE
_TXIE	set	1124
	global	_nRBPU
_nRBPU	set	1039
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_11:	
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	45	;'-'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_10:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_9:	
	retlw	45	;'-'
	retlw	42	;'*'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_12:	
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_5:	
	retlw	109	;'m'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_7:	
	retlw	110	;'n'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_8:	
	retlw	112	;'p'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_6:	
	retlw	117	;'u'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_2:	
	retlw	109	;'m'
	retlw	72	;'H'
	retlw	0
psect	strings
	
STR_4:	
	retlw	110	;'n'
	retlw	72	;'H'
	retlw	0
psect	strings
	
STR_3:	
	retlw	117	;'u'
	retlw	72	;'H'
	retlw	0
psect	strings
STR_1	equ	STR_2+1
	file	"dist/default/production\LC-meter-Nokia3310.X.production.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_LCD_function:
       ds      1

_txiptr:
       ds      1

_txoptr:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ccp1t:
       ds      8

_ccp1t_lr:
       ds      4

_bres:
       ds      2

_seconds:
       ds      2

_tmr0_overflow:
       ds      2

_LCD_ctrl:
       ds      1

_LCD_lines:
       ds      1

_LCD_mode:
       ds      1

_rxiptr:
       ds      1

_rxoptr:
       ds      1

_ser_tmp:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"../../../lib/lcd44780.c"
lcd_set_cursor@F1157:
       ds      4

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_rxfifo:
       ds      16

_txfifo:
       ds      16

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+020h)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_initialize
?_initialize:	; 0 bytes @ 0x0
	global	?_lcd_pulse_enable
?_lcd_pulse_enable:	; 0 bytes @ 0x0
	global	?_lcd_write4bits
?_lcd_write4bits:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	?_lcd_print
?_lcd_print:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_ser_puts
?_ser_puts:	; 0 bytes @ 0x0
	global	?_ser_init
?_ser_init:	; 0 bytes @ 0x0
	global	?_setup_timer0
?_setup_timer0:	; 0 bytes @ 0x0
	global	??_isr
??_isr:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 2 bytes @ 0x0
	ds	3
	global	??_lcd_pulse_enable
??_lcd_pulse_enable:	; 0 bytes @ 0x3
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	?_ser_putch
?_ser_putch:	; 0 bytes @ 0x3
	global	??_ser_init
??_ser_init:	; 0 bytes @ 0x3
	global	??_setup_timer0
??_setup_timer0:	; 0 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x3
	global	ser_putch@c
ser_putch@c:	; 1 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
	global	??_lcd_write4bits
??_lcd_write4bits:	; 0 bytes @ 0x4
	global	??_ser_putch
??_ser_putch:	; 0 bytes @ 0x4
	global	??_ser_puts
??_ser_puts:	; 0 bytes @ 0x4
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x4
	global	ser_puts@s
ser_puts@s:	; 1 bytes @ 0x4
	global	_lcd_init$2694
_lcd_init$2694:	; 2 bytes @ 0x4
	ds	1
	global	?_lcd_send
?_lcd_send:	; 0 bytes @ 0x5
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	??_lcd_send
??_lcd_send:	; 0 bytes @ 0x6
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x7
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x7
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x7
	global	lcd_putch@value
lcd_putch@value:	; 1 bytes @ 0x7
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_initialize
??_initialize:	; 0 bytes @ 0x8
	global	??_lcd_set_cursor
??_lcd_set_cursor:	; 0 bytes @ 0x8
	global	??_lcd_print
??_lcd_print:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_lcd_set_cursor
?_lcd_set_cursor:	; 0 bytes @ 0x0
	global	?_lcd_begin
?_lcd_begin:	; 0 bytes @ 0x0
	global	lcd_set_cursor@row
lcd_set_cursor@row:	; 1 bytes @ 0x0
	global	lcd_print@string
lcd_print@string:	; 1 bytes @ 0x0
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	??_lcd_begin
??_lcd_begin:	; 0 bytes @ 0x1
	global	lcd_set_cursor@col
lcd_set_cursor@col:	; 1 bytes @ 0x1
	global	lcd_print@i
lcd_print@i:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	lcd_set_cursor@row_offsets
lcd_set_cursor@row_offsets:	; 4 bytes @ 0x2
	ds	1
	global	?_display_print_number
?_display_print_number:	; 0 bytes @ 0x3
	global	?_format_number
?_format_number:	; 0 bytes @ 0x3
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0x3
	global	format_number@n
format_number@n:	; 2 bytes @ 0x3
	global	display_print_number@n
display_print_number@n:	; 2 bytes @ 0x3
	ds	2
	global	format_number@base
format_number@base:	; 1 bytes @ 0x5
	global	display_print_number@base
display_print_number@base:	; 1 bytes @ 0x5
	ds	1
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0x6
	global	display_print_number@pad
display_print_number@pad:	; 1 bytes @ 0x6
	ds	1
	global	??_display_print_number
??_display_print_number:	; 0 bytes @ 0x7
	global	??_format_number
??_format_number:	; 0 bytes @ 0x7
	ds	1
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0x8
	ds	2
	global	display_print_number@buf
display_print_number@buf:	; 32 bytes @ 0xA
	ds	30
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x28
	ds	1
	global	_format_number$1902
_format_number$1902:	; 2 bytes @ 0x29
	ds	1
	global	_display_print_number$5755
_display_print_number$5755:	; 2 bytes @ 0x2A
	ds	1
	global	format_number@putchar
format_number@putchar:	; 1 bytes @ 0x2B
	ds	1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x2C
	global	display_print_number@di
display_print_number@di:	; 1 bytes @ 0x2C
	ds	1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x2D
	global	display_print_number@i
display_print_number@i:	; 1 bytes @ 0x2D
	ds	1
	global	main@prev_seconds
main@prev_seconds:	; 2 bytes @ 0x2E
	ds	2
;;Data sizes: Strings 41, constant 0, data 4, bss 59, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
;; BANK0           80     48      76
;; BANK1           80      0      32
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; display_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;;		 -> STR_8(CODE[3]), STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), 
;;		 -> STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[2]), 
;;
;; ser_puts@s	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_12(CODE[3]), 
;;
;; lcd_print@string	PTR const unsigned char  size(1) Largest target is 9
;;		 -> STR_11(CODE[9]), STR_10(CODE[4]), STR_9(CODE[4]), STR_8(CODE[3]), 
;;		 -> STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), STR_4(CODE[3]), 
;;		 -> STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[2]), 
;;
;; format_number@putchar	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> ser_putch(), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _display_print_number->___lwmod
;;   _display_print_number->_lcd_putch
;;   _lcd_begin->_lcd_command
;;   _lcd_print->_lcd_putch
;;   _lcd_set_cursor->_lcd_command
;;   _lcd_command->_lcd_send
;;   _lcd_putch->_lcd_send
;;   _lcd_send->_lcd_write4bits
;;   _lcd_write4bits->_lcd_pulse_enable
;;   _ser_puts->_ser_putch
;;   _format_number->___lwmod
;;
;; Critical Paths under _isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_display_print_number
;;   _main->_format_number
;;   _initialize->_lcd_begin
;;   _display_print_number->___lwdiv
;;   _format_number->___lwdiv
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    3887
;;                                             46 BANK0      2     2      0
;;                         _initialize
;;                     _lcd_set_cursor
;;                          _lcd_print
;;               _display_print_number
;;                      _format_number
;;                           _ser_puts
;; ---------------------------------------------------------------------------------
;; (1) _initialize                                           0     0      0     560
;;                       _setup_timer0
;;                           _ser_init
;;                           _lcd_init
;;                          _lcd_begin
;; ---------------------------------------------------------------------------------
;; (1) _display_print_number                                43    39      4    1220
;;                                              3 BANK0     43    39      4
;;                            ___lwmod
;;                            ___lwdiv
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (2) _lcd_begin                                            4     3      1     514
;;                                              0 BANK0      4     3      1
;;                     _lcd_write4bits
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_print                                            2     2      0     387
;;                                              0 BANK0      2     2      0
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (1) _lcd_set_cursor                                       6     5      1     467
;;                                              0 BANK0      6     5      1
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (2) _lcd_command                                          1     1      0     257
;;                                              7 COMMON     1     1      0
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putch                                            1     1      0     257
;;                                              7 COMMON     1     1      0
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (3) _lcd_send                                             2     1      1     226
;;                                              5 COMMON     2     1      1
;;                     _lcd_write4bits
;; ---------------------------------------------------------------------------------
;; (4) _lcd_write4bits                                       1     1      0     133
;;                                              4 COMMON     1     1      0
;;                   _lcd_pulse_enable
;; ---------------------------------------------------------------------------------
;; (1) _ser_puts                                             1     1      0      67
;;                                              4 COMMON     1     1      0
;;                          _ser_putch
;; ---------------------------------------------------------------------------------
;; (5) _lcd_pulse_enable                                     1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _format_number                                       43    39      4    1149
;;                                              3 BANK0     43    39      4
;;                            ___lwmod
;;                            ___lwdiv
;;                          _ser_putch
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              3 COMMON     5     1      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     241
;;                                              3 COMMON     4     0      4
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _setup_timer0                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ser_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ser_putch                                            1     0      1      22
;;                                              3 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init                                             3     3      0      46
;;                                              3 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _isr                                                  3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initialize
;;     _setup_timer0
;;     _ser_init
;;     _lcd_init
;;     _lcd_begin
;;       _lcd_write4bits
;;         _lcd_pulse_enable
;;       _lcd_command
;;         _lcd_send
;;           _lcd_write4bits
;;             _lcd_pulse_enable
;;   _lcd_set_cursor
;;     _lcd_command
;;       _lcd_send
;;         _lcd_write4bits
;;           _lcd_pulse_enable
;;   _lcd_print
;;     _lcd_putch
;;       _lcd_send
;;         _lcd_write4bits
;;           _lcd_pulse_enable
;;   _display_print_number
;;     ___lwmod
;;     ___lwdiv
;;     _lcd_putch
;;       _lcd_send
;;         _lcd_write4bits
;;           _lcd_pulse_enable
;;   _format_number
;;     ___lwmod
;;     ___lwdiv
;;     _ser_putch
;;   _ser_puts
;;     _ser_putch
;;
;; _isr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      20       7       40.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      7D      12        0.0%
;;ABS                  0      0      77       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       6       2        0.0%
;;BANK0               50     30      4C       5       95.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       B       1       78.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 101 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  led_value       1    0        unsigned char 
;;  prev_seconds    2   46[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_initialize
;;		_lcd_set_cursor
;;		_lcd_print
;;		_display_print_number
;;		_format_number
;;		_ser_puts
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"../../../src/LC-meter.c"
	line	101
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	109
	
l7464:	
;LC-meter.c: 109: initialize();
	fcall	_initialize
	line	112
	
l7466:	
;LC-meter.c: 112: lcd_set_cursor(0, 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_set_cursor)
	movlw	(0)
	fcall	_lcd_set_cursor
	line	114
	
l7468:	
;LC-meter.c: 114: lcd_print("LC-meter");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_lcd_print
	line	129
	
l7470:	
;LC-meter.c: 128: {
;LC-meter.c: 129: uint16_t prev_seconds = 0xffff;
	movlw	low(0FFFFh)
	movwf	(main@prev_seconds)
	movlw	high(0FFFFh)
	movwf	((main@prev_seconds))+1
	line	136
	
l7472:	
;LC-meter.c: 136: lcd_set_cursor(0, 1);
	clrf	(?_lcd_set_cursor)
	incf	(?_lcd_set_cursor),f
	movlw	(0)
	fcall	_lcd_set_cursor
	line	137
	
l7474:	
;LC-meter.c: 137: display_print_number(ccp1t[1] - ccp1t_lr, 16, -4);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(_ccp1t)+04h,w	;volatile
	movwf	(?_display_print_number+1)
	movf	0+(_ccp1t)+04h,w	;volatile
	movwf	(?_display_print_number)
	movf	(_ccp1t_lr),w	;volatile
	subwf	(?_display_print_number),f
	movf	(_ccp1t_lr+1),w	;volatile
	skipc
	decf	(?_display_print_number+1),f
	subwf	(?_display_print_number+1),f
	movlw	(010h)
	movwf	0+(?_display_print_number)+02h
	movlw	(-4)
	movwf	0+(?_display_print_number)+03h
	fcall	_display_print_number
	line	141
	
l7476:	
;LC-meter.c: 141: if(seconds != prev_seconds)
	movf	(main@prev_seconds+1),w
	xorwf	(_seconds+1),w	;volatile
	skipz
	goto	u1305
	movf	(main@prev_seconds),w
	xorwf	(_seconds),w	;volatile
u1305:

	skipnz
	goto	u1301
	goto	u1300
u1301:
	goto	l7472
u1300:
	line	144
	
l7478:	
;LC-meter.c: 142: {
;LC-meter.c: 144: format_number(ser_putch, seconds, 10, 0);
	movf	(_seconds+1),w	;volatile
	movwf	(?_format_number+1)
	movf	(_seconds),w	;volatile
	movwf	(?_format_number)
	movlw	(0Ah)
	movwf	0+(?_format_number)+02h
	clrf	0+(?_format_number)+03h
	movlw	((fp__ser_putch-fpbase))&0ffh
	fcall	_format_number
	line	146
;LC-meter.c: 146: ser_puts("\r\n");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_ser_puts
	line	148
	
l7480:	
;LC-meter.c: 148: prev_seconds = seconds;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_seconds+1),w	;volatile
	movwf	(main@prev_seconds+1)
	movf	(_seconds),w	;volatile
	movwf	(main@prev_seconds)
	goto	l7472
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	153
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initialize
psect	text634,local,class=CODE,delta=2
global __ptext634
__ptext634:

;; *************** function _initialize *****************
;; Defined at:
;;		line 169 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setup_timer0
;;		_ser_init
;;		_lcd_init
;;		_lcd_begin
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text634
	file	"../../../src/LC-meter.c"
	line	169
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:	
	opt	stack 1
; Regs used in _initialize: [wreg+status,2+status,0+pclath+cstack]
	line	171
	
l7432:	
;LC-meter.c: 171: CM0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1248/8)^080h,(1248)&7
	line	172
;LC-meter.c: 172: CM1 = 0;
	bcf	(1249/8)^080h,(1249)&7
	line	173
;LC-meter.c: 173: CM2 = 1;
	bsf	(1250/8)^080h,(1250)&7
	line	175
	
l7434:	
;LC-meter.c: 175: TRISA = 0b11001111;
	movlw	(0CFh)
	movwf	(133)^080h	;volatile
	line	177
	
l7436:	
;LC-meter.c: 177: setup_timer0();
	fcall	_setup_timer0
	line	178
	
l7438:	
;LC-meter.c: 178: T0IE = 1;
	bsf	(93/8),(93)&7
	line	179
	
l7440:	
;LC-meter.c: 179: T0IF = 0;
	bcf	(90/8),(90)&7
	line	186
	
l7442:	
;LC-meter.c: 186: SSPEN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(165/8),(165)&7
	line	191
	
l7444:	
;LC-meter.c: 191: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	192
	
l7446:	
;LC-meter.c: 192: nRBPU = 1;
	bsf	(1039/8)^080h,(1039)&7
	line	197
	
l7448:	
;LC-meter.c: 197: TRISA2 = TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7
	bcf	(1066/8)^080h,(1066)&7
	line	198
	
l7450:	
;LC-meter.c: 198: RA2 = RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(59/8),(59)&7
	btfsc	(59/8),(59)&7
	goto	u1281
	goto	u1280
	
u1281:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	goto	u1294
u1280:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
u1294:
	line	201
	
l7452:	
;LC-meter.c: 201: ser_init();
	fcall	_ser_init
	line	204
	
l7454:	
;LC-meter.c: 204: TRISC5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1085/8)^080h,(1085)&7
	line	207
	
l7456:	
;LC-meter.c: 207: PEIE = 1;
	bsf	(94/8),(94)&7
	line	208
	
l7458:	
;LC-meter.c: 208: GIE = 1;
	bsf	(95/8),(95)&7
	line	215
	
l7460:	
;LC-meter.c: 215: lcd_init(1);
	movlw	(01h)
	fcall	_lcd_init
	line	216
	
l7462:	
;LC-meter.c: 216: lcd_begin(2, 1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_begin)
	incf	(?_lcd_begin),f
	movlw	(02h)
	fcall	_lcd_begin
	line	218
	
l5205:	
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
;; =============== function _initialize ends ============

	signat	_initialize,88
	global	_display_print_number
psect	text635,local,class=CODE,delta=2
global __ptext635
__ptext635:

;; *************** function _display_print_number *****************
;; Defined at:
;;		line 164 in file "../../../src/display.c"
;; Parameters:    Size  Location     Type
;;  n               2    3[BANK0 ] unsigned int 
;;  base            1    5[BANK0 ] unsigned char 
;;  pad             1    6[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   10[BANK0 ] unsigned char [32]
;;  i               1   45[BANK0 ] unsigned char 
;;  di              1   44[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      36       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      43       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwmod
;;		___lwdiv
;;		_lcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text635
	file	"../../../src/display.c"
	line	164
	global	__size_of_display_print_number
	__size_of_display_print_number	equ	__end_of_display_print_number-_display_print_number
	
_display_print_number:	
	opt	stack 2
; Regs used in _display_print_number: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	167
	
l7400:	
;display.c: 165: uint8_t buf[8 * sizeof(long)];
;display.c: 166: uint8_t di;
;display.c: 167: uint8_t i = 0;
	clrf	(display_print_number@i)
	line	179
	
l7402:	
;display.c: 175: {
;display.c: 179: di = n % base;
	movf	(display_print_number@base),w
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(display_print_number@n+1),w
	movwf	1+(?___lwmod)+02h
	movf	(display_print_number@n),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(display_print_number@di)
	line	180
	
l7404:	
;display.c: 180: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	movlw	(0Ah)
	subwf	(display_print_number@di),w
	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l7408
u1240:
	
l7406:	
	movf	(display_print_number@di),w
	movwf	(_display_print_number$5755)
	clrf	(_display_print_number$5755+1)
	movlw	037h
	addwf	(_display_print_number$5755),f
	skipnc
	incf	(_display_print_number$5755+1),f
	goto	l7410
	
l7408:	
	movf	(display_print_number@di),w
	movwf	(_display_print_number$5755)
	clrf	(_display_print_number$5755+1)
	movlw	030h
	addwf	(_display_print_number$5755),f
	skipnc
	incf	(_display_print_number$5755+1),f
	
l7410:	
	movf	(display_print_number@i),w
	addlw	display_print_number@buf&0ffh
	movwf	fsr0
	movf	(_display_print_number$5755),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7412:	
	incf	(display_print_number@i),f
	line	182
	
l7414:	
;display.c: 182: n /= base;
	movf	(display_print_number@base),w
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(display_print_number@n+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_print_number@n),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(display_print_number@n+1)
	movf	(0+(?___lwdiv)),w
	movwf	(display_print_number@n)
	line	184
	
l7416:	
;display.c: 183: }
;display.c: 184: while(n > 0);
	movf	((display_print_number@n+1)),w
	iorwf	((display_print_number@n)),w
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l7402
u1250:
	goto	l7420
	line	187
	
l7418:	
;display.c: 187: lcd_putch(' ');
	movlw	(020h)
	fcall	_lcd_putch
	line	186
	
l7420:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_print_number@pad),w
	decf	(display_print_number@pad),f
	movwf	(??_display_print_number+0)+0
	clrf	(??_display_print_number+0)+0+1
	btfsc	(??_display_print_number+0)+0,7
	decf	(??_display_print_number+0)+0+1,f
	movf	1+(??_display_print_number+0)+0,w
	xorlw	80h
	movwf	(??_display_print_number+2)+0
	movlw	80h
	subwf	(??_display_print_number+2)+0,w
	skipz
	goto	u1265
	movf	(display_print_number@i),w
	subwf	0+(??_display_print_number+0)+0,w
u1265:

	skipnc
	goto	u1261
	goto	u1260
u1261:
	goto	l7418
u1260:
	line	189
	
l7422:	
;display.c: 189: for(; i > 0; i--)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_print_number@i),f
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l7426
u1270:
	goto	l4518
	line	190
	
l7426:	
;display.c: 190: lcd_putch((uint8_t)buf[(int16_t)i - 1]);
	movf	(display_print_number@i),w
	addlw	0FFh
	addlw	display_print_number@buf&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_putch
	line	189
	
l7428:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(display_print_number@i),f
	goto	l7422
	line	192
	
l4518:	
	return
	opt stack 0
GLOBAL	__end_of_display_print_number
	__end_of_display_print_number:
;; =============== function _display_print_number ends ============

	signat	_display_print_number,12408
	global	_lcd_begin
psect	text636,local,class=CODE,delta=2
global __ptext636
__ptext636:

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 437 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_write4bits
;;		_lcd_command
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text636
	file	"../../../lib/lcd44780.c"
	line	437
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:	
	opt	stack 1
; Regs used in _lcd_begin: [wreg+status,2+status,0+pclath+cstack]
;lcd_begin@lines stored from wreg
	movwf	(lcd_begin@lines)
	line	438
	
l7356:	
;lcd44780.c: 438: if(lines > 1)
	movlw	(02h)
	subwf	(lcd_begin@lines),w
	skipc
	goto	u1201
	goto	u1200
u1201:
	goto	l7360
u1200:
	line	439
	
l7358:	
;lcd44780.c: 439: LCD_function |= 0x08;
	bsf	(_LCD_function)+(3/8),(3)&7
	line	442
	
l7360:	
;lcd44780.c: 442: LCD_lines = lines;
	movf	(lcd_begin@lines),w
	movwf	(_LCD_lines)
	line	446
;lcd44780.c: 446: if((dotsize != 0) && (lines == 1))
	movf	(lcd_begin@dotsize),w
	skipz
	goto	u1210
	goto	l7366
u1210:
	
l7362:	
	decf	(lcd_begin@lines),w
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l7366
u1220:
	line	447
	
l7364:	
;lcd44780.c: 447: LCD_function |= 0x04;
	bsf	(_LCD_function)+(2/8),(2)&7
	line	449
	
l7366:	
;lcd44780.c: 449: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_lcd_begin+0)+0+1),f
	movlw	101
movwf	((??_lcd_begin+0)+0),f
u1317:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u1317
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u1317
	nop2
opt asmopt_on

	line	452
	
l7368:	
;lcd44780.c: 452: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	453
	
l7370:	
;lcd44780.c: 453: RB3 = 0;
	bcf	(51/8),(51)&7
	line	456
	
l7372:	
;lcd44780.c: 456: if(!(LCD_function & 0x10)) {
	btfsc	(_LCD_function),(4)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l7384
u1230:
	line	460
	
l7374:	
;lcd44780.c: 460: lcd_write4bits(0x03);
	movlw	(03h)
	fcall	_lcd_write4bits
	line	461
	
l7376:	
;lcd44780.c: 461: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u1327:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u1327
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u1327
	clrwdt
opt asmopt_on

	line	463
	
l7378:	
;lcd44780.c: 463: lcd_write4bits(0x03);
	movlw	(03h)
	fcall	_lcd_write4bits
	line	464
;lcd44780.c: 464: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_begin+0)+0,f
u1337:
decfsz	(??_lcd_begin+0)+0,f
	goto	u1337
	nop2	;nop
opt asmopt_on

	line	466
	
l7380:	
;lcd44780.c: 466: lcd_write4bits(0x03);
	movlw	(03h)
	fcall	_lcd_write4bits
	line	467
	
l7382:	
;lcd44780.c: 467: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_begin+0)+0,f
u1347:
decfsz	(??_lcd_begin+0)+0,f
	goto	u1347
	nop2	;nop
opt asmopt_on

	line	469
;lcd44780.c: 469: lcd_write4bits(0x02);
	movlw	(02h)
	fcall	_lcd_write4bits
	line	470
;lcd44780.c: 470: }
	goto	l7392
	line	476
	
l7384:	
;lcd44780.c: 472: else {
;lcd44780.c: 476: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	477
	
l7386:	
;lcd44780.c: 477: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u1357:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u1357
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u1357
	clrwdt
opt asmopt_on

	line	480
	
l7388:	
;lcd44780.c: 480: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	481
;lcd44780.c: 481: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u1367:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u1367
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u1367
	clrwdt
opt asmopt_on

	line	485
	
l7390:	
;lcd44780.c: 485: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	489
	
l7392:	
;lcd44780.c: 486: }
;lcd44780.c: 489: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	492
;lcd44780.c: 492: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_ctrl)
	line	493
	
l7394:	
;lcd44780.c: 493: lcd_command(0x08 | LCD_ctrl);
	movf	(_LCD_ctrl),w
	iorlw	08h
	fcall	_lcd_command
	line	496
	
l7396:	
;lcd44780.c: 496: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	497
;lcd44780.c: 497: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	251
movwf	((??_lcd_begin+0)+0),f
u1377:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u1377
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u1377
	nop2
opt asmopt_on

	line	500
;lcd44780.c: 500: LCD_mode = 0x02 | 0x00;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mode)
	line	502
	
l7398:	
;lcd44780.c: 502: lcd_command(0x04 | LCD_mode);
	movf	(_LCD_mode),w
	iorlw	04h
	fcall	_lcd_command
	line	503
	
l1960:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
;; =============== function _lcd_begin ends ============

	signat	_lcd_begin,8312
	global	_lcd_print
psect	text637,local,class=CODE,delta=2
global __ptext637
__ptext637:

;; *************** function _lcd_print *****************
;; Defined at:
;;		line 188 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_11(9), STR_10(4), STR_9(4), STR_8(3), 
;;		 -> STR_7(3), STR_6(3), STR_5(3), STR_4(3), 
;;		 -> STR_3(3), STR_2(3), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  string          1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_11(9), STR_10(4), STR_9(4), STR_8(3), 
;;		 -> STR_7(3), STR_6(3), STR_5(3), STR_4(3), 
;;		 -> STR_3(3), STR_2(3), STR_1(2), 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text637
	file	"../../../lib/lcd44780.c"
	line	188
	global	__size_of_lcd_print
	__size_of_lcd_print	equ	__end_of_lcd_print-_lcd_print
	
_lcd_print:	
	opt	stack 2
; Regs used in _lcd_print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_print@string stored from wreg
	line	190
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_print@string)
	
l7348:	
;lcd44780.c: 189: uint8_t i;
;lcd44780.c: 190: for(i = 0; string[i]; i++)
	clrf	(lcd_print@i)
	goto	l7354
	line	191
	
l7350:	
;lcd44780.c: 191: lcd_putch(string[i]);
	movf	(lcd_print@i),w
	addwf	(lcd_print@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_putch
	line	190
	
l7352:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(lcd_print@i),f
	
l7354:	
	movf	(lcd_print@i),w
	addwf	(lcd_print@string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l7350
u1190:
	line	192
	
l1914:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_print
	__end_of_lcd_print:
;; =============== function _lcd_print ends ============

	signat	_lcd_print,4216
	global	_lcd_set_cursor
psect	text638,local,class=CODE,delta=2
global __ptext638
__ptext638:

;; *************** function _lcd_set_cursor *****************
;; Defined at:
;;		line 160 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    1[BANK0 ] unsigned char 
;;  row_offsets     4    2[BANK0 ] unsigned char [4]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text638
	file	"../../../lib/lcd44780.c"
	line	160
	global	__size_of_lcd_set_cursor
	__size_of_lcd_set_cursor	equ	__end_of_lcd_set_cursor-_lcd_set_cursor
	
_lcd_set_cursor:	
	opt	stack 2
; Regs used in _lcd_set_cursor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_set_cursor@col stored from wreg
	line	162
	movwf	(lcd_set_cursor@col)
	
l7342:	
;lcd44780.c: 162: uint8_t row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
	movf	(lcd_set_cursor@F1157+3),w
	movwf	(lcd_set_cursor@row_offsets+3)
	movf	(lcd_set_cursor@F1157+2),w
	movwf	(lcd_set_cursor@row_offsets+2)
	movf	(lcd_set_cursor@F1157+1),w
	movwf	(lcd_set_cursor@row_offsets+1)
	movf	(lcd_set_cursor@F1157),w
	movwf	(lcd_set_cursor@row_offsets)

	line	171
;lcd44780.c: 171: if(LCD_lines == 1) {
	decf	(_LCD_lines),w
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l7346
u1180:
	line	172
	
l7344:	
;lcd44780.c: 172: row_offsets[1] = 0x14;
	movlw	(014h)
	movwf	0+(lcd_set_cursor@row_offsets)+01h
	line	173
;lcd44780.c: 173: row_offsets[2] = 0x28;
	movlw	(028h)
	movwf	0+(lcd_set_cursor@row_offsets)+02h
	line	174
;lcd44780.c: 174: row_offsets[3] = 0x3C;
	movlw	(03Ch)
	movwf	0+(lcd_set_cursor@row_offsets)+03h
	line	181
	
l7346:	
;lcd44780.c: 175: }
;lcd44780.c: 181: lcd_command(0x80 | (col + row_offsets[row]));
	movf	(lcd_set_cursor@row),w
	addlw	lcd_set_cursor@row_offsets&0ffh
	movwf	fsr0
	movf	(lcd_set_cursor@col),w
	bcf	status, 7	;select IRP bank0
	addwf	indf,w
	iorlw	080h
	fcall	_lcd_command
	line	182
	
l1908:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_set_cursor
	__end_of_lcd_set_cursor:
;; =============== function _lcd_set_cursor ends ============

	signat	_lcd_set_cursor,8312
	global	_lcd_command
psect	text639,local,class=CODE,delta=2
global __ptext639
__ptext639:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 152 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_set_cursor
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text639
	file	"../../../lib/lcd44780.c"
	line	152
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 2
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@value stored from wreg
	movwf	(lcd_command@value)
	line	153
	
l7340:	
;lcd44780.c: 153: lcd_send(value, 0);
	clrf	(?_lcd_send)
	movf	(lcd_command@value),w
	fcall	_lcd_send
	line	154
	
l1902:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	_lcd_putch
psect	text640,local,class=CODE,delta=2
global __ptext640
__ptext640:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 145 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_print
;;		_display_print_number
;; This function uses a non-reentrant model
;;
psect	text640
	file	"../../../lib/lcd44780.c"
	line	145
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 2
; Regs used in _lcd_putch: [wreg+status,2+status,0+pclath+cstack]
;lcd_putch@value stored from wreg
	movwf	(lcd_putch@value)
	line	146
	
l7338:	
;lcd44780.c: 146: lcd_send((unsigned)value, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(lcd_putch@value),w
	fcall	_lcd_send
	line	147
	
l1899:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_lcd_send
psect	text641,local,class=CODE,delta=2
global __ptext641
__ptext641:

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 128 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write4bits
;; This function is called by:
;;		_lcd_putch
;;		_lcd_command
;; This function uses a non-reentrant model
;;
psect	text641
	file	"../../../lib/lcd44780.c"
	line	128
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:	
	opt	stack 2
; Regs used in _lcd_send: [wreg+status,2+status,0+pclath+cstack]
;lcd_send@value stored from wreg
	movwf	(lcd_send@value)
	line	129
	
l7334:	
;lcd44780.c: 129: RB2 = mode;
	btfsc	(lcd_send@mode),0
	goto	u1161
	goto	u1160
	
u1161:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	goto	u1174
u1160:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
u1174:
	line	137
	
l7336:	
;lcd44780.c: 136: {
;lcd44780.c: 137: lcd_write4bits(value >> 4);
	swapf	(lcd_send@value),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	_lcd_write4bits
	line	138
;lcd44780.c: 138: lcd_write4bits(value);
	movf	(lcd_send@value),w
	fcall	_lcd_write4bits
	line	140
	
l1896:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
;; =============== function _lcd_send ends ============

	signat	_lcd_send,8312
	global	_lcd_write4bits
psect	text642,local,class=CODE,delta=2
global __ptext642
__ptext642:

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 61 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_pulse_enable
;; This function is called by:
;;		_lcd_send
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text642
	file	"../../../lib/lcd44780.c"
	line	61
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:	
	opt	stack 2
; Regs used in _lcd_write4bits: [wreg+status,2+status,0+pclath+cstack]
;lcd_write4bits@value stored from wreg
	line	66
	movwf	(lcd_write4bits@value)
	
l7330:	
;lcd44780.c: 66: RB4 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u1081
	goto	u1080
	
u1081:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u1094
u1080:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u1094:
	line	67
;lcd44780.c: 67: value >>= 1;
	clrc
	rrf	(lcd_write4bits@value),f
	line	68
;lcd44780.c: 68: RB5 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u1101
	goto	u1100
	
u1101:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u1114
u1100:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u1114:
	line	69
;lcd44780.c: 69: value >>= 1;
	clrc
	rrf	(lcd_write4bits@value),f
	line	70
;lcd44780.c: 70: RB6 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u1121
	goto	u1120
	
u1121:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u1134
u1120:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u1134:
	line	71
;lcd44780.c: 71: value >>= 1;
	clrc
	rrf	(lcd_write4bits@value),f
	line	72
;lcd44780.c: 72: RB7 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u1141
	goto	u1140
	
u1141:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u1154
u1140:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u1154:
	line	78
	
l7332:	
;lcd44780.c: 78: lcd_pulse_enable();
	fcall	_lcd_pulse_enable
	line	83
	
l1893:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
;; =============== function _lcd_write4bits ends ============

	signat	_lcd_write4bits,4216
	global	_ser_puts
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

;; *************** function _ser_puts *****************
;; Defined at:
;;		line 90 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_12(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_12(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 140/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text643
	file	"../../../lib/ser.c"
	line	90
	global	__size_of_ser_puts
	__size_of_ser_puts	equ	__end_of_ser_puts-_ser_puts
	
_ser_puts:	
	opt	stack 5
; Regs used in _ser_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ser_puts@s stored from wreg
	movwf	(ser_puts@s)
	line	91
	
l7090:	
;ser.c: 91: while(*s)
	goto	l7096
	line	92
	
l7092:	
;ser.c: 92: ser_putch(*s++);
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(?_ser_putch)
	fcall	_ser_putch
	
l7094:	
	incf	(ser_puts@s),f
	line	91
	
l7096:	
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u751
	goto	u750
u751:
	goto	l7092
u750:
	line	93
	
l2615:	
	return
	opt stack 0
GLOBAL	__end_of_ser_puts
	__end_of_ser_puts:
;; =============== function _ser_puts ends ============

	signat	_ser_puts,4216
	global	_lcd_pulse_enable
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function _lcd_pulse_enable *****************
;; Defined at:
;;		line 48 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_write4bits
;; This function uses a non-reentrant model
;;
psect	text644
	file	"../../../lib/lcd44780.c"
	line	48
	global	__size_of_lcd_pulse_enable
	__size_of_lcd_pulse_enable	equ	__end_of_lcd_pulse_enable-_lcd_pulse_enable
	
_lcd_pulse_enable:	
	opt	stack 2
; Regs used in _lcd_pulse_enable: [wreg]
	line	52
	
l7324:	
;lcd44780.c: 52: RB3 = 1;
	bsf	(51/8),(51)&7
	line	53
	
l7326:	
;lcd44780.c: 53: _delay((unsigned long)((4)*(20000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_pulse_enable+0)+0,f
u1387:
decfsz	(??_lcd_pulse_enable+0)+0,f
	goto	u1387
	clrwdt
opt asmopt_on

	line	54
	
l7328:	
;lcd44780.c: 54: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	55
;lcd44780.c: 55: _delay((unsigned long)((100)*(20000000/4000000.0)));
	opt asmopt_off
movlw	166
movwf	(??_lcd_pulse_enable+0)+0,f
u1397:
decfsz	(??_lcd_pulse_enable+0)+0,f
	goto	u1397
	clrwdt
opt asmopt_on

	line	56
	
l1890:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_pulse_enable
	__end_of_lcd_pulse_enable:
;; =============== function _lcd_pulse_enable ends ============

	signat	_lcd_pulse_enable,88
	global	_format_number
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

;; *************** function _format_number *****************
;; Defined at:
;;		line 6 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  putchar         1    wreg     PTR FTN(unsigned char ,)
;;		 -> ser_putch(0), 
;;  n               2    3[BANK0 ] unsigned int 
;;  base            1    5[BANK0 ] unsigned char 
;;  pad             1    6[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  putchar         1   43[BANK0 ] PTR FTN(unsigned char ,)
;;		 -> ser_putch(0), 
;;  buf            32    8[BANK0 ] unsigned char [32]
;;  i               1   45[BANK0 ] char 
;;  di              1   44[BANK0 ] unsigned char 
;;  padchar         1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      38       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      43       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwmod
;;		___lwdiv
;;		_ser_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text645
	file	"../../../lib/format.c"
	line	6
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:	
	opt	stack 5
; Regs used in _format_number: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;format_number@putchar stored from wreg
	line	9
	movwf	(format_number@putchar)
	
l7284:	
;format.c: 7: uint8_t buf[8 * sizeof(long)];
;format.c: 8: uint8_t di;
;format.c: 9: int8_t i = 0;
	clrf	(format_number@i)
	line	10
	
l7286:	
;format.c: 10: char padchar = ' ';
	movlw	(020h)
	movwf	(format_number@padchar)
	line	12
	
l7288:	
;format.c: 12: if(pad < 0)
	btfss	(format_number@pad),7
	goto	u1031
	goto	u1030
u1031:
	goto	l7294
u1030:
	line	14
	
l7290:	
;format.c: 13: {
;format.c: 14: pad = -pad;
	comf	(format_number@pad),f
	incf	(format_number@pad),f
	line	15
	
l7292:	
;format.c: 15: padchar = '0';
	movlw	(030h)
	movwf	(format_number@padchar)
	line	28
	
l7294:	
;format.c: 24: {
;format.c: 28: di = n % base;
	movf	(format_number@base),w
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(format_number@n+1),w
	movwf	1+(?___lwmod)+02h
	movf	(format_number@n),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(format_number@di)
	line	29
	
l7296:	
;format.c: 29: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	movlw	(0Ah)
	subwf	(format_number@di),w
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l7300
u1040:
	
l7298:	
	movf	(format_number@di),w
	movwf	(_format_number$1902)
	clrf	(_format_number$1902+1)
	movlw	037h
	addwf	(_format_number$1902),f
	skipnc
	incf	(_format_number$1902+1),f
	goto	l7302
	
l7300:	
	movf	(format_number@di),w
	movwf	(_format_number$1902)
	clrf	(_format_number$1902+1)
	movlw	030h
	addwf	(_format_number$1902),f
	skipnc
	incf	(_format_number$1902+1),f
	
l7302:	
	movf	(format_number@i),w
	addlw	format_number@buf&0ffh
	movwf	fsr0
	movf	(_format_number$1902),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7304:	
	incf	(format_number@i),f
	line	31
	
l7306:	
;format.c: 31: n /= base;
	movf	(format_number@base),w
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(format_number@n+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(format_number@n),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(format_number@n+1)
	movf	(0+(?___lwdiv)),w
	movwf	(format_number@n)
	line	33
	
l7308:	
;format.c: 32: }
;format.c: 33: while(n > 0);
	movf	((format_number@n+1)),w
	iorwf	((format_number@n)),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l7294
u1050:
	goto	l7312
	line	36
	
l7310:	
;format.c: 36: putchar(padchar);
	movf	(format_number@padchar),w
	movwf	(?_ser_putch)
	movf	(format_number@putchar),w
	fcall	fptable
	line	35
	
l7312:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(format_number@pad),w
	decf	(format_number@pad),f
	xorlw	80h
	movwf	(??_format_number+0)+0
	movf	(format_number@i),w
	xorlw	80h
	subwf	(??_format_number+0)+0
	skipnc
	goto	u1061
	goto	u1060
u1061:
	goto	l7310
u1060:
	line	38
	
l7314:	
;format.c: 38: for(; i > 0; i--)
	movf	(format_number@i),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipnc
	goto	u1071
	goto	u1070
u1071:
	goto	l7318
u1070:
	goto	l1267
	line	39
	
l7318:	
;format.c: 39: putchar((char)buf[(int16_t)i - 1]);
	movf	(format_number@i),w
	addlw	0FFh
	addlw	format_number@buf&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(?_ser_putch)
	movf	(format_number@putchar),w
	fcall	fptable
	line	38
	
l7320:	
	bcf	status, 5	;RP0=0, select bank0
	decf	(format_number@i),f
	goto	l7314
	line	41
	
l1267:	
	return
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
;; =============== function _format_number ends ============

	signat	_format_number,16504
	global	___lwmod
psect	text646,local,class=CODE,delta=2
global __ptext646
__ptext646:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_display_print_number
;; This function uses a non-reentrant model
;;
psect	text646
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l7024:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u661
	goto	u660
u661:
	goto	l7040
u660:
	line	9
	
l7026:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l7030
	line	11
	
l7028:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l7030:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u671
	goto	u670
u671:
	goto	l7028
u670:
	line	15
	
l7032:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u685
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u685:
	skipc
	goto	u681
	goto	u680
u681:
	goto	l7036
u680:
	line	16
	
l7034:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l7036:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l7038:	
	decfsz	(___lwmod@counter),f
	goto	u691
	goto	u690
u691:
	goto	l7032
u690:
	line	20
	
l7040:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l5864:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text647,local,class=CODE,delta=2
global __ptext647
__ptext647:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_display_print_number
;; This function uses a non-reentrant model
;;
psect	text647
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l7258:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l7260:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u991
	goto	u990
u991:
	goto	l7280
u990:
	line	11
	
l7262:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l7266
	line	13
	
l7264:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l7266:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l7264
u1000:
	line	17
	
l7268:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l7270:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1015
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1015:
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l7276
u1010:
	line	19
	
l7272:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l7274:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l7276:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l7278:	
	decfsz	(___lwdiv@counter),f
	goto	u1021
	goto	u1020
u1021:
	goto	l7268
u1020:
	line	25
	
l7280:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l5854:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_setup_timer0
psect	text648,local,class=CODE,delta=2
global __ptext648
__ptext648:

;; *************** function _setup_timer0 *****************
;; Defined at:
;;		line 8 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 17F/20
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text648
	file	"../../../lib/timer.c"
	line	8
	global	__size_of_setup_timer0
	__size_of_setup_timer0	equ	__end_of_setup_timer0-_setup_timer0
	
_setup_timer0:	
	opt	stack 5
; Regs used in _setup_timer0: [wreg+status,2+status,0]
	line	11
	
l6956:	
;timer.c: 11: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7
	line	22
;timer.c: 22: PSA = (0 == 0);
	bsf	(1035/8)^080h,(1035)&7
	line	25
	
l6958:	
;timer.c: 25: OPTION_REGbits.PS = 0 - 1;
	movlw	(07h & ((1<<3)-1))<<0
	iorwf	(129)^080h,f	;volatile
	line	28
	
l3246:	
	return
	opt stack 0
GLOBAL	__end_of_setup_timer0
	__end_of_setup_timer0:
;; =============== function _setup_timer0 ends ============

	signat	_setup_timer0,88
	global	_ser_init
psect	text649,local,class=CODE,delta=2
global __ptext649
__ptext649:

;; *************** function _ser_init *****************
;; Defined at:
;;		line 119 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text649
	file	"../../../lib/ser.c"
	line	119
	global	__size_of_ser_init
	__size_of_ser_init	equ	__end_of_ser_init-_ser_init
	
_ser_init:	
	opt	stack 5
; Regs used in _ser_init: [wreg+status,2]
	line	120
	
l6932:	
;ser.c: 120: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1218/8)^080h,(1218)&7
	line	125
	
l6934:	
;ser.c: 125: SPBRG = ser_brg;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	128
	
l6936:	
;ser.c: 128: TX9 = 0;
	bcf	(1222/8)^080h,(1222)&7
	line	129
	
l6938:	
;ser.c: 129: RX9 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7
	line	131
	
l6940:	
;ser.c: 131: SYNC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	132
	
l6942:	
;ser.c: 132: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	133
	
l6944:	
;ser.c: 133: CREN = 1;
	bsf	(196/8),(196)&7
	line	134
	
l6946:	
;ser.c: 134: TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1124/8)^080h,(1124)&7
	line	135
	
l6948:	
;ser.c: 135: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	136
	
l6950:	
;ser.c: 136: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	137
	
l6952:	
;ser.c: 137: PEIE = 1;
	bsf	(94/8),(94)&7
	line	139
	
l6954:	
;ser.c: 139: rxiptr = rxoptr = txiptr = txoptr = 0;
	clrf	(_txoptr)	;volatile
	clrf	(_txiptr)	;volatile
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_rxoptr)	;volatile
	clrf	(_rxiptr)	;volatile
	line	140
	
l2631:	
	return
	opt stack 0
GLOBAL	__end_of_ser_init
	__end_of_ser_init:
;; =============== function _ser_init ends ============

	signat	_ser_init,88
	global	_ser_putch
psect	text650,local,class=CODE,delta=2
global __ptext650
__ptext650:

;; *************** function _ser_putch *****************
;; Defined at:
;;		line 80 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ser_puts
;;		_main
;;		_format_number
;; This function uses a non-reentrant model
;;
psect	text650
	file	"../../../lib/ser.c"
	line	80
	global	__size_of_ser_putch
	__size_of_ser_putch	equ	__end_of_ser_putch-_ser_putch
	
_ser_putch:	
	opt	stack 5
; Regs used in _ser_putch: [wreg-fsr0h+status,2+status,0]
	line	81
	
l6918:	
;ser.c: 81: while(((txiptr + 1) & (16-1)) == txoptr)
	
l6920:	
	incf	(_txiptr),w	;volatile
	andlw	0Fh
	xorwf	(_txoptr),w	;volatile
	skipnz
	goto	u511
	goto	u510
u511:
	goto	l6920
u510:
	
l2608:	
	line	83
;ser.c: 83: GIE = 0;
	bcf	(95/8),(95)&7
	line	84
	
l6922:	
;ser.c: 84: txfifo[txiptr] = c;
	movf	(_txiptr),w
	addlw	_txfifo&0ffh
	movwf	fsr0
	movf	(ser_putch@c),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	85
	
l6924:	
;ser.c: 85: txiptr = (txiptr + 1) & (16-1);
	incf	(_txiptr),f	;volatile
	
l6926:	
	movlw	(0Fh)
	andwf	(_txiptr),f	;volatile
	line	86
	
l6928:	
;ser.c: 86: TXIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1124/8)^080h,(1124)&7
	line	87
	
l6930:	
;ser.c: 87: GIE = 1;
	bsf	(95/8),(95)&7
	line	88
	
l2609:	
	return
	opt stack 0
GLOBAL	__end_of_ser_putch
	__end_of_ser_putch:
;; =============== function _ser_putch ends ============

	signat	_ser_putch,4216
	global	_lcd_init
psect	text651,local,class=CODE,delta=2
global __ptext651
__ptext651:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 510 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text651
	file	"../../../lib/lcd44780.c"
	line	510
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0]
;lcd_init@fourbitmode stored from wreg
	line	512
	movwf	(lcd_init@fourbitmode)
	
l6888:	
;lcd44780.c: 512: LCD_ctrl = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_LCD_ctrl)
	line	513
	
l6890:	
;lcd44780.c: 513: LCD_function = (fourbitmode ? 0x00 : 0x10);
	movf	(lcd_init@fourbitmode),f
	skipz
	goto	u501
	goto	u500
u501:
	goto	l6894
u500:
	
l6892:	
	movlw	010h
	movwf	(_lcd_init$2694)
	clrf	(_lcd_init$2694+1)
	goto	l6896
	
l6894:	
	clrf	(_lcd_init$2694)
	clrf	(_lcd_init$2694+1)
	
l6896:	
	movf	(_lcd_init$2694),w
	movwf	(_LCD_function)
	line	515
	
l6898:	
;lcd44780.c: 515: LCD_lines = 0;
	clrf	(_LCD_lines)
	line	517
	
l6900:	
;lcd44780.c: 517: LCD_mode = 0;
	clrf	(_LCD_mode)
	line	519
	
l6902:	
;lcd44780.c: 519: TRISB2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1074/8)^080h,(1074)&7
	line	520
	
l6904:	
;lcd44780.c: 520: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(50/8),(50)&7
	line	525
	
l6906:	
;lcd44780.c: 525: TRISB3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7
	line	526
	
l6908:	
;lcd44780.c: 526: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7
	line	528
	
l6910:	
;lcd44780.c: 528: TRISB4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7
	line	529
	
l6912:	
;lcd44780.c: 529: TRISB5 = 0;
	bcf	(1077/8)^080h,(1077)&7
	line	530
	
l6914:	
;lcd44780.c: 530: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7
	line	531
	
l6916:	
;lcd44780.c: 531: TRISB7 = 0;
	bcf	(1079/8)^080h,(1079)&7
	line	541
	
l1967:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,4216
	global	_isr
psect	text652,local,class=CODE,delta=2
global __ptext652
__ptext652:

;; *************** function _isr *****************
;; Defined at:
;;		line 50 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  5184[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 40/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text652
	file	"../../../src/LC-meter.c"
	line	50
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 1
; Regs used in _isr: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	ljmp	_isr
psect	text652
	line	62
	
i1l6960:	
;LC-meter.c: 62: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l6972
u52_20:
	line	66
	
i1l6962:	
;LC-meter.c: 63: {
;LC-meter.c: 66: bres += 256;
	movlw	(0100h >> 8)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_bres+1),f	;volatile
	line	67
;LC-meter.c: 67: if(bres >= 5000)
	movlw	high(01388h)
	subwf	(_bres+1),w	;volatile
	movlw	low(01388h)
	skipnz
	subwf	(_bres),w	;volatile
	skipc
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l6970
u53_20:
	line	69
	
i1l6964:	
;LC-meter.c: 68: {
;LC-meter.c: 69: bres -= 5000;
	movlw	low(01388h)
	subwf	(_bres),f	;volatile
	movlw	high(01388h)
	skipc
	decf	(_bres+1),f	;volatile
	subwf	(_bres+1),f	;volatile
	line	70
	
i1l6966:	
;LC-meter.c: 70: seconds++;
	incf	(_seconds),f	;volatile
	skipnz
	incf	(_seconds+1),f	;volatile
	line	72
	
i1l6968:	
	btfss	(_seconds),(0)&7	;volatile
	goto	u54_21
	goto	u54_20
	
u54_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u55_24
u54_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u55_24:
	btfsc	(59/8),(59)&7
	goto	u55_21
	goto	u55_20
	
u55_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	goto	u56_24
u55_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
u56_24:
	line	75
	
i1l6970:	
;LC-meter.c: 73: }
;LC-meter.c: 75: T0IF = 0;
	bcf	(90/8),(90)&7
	line	95
	
i1l6972:	
;LC-meter.c: 76: }
;LC-meter.c: 95: if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; } if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; } };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l6984
u57_20:
	
i1l6974:	
	movf	(_rxiptr),w
	addlw	_rxfifo&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank1
	movwf	indf
	
i1l6976:	
	incf	(_rxiptr),w	;volatile
	movwf	(_ser_tmp)
	
i1l6978:	
	movlw	(0Fh)
	andwf	(_ser_tmp),f
	
i1l6980:	
	movf	(_ser_tmp),w
	xorwf	(_rxoptr),w	;volatile
	skipnz
	goto	u58_21
	goto	u58_20
u58_21:
	goto	i1l6984
u58_20:
	
i1l6982:	
	movf	(_ser_tmp),w
	movwf	(_rxiptr)	;volatile
	
i1l6984:	
	btfss	(100/8),(100)&7
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l5193
u59_20:
	
i1l6986:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1124/8)^080h,(1124)&7
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l5193
u60_20:
	
i1l6988:	
	movf	(_txoptr),w
	addlw	_txfifo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	
i1l6990:	
	incf	(_txoptr),f	;volatile
	
i1l6992:	
	movlw	(0Fh)
	andwf	(_txoptr),f	;volatile
	
i1l6994:	
	movf	(_txoptr),w	;volatile
	xorwf	(_txiptr),w	;volatile
	skipz
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l5193
u61_20:
	
i1l6996:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1124/8)^080h,(1124)&7
	line	97
	
i1l5193:	
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	swapf	(??_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,90
	global	fptotal
fptotal equ 2
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__ser_putch:
entry__ser_putch:
	global	entry__ser_putch
	ljmp	_ser_putch
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
