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
# 24 "LC-meter.c"
	psect config,class=CONFIG,delta=2 ;#
# 24 "LC-meter.c"
	dw (0xFFFE & 0xFFFF & 0xFFF7) ;#
	FNCALL	_main,_initialize
	FNCALL	_main,_lcd_set_cursor
	FNCALL	_main,_lcd_print
	FNCALL	_main,_display_print_number
	FNCALL	_initialize,_setup_timer0
	FNCALL	_initialize,_uart_init
	FNCALL	_initialize,_lcd_init
	FNCALL	_initialize,_lcd_begin
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_display_print_number,___lwmod
	FNCALL	_display_print_number,___lwdiv
	FNCALL	_display_print_number,_lcd_putch
	FNCALL	_lcd_print,_lcd_putch
	FNCALL	_lcd_set_cursor,_lcd_command
	FNCALL	_lcd_command,_lcd_send
	FNCALL	_lcd_putch,_lcd_send
	FNCALL	_lcd_send,_lcd_write4bits
	FNCALL	_lcd_write4bits,_lcd_pulse_enable
	FNCALL	_uart_init,_uart_enable
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	lcd_set_cursor@F1131
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"lcd44780.c"
	line	162

;initializer for lcd_set_cursor@F1131
	retlw	0
	retlw	040h
	retlw	014h
	retlw	054h
	global	_ccp1t
	global	_ccp1t_lr
	global	_bres
	global	_seconds
	global	_tmr0_overflow
	global	_LCD_lines
	global	_LCD_mode
	global	_LCD_ctrl
	global	_LCD_function
	global	_TMR0
_TMR0	set	1
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
	global	_RC5
_RC5	set	61
	global	_RX9D
_RX9D	set	192
	global	_SPEN
_SPEN	set	199
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
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
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
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
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
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
	
STR_1:	
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
	
STR_11:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	45	;'-'
	retlw	42	;'*'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_6:	
	retlw	109	;'m'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_8:	
	retlw	110	;'n'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_9:	
	retlw	112	;'p'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_7:	
	retlw	117	;'u'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_3:	
	retlw	109	;'m'
	retlw	72	;'H'
	retlw	0
psect	strings
	
STR_5:	
	retlw	110	;'n'
	retlw	72	;'H'
	retlw	0
psect	strings
	
STR_4:	
	retlw	117	;'u'
	retlw	72	;'H'
	retlw	0
psect	strings
STR_2	equ	STR_3+1
	file	"build/htc-16f876a\LC_meter_HD44780_release.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_LCD_ctrl:
       ds      1

_LCD_function:
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

_LCD_lines:
       ds      1

_LCD_mode:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"lcd44780.c"
lcd_set_cursor@F1131:
       ds      4

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+014h)
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
	global	?_lcd_print
?_lcd_print:	; 0 bytes @ 0x0
	global	?_setup_timer0
?_setup_timer0:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	??_isr
??_isr:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_pulse_enable
?_lcd_pulse_enable:	; 0 bytes @ 0x0
	global	?_lcd_write4bits
?_lcd_write4bits:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	?_uart_enable
?_uart_enable:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 2 bytes @ 0x0
	ds	2
	global	??_setup_timer0
??_setup_timer0:	; 0 bytes @ 0x2
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x2
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x2
	global	??_lcd_pulse_enable
??_lcd_pulse_enable:	; 0 bytes @ 0x2
	global	??_uart_enable
??_uart_enable:	; 0 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_write4bits
??_lcd_write4bits:	; 0 bytes @ 0x3
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x3
	global	_lcd_init$2730
_lcd_init$2730:	; 2 bytes @ 0x3
	ds	1
	global	?_lcd_send
?_lcd_send:	; 0 bytes @ 0x4
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_send
??_lcd_send:	; 0 bytes @ 0x5
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x6
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x6
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x6
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x6
	global	lcd_putch@value
lcd_putch@value:	; 1 bytes @ 0x6
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	?_lcd_set_cursor
?_lcd_set_cursor:	; 0 bytes @ 0x7
	global	??_lcd_print
??_lcd_print:	; 0 bytes @ 0x7
	global	?_lcd_begin
?_lcd_begin:	; 0 bytes @ 0x7
	global	lcd_set_cursor@row
lcd_set_cursor@row:	; 1 bytes @ 0x7
	global	lcd_print@string
lcd_print@string:	; 1 bytes @ 0x7
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_set_cursor
??_lcd_set_cursor:	; 0 bytes @ 0x8
	global	??_lcd_begin
??_lcd_begin:	; 0 bytes @ 0x8
	global	lcd_print@i
lcd_print@i:	; 1 bytes @ 0x8
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	2
	global	??_initialize
??_initialize:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_display_print_number
?_display_print_number:	; 0 bytes @ 0x0
	global	lcd_set_cursor@col
lcd_set_cursor@col:	; 1 bytes @ 0x0
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0x0
	global	display_print_number@n
display_print_number@n:	; 2 bytes @ 0x0
	ds	1
	global	lcd_set_cursor@row_offsets
lcd_set_cursor@row_offsets:	; 4 bytes @ 0x1
	ds	1
	global	display_print_number@base
display_print_number@base:	; 1 bytes @ 0x2
	ds	1
	global	display_print_number@pad
display_print_number@pad:	; 1 bytes @ 0x3
	ds	1
	global	??_display_print_number
??_display_print_number:	; 0 bytes @ 0x4
	ds	3
	global	display_print_number@buf
display_print_number@buf:	; 32 bytes @ 0x7
	ds	32
	global	_display_print_number$3509
_display_print_number$3509:	; 2 bytes @ 0x27
	ds	2
	global	display_print_number@di
display_print_number@di:	; 1 bytes @ 0x29
	ds	1
	global	display_print_number@i
display_print_number@i:	; 1 bytes @ 0x2A
	ds	1
;;Data sizes: Strings 38, constant 0, data 4, bss 22, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      12
;; BANK0           80     43      67
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; display_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;;		 -> STR_9(CODE[3]), STR_8(CODE[3]), STR_7(CODE[3]), STR_6(CODE[3]), 
;;		 -> STR_5(CODE[3]), STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[2]), 
;;
;; lcd_print@string	PTR const unsigned char  size(1) Largest target is 9
;;		 -> STR_11(CODE[4]), STR_10(CODE[4]), STR_9(CODE[3]), STR_8(CODE[3]), 
;;		 -> STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), STR_4(CODE[3]), 
;;		 -> STR_3(CODE[3]), STR_2(CODE[2]), STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _initialize->_lcd_begin
;;   _lcd_begin->_lcd_command
;;   _display_print_number->___lwdiv
;;   _lcd_print->_lcd_putch
;;   _lcd_set_cursor->_lcd_command
;;   _lcd_command->_lcd_send
;;   _lcd_putch->_lcd_send
;;   _lcd_send->_lcd_write4bits
;;   _lcd_write4bits->_lcd_pulse_enable
;;
;; Critical Paths under _isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_display_print_number
;;   _initialize->_lcd_begin
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
;; (0) _main                                                 1     1      0    2555
;;                         _initialize
;;                     _lcd_set_cursor
;;                          _lcd_print
;;               _display_print_number
;; ---------------------------------------------------------------------------------
;; (1) _initialize                                           0     0      0     560
;;                       _setup_timer0
;;                          _uart_init
;;                           _lcd_init
;;                          _lcd_begin
;; ---------------------------------------------------------------------------------
;; (2) _lcd_begin                                            4     3      1     514
;;                                              7 COMMON     3     2      1
;;                                              0 BANK0      1     1      0
;;                     _lcd_write4bits
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _display_print_number                                43    39      4    1141
;;                                              0 BANK0     43    39      4
;;                            ___lwmod
;;                            ___lwdiv
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (1) _lcd_print                                            2     2      0     387
;;                                              7 COMMON     2     2      0
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (1) _lcd_set_cursor                                       6     5      1     467
;;                                              7 COMMON     1     0      1
;;                                              0 BANK0      5     5      0
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (2) _lcd_command                                          1     1      0     257
;;                                              6 COMMON     1     1      0
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putch                                            1     1      0     257
;;                                              6 COMMON     1     1      0
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (3) _lcd_send                                             2     1      1     226
;;                                              4 COMMON     2     1      1
;;                     _lcd_write4bits
;; ---------------------------------------------------------------------------------
;; (4) _lcd_write4bits                                       1     1      0     133
;;                                              3 COMMON     1     1      0
;;                   _lcd_pulse_enable
;; ---------------------------------------------------------------------------------
;; (5) _lcd_pulse_enable                                     1     1      0       0
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _uart_init                                            0     0      0       0
;;                        _uart_enable
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              2 COMMON     5     1      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              2 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) _uart_enable                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init                                             3     3      0      46
;;                                              2 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _setup_timer0                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _isr                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initialize
;;     _setup_timer0
;;     _uart_init
;;       _uart_enable
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      55      12        0.0%
;;ABS                  0      0      4F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       6       2        0.0%
;;BANK0               50     2B      43       5       83.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 93 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  led_value       1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_initialize
;;		_lcd_set_cursor
;;		_lcd_print
;;		_display_print_number
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"LC-meter.c"
	line	93
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	101
	
l5621:	
	fcall	_initialize
	line	104
	
l5623:	
	clrf	(?_lcd_set_cursor)
	movlw	(0)
	fcall	_lcd_set_cursor
	line	106
	
l5625:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_print
	line	124
	
l5627:	
	clrf	(?_lcd_set_cursor)
	incf	(?_lcd_set_cursor),f
	movlw	(0)
	fcall	_lcd_set_cursor
	line	125
	
l5629:	
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
	line	129
	goto	l5627
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	130
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initialize
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

;; *************** function _initialize *****************
;; Defined at:
;;		line 146 in file "LC-meter.c"
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
;;		_uart_init
;;		_lcd_init
;;		_lcd_begin
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text509
	file	"LC-meter.c"
	line	146
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:	
	opt	stack 1
; Regs used in _initialize: [wreg+status,2+status,0+pclath+cstack]
	line	148
	
l5595:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1248/8)^080h,(1248)&7
	line	149
	bcf	(1249/8)^080h,(1249)&7
	line	150
	bsf	(1250/8)^080h,(1250)&7
	line	152
	
l5597:	
	movlw	(0CFh)
	movwf	(133)^080h	;volatile
	line	154
	
l5599:	
	fcall	_setup_timer0
	line	155
	
l5601:	
	bsf	(93/8),(93)&7
	line	156
	
l5603:	
	bcf	(90/8),(90)&7
	line	166
	
l5605:	
	bsf	(1084/8)^080h,(1084)&7
	line	167
	
l5607:	
	bsf	(1039/8)^080h,(1039)&7
	line	169
	
l5609:	
	bcf	(1083/8)^080h,(1083)&7
	bcf	(1066/8)^080h,(1066)&7
	line	170
	
l5611:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(59/8),(59)&7
	btfsc	(59/8),(59)&7
	goto	u931
	goto	u930
	
u931:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	goto	u944
u930:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
u944:
	line	172
	fcall	_uart_init
	line	174
	
l5613:	
	bcf	(1085/8)^080h,(1085)&7
	line	175
	
l5615:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(61/8),(61)&7
	line	177
	
l5617:	
	bsf	(94/8),(94)&7
	line	178
	
l5619:	
	bsf	(95/8),(95)&7
	line	185
	movlw	(01h)
	fcall	_lcd_init
	line	186
	clrf	(?_lcd_begin)
	incf	(?_lcd_begin),f
	movlw	(02h)
	fcall	_lcd_begin
	line	188
	
l662:	
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
;; =============== function _initialize ends ============

	signat	_initialize,88
	global	_lcd_begin
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 437 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       1       0       0       0
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
psect	text510
	file	"lcd44780.c"
	line	437
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:	
	opt	stack 1
; Regs used in _lcd_begin: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(lcd_begin@lines)
	line	438
	
l5551:	
	movlw	(02h)
	subwf	(lcd_begin@lines),w
	skipc
	goto	u891
	goto	u890
u891:
	goto	l5555
u890:
	line	439
	
l5553:	
	bsf	(_LCD_function)+(3/8),(3)&7
	line	442
	
l5555:	
	movf	(lcd_begin@lines),w
	movwf	(_LCD_lines)
	line	446
	movf	(lcd_begin@dotsize),w
	skipz
	goto	u900
	goto	l5561
u900:
	
l5557:	
	decf	(lcd_begin@lines),w
	skipz
	goto	u911
	goto	u910
u911:
	goto	l5561
u910:
	line	447
	
l5559:	
	bsf	(_LCD_function)+(2/8),(2)&7
	line	449
	
l5561:	
	opt asmopt_off
movlw	98
movwf	((??_lcd_begin+0)+0+1),f
	movlw	101
movwf	((??_lcd_begin+0)+0),f
u957:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u957
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u957
	nop2
opt asmopt_on

	line	452
	
l5563:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	453
	
l5565:	
	bcf	(51/8),(51)&7
	line	456
	
l5567:	
	btfsc	(_LCD_function),(4)&7
	goto	u921
	goto	u920
u921:
	goto	l5579
u920:
	line	460
	
l5569:	
	movlw	(03h)
	fcall	_lcd_write4bits
	line	461
	
l5571:	
	opt asmopt_off
movlw	33
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u967:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u967
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u967
	clrwdt
opt asmopt_on

	line	463
	
l5573:	
	movlw	(03h)
	fcall	_lcd_write4bits
	line	464
	opt asmopt_off
movlw	249
movwf	(??_lcd_begin+0)+0,f
u977:
decfsz	(??_lcd_begin+0)+0,f
	goto	u977
	nop2	;nop
opt asmopt_on

	line	466
	
l5575:	
	movlw	(03h)
	fcall	_lcd_write4bits
	line	467
	
l5577:	
	opt asmopt_off
movlw	249
movwf	(??_lcd_begin+0)+0,f
u987:
decfsz	(??_lcd_begin+0)+0,f
	goto	u987
	nop2	;nop
opt asmopt_on

	line	469
	movlw	(02h)
	fcall	_lcd_write4bits
	line	470
	goto	l5587
	line	476
	
l5579:	
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	477
	
l5581:	
	opt asmopt_off
movlw	33
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u997:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u997
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u997
	clrwdt
opt asmopt_on

	line	480
	
l5583:	
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	481
	opt asmopt_off
movlw	33
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u1007:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u1007
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u1007
	clrwdt
opt asmopt_on

	line	485
	
l5585:	
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	489
	
l5587:	
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	492
	movlw	(04h)
	movwf	(_LCD_ctrl)
	line	493
	
l5589:	
	movf	(_LCD_ctrl),w
	iorlw	08h
	fcall	_lcd_command
	line	496
	
l5591:	
	movlw	(01h)
	fcall	_lcd_command
	line	497
	opt asmopt_off
movlw	13
movwf	((??_lcd_begin+0)+0+1),f
	movlw	251
movwf	((??_lcd_begin+0)+0),f
u1017:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u1017
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u1017
	nop2
opt asmopt_on

	line	500
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mode)
	line	502
	
l5593:	
	movf	(_LCD_mode),w
	iorlw	04h
	fcall	_lcd_command
	line	503
	
l2004:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
;; =============== function _lcd_begin ends ============

	signat	_lcd_begin,8312
	global	_display_print_number
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

;; *************** function _display_print_number *****************
;; Defined at:
;;		line 149 in file "display.c"
;; Parameters:    Size  Location     Type
;;  n               2    0[BANK0 ] unsigned short 
;;  base            1    2[BANK0 ] unsigned char 
;;  pad             1    3[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  buf            32    7[BANK0 ] unsigned char [32]
;;  i               1   42[BANK0 ] unsigned char 
;;  di              1   41[BANK0 ] unsigned char 
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
psect	text511
	file	"display.c"
	line	149
	global	__size_of_display_print_number
	__size_of_display_print_number	equ	__end_of_display_print_number-_display_print_number
	
_display_print_number:	
	opt	stack 2
; Regs used in _display_print_number: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	152
	
l5519:	
	clrf	(display_print_number@i)
	line	163
	
l5521:	
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
	line	164
	
l5523:	
	movlw	(0Ah)
	subwf	(display_print_number@di),w
	skipc
	goto	u851
	goto	u850
u851:
	goto	l5527
u850:
	
l5525:	
	movf	(display_print_number@di),w
	movwf	(_display_print_number$3509)
	clrf	(_display_print_number$3509+1)
	movlw	037h
	addwf	(_display_print_number$3509),f
	skipnc
	incf	(_display_print_number$3509+1),f
	goto	l5529
	
l5527:	
	movf	(display_print_number@di),w
	movwf	(_display_print_number$3509)
	clrf	(_display_print_number$3509+1)
	movlw	030h
	addwf	(_display_print_number$3509),f
	skipnc
	incf	(_display_print_number$3509+1),f
	
l5529:	
	movf	(display_print_number@i),w
	addlw	display_print_number@buf&0ffh
	movwf	fsr0
	movf	(_display_print_number$3509),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5531:	
	incf	(display_print_number@i),f
	line	166
	
l5533:	
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
	line	167
	
l5535:	
	movf	((display_print_number@n+1)),w
	iorwf	((display_print_number@n)),w
	skipz
	goto	u861
	goto	u860
u861:
	goto	l5521
u860:
	goto	l5539
	line	170
	
l5537:	
	movlw	(020h)
	fcall	_lcd_putch
	line	169
	
l5539:	
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
	goto	u875
	movf	(display_print_number@i),w
	subwf	0+(??_display_print_number+0)+0,w
u875:

	skipnc
	goto	u871
	goto	u870
u871:
	goto	l5537
u870:
	line	172
	
l5541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_print_number@i),f
	skipz
	goto	u881
	goto	u880
u881:
	goto	l5545
u880:
	goto	l2659
	line	173
	
l5545:	
	movf	(display_print_number@i),w
	addlw	0FFh
	addlw	display_print_number@buf&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_putch
	line	172
	
l5547:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(display_print_number@i),f
	goto	l5541
	line	175
	
l2659:	
	return
	opt stack 0
GLOBAL	__end_of_display_print_number
	__end_of_display_print_number:
;; =============== function _display_print_number ends ============

	signat	_display_print_number,12408
	global	_lcd_print
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

;; *************** function _lcd_print *****************
;; Defined at:
;;		line 188 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_11(4), STR_10(4), STR_9(3), STR_8(3), 
;;		 -> STR_7(3), STR_6(3), STR_5(3), STR_4(3), 
;;		 -> STR_3(3), STR_2(2), STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  string          1    7[COMMON] PTR const unsigned char 
;;		 -> STR_11(4), STR_10(4), STR_9(3), STR_8(3), 
;;		 -> STR_7(3), STR_6(3), STR_5(3), STR_4(3), 
;;		 -> STR_3(3), STR_2(2), STR_1(9), 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text512
	file	"lcd44780.c"
	line	188
	global	__size_of_lcd_print
	__size_of_lcd_print	equ	__end_of_lcd_print-_lcd_print
	
_lcd_print:	
	opt	stack 2
; Regs used in _lcd_print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	190
	movwf	(lcd_print@string)
	
l5511:	
	clrf	(lcd_print@i)
	goto	l5517
	line	191
	
l5513:	
	movf	(lcd_print@i),w
	addwf	(lcd_print@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_putch
	line	190
	
l5515:	
	incf	(lcd_print@i),f
	
l5517:	
	movf	(lcd_print@i),w
	addwf	(lcd_print@string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u841
	goto	u840
u841:
	goto	l5513
u840:
	line	192
	
l1958:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_print
	__end_of_lcd_print:
;; =============== function _lcd_print ends ============

	signat	_lcd_print,4216
	global	_lcd_set_cursor
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

;; *************** function _lcd_set_cursor *****************
;; Defined at:
;;		line 160 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    0[BANK0 ] unsigned char 
;;  row_offsets     4    1[BANK0 ] unsigned char [4]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text513
	file	"lcd44780.c"
	line	160
	global	__size_of_lcd_set_cursor
	__size_of_lcd_set_cursor	equ	__end_of_lcd_set_cursor-_lcd_set_cursor
	
_lcd_set_cursor:	
	opt	stack 2
; Regs used in _lcd_set_cursor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	162
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_set_cursor@col)
	
l5505:	
	movf	(lcd_set_cursor@F1131+3),w
	movwf	(lcd_set_cursor@row_offsets+3)
	movf	(lcd_set_cursor@F1131+2),w
	movwf	(lcd_set_cursor@row_offsets+2)
	movf	(lcd_set_cursor@F1131+1),w
	movwf	(lcd_set_cursor@row_offsets+1)
	movf	(lcd_set_cursor@F1131),w
	movwf	(lcd_set_cursor@row_offsets)

	line	171
	decf	(_LCD_lines),w
	skipz
	goto	u831
	goto	u830
u831:
	goto	l5509
u830:
	line	172
	
l5507:	
	movlw	(014h)
	movwf	0+(lcd_set_cursor@row_offsets)+01h
	line	173
	movlw	(028h)
	movwf	0+(lcd_set_cursor@row_offsets)+02h
	line	174
	movlw	(03Ch)
	movwf	0+(lcd_set_cursor@row_offsets)+03h
	line	181
	
l5509:	
	movf	(lcd_set_cursor@row),w
	addlw	lcd_set_cursor@row_offsets&0ffh
	movwf	fsr0
	movf	(lcd_set_cursor@col),w
	bcf	status, 7	;select IRP bank0
	addwf	indf,w
	iorlw	080h
	fcall	_lcd_command
	line	182
	
l1952:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_set_cursor
	__end_of_lcd_set_cursor:
;; =============== function _lcd_set_cursor ends ============

	signat	_lcd_set_cursor,8312
	global	_lcd_command
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 152 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
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
psect	text514
	file	"lcd44780.c"
	line	152
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 2
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_command@value)
	line	153
	
l5503:	
	clrf	(?_lcd_send)
	movf	(lcd_command@value),w
	fcall	_lcd_send
	line	154
	
l1946:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	_lcd_putch
psect	text515,local,class=CODE,delta=2
global __ptext515
__ptext515:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 145 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
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
psect	text515
	file	"lcd44780.c"
	line	145
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 2
; Regs used in _lcd_putch: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_putch@value)
	line	146
	
l5501:	
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(lcd_putch@value),w
	fcall	_lcd_send
	line	147
	
l1943:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_lcd_send
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 128 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    5[COMMON] unsigned char 
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
psect	text516
	file	"lcd44780.c"
	line	128
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:	
	opt	stack 2
; Regs used in _lcd_send: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_send@value)
	line	129
	
l5497:	
	btfsc	(lcd_send@mode),0
	goto	u811
	goto	u810
	
u811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	goto	u824
u810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
u824:
	line	137
	
l5499:	
	swapf	(lcd_send@value),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	_lcd_write4bits
	line	138
	movf	(lcd_send@value),w
	fcall	_lcd_write4bits
	line	140
	
l1940:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
;; =============== function _lcd_send ends ============

	signat	_lcd_send,8312
	global	_lcd_write4bits
psect	text517,local,class=CODE,delta=2
global __ptext517
__ptext517:

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 61 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    3[COMMON] unsigned char 
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
psect	text517
	file	"lcd44780.c"
	line	61
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:	
	opt	stack 2
; Regs used in _lcd_write4bits: [wreg+status,2+status,0+pclath+cstack]
	line	66
	movwf	(lcd_write4bits@value)
	
l5493:	
	btfsc	(lcd_write4bits@value),0
	goto	u731
	goto	u730
	
u731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u744
u730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u744:
	line	67
	clrc
	rrf	(lcd_write4bits@value),f
	line	68
	btfsc	(lcd_write4bits@value),0
	goto	u751
	goto	u750
	
u751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u764
u750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u764:
	line	69
	clrc
	rrf	(lcd_write4bits@value),f
	line	70
	btfsc	(lcd_write4bits@value),0
	goto	u771
	goto	u770
	
u771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u784
u770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u784:
	line	71
	clrc
	rrf	(lcd_write4bits@value),f
	line	72
	btfsc	(lcd_write4bits@value),0
	goto	u791
	goto	u790
	
u791:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u804
u790:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u804:
	line	78
	
l5495:	
	fcall	_lcd_pulse_enable
	line	83
	
l1937:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
;; =============== function _lcd_write4bits ends ============

	signat	_lcd_write4bits,4216
	global	_lcd_pulse_enable
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:

;; *************** function _lcd_pulse_enable *****************
;; Defined at:
;;		line 48 in file "lcd44780.c"
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
psect	text518
	file	"lcd44780.c"
	line	48
	global	__size_of_lcd_pulse_enable
	__size_of_lcd_pulse_enable	equ	__end_of_lcd_pulse_enable-_lcd_pulse_enable
	
_lcd_pulse_enable:	
	opt	stack 2
; Regs used in _lcd_pulse_enable: [wreg]
	line	52
	
l5487:	
	bsf	(51/8),(51)&7
	line	53
	
l5489:	
	opt asmopt_off
movlw	6
movwf	(??_lcd_pulse_enable+0)+0,f
u1027:
decfsz	(??_lcd_pulse_enable+0)+0,f
	goto	u1027
	clrwdt
opt asmopt_on

	line	54
	
l5491:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	55
	opt asmopt_off
movlw	166
movwf	(??_lcd_pulse_enable+0)+0,f
u1037:
decfsz	(??_lcd_pulse_enable+0)+0,f
	goto	u1037
	clrwdt
opt asmopt_on

	line	56
	
l1934:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_pulse_enable
	__end_of_lcd_pulse_enable:
;; =============== function _lcd_pulse_enable ends ============

	signat	_lcd_pulse_enable,88
	global	_uart_init
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 92 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_enable
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text519
	file	"uart.c"
	line	92
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 4
; Regs used in _uart_init: [wreg+status,2+status,0+pclath+cstack]
	line	95
	
l5325:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	96
	bsf	(1086/8)^080h,(1086)&7
	line	97
	
l5327:	
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	99
	
l5329:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	line	100
	
l5331:	
	bcf	(192/8),(192)&7
	line	102
	
l5333:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1218/8)^080h,(1218)&7
	line	103
	
l5335:	
	bcf	(1222/8)^080h,(1222)&7
	line	105
	
l5337:	
	fcall	_uart_enable
	line	106
	
l3301:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	___lwmod
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
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
;;		_display_print_number
;; This function uses a non-reentrant model
;;
psect	text520
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5305:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u471
	goto	u470
u471:
	goto	l5321
u470:
	line	9
	
l5307:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l5311
	line	11
	
l5309:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l5311:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u481
	goto	u480
u481:
	goto	l5309
u480:
	line	15
	
l5313:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u495
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u495:
	skipc
	goto	u491
	goto	u490
u491:
	goto	l5317
u490:
	line	16
	
l5315:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l5317:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l5319:	
	decfsz	(___lwmod@counter),f
	goto	u501
	goto	u500
u501:
	goto	l5313
u500:
	line	20
	
l5321:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l4570:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_print_number
;; This function uses a non-reentrant model
;;
psect	text521
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5279:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5281:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u431
	goto	u430
u431:
	goto	l5301
u430:
	line	11
	
l5283:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l5287
	line	13
	
l5285:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l5287:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u441
	goto	u440
u441:
	goto	l5285
u440:
	line	17
	
l5289:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l5291:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u455
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u455:
	skipc
	goto	u451
	goto	u450
u451:
	goto	l5297
u450:
	line	19
	
l5293:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5295:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l5297:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l5299:	
	decfsz	(___lwdiv@counter),f
	goto	u461
	goto	u460
u461:
	goto	l5289
u460:
	line	25
	
l5301:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l4560:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_uart_enable
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

;; *************** function _uart_enable *****************
;; Defined at:
;;		line 72 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
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
;;		_uart_init
;; This function uses a non-reentrant model
;;
psect	text522
	file	"uart.c"
	line	72
	global	__size_of_uart_enable
	__size_of_uart_enable	equ	__end_of_uart_enable-_uart_enable
	
_uart_enable:	
	opt	stack 4
; Regs used in _uart_enable: []
	line	73
	
l5277:	
	bsf	(1221/8)^080h,(1221)&7
	line	74
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	75
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1125/8)^080h,(1125)&7
	line	76
	bsf	(1087/8)^080h,(1087)&7
	line	77
	bsf	(1086/8)^080h,(1086)&7
	line	78
	
l3295:	
	return
	opt stack 0
GLOBAL	__end_of_uart_enable
	__end_of_uart_enable:
;; =============== function _uart_enable ends ============

	signat	_uart_enable,88
	global	_lcd_init
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 510 in file "lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
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
psect	text523
	file	"lcd44780.c"
	line	510
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0]
	line	512
	movwf	(lcd_init@fourbitmode)
	
l5247:	
	clrf	(_LCD_ctrl)
	line	513
	
l5249:	
	movf	(lcd_init@fourbitmode),f
	skipz
	goto	u421
	goto	u420
u421:
	goto	l5253
u420:
	
l5251:	
	movlw	010h
	movwf	(_lcd_init$2730)
	clrf	(_lcd_init$2730+1)
	goto	l5255
	
l5253:	
	clrf	(_lcd_init$2730)
	clrf	(_lcd_init$2730+1)
	
l5255:	
	movf	(_lcd_init$2730),w
	movwf	(_LCD_function)
	line	515
	
l5257:	
	clrf	(_LCD_lines)
	line	517
	
l5259:	
	clrf	(_LCD_mode)
	line	519
	
l5261:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1074/8)^080h,(1074)&7
	line	520
	
l5263:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(50/8),(50)&7
	line	525
	
l5265:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7
	line	526
	
l5267:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7
	line	528
	
l5269:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7
	line	529
	
l5271:	
	bcf	(1077/8)^080h,(1077)&7
	line	530
	
l5273:	
	bcf	(1078/8)^080h,(1078)&7
	line	531
	
l5275:	
	bcf	(1079/8)^080h,(1079)&7
	line	541
	
l2011:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,4216
	global	_setup_timer0
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

;; *************** function _setup_timer0 *****************
;; Defined at:
;;		line 7 in file "timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
psect	text524
	file	"timer.c"
	line	7
	global	__size_of_setup_timer0
	__size_of_setup_timer0	equ	__end_of_setup_timer0-_setup_timer0
	
_setup_timer0:	
	opt	stack 5
; Regs used in _setup_timer0: []
	line	10
	
l5245:	
	bsf	(1037/8)^080h,(1037)&7
	line	11
	bsf	(1036/8)^080h,(1036)&7
	line	16
	bsf	(1035/8)^080h,(1035)&7
	line	22
	
l3928:	
	return
	opt stack 0
GLOBAL	__end_of_setup_timer0
	__end_of_setup_timer0:
;; =============== function _setup_timer0 ends ============

	signat	_setup_timer0,88
	global	_isr
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

;; *************** function _isr *****************
;; Defined at:
;;		line 50 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  646[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text525
	file	"LC-meter.c"
	line	50
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 1
; Regs used in _isr: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_isr+1)
	ljmp	_isr
psect	text525
	line	62
	
i1l5229:	
	btfss	(90/8),(90)&7
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l651
u37_20:
	line	63
	
i1l5231:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_tmr0_overflow),f	;volatile
	skipnz
	incf	(_tmr0_overflow+1),f	;volatile
	line	65
	incf	(_bres),f	;volatile
	skipnz
	incf	(_bres+1),f	;volatile
	line	66
	
i1l5233:	
	movlw	high(01F4h)
	subwf	(_bres+1),w	;volatile
	movlw	low(01F4h)
	skipnz
	subwf	(_bres),w	;volatile
	skipc
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l5241
u38_20:
	line	67
	
i1l5235:	
	movlw	low(01F4h)
	subwf	(_bres),f	;volatile
	movlw	high(01F4h)
	skipc
	decf	(_bres+1),f	;volatile
	subwf	(_bres+1),f	;volatile
	line	68
	
i1l5237:	
	incf	(_seconds),f	;volatile
	skipnz
	incf	(_seconds+1),f	;volatile
	line	70
	
i1l5239:	
	btfss	(_seconds),(0)&7	;volatile
	goto	u39_21
	goto	u39_20
	
u39_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u40_24
u39_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u40_24:
	btfsc	(59/8),(59)&7
	goto	u40_21
	goto	u40_20
	
u40_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	goto	u41_24
u40_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
u41_24:
	line	72
	
i1l5241:	
	movlw	(0C0h)
	movwf	(1)	;volatile
	line	73
	
i1l5243:	
	bcf	(90/8),(90)&7
	line	89
	
i1l651:	
	movf	(??_isr+1),w
	movwf	pclath
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
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
