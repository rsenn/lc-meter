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
	FNCALL	_initialize,_lcd_clear
	FNCALL	_lcd_clear,_lcd_gotoxy
	FNCALL	_lcd_clear,_lcd_send
	FNCALL	_display_print_number,___lwmod
	FNCALL	_display_print_number,___lwdiv
	FNCALL	_display_print_number,_lcd_putch
	FNCALL	_lcd_init,_lcd_send
	FNCALL	_lcd_putch,___wmul
	FNCALL	_lcd_putch,_lcd_send
	FNCALL	_lcd_gotoxy,_lcd_send
	FNCALL	_ser_puts,_ser_putch
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,_ser_putch
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_lcd_font
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"../../../lib/lcd3310.c"
	line	23
_lcd_font:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	02Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	0
	retlw	07h
	retlw	0
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	024h
	retlw	02Ah
	retlw	07Fh
	retlw	02Ah
	retlw	012h
	retlw	023h
	retlw	013h
	retlw	08h
	retlw	064h
	retlw	062h
	retlw	036h
	retlw	049h
	retlw	055h
	retlw	022h
	retlw	050h
	retlw	0
	retlw	05h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	022h
	retlw	041h
	retlw	0
	retlw	0
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	0
	retlw	014h
	retlw	08h
	retlw	03Eh
	retlw	08h
	retlw	014h
	retlw	08h
	retlw	08h
	retlw	03Eh
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	050h
	retlw	030h
	retlw	0
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0
	retlw	060h
	retlw	060h
	retlw	0
	retlw	0
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	04h
	retlw	02h
	retlw	03Eh
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	03Eh
	retlw	0
	retlw	042h
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	042h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	046h
	retlw	021h
	retlw	041h
	retlw	045h
	retlw	04Bh
	retlw	031h
	retlw	018h
	retlw	014h
	retlw	012h
	retlw	07Fh
	retlw	010h
	retlw	027h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	039h
	retlw	03Ch
	retlw	04Ah
	retlw	049h
	retlw	049h
	retlw	030h
	retlw	01h
	retlw	071h
	retlw	09h
	retlw	05h
	retlw	03h
	retlw	036h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	06h
	retlw	049h
	retlw	049h
	retlw	029h
	retlw	01Eh
	retlw	0
	retlw	036h
	retlw	036h
	retlw	0
	retlw	0
	retlw	0
	retlw	056h
	retlw	036h
	retlw	0
	retlw	0
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	0
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0
	retlw	041h
	retlw	022h
	retlw	014h
	retlw	08h
	retlw	02h
	retlw	01h
	retlw	051h
	retlw	09h
	retlw	06h
	retlw	032h
	retlw	049h
	retlw	059h
	retlw	051h
	retlw	03Eh
	retlw	07Eh
	retlw	011h
	retlw	011h
	retlw	011h
	retlw	07Eh
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	041h
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	01h
	retlw	03Eh
	retlw	041h
	retlw	049h
	retlw	049h
	retlw	07Ah
	retlw	07Fh
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	07Fh
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	041h
	retlw	0
	retlw	020h
	retlw	040h
	retlw	041h
	retlw	03Fh
	retlw	01h
	retlw	07Fh
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	02h
	retlw	0Ch
	retlw	02h
	retlw	07Fh
	retlw	07Fh
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	07Fh
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	03Eh
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	06h
	retlw	03Eh
	retlw	041h
	retlw	051h
	retlw	021h
	retlw	05Eh
	retlw	07Fh
	retlw	09h
	retlw	019h
	retlw	029h
	retlw	046h
	retlw	046h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	031h
	retlw	01h
	retlw	01h
	retlw	07Fh
	retlw	01h
	retlw	01h
	retlw	03Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	03Fh
	retlw	01Fh
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Fh
	retlw	03Fh
	retlw	040h
	retlw	038h
	retlw	040h
	retlw	03Fh
	retlw	063h
	retlw	014h
	retlw	08h
	retlw	014h
	retlw	063h
	retlw	07h
	retlw	08h
	retlw	070h
	retlw	08h
	retlw	07h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	043h
	retlw	0
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	0
	retlw	055h
	retlw	02Ah
	retlw	055h
	retlw	02Ah
	retlw	055h
	retlw	0
	retlw	041h
	retlw	041h
	retlw	07Fh
	retlw	0
	retlw	04h
	retlw	02h
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	0
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	0
	retlw	020h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	078h
	retlw	07Fh
	retlw	048h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	020h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	048h
	retlw	07Fh
	retlw	038h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	018h
	retlw	08h
	retlw	07Eh
	retlw	09h
	retlw	01h
	retlw	02h
	retlw	0Ch
	retlw	052h
	retlw	052h
	retlw	052h
	retlw	03Eh
	retlw	07Fh
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	0
	retlw	044h
	retlw	07Dh
	retlw	040h
	retlw	0
	retlw	020h
	retlw	040h
	retlw	044h
	retlw	03Dh
	retlw	0
	retlw	07Fh
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	0
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	07Ch
	retlw	04h
	retlw	018h
	retlw	04h
	retlw	078h
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	07Ch
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	08h
	retlw	08h
	retlw	014h
	retlw	014h
	retlw	018h
	retlw	07Ch
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	08h
	retlw	048h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	020h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	040h
	retlw	020h
	retlw	03Ch
	retlw	040h
	retlw	040h
	retlw	020h
	retlw	07Ch
	retlw	01Ch
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Ch
	retlw	03Ch
	retlw	040h
	retlw	030h
	retlw	040h
	retlw	03Ch
	retlw	044h
	retlw	028h
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	0Ch
	retlw	050h
	retlw	050h
	retlw	050h
	retlw	03Ch
	retlw	044h
	retlw	064h
	retlw	054h
	retlw	04Ch
	retlw	044h
	global	_lcd_font
	global	_ccp1t
	global	_ccp1t_lr
	global	_bres
	global	_seconds
	global	_tmr0_overflow
	global	_rxoptr
	global	_ser_tmp
	global	_rxiptr
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
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
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
	global	_TRISC
_TRISC	set	135
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
	
STR_4:	
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	45	;'-'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	32	;' '
	retlw	0
psect	stringtext
STR_2	equ	STR_1+0
STR_3	equ	STR_1+0
	file	"dist/default/production\LC-meter-Nokia3310.X.production.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_rxiptr:
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

_rxoptr:
       ds      1

_ser_tmp:
       ds      1

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
	movlw	low((__pbssBANK0)+014h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+020h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	?_initialize
?_initialize:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
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
	global	?_ser_putch
?_ser_putch:	; 0 bytes @ 0x3
	global	??_ser_init
??_ser_init:	; 0 bytes @ 0x3
	global	??_setup_timer0
??_setup_timer0:	; 0 bytes @ 0x3
	global	?_lcd_set_cursor
?_lcd_set_cursor:	; 2 bytes @ 0x3
	global	?_lcd_print
?_lcd_print:	; 2 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	ser_putch@c
ser_putch@c:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
	global	??_ser_putch
??_ser_putch:	; 0 bytes @ 0x4
	global	?_ser_puts
?_ser_puts:	; 0 bytes @ 0x4
	global	ser_puts@s
ser_puts@s:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_print
??_lcd_print:	; 0 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	??_ser_puts
??_ser_puts:	; 0 bytes @ 0x6
	ds	1
	global	?_lcd_send
?_lcd_send:	; 0 bytes @ 0x7
	global	??_lcd_set_cursor
??_lcd_set_cursor:	; 0 bytes @ 0x7
	global	??___wmul
??___wmul:	; 0 bytes @ 0x7
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x7
	global	lcd_send@cmd
lcd_send@cmd:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x8
	global	??_lcd_send
??_lcd_send:	; 0 bytes @ 0x8
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x8
	global	??_initialize
??_initialize:	; 0 bytes @ 0x8
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	lcd_send@a
lcd_send@a:	; 1 bytes @ 0x2
	ds	1
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x3
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	?_format_number
?_format_number:	; 0 bytes @ 0x3
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x3
	global	format_number@n
format_number@n:	; 2 bytes @ 0x3
	global	lcd_gotoxy@y
lcd_gotoxy@y:	; 2 bytes @ 0x3
	ds	1
	global	?_display_print_number
?_display_print_number:	; 0 bytes @ 0x4
	global	display_print_number@n
display_print_number@n:	; 2 bytes @ 0x4
	ds	1
	global	format_number@base
format_number@base:	; 1 bytes @ 0x5
	global	lcd_gotoxy@x
lcd_gotoxy@x:	; 1 bytes @ 0x5
	ds	1
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0x6
	global	display_print_number@base
display_print_number@base:	; 1 bytes @ 0x6
	global	lcd_clear@i
lcd_clear@i:	; 2 bytes @ 0x6
	ds	1
	global	??_format_number
??_format_number:	; 0 bytes @ 0x7
	global	display_print_number@pad
display_print_number@pad:	; 1 bytes @ 0x7
	ds	1
	global	??_display_print_number
??_display_print_number:	; 0 bytes @ 0x8
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0x8
	ds	3
	global	display_print_number@buf
display_print_number@buf:	; 32 bytes @ 0xB
	ds	29
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x28
	ds	1
	global	_format_number$1902
_format_number$1902:	; 2 bytes @ 0x29
	ds	2
	global	format_number@putchar
format_number@putchar:	; 1 bytes @ 0x2B
	global	_display_print_number$4972
_display_print_number$4972:	; 2 bytes @ 0x2B
	ds	1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x2C
	ds	1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x2D
	global	display_print_number@di
display_print_number@di:	; 1 bytes @ 0x2D
	ds	1
	global	display_print_number@i
display_print_number@i:	; 1 bytes @ 0x2E
	ds	1
	global	main@prev_seconds
main@prev_seconds:	; 2 bytes @ 0x2F
	ds	2
;;Data sizes: Strings 14, constant 455, data 0, bss 55, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
;; BANK0           80     49      69
;; BANK1           80      0      32
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_lcd_print	int  size(2) Largest target is 9
;;		 -> STR_4(CODE[9]), 
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ser_puts@s	PTR const unsigned char  size(2) Largest target is 3
;;		 -> STR_5(CODE[3]), 
;;
;; format_number@putchar	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> ser_putch(), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _lcd_clear->_lcd_send
;;   _display_print_number->___lwmod
;;   _lcd_init->_lcd_send
;;   _lcd_putch->_lcd_send
;;   _lcd_gotoxy->_lcd_send
;;   _lcd_send->___wmul
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
;;   _initialize->_lcd_clear
;;   _lcd_clear->_lcd_gotoxy
;;   _display_print_number->_lcd_putch
;;   _lcd_init->_lcd_send
;;   _lcd_putch->_lcd_send
;;   _lcd_gotoxy->_lcd_send
;;   _lcd_send->___wmul
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
;; (0) _main                                                 3     3      0    3815
;;                                             47 BANK0      2     2      0
;;                         _initialize
;;                     _lcd_set_cursor
;;                          _lcd_print
;;               _display_print_number
;;                      _format_number
;;                           _ser_puts
;; ---------------------------------------------------------------------------------
;; (1) _initialize                                           0     0      0     967
;;                       _setup_timer0
;;                           _ser_init
;;                           _lcd_init
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            2     2      0     688
;;                                              6 BANK0      2     2      0
;;                         _lcd_gotoxy
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (1) _display_print_number                                43    39      4    1595
;;                                              4 BANK0     43    39      4
;;                            ___lwmod
;;                            ___lwdiv
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init                                             2     2      0     279
;;                                              3 BANK0      2     2      0
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putch                                            1     1      0     632
;;                                              3 BANK0      1     1      0
;;                             ___wmul
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (3) _lcd_gotoxy                                           3     1      2     341
;;                                              3 BANK0      3     1      2
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (3) _lcd_send                                             2     1      1     279
;;                                              7 COMMON     1     0      1
;;                                              2 BANK0      1     1      0
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _ser_puts                                             2     0      2      67
;;                                              4 COMMON     2     0      2
;;                          _ser_putch
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
;; (3) ___wmul                                               6     2      4     136
;;                                              3 COMMON     4     0      4
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _lcd_print                                            2     0      2       0
;;                                              3 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _lcd_set_cursor                                       4     0      4       0
;;                                              3 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; (2) _setup_timer0                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ser_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ser_putch                                            1     0      1      22
;;                                              3 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _isr                                                  3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initialize
;;     _setup_timer0
;;     _ser_init
;;     _lcd_init
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_clear
;;       _lcd_gotoxy
;;         _lcd_send
;;           ___wmul (ARG)
;;       _lcd_send
;;         ___wmul (ARG)
;;   _lcd_set_cursor
;;   _lcd_print
;;   _display_print_number
;;     ___lwmod
;;     ___lwdiv
;;     _lcd_putch
;;       ___wmul
;;       _lcd_send
;;         ___wmul (ARG)
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
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      70       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     31      45       5       86.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      20       7       40.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      74      12        0.0%

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
;;  prev_seconds    2   47[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    5
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
	opt	stack 3
; Regs used in _main: [allreg]
	line	109
	
l7684:	
;LC-meter.c: 109: initialize();
	fcall	_initialize
	line	112
	
l7686:	
;LC-meter.c: 112: lcd_set_cursor(0, 0);
	clrf	(?_lcd_set_cursor)
	clrf	(?_lcd_set_cursor+1)
	clrf	0+(?_lcd_set_cursor)+02h
	clrf	1+(?_lcd_set_cursor)+02h
	fcall	_lcd_set_cursor
	line	114
	
l7688:	
;LC-meter.c: 114: lcd_print("LC-meter");
	movlw	low(STR_4|8000h)
	movwf	(?_lcd_print)
	movlw	high(STR_4|8000h)
	movwf	((?_lcd_print))+1
	fcall	_lcd_print
	line	129
	
l7690:	
;LC-meter.c: 128: {
;LC-meter.c: 129: uint16_t prev_seconds = 0xffff;
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@prev_seconds)
	movlw	high(0FFFFh)
	movwf	((main@prev_seconds))+1
	line	136
	
l7692:	
;LC-meter.c: 136: lcd_set_cursor(0, 1);
	clrf	(?_lcd_set_cursor)
	clrf	(?_lcd_set_cursor+1)
	clrf	0+(?_lcd_set_cursor)+02h
	incf	0+(?_lcd_set_cursor)+02h,f
	clrf	1+(?_lcd_set_cursor)+02h
	fcall	_lcd_set_cursor
	line	137
	
l7694:	
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
	
l7696:	
;LC-meter.c: 141: if(seconds != prev_seconds)
	movf	(main@prev_seconds+1),w
	xorwf	(_seconds+1),w	;volatile
	skipz
	goto	u1225
	movf	(main@prev_seconds),w
	xorwf	(_seconds),w	;volatile
u1225:

	skipnz
	goto	u1221
	goto	u1220
u1221:
	goto	l7692
u1220:
	line	144
	
l7698:	
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
	
l7700:	
;LC-meter.c: 146: ser_puts("\r\n");
	movlw	low(STR_5|8000h)
	movwf	(?_ser_puts)
	movlw	high(STR_5|8000h)
	movwf	((?_ser_puts))+1
	fcall	_ser_puts
	line	148
	
l7702:	
;LC-meter.c: 148: prev_seconds = seconds;
	movf	(_seconds+1),w	;volatile
	movwf	(main@prev_seconds+1)
	movf	(_seconds),w	;volatile
	movwf	(main@prev_seconds)
	goto	l7692
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
psect	text487,local,class=CODE,delta=2
global __ptext487
__ptext487:

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
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setup_timer0
;;		_ser_init
;;		_lcd_init
;;		_lcd_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text487
	file	"../../../src/LC-meter.c"
	line	169
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:	
	opt	stack 3
; Regs used in _initialize: [wreg+status,2+status,0+pclath+cstack]
	line	171
	
l7652:	
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
	
l7654:	
;LC-meter.c: 175: TRISA = 0b11001111;
	movlw	(0CFh)
	movwf	(133)^080h	;volatile
	line	177
	
l7656:	
;LC-meter.c: 177: setup_timer0();
	fcall	_setup_timer0
	line	178
	
l7658:	
;LC-meter.c: 178: T0IE = 1;
	bsf	(93/8),(93)&7
	line	179
	
l7660:	
;LC-meter.c: 179: T0IF = 0;
	bcf	(90/8),(90)&7
	line	186
	
l7662:	
;LC-meter.c: 186: SSPEN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(165/8),(165)&7
	line	191
	
l7664:	
;LC-meter.c: 191: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	192
	
l7666:	
;LC-meter.c: 192: nRBPU = 1;
	bsf	(1039/8)^080h,(1039)&7
	line	197
	
l7668:	
;LC-meter.c: 197: TRISA2 = TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7
	bcf	(1066/8)^080h,(1066)&7
	line	198
	
l7670:	
;LC-meter.c: 198: RA2 = RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(59/8),(59)&7
	btfsc	(59/8),(59)&7
	goto	u1201
	goto	u1200
	
u1201:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	goto	u1214
u1200:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
u1214:
	line	201
	
l7672:	
;LC-meter.c: 201: ser_init();
	fcall	_ser_init
	line	204
	
l7674:	
;LC-meter.c: 204: TRISC5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1085/8)^080h,(1085)&7
	line	207
	
l7676:	
;LC-meter.c: 207: PEIE = 1;
	bsf	(94/8),(94)&7
	line	208
	
l7678:	
;LC-meter.c: 208: GIE = 1;
	bsf	(95/8),(95)&7
	line	212
	
l7680:	
;LC-meter.c: 212: lcd_init();
	fcall	_lcd_init
	line	213
	
l7682:	
;LC-meter.c: 213: lcd_clear();
	fcall	_lcd_clear
	line	218
	
l4526:	
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
;; =============== function _initialize ends ============

	signat	_initialize,88
	global	_lcd_clear
psect	text488,local,class=CODE,delta=2
global __ptext488
__ptext488:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 227 in file "../../../lib/lcd3310.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_send
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text488
	file	"../../../lib/lcd3310.c"
	line	227
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 3
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	229
	
l7638:	
;lcd3310.c: 228: uint16_t i;
;lcd3310.c: 229: lcd_gotoxy(0, 0);
	clrf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	230
	
l7640:	
;lcd3310.c: 230: for(i = 0; i < 504; ++i)
	clrf	(lcd_clear@i)
	clrf	(lcd_clear@i+1)
	line	232
	
l7646:	
;lcd3310.c: 231: {
;lcd3310.c: 232: lcd_send(0, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(0)
	fcall	_lcd_send
	line	230
	
l7648:	
	incf	(lcd_clear@i),f
	skipnz
	incf	(lcd_clear@i+1),f
	
l7650:	
	movlw	high(01F8h)
	subwf	(lcd_clear@i+1),w
	movlw	low(01F8h)
	skipnz
	subwf	(lcd_clear@i),w
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l7646
u1190:
	line	234
	
l5194:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_display_print_number
psect	text489,local,class=CODE,delta=2
global __ptext489
__ptext489:

;; *************** function _display_print_number *****************
;; Defined at:
;;		line 164 in file "../../../src/display.c"
;; Parameters:    Size  Location     Type
;;  n               2    4[BANK0 ] unsigned int 
;;  base            1    6[BANK0 ] unsigned char 
;;  pad             1    7[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   11[BANK0 ] unsigned char [32]
;;  i               1   46[BANK0 ] unsigned char 
;;  di              1   45[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwmod
;;		___lwdiv
;;		_lcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text489
	file	"../../../src/display.c"
	line	164
	global	__size_of_display_print_number
	__size_of_display_print_number	equ	__end_of_display_print_number-_display_print_number
	
_display_print_number:	
	opt	stack 4
; Regs used in _display_print_number: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	167
	
l7606:	
;display.c: 165: uint8_t buf[8 * sizeof(long)];
;display.c: 166: uint8_t di;
;display.c: 167: uint8_t i = 0;
	clrf	(display_print_number@i)
	line	179
	
l7608:	
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
	
l7610:	
;display.c: 180: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	movlw	(0Ah)
	subwf	(display_print_number@di),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l7614
u1150:
	
l7612:	
	movf	(display_print_number@di),w
	movwf	(_display_print_number$4972)
	clrf	(_display_print_number$4972+1)
	movlw	037h
	addwf	(_display_print_number$4972),f
	skipnc
	incf	(_display_print_number$4972+1),f
	goto	l7616
	
l7614:	
	movf	(display_print_number@di),w
	movwf	(_display_print_number$4972)
	clrf	(_display_print_number$4972+1)
	movlw	030h
	addwf	(_display_print_number$4972),f
	skipnc
	incf	(_display_print_number$4972+1),f
	
l7616:	
	movf	(display_print_number@i),w
	addlw	display_print_number@buf&0ffh
	movwf	fsr0
	movf	(_display_print_number$4972),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7618:	
	incf	(display_print_number@i),f
	line	182
	
l7620:	
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
	
l7622:	
;display.c: 183: }
;display.c: 184: while(n > 0);
	movf	((display_print_number@n+1)),w
	iorwf	((display_print_number@n)),w
	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l7608
u1160:
	goto	l7626
	line	187
	
l7624:	
;display.c: 187: lcd_putch(' ');
	movlw	(020h)
	fcall	_lcd_putch
	line	186
	
l7626:	
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
	goto	u1175
	movf	(display_print_number@i),w
	subwf	0+(??_display_print_number+0)+0,w
u1175:

	skipnc
	goto	u1171
	goto	u1170
u1171:
	goto	l7624
u1170:
	line	189
	
l7628:	
;display.c: 189: for(; i > 0; i--)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_print_number@i),f
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l7632
u1180:
	goto	l3839
	line	190
	
l7632:	
;display.c: 190: lcd_putch((uint8_t)buf[(int16_t)i - 1]);
	movf	(display_print_number@i),w
	addlw	0FFh
	addlw	display_print_number@buf&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_putch
	line	189
	
l7634:	
	decf	(display_print_number@i),f
	goto	l7628
	line	192
	
l3839:	
	return
	opt stack 0
GLOBAL	__end_of_display_print_number
	__end_of_display_print_number:
;; =============== function _display_print_number ends ============

	signat	_display_print_number,12408
	global	_lcd_init
psect	text490,local,class=CODE,delta=2
global __ptext490
__ptext490:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 169 in file "../../../lib/lcd3310.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text490
	file	"../../../lib/lcd3310.c"
	line	169
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l7566:	
;lcd3310.c: 170: TRISC &= 0x00;
	clrf	(135)^080h	;volatile
	line	171
	
l7568:	
;lcd3310.c: 171: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u1237:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1237
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1237
	nop2
opt asmopt_on

	line	173
	
l7570:	
;lcd3310.c: 173: _nop();
	nop
	line	174
	
l7572:	
;lcd3310.c: 174: RC5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	175
	
l7574:	
;lcd3310.c: 175: _nop();
	nop
	line	176
	
l7576:	
;lcd3310.c: 176: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	177
	
l7578:	
;lcd3310.c: 177: _nop();
	nop
	line	178
	
l7580:	
;lcd3310.c: 178: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	179
	
l7582:	
;lcd3310.c: 179: _nop();
	nop
	line	180
	
l7584:	
;lcd3310.c: 180: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	181
	
l7586:	
;lcd3310.c: 181: _nop();
	nop
	line	183
	
l7588:	
;lcd3310.c: 183: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	184
	
l7590:	
;lcd3310.c: 184: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u1247:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1247
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1247
	nop2
opt asmopt_on

	line	186
	
l7592:	
;lcd3310.c: 186: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	188
	
l7594:	
;lcd3310.c: 188: lcd_send(0x21, 0);
	clrf	(?_lcd_send)
	movlw	(021h)
	fcall	_lcd_send
	line	189
	
l7596:	
;lcd3310.c: 189: lcd_send(0xC8, 0);
	clrf	(?_lcd_send)
	movlw	(0C8h)
	fcall	_lcd_send
	line	190
	
l7598:	
;lcd3310.c: 190: lcd_send(0x06, 0);
	clrf	(?_lcd_send)
	movlw	(06h)
	fcall	_lcd_send
	line	191
	
l7600:	
;lcd3310.c: 191: lcd_send(0x13, 0);
	clrf	(?_lcd_send)
	movlw	(013h)
	fcall	_lcd_send
	line	192
	
l7602:	
;lcd3310.c: 192: lcd_send(0x20, 0);
	clrf	(?_lcd_send)
	movlw	(020h)
	fcall	_lcd_send
	line	193
	
l7604:	
;lcd3310.c: 193: lcd_send(0x0C, 0);
	clrf	(?_lcd_send)
	movlw	(0Ch)
	fcall	_lcd_send
	line	210
	
l5184:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_putch
psect	text491,local,class=CODE,delta=2
global __ptext491
__ptext491:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 247 in file "../../../lib/lcd3310.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		_lcd_send
;; This function is called by:
;;		_display_print_number
;; This function uses a non-reentrant model
;;
psect	text491
	file	"../../../lib/lcd3310.c"
	line	247
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 4
; Regs used in _lcd_putch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;lcd_putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_putch@c)
	line	248
	
l7558:	
;lcd3310.c: 248: if(c > 'z' || c < 32)
	movlw	(07Bh)
	subwf	(lcd_putch@c),w
	skipnc
	goto	u1131
	goto	u1130
u1131:
	goto	l5203
u1130:
	
l7560:	
	movlw	(020h)
	subwf	(lcd_putch@c),w
	skipnc
	goto	u1141
	goto	u1140
u1141:
	goto	l7562
u1140:
	goto	l5203
	line	252
	
l7562:	
;lcd3310.c: 251: }
;lcd3310.c: 252: lcd_send(lcd_font[c - 32][0], 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(lcd_putch@c),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	05h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	high(_lcd_font|8000h+0FF60h)
	addwf	(1+(?___wmul)),w
	movwf	btemp+1
	movlw	low(_lcd_font|8000h+0FF60h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0
	skipnc
	incf	btemp+1,f
	fcall	stringtab
	fcall	_lcd_send
	line	253
;lcd3310.c: 253: lcd_send(lcd_font[c - 32][1], 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(lcd_putch@c),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	05h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	high(_lcd_font|8000h+0FF61h)
	addwf	(1+(?___wmul)),w
	movwf	btemp+1
	movlw	low(_lcd_font|8000h+0FF61h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0
	skipnc
	incf	btemp+1,f
	fcall	stringtab
	fcall	_lcd_send
	line	254
;lcd3310.c: 254: lcd_send(lcd_font[c - 32][2], 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(lcd_putch@c),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	05h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	high(_lcd_font|8000h+0FF62h)
	addwf	(1+(?___wmul)),w
	movwf	btemp+1
	movlw	low(_lcd_font|8000h+0FF62h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0
	skipnc
	incf	btemp+1,f
	fcall	stringtab
	fcall	_lcd_send
	line	255
;lcd3310.c: 255: lcd_send(lcd_font[c - 32][3], 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(lcd_putch@c),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	05h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	high(_lcd_font|8000h+0FF63h)
	addwf	(1+(?___wmul)),w
	movwf	btemp+1
	movlw	low(_lcd_font|8000h+0FF63h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0
	skipnc
	incf	btemp+1,f
	fcall	stringtab
	fcall	_lcd_send
	line	256
;lcd3310.c: 256: lcd_send(lcd_font[c - 32][4], 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(lcd_putch@c),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	05h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	high(_lcd_font|8000h+0FF64h)
	addwf	(1+(?___wmul)),w
	movwf	btemp+1
	movlw	low(_lcd_font|8000h+0FF64h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0
	skipnc
	incf	btemp+1,f
	fcall	stringtab
	fcall	_lcd_send
	line	257
	
l7564:	
;lcd3310.c: 257: lcd_send(0, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(0)
	fcall	_lcd_send
	line	258
	
l5203:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_lcd_gotoxy
psect	text492,local,class=CODE,delta=2
global __ptext492
__ptext492:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 239 in file "../../../lib/lcd3310.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_clear
;; This function uses a non-reentrant model
;;
psect	text492
	file	"../../../lib/lcd3310.c"
	line	239
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 3
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@x stored from wreg
	movwf	(lcd_gotoxy@x)
	line	240
	
l7556:	
;lcd3310.c: 240: lcd_send(x | 0b10000000, 0);
	clrf	(?_lcd_send)
	movf	(lcd_gotoxy@x),w
	iorlw	080h
	fcall	_lcd_send
	line	241
;lcd3310.c: 241: lcd_send((y & 0b00000111) | 0b01000000, 0);
	clrf	(?_lcd_send)
	movf	(lcd_gotoxy@y),w
	andlw	07h
	iorlw	040h
	fcall	_lcd_send
	line	242
	
l5197:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_send
psect	text493,local,class=CODE,delta=2
global __ptext493
__ptext493:

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 144 in file "../../../lib/lcd3310.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  cmd             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_putch
;; This function uses a non-reentrant model
;;
psect	text493
	file	"../../../lib/lcd3310.c"
	line	144
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:	
	opt	stack 4
; Regs used in _lcd_send: [wreg+status,2+status,0]
;lcd_send@a stored from wreg
	line	146
	movwf	(lcd_send@a)
	
l7534:	
;lcd3310.c: 146: RC1 = 1;
	bsf	(57/8),(57)&7
	line	147
	
l7536:	
;lcd3310.c: 147: if(cmd == 0)
	movf	(lcd_send@cmd),f
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l5172
u1040:
	line	149
	
l7538:	
;lcd3310.c: 148: {
;lcd3310.c: 149: RC1 = 0;
	bcf	(57/8),(57)&7
	line	150
	
l5172:	
	line	151
;lcd3310.c: 150: }
;lcd3310.c: 151: _nop();
	nop
	line	152
;lcd3310.c: 152: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	154
;lcd3310.c: 154: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b10000000)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(7)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l5173
u1050:
	
l7540:	
	bsf	(60/8),(60)&7
	
l5173:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	155
;lcd3310.c: 155: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b01000000)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(6)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l5174
u1060:
	
l7542:	
	bsf	(60/8),(60)&7
	
l5174:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	156
;lcd3310.c: 156: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b00100000)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(5)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l5175
u1070:
	
l7544:	
	bsf	(60/8),(60)&7
	
l5175:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	157
;lcd3310.c: 157: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b00010000)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(4)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l5176
u1080:
	
l7546:	
	bsf	(60/8),(60)&7
	
l5176:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	158
;lcd3310.c: 158: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b00001000)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(3)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l5177
u1090:
	
l7548:	
	bsf	(60/8),(60)&7
	
l5177:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	159
;lcd3310.c: 159: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b00000100)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(2)&7
	goto	u1101
	goto	u1100
u1101:
	goto	l5178
u1100:
	
l7550:	
	bsf	(60/8),(60)&7
	
l5178:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	160
;lcd3310.c: 160: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b00000010)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(1)&7
	goto	u1111
	goto	u1110
u1111:
	goto	l5179
u1110:
	
l7552:	
	bsf	(60/8),(60)&7
	
l5179:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	161
;lcd3310.c: 161: _nop(); RC5=0; _nop(); RC4=0; if((a) & (0b00000001)) { RC4=1; } _nop(); RC5=1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(0)&7
	goto	u1121
	goto	u1120
u1121:
	goto	l5180
u1120:
	
l7554:	
	bsf	(60/8),(60)&7
	
l5180:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	162
;lcd3310.c: 162: _nop();
	nop
	line	163
;lcd3310.c: 163: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	164
	
l5181:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
;; =============== function _lcd_send ends ============

	signat	_lcd_send,8312
	global	_ser_puts
psect	text494,local,class=CODE,delta=2
global __ptext494
__ptext494:

;; *************** function _ser_puts *****************
;; Defined at:
;;		line 90 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  s               2    4[COMMON] PTR const unsigned char 
;;		 -> STR_5(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text494
	file	"../../../lib/ser.c"
	line	90
	global	__size_of_ser_puts
	__size_of_ser_puts	equ	__end_of_ser_puts-_ser_puts
	
_ser_puts:	
	opt	stack 5
; Regs used in _ser_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l7256:	
;ser.c: 91: while(*s)
	goto	l7262
	line	92
	
l7258:	
;ser.c: 92: ser_putch(*s++);
	movf	(ser_puts@s+1),w
	movwf	btemp+1
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringtab
	movwf	(?_ser_putch)
	fcall	_ser_putch
	
l7260:	
	incf	(ser_puts@s),f
	skipnz
	incf	(ser_puts@s+1),f
	line	91
	
l7262:	
	movf	(ser_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u731
	goto	u730
u731:
	goto	l7258
u730:
	line	93
	
l1915:	
	return
	opt stack 0
GLOBAL	__end_of_ser_puts
	__end_of_ser_puts:
;; =============== function _ser_puts ends ============

	signat	_ser_puts,4216
	global	_format_number
psect	text495,local,class=CODE,delta=2
global __ptext495
__ptext495:

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
psect	text495
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
	
l7494:	
;format.c: 7: uint8_t buf[8 * sizeof(long)];
;format.c: 8: uint8_t di;
;format.c: 9: int8_t i = 0;
	clrf	(format_number@i)
	line	10
	
l7496:	
;format.c: 10: char padchar = ' ';
	movlw	(020h)
	movwf	(format_number@padchar)
	line	12
	
l7498:	
;format.c: 12: if(pad < 0)
	btfss	(format_number@pad),7
	goto	u991
	goto	u990
u991:
	goto	l7504
u990:
	line	14
	
l7500:	
;format.c: 13: {
;format.c: 14: pad = -pad;
	comf	(format_number@pad),f
	incf	(format_number@pad),f
	line	15
	
l7502:	
;format.c: 15: padchar = '0';
	movlw	(030h)
	movwf	(format_number@padchar)
	line	28
	
l7504:	
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
	
l7506:	
;format.c: 29: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	movlw	(0Ah)
	subwf	(format_number@di),w
	skipc
	goto	u1001
	goto	u1000
u1001:
	goto	l7510
u1000:
	
l7508:	
	movf	(format_number@di),w
	movwf	(_format_number$1902)
	clrf	(_format_number$1902+1)
	movlw	037h
	addwf	(_format_number$1902),f
	skipnc
	incf	(_format_number$1902+1),f
	goto	l7512
	
l7510:	
	movf	(format_number@di),w
	movwf	(_format_number$1902)
	clrf	(_format_number$1902+1)
	movlw	030h
	addwf	(_format_number$1902),f
	skipnc
	incf	(_format_number$1902+1),f
	
l7512:	
	movf	(format_number@i),w
	addlw	format_number@buf&0ffh
	movwf	fsr0
	movf	(_format_number$1902),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7514:	
	incf	(format_number@i),f
	line	31
	
l7516:	
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
	
l7518:	
;format.c: 32: }
;format.c: 33: while(n > 0);
	movf	((format_number@n+1)),w
	iorwf	((format_number@n)),w
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l7504
u1010:
	goto	l7522
	line	36
	
l7520:	
;format.c: 36: putchar(padchar);
	movf	(format_number@padchar),w
	movwf	(?_ser_putch)
	movf	(format_number@putchar),w
	fcall	fptable
	line	35
	
l7522:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(format_number@pad),w
	decf	(format_number@pad),f
	xorlw	80h
	movwf	(??_format_number+0)+0
	movf	(format_number@i),w
	xorlw	80h
	subwf	(??_format_number+0)+0
	skipnc
	goto	u1021
	goto	u1020
u1021:
	goto	l7520
u1020:
	line	38
	
l7524:	
;format.c: 38: for(; i > 0; i--)
	movf	(format_number@i),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipnc
	goto	u1031
	goto	u1030
u1031:
	goto	l7528
u1030:
	goto	l1267
	line	39
	
l7528:	
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
	
l7530:	
	bcf	status, 5	;RP0=0, select bank0
	decf	(format_number@i),f
	goto	l7524
	line	41
	
l1267:	
	return
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
;; =============== function _format_number ends ============

	signat	_format_number,16504
	global	___lwmod
psect	text496,local,class=CODE,delta=2
global __ptext496
__ptext496:

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
psect	text496
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l7196:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l7212
u640:
	line	9
	
l7198:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l7202
	line	11
	
l7200:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l7202:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u651
	goto	u650
u651:
	goto	l7200
u650:
	line	15
	
l7204:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u665
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u665:
	skipc
	goto	u661
	goto	u660
u661:
	goto	l7208
u660:
	line	16
	
l7206:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l7208:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l7210:	
	decfsz	(___lwmod@counter),f
	goto	u671
	goto	u670
u671:
	goto	l7204
u670:
	line	20
	
l7212:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l5884:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text497,local,class=CODE,delta=2
global __ptext497
__ptext497:

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
psect	text497
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l7468:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l7470:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u951
	goto	u950
u951:
	goto	l7490
u950:
	line	11
	
l7472:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l7476
	line	13
	
l7474:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l7476:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u961
	goto	u960
u961:
	goto	l7474
u960:
	line	17
	
l7478:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l7480:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u975
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u975:
	skipc
	goto	u971
	goto	u970
u971:
	goto	l7486
u970:
	line	19
	
l7482:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l7484:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l7486:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l7488:	
	decfsz	(___lwdiv@counter),f
	goto	u981
	goto	u980
u981:
	goto	l7478
u980:
	line	25
	
l7490:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l5874:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text498,local,class=CODE,delta=2
global __ptext498
__ptext498:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[COMMON] unsigned int 
;;  multiplicand    2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putch
;; This function uses a non-reentrant model
;;
psect	text498
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l7452:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l7454:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u931
	goto	u930
u931:
	goto	l7458
u930:
	line	8
	
l7456:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l7458:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l7460:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l7462:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u941
	goto	u940
u941:
	goto	l7454
u940:
	line	12
	
l7464:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l5864:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_lcd_print
	global	_lcd_set_cursor
	global	_setup_timer0
psect	text499,local,class=CODE,delta=2
global __ptext499
__ptext499:

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
psect	text499
	file	"../../../lib/timer.c"
	line	8
	global	__size_of_setup_timer0
	__size_of_setup_timer0	equ	__end_of_setup_timer0-_setup_timer0
	
_setup_timer0:	
	opt	stack 5
; Regs used in _setup_timer0: [wreg+status,2+status,0]
	line	11
	
l7112:	
;timer.c: 11: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7
	line	22
;timer.c: 22: PSA = (0 == 0);
	bsf	(1035/8)^080h,(1035)&7
	line	25
	
l7114:	
;timer.c: 25: OPTION_REGbits.PS = 0 - 1;
	movlw	(07h & ((1<<3)-1))<<0
	iorwf	(129)^080h,f	;volatile
	line	28
	
l2546:	
	return
	opt stack 0
GLOBAL	__end_of_setup_timer0
	__end_of_setup_timer0:
;; =============== function _setup_timer0 ends ============

	signat	_setup_timer0,88
	global	_ser_init
psect	text500,local,class=CODE,delta=2
global __ptext500
__ptext500:

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
psect	text500
	file	"../../../lib/ser.c"
	line	119
	global	__size_of_ser_init
	__size_of_ser_init	equ	__end_of_ser_init-_ser_init
	
_ser_init:	
	opt	stack 5
; Regs used in _ser_init: [wreg+status,2]
	line	120
	
l7088:	
;ser.c: 120: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1218/8)^080h,(1218)&7
	line	125
	
l7090:	
;ser.c: 125: SPBRG = ser_brg;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	128
	
l7092:	
;ser.c: 128: TX9 = 0;
	bcf	(1222/8)^080h,(1222)&7
	line	129
	
l7094:	
;ser.c: 129: RX9 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7
	line	131
	
l7096:	
;ser.c: 131: SYNC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	132
	
l7098:	
;ser.c: 132: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	133
	
l7100:	
;ser.c: 133: CREN = 1;
	bsf	(196/8),(196)&7
	line	134
	
l7102:	
;ser.c: 134: TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1124/8)^080h,(1124)&7
	line	135
	
l7104:	
;ser.c: 135: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	136
	
l7106:	
;ser.c: 136: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	137
	
l7108:	
;ser.c: 137: PEIE = 1;
	bsf	(94/8),(94)&7
	line	139
	
l7110:	
;ser.c: 139: rxiptr = rxoptr = txiptr = txoptr = 0;
	clrf	(_txoptr)	;volatile
	clrf	(_txiptr)	;volatile
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_rxoptr)	;volatile
	clrf	(_rxiptr)	;volatile
	line	140
	
l1931:	
	return
	opt stack 0
GLOBAL	__end_of_ser_init
	__end_of_ser_init:
;; =============== function _ser_init ends ============

	signat	_ser_init,88
	global	_ser_putch
psect	text501,local,class=CODE,delta=2
global __ptext501
__ptext501:

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
;;		On entry : 60/0
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
psect	text501
	file	"../../../lib/ser.c"
	line	80
	global	__size_of_ser_putch
	__size_of_ser_putch	equ	__end_of_ser_putch-_ser_putch
	
_ser_putch:	
	opt	stack 5
; Regs used in _ser_putch: [wreg-fsr0h+status,2+status,0]
	line	81
	
l7074:	
;ser.c: 81: while(((txiptr + 1) & (16-1)) == txoptr)
	
l7076:	
	incf	(_txiptr),w	;volatile
	andlw	0Fh
	xorwf	(_txoptr),w	;volatile
	skipnz
	goto	u471
	goto	u470
u471:
	goto	l7076
u470:
	
l1908:	
	line	83
;ser.c: 83: GIE = 0;
	bcf	(95/8),(95)&7
	line	84
	
l7078:	
;ser.c: 84: txfifo[txiptr] = c;
	movf	(_txiptr),w
	addlw	_txfifo&0ffh
	movwf	fsr0
	movf	(ser_putch@c),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	85
	
l7080:	
;ser.c: 85: txiptr = (txiptr + 1) & (16-1);
	incf	(_txiptr),f	;volatile
	
l7082:	
	movlw	(0Fh)
	andwf	(_txiptr),f	;volatile
	line	86
	
l7084:	
;ser.c: 86: TXIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1124/8)^080h,(1124)&7
	line	87
	
l7086:	
;ser.c: 87: GIE = 1;
	bsf	(95/8),(95)&7
	line	88
	
l1909:	
	return
	opt stack 0
GLOBAL	__end_of_ser_putch
	__end_of_ser_putch:
;; =============== function _ser_putch ends ============

	signat	_ser_putch,4216
	global	_isr
psect	text502,local,class=CODE,delta=2
global __ptext502
__ptext502:

;; *************** function _isr *****************
;; Defined at:
;;		line 50 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  4505[COMMON] int 
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
psect	text502
	file	"../../../src/LC-meter.c"
	line	50
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 3
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
psect	text502
	line	62
	
i1l7116:	
;LC-meter.c: 62: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l7128
u48_20:
	line	66
	
i1l7118:	
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
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l7126
u49_20:
	line	69
	
i1l7120:	
;LC-meter.c: 68: {
;LC-meter.c: 69: bres -= 5000;
	movlw	low(01388h)
	subwf	(_bres),f	;volatile
	movlw	high(01388h)
	skipc
	decf	(_bres+1),f	;volatile
	subwf	(_bres+1),f	;volatile
	line	70
	
i1l7122:	
;LC-meter.c: 70: seconds++;
	incf	(_seconds),f	;volatile
	skipnz
	incf	(_seconds+1),f	;volatile
	line	72
	
i1l7124:	
	btfss	(_seconds),(0)&7	;volatile
	goto	u50_21
	goto	u50_20
	
u50_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u51_24
u50_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u51_24:
	btfsc	(59/8),(59)&7
	goto	u51_21
	goto	u51_20
	
u51_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	goto	u52_24
u51_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
u52_24:
	line	75
	
i1l7126:	
;LC-meter.c: 73: }
;LC-meter.c: 75: T0IF = 0;
	bcf	(90/8),(90)&7
	line	95
	
i1l7128:	
;LC-meter.c: 76: }
;LC-meter.c: 95: if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; } if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; } };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l7140
u53_20:
	
i1l7130:	
	movf	(_rxiptr),w
	addlw	_rxfifo&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank1
	movwf	indf
	
i1l7132:	
	incf	(_rxiptr),w	;volatile
	movwf	(_ser_tmp)
	
i1l7134:	
	movlw	(0Fh)
	andwf	(_ser_tmp),f
	
i1l7136:	
	movf	(_ser_tmp),w
	xorwf	(_rxoptr),w	;volatile
	skipnz
	goto	u54_21
	goto	u54_20
u54_21:
	goto	i1l7140
u54_20:
	
i1l7138:	
	movf	(_ser_tmp),w
	movwf	(_rxiptr)	;volatile
	
i1l7140:	
	btfss	(100/8),(100)&7
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l4514
u55_20:
	
i1l7142:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1124/8)^080h,(1124)&7
	goto	u56_21
	goto	u56_20
u56_21:
	goto	i1l4514
u56_20:
	
i1l7144:	
	movf	(_txoptr),w
	addlw	_txfifo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	
i1l7146:	
	incf	(_txoptr),f	;volatile
	
i1l7148:	
	movlw	(0Fh)
	andwf	(_txoptr),f	;volatile
	
i1l7150:	
	movf	(_txoptr),w	;volatile
	xorwf	(_txiptr),w	;volatile
	skipz
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l4514
u57_20:
	
i1l7152:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1124/8)^080h,(1124)&7
	line	97
	
i1l4514:	
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
