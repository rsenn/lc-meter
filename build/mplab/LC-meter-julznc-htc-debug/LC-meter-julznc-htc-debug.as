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
# 10 "..\..\..\src\config-16f876a.h"
	psect config,class=CONFIG,delta=2 ;#
# 10 "..\..\..\src\config-16f876a.h"
	dw 0xFFFE& 0xFFFB& 0xFFF7& 0xFF7F& 0xFFFF& 0xFFFF& 0xFFFF ;#
	FNCALL	_main,_initialize
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_lcd_send
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_delay10ms
	FNCALL	_main,_calibrate
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_ser_puts
	FNCALL	_main,_measure_capacitance
	FNCALL	_main,_measure_inductance
	FNCALL	_main,_indicator
	FNCALL	_measure_inductance,_lcd_gotoxy
	FNCALL	_measure_inductance,_lcd_puts
	FNCALL	_measure_inductance,_measure_freq
	FNCALL	_measure_inductance,___lwtofl
	FNCALL	_measure_inductance,___flge
	FNCALL	_measure_inductance,___flsub
	FNCALL	_measure_inductance,___flmul
	FNCALL	_measure_inductance,___fldiv
	FNCALL	_measure_inductance,_display_unit
	FNCALL	_measure_inductance,___fltol
	FNCALL	_measure_inductance,_display_reading
	FNCALL	_measure_capacitance,_lcd_gotoxy
	FNCALL	_measure_capacitance,_lcd_puts
	FNCALL	_measure_capacitance,_measure_freq
	FNCALL	_measure_capacitance,___lwtofl
	FNCALL	_measure_capacitance,___flge
	FNCALL	_measure_capacitance,___flmul
	FNCALL	_measure_capacitance,___flsub
	FNCALL	_measure_capacitance,___fldiv
	FNCALL	_measure_capacitance,_display_unit
	FNCALL	_measure_capacitance,___fltol
	FNCALL	_measure_capacitance,_display_reading
	FNCALL	_calibrate,_lcd_clear
	FNCALL	_calibrate,_lcd_gotoxy
	FNCALL	_calibrate,_lcd_puts
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,___lwtofl
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_lcd_send
	FNCALL	_initialize,_lcd_init
	FNCALL	_initialize,_lcd_clear
	FNCALL	_initialize,_ser_init
	FNCALL	_indicator,_lcd_gotoxy
	FNCALL	_indicator,_lcd_send
	FNCALL	_indicator,_lcd_puts
	FNCALL	_display_reading,_lcd_gotoxy
	FNCALL	_display_reading,_lcd_puts
	FNCALL	_display_reading,_lcd_send
	FNCALL	_display_reading,___lwdiv
	FNCALL	_display_reading,_display_digit
	FNCALL	_display_reading,___lwmod
	FNCALL	_lcd_clear,_lcd_gotoxy
	FNCALL	_lcd_clear,_lcd_send
	FNCALL	_lcd_puts,_lcd_putch
	FNCALL	_display_unit,_lcd_gotoxy
	FNCALL	_display_unit,___wmul
	FNCALL	_display_unit,_lcd_send
	FNCALL	_display_digit,_lcd_gotoxy
	FNCALL	_display_digit,_lcd_send
	FNCALL	___flsub,___fladd
	FNCALL	_measure_freq,_delay10ms
	FNCALL	_lcd_putch,___wmul
	FNCALL	_lcd_putch,_lcd_send
	FNCALL	_lcd_init,_lcd_send
	FNCALL	_lcd_gotoxy,_lcd_send
	FNCALL	___lwtofl,___flpack
	FNCALL	___flmul,___flpack
	FNCALL	___fldiv,___flpack
	FNCALL	___fladd,___flpack
	FNCALL	_ser_puts,_ser_putch
	FNROOT	_main
	global	display@logo_image
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
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.h"
	line	3
display@logo_image:
	retlw	0
	retlw	040h
	retlw	0C0h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0F8h
	retlw	0F0h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	080h
	retlw	010h
	retlw	07Ch
	retlw	0FCh
	retlw	0FEh
	retlw	0FCh
	retlw	0F8h
	retlw	0E0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	07h
	retlw	01Fh
	retlw	07Fh
	retlw	0FCh
	retlw	0F8h
	retlw	0E0h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FEh
	retlw	0FCh
	retlw	0DCh
	retlw	018h
	retlw	038h
	retlw	070h
	retlw	0E0h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	080h
	retlw	0C0h
	retlw	0C0h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	0F8h
	retlw	0F8h
	retlw	078h
	retlw	070h
	retlw	0F0h
	retlw	0CFh
	retlw	09Fh
	retlw	03Fh
	retlw	07Fh
	retlw	0FFh
	retlw	0F6h
	retlw	0C0h
	retlw	087h
	retlw	07Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0E7h
	retlw	09Fh
	retlw	0FCh
	retlw	0FBh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0DFh
	retlw	018h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	0Fh
	retlw	07Fh
	retlw	0FEh
	retlw	0F8h
	retlw	0E0h
	retlw	080h
	retlw	0
	retlw	07h
	retlw	03Fh
	retlw	0FFh
	retlw	0FEh
	retlw	0FCh
	retlw	0E0h
	retlw	01h
	retlw	03h
	retlw	0Fh
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	0Fh
	retlw	03Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0E7h
	retlw	01Fh
	retlw	07Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0F3h
	retlw	0CFh
	retlw	03Fh
	retlw	0FFh
	retlw	0FEh
	retlw	0F8h
	retlw	0E3h
	retlw	09Fh
	retlw	07Fh
	retlw	0FFh
	retlw	0FCh
	retlw	0FFh
	retlw	0DFh
	retlw	01Fh
	retlw	0Fh
	retlw	0Eh
	retlw	0C3h
	retlw	0CFh
	retlw	03Fh
	retlw	0FFh
	retlw	0FEh
	retlw	0F9h
	retlw	0C7h
	retlw	01Fh
	retlw	07Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0F3h
	retlw	083h
	retlw	03h
	retlw	021h
	retlw	0E7h
	retlw	0DFh
	retlw	0FFh
	retlw	0FCh
	retlw	0F0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	0Fh
	retlw	03Fh
	retlw	0FEh
	retlw	0F8h
	retlw	0E0h
	retlw	080h
	retlw	01h
	retlw	07h
	retlw	01Fh
	retlw	0FFh
	retlw	0FEh
	retlw	0F8h
	retlw	0E0h
	retlw	080h
	retlw	0
	retlw	04h
	retlw	01Ch
	retlw	0F8h
	retlw	0F0h
	retlw	080h
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	0Fh
	retlw	03Fh
	retlw	0FFh
	retlw	0FEh
	retlw	0F9h
	retlw	0E7h
	retlw	09Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Ch
	retlw	071h
	retlw	07h
	retlw	03Fh
	retlw	03Fh
	retlw	01Eh
	retlw	01Dh
	retlw	01h
	retlw	03h
	retlw	07h
	retlw	0Fh
	retlw	0Eh
	retlw	0Eh
	retlw	0Ch
	retlw	0Fh
	retlw	0Fh
	retlw	0
	retlw	01h
	retlw	03h
	retlw	07h
	retlw	0Fh
	retlw	0Eh
	retlw	0Fh
	retlw	07h
	retlw	03h
	retlw	07h
	retlw	0Eh
	retlw	01Eh
	retlw	03Dh
	retlw	03Fh
	retlw	03Fh
	retlw	019h
	retlw	07h
	retlw	01Fh
	retlw	07Fh
	retlw	07Eh
	retlw	078h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	0Fh
	retlw	03Fh
	retlw	0FEh
	retlw	0F8h
	retlw	0F0h
	retlw	080h
	retlw	01h
	retlw	07h
	retlw	0Fh
	retlw	09Fh
	retlw	0FFh
	retlw	07Ch
	retlw	0F8h
	retlw	0F0h
	retlw	0F7h
	retlw	0FFh
	retlw	07Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	0Fh
	retlw	03Fh
	retlw	0FEh
	retlw	0FEh
	retlw	07Fh
	retlw	03Fh
	retlw	01Fh
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_lcd_font
psect	stringtext
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
	line	15
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
	global	_units
psect	stringtext
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.h"
	line	43
_units:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0C0h
	retlw	0C0h
	retlw	0C0h
	retlw	0FCh
	retlw	0FCh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	060h
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	060h
	retlw	0E0h
	retlw	0C0h
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0C0h
	retlw	0C0h
	retlw	0C0h
	retlw	0FCh
	retlw	0FCh
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0C0h
	retlw	0C0h
	retlw	0C0h
	retlw	0FCh
	retlw	0FCh
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	018h
	retlw	08h
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	060h
	retlw	0E0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0C0h
	retlw	0C0h
	retlw	0C0h
	retlw	0FCh
	retlw	0FCh
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	060h
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	060h
	retlw	0E0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0CCh
	retlw	0CCh
	retlw	0CCh
	retlw	0Ch
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0CCh
	retlw	0CCh
	retlw	0CCh
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	018h
	retlw	08h
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	060h
	retlw	0E0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0CCh
	retlw	0CCh
	retlw	0CCh
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0E0h
	retlw	060h
	retlw	060h
	retlw	0E0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	0CCh
	retlw	0CCh
	retlw	0CCh
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	018h
	retlw	018h
	retlw	01Fh
	retlw	07h
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_digits_8x16
psect	stringtext
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.h"
	line	31
_digits_8x16:
	retlw	0FCh
	retlw	0FEh
	retlw	0FEh
	retlw	06h
	retlw	06h
	retlw	0FEh
	retlw	0FEh
	retlw	0FCh
	retlw	07Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0C0h
	retlw	0C0h
	retlw	0FFh
	retlw	0FFh
	retlw	07Fh
	retlw	0
	retlw	018h
	retlw	01Ch
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0C0h
	retlw	0
	retlw	03Ch
	retlw	03Eh
	retlw	03Eh
	retlw	06h
	retlw	086h
	retlw	0FEh
	retlw	0FEh
	retlw	07Ch
	retlw	0E0h
	retlw	0F0h
	retlw	0FCh
	retlw	0FFh
	retlw	0CFh
	retlw	0C7h
	retlw	0C1h
	retlw	0C0h
	retlw	01Ch
	retlw	01Eh
	retlw	09Eh
	retlw	086h
	retlw	086h
	retlw	0FEh
	retlw	0FEh
	retlw	0FCh
	retlw	078h
	retlw	0F8h
	retlw	0F9h
	retlw	0C1h
	retlw	0C1h
	retlw	0FFh
	retlw	0FFh
	retlw	07Eh
	retlw	0
	retlw	0F0h
	retlw	0FEh
	retlw	07Eh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0
	retlw	03Fh
	retlw	03Fh
	retlw	037h
	retlw	030h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	030h
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	086h
	retlw	071h
	retlw	0F1h
	retlw	0F1h
	retlw	0C0h
	retlw	0C0h
	retlw	0FFh
	retlw	0FFh
	retlw	07Fh
	retlw	0FCh
	retlw	0FEh
	retlw	0FEh
	retlw	0C6h
	retlw	0C6h
	retlw	0DEh
	retlw	0DEh
	retlw	09Ch
	retlw	07Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0C0h
	retlw	0C0h
	retlw	0FFh
	retlw	0FFh
	retlw	07Fh
	retlw	06h
	retlw	06h
	retlw	06h
	retlw	086h
	retlw	0E6h
	retlw	0FEh
	retlw	07Eh
	retlw	01Eh
	retlw	080h
	retlw	0F0h
	retlw	0FEh
	retlw	03Fh
	retlw	07h
	retlw	01h
	retlw	0
	retlw	0
	retlw	07Ch
	retlw	0FEh
	retlw	0FEh
	retlw	086h
	retlw	086h
	retlw	0FEh
	retlw	0FEh
	retlw	07Ch
	retlw	07Eh
	retlw	0FFh
	retlw	0FFh
	retlw	0C1h
	retlw	0C1h
	retlw	0FFh
	retlw	0FFh
	retlw	07Eh
	retlw	0FCh
	retlw	0FEh
	retlw	0FEh
	retlw	086h
	retlw	086h
	retlw	0FEh
	retlw	0FEh
	retlw	0FCh
	retlw	078h
	retlw	0F9h
	retlw	0F9h
	retlw	0C1h
	retlw	0C1h
	retlw	0FFh
	retlw	0FFh
	retlw	07Fh
	global	exp@coeff
psect	stringtext
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x18
	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xf0
	retlw	0xfd
	retlw	0x75
	retlw	0x3e

	retlw	0x47
	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x58
	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0x82
	retlw	0xc4
	retlw	0xae
	retlw	0x3a

	retlw	0xa8
	retlw	0x78
	retlw	0x21
	retlw	0x39

	retlw	0xef
	retlw	0x93
	retlw	0x80
	retlw	0x37

	retlw	0xa0
	retlw	0x92
	retlw	0xa7
	retlw	0x35

	retlw	0x46
	retlw	0x56
	retlw	0x15
	retlw	0x34

	global	log@coeff
psect	stringtext
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0xc4
	retlw	0xff
	retlw	0x7f
	retlw	0x3f

	retlw	0x80
	retlw	0xef
	retlw	0xff
	retlw	0xbe

	retlw	0x90
	retlw	0xe1
	retlw	0xa9
	retlw	0x3e

	retlw	0xec
	retlw	0x82
	retlw	0x76
	retlw	0xbe

	retlw	0x82
	retlw	0xad
	retlw	0x2b
	retlw	0x3e

	retlw	0xe
	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0x87
	retlw	0xd1
	retlw	0x13
	retlw	0x3d

	retlw	0x41
	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global	display@logo_image
	global	_lcd_font
	global	_units
	global	_digits_8x16
	global	exp@coeff
	global	log@coeff
	global	_txfifo
	global	_rxiptr
	global	_rxoptr
	global	_txiptr
	global	_txoptr
	global	_F2
	global	_F3
	global	_F1
	global	_TMR0
_TMR0	set	1
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB0
_RB0	set	48
	global	_RC0
_RC0	set	56
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
	global	_RC7
_RC7	set	63
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_TMR0IF
_TMR0IF	set	90
	global	_CMCON
_CMCON	set	156
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_BRGH
_BRGH	set	1218
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC6
_TRISC6	set	1086
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_TXIE
_TXIE	set	1124
	global	_nRBPU
_nRBPU	set	1039
	
STR_7:	
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	89	;'Y'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	39	;'''
	retlw	48	;'0'
	retlw	57	;'9'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
STR_2	equ	STR_1+0
STR_3	equ	STR_1+8
	file	"LC-meter-julznc-htc-debug.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_txfifo:
       ds      16

_rxiptr:
       ds      1

_rxoptr:
       ds      1

_txiptr:
       ds      1

_txoptr:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_F2:
       ds      4

_F3:
       ds      4

_F1:
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
	movlw	low((__pbssBANK1)+0Ch)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0x0
	global	_measure_capacitance$8391
_measure_capacitance$8391:	; 4 bytes @ 0x0
	ds	4
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0x4
	global	_measure_capacitance$8392
_measure_capacitance$8392:	; 4 bytes @ 0x4
	ds	4
	global	_measure_capacitance$8393
_measure_capacitance$8393:	; 4 bytes @ 0x8
	global	_measure_inductance$8398
_measure_inductance$8398:	; 4 bytes @ 0x8
	ds	4
	global	_measure_capacitance$8394
_measure_capacitance$8394:	; 4 bytes @ 0xC
	global	_measure_inductance$8399
_measure_inductance$8399:	; 4 bytes @ 0xC
	ds	4
	global	_measure_capacitance$8395
_measure_capacitance$8395:	; 4 bytes @ 0x10
	global	_measure_inductance$8400
_measure_inductance$8400:	; 4 bytes @ 0x10
	ds	4
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0x14
	global	_measure_inductance$8396
_measure_inductance$8396:	; 4 bytes @ 0x14
	ds	2
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0x16
	ds	2
	global	_measure_inductance$8397
_measure_inductance$8397:	; 4 bytes @ 0x18
	ds	4
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x1C
	ds	2
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x1E
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_initialize
?_initialize:	; 0 bytes @ 0x0
	global	?_delay10ms
?_delay10ms:	; 0 bytes @ 0x0
	global	?_calibrate
?_calibrate:	; 0 bytes @ 0x0
	global	?_measure_capacitance
?_measure_capacitance:	; 0 bytes @ 0x0
	global	?_measure_inductance
?_measure_inductance:	; 0 bytes @ 0x0
	global	?_ser_init
?_ser_init:	; 0 bytes @ 0x0
	global	??_ser_init
??_ser_init:	; 0 bytes @ 0x0
	global	?_display_unit
?_display_unit:	; 0 bytes @ 0x0
	global	?_indicator
?_indicator:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ser_putch
?_ser_putch:	; 0 bytes @ 0x0
	global	??_ser_putch
??_ser_putch:	; 0 bytes @ 0x0
	global	?___flge
?___flge:	; 1 bit 
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___flpack
?___flpack:	; 4 bytes @ 0x0
	global	?___fltol
?___fltol:	; 4 bytes @ 0x0
	global	ser_putch@c
ser_putch@c:	; 1 bytes @ 0x0
	global	delay10ms@period_10ms
delay10ms@period_10ms:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x0
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x0
	global	___flpack@arg
___flpack@arg:	; 4 bytes @ 0x0
	ds	1
	global	?_ser_puts
?_ser_puts:	; 0 bytes @ 0x1
	global	ser_puts@s
ser_puts@s:	; 2 bytes @ 0x1
	ds	1
	global	??_delay10ms
??_delay10ms:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_ser_puts
??_ser_puts:	; 0 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___fltol
??___fltol:	; 0 bytes @ 0x4
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x4
	ds	1
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x5
	ds	1
	global	?_lcd_send
?_lcd_send:	; 0 bytes @ 0x6
	global	??___flpack
??___flpack:	; 0 bytes @ 0x6
	global	lcd_send@cmd
lcd_send@cmd:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_send
??_lcd_send:	; 0 bytes @ 0x7
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	lcd_send@a
lcd_send@a:	; 1 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x8
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x8
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x8
	global	??___flge
??___flge:	; 0 bytes @ 0x8
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x8
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x8
	global	lcd_gotoxy@y
lcd_gotoxy@y:	; 2 bytes @ 0x8
	ds	1
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x9
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x9
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x9
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0xA
	global	??___fladd
??___fladd:	; 0 bytes @ 0xA
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0xA
	global	lcd_gotoxy@x
lcd_gotoxy@x:	; 1 bytes @ 0xA
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0xA
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0xB
	global	??_indicator
??_indicator:	; 0 bytes @ 0xB
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0xB
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	display_unit@unit
display_unit@unit:	; 1 bytes @ 0xB
	global	indicator@indicate
indicator@indicate:	; 1 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	lcd_clear@i
lcd_clear@i:	; 2 bytes @ 0xB
	ds	1
	global	?_display_digit
?_display_digit:	; 0 bytes @ 0xC
	global	display_digit@column
display_digit@column:	; 1 bytes @ 0xC
	global	display_unit@i
display_unit@i:	; 1 bytes @ 0xC
	ds	1
	global	??_initialize
??_initialize:	; 0 bytes @ 0xD
	global	display_digit@digit
display_digit@digit:	; 1 bytes @ 0xD
	ds	1
	global	??_calibrate
??_calibrate:	; 0 bytes @ 0xE
	global	??_measure_capacitance
??_measure_capacitance:	; 0 bytes @ 0xE
	global	??_measure_inductance
??_measure_inductance:	; 0 bytes @ 0xE
	global	??_display_reading
??_display_reading:	; 0 bytes @ 0xE
	global	??_main
??_main:	; 0 bytes @ 0xE
	global	??___flsub
??___flsub:	; 0 bytes @ 0xE
	global	??___lwtofl
??___lwtofl:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_display_digit
??_display_digit:	; 0 bytes @ 0x0
	global	??_display_unit
??_display_unit:	; 0 bytes @ 0x0
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x0
	global	?___fladd
?___fladd:	; 4 bytes @ 0x0
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x0
	ds	2
	global	??_measure_freq
??_measure_freq:	; 0 bytes @ 0x2
	global	display_digit@line
display_digit@line:	; 1 bytes @ 0x2
	ds	1
	global	display_digit@i
display_digit@i:	; 1 bytes @ 0x3
	ds	1
	global	?_display_reading
?_display_reading:	; 0 bytes @ 0x4
	global	display_reading@measurement
display_reading@measurement:	; 2 bytes @ 0x4
	global	measure_freq@oldTMR0
measure_freq@oldTMR0:	; 2 bytes @ 0x4
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x4
	ds	2
	global	measure_freq@prescaler_cntr
measure_freq@prescaler_cntr:	; 2 bytes @ 0x6
	ds	2
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x8
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x8
	ds	1
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x9
	ds	1
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0xA
	ds	1
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0xB
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0xB
	ds	4
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0xF
	ds	4
	global	??___fldiv
??___fldiv:	; 0 bytes @ 0x13
	ds	4
	global	___fldiv@f3
___fldiv@f3:	; 4 bytes @ 0x17
	ds	4
	global	___fldiv@cntr
___fldiv@cntr:	; 1 bytes @ 0x1B
	ds	1
	global	___fldiv@exp
___fldiv@exp:	; 1 bytes @ 0x1C
	ds	1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x1D
	ds	1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x1E
	global	___flmul@f1
___flmul@f1:	; 4 bytes @ 0x1E
	ds	4
	global	___flmul@f2
___flmul@f2:	; 4 bytes @ 0x22
	ds	4
	global	??___flmul
??___flmul:	; 0 bytes @ 0x26
	ds	4
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x2A
	ds	1
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x2B
	ds	4
	global	___flmul@cntr
___flmul@cntr:	; 1 bytes @ 0x2F
	ds	1
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x30
	ds	1
	global	?___flsub
?___flsub:	; 4 bytes @ 0x31
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x31
	ds	4
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x35
	ds	4
	global	main@i
main@i:	; 2 bytes @ 0x39
	ds	2
;;Data sizes: Strings 76, constant 1483, data 0, bss 32, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     59      79
;; BANK1           80     34      46
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___flpack	 size(1) Largest target is 0
;;
;; ?___fladd	 size(1) Largest target is 0
;;
;; ?___fltol	long  size(1) Largest target is 0
;;
;; ?___flsub	long  size(1) Largest target is 0
;;
;; ?___flmul	long  size(1) Largest target is 0
;;
;; ?___fldiv	long  size(1) Largest target is 0
;;
;; ?___lwtofl	long  size(1) Largest target is 0
;;
;; ?_measure_freq	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ser_puts@s	PTR const unsigned char  size(2) Largest target is 6
;;		 -> STR_5(CODE[6]), 
;;
;; putchar_ptr	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> format_putchar(), 
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 14
;;		 -> STR_9(CODE[13]), STR_8(CODE[13]), STR_7(CODE[14]), STR_6(CODE[13]), 
;;		 -> STR_4(CODE[7]), STR_3(CODE[2]), STR_2(CODE[10]), STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _measure_inductance->___lwtofl
;;   _measure_capacitance->___lwtofl
;;   _calibrate->___lwtofl
;;   _initialize->_lcd_clear
;;   _indicator->_lcd_gotoxy
;;   _indicator->_lcd_puts
;;   _display_reading->_display_digit
;;   _lcd_clear->_lcd_gotoxy
;;   _lcd_puts->_lcd_putch
;;   _display_unit->_lcd_gotoxy
;;   _display_digit->___lwmod
;;   ___flsub->___fladd
;;   _measure_freq->___lwtofl
;;   _lcd_putch->_lcd_send
;;   _lcd_init->_lcd_send
;;   _lcd_gotoxy->_lcd_send
;;   ___lwtofl->___flpack
;;   ___fldiv->___fladd
;;   ___fladd->___flpack
;;   _ser_puts->_ser_putch
;;   _lcd_send->___wmul
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _measure_inductance->___flsub
;;   _measure_capacitance->___flsub
;;   _calibrate->_measure_freq
;;   _display_reading->_display_digit
;;   ___flsub->___flmul
;;   ___flmul->___fldiv
;;   ___fldiv->___fladd
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_measure_inductance
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
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
;; (0) _main                                                 2     2      0   18884
;;                                             57 BANK0      2     2      0
;;                         _initialize
;;                         _lcd_gotoxy
;;                           _lcd_send
;;                           _lcd_puts
;;                          _delay10ms
;;                          _calibrate
;;                          _lcd_clear
;;                           _ser_puts
;;                _measure_capacitance
;;                 _measure_inductance
;;                          _indicator
;; ---------------------------------------------------------------------------------
;; (1) _measure_inductance                                  42    42      0    7017
;;                                              0 BANK1     34    34      0
;;                         _lcd_gotoxy
;;                           _lcd_puts
;;                       _measure_freq
;;                           ___lwtofl
;;                             ___flge
;;                            ___flsub
;;                            ___flmul
;;                            ___fldiv
;;                       _display_unit
;;                            ___fltol
;;                    _display_reading
;; ---------------------------------------------------------------------------------
;; (1) _measure_capacitance                                 26    26      0    6833
;;                                              0 BANK1     26    26      0
;;                         _lcd_gotoxy
;;                           _lcd_puts
;;                       _measure_freq
;;                           ___lwtofl
;;                             ___flge
;;                            ___flmul
;;                            ___flsub
;;                            ___fldiv
;;                       _display_unit
;;                            ___fltol
;;                    _display_reading
;; ---------------------------------------------------------------------------------
;; (1) _calibrate                                            1     1      0    1827
;;                                              8 BANK0      1     1      0
;;                          _lcd_clear
;;                         _lcd_gotoxy
;;                           _lcd_puts
;;                       _measure_freq
;;                           ___lwtofl
;;                          _delay10ms
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (1) _initialize                                           0     0      0     684
;;                           _lcd_init
;;                          _lcd_clear
;;                           _ser_init
;; ---------------------------------------------------------------------------------
;; (1) _indicator                                            1     1      0     951
;;                                             11 COMMON     1     1      0
;;                         _lcd_gotoxy
;;                           _lcd_send
;;                           _lcd_puts
;; ---------------------------------------------------------------------------------
;; (2) _display_reading                                      2     0      2    2222
;;                                              4 BANK0      2     0      2
;;                         _lcd_gotoxy
;;                           _lcd_puts
;;                           _lcd_send
;;                            ___lwdiv
;;                      _display_digit
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            2     2      0     486
;;                                             11 COMMON     2     2      0
;;                         _lcd_gotoxy
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (2) _lcd_puts                                             2     0      2     489
;;                                              9 COMMON     2     0      2
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (2) _display_unit                                         6     6      0     712
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      4     4      0
;;                         _lcd_gotoxy
;;                             ___wmul
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (3) _display_digit                                        6     4      2     796
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
;;                         _lcd_gotoxy
;;                           _lcd_send
;;                            ___lwdiv (ARG)
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___flsub                                              8     0      8    1094
;;                                             49 BANK0      8     0      8
;;                            ___fladd
;;                            ___flmul (ARG)
;;                            ___fldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _measure_freq                                         8     6      2     113
;;                                              0 BANK0      8     6      2
;;                          _delay10ms
;;                           ___lwtofl (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putch                                            1     1      0     444
;;                                              8 COMMON     1     1      0
;;                             ___wmul
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init                                             2     2      0     198
;;                                              8 COMMON     2     2      0
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (2) _lcd_gotoxy                                           3     1      2     242
;;                                              8 COMMON     3     1      2
;;                           _lcd_send
;; ---------------------------------------------------------------------------------
;; (2) ___lwtofl                                             4     0      4     231
;;                                             10 COMMON     4     0      4
;;                           ___flpack
;;                          _delay10ms (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___flmul                                             19    11      8     535
;;                                             30 BANK0     19    11      8
;;                           ___flpack
;;                            ___fldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fldiv                                             19    11      8     488
;;                                             11 BANK0     19    11      8
;;                           ___flpack
;;                            ___fladd (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fladd                                             15     7      8    1049
;;                                             10 COMMON     4     4      0
;;                                              0 BANK0     11     3      8
;;                           ___flpack
;; ---------------------------------------------------------------------------------
;; (1) _ser_puts                                             2     0      2      67
;;                                              1 COMMON     2     0      2
;;                          _ser_putch
;; ---------------------------------------------------------------------------------
;; (3) _delay10ms                                            4     2      2      22
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (4) _lcd_send                                             2     1      1     198
;;                                              6 COMMON     2     1      1
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___flge                                              12     4      8     136
;;                                              0 COMMON    12     4      8
;; ---------------------------------------------------------------------------------
;; (2) ___fltol                                             10     6      4     229
;;                                              0 COMMON    10     6      4
;; ---------------------------------------------------------------------------------
;; (3) ___flpack                                            10     4      6     209
;;                                              0 COMMON    10     4      6
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (4) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _ser_putch                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _ser_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initialize
;;     _lcd_init
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_clear
;;       _lcd_gotoxy
;;         _lcd_send
;;           ___wmul (ARG)
;;       _lcd_send
;;         ___wmul (ARG)
;;     _ser_init
;;   _lcd_gotoxy
;;     _lcd_send
;;       ___wmul (ARG)
;;   _lcd_send
;;     ___wmul (ARG)
;;   _lcd_puts
;;     _lcd_putch
;;       ___wmul
;;       _lcd_send
;;         ___wmul (ARG)
;;   _delay10ms
;;   _calibrate
;;     _lcd_clear
;;       _lcd_gotoxy
;;         _lcd_send
;;           ___wmul (ARG)
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_gotoxy
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_puts
;;       _lcd_putch
;;         ___wmul
;;         _lcd_send
;;           ___wmul (ARG)
;;     _measure_freq
;;       _delay10ms
;;       ___lwtofl (ARG)
;;         ___flpack
;;         _delay10ms (ARG)
;;     ___lwtofl
;;       ___flpack
;;       _delay10ms (ARG)
;;     _delay10ms
;;     _lcd_send
;;       ___wmul (ARG)
;;   _lcd_clear
;;     _lcd_gotoxy
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_send
;;       ___wmul (ARG)
;;   _ser_puts
;;     _ser_putch
;;   _measure_capacitance
;;     _lcd_gotoxy
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_puts
;;       _lcd_putch
;;         ___wmul
;;         _lcd_send
;;           ___wmul (ARG)
;;     _measure_freq
;;       _delay10ms
;;       ___lwtofl (ARG)
;;         ___flpack
;;         _delay10ms (ARG)
;;     ___lwtofl
;;       ___flpack
;;       _delay10ms (ARG)
;;     ___flge
;;     ___flmul
;;       ___flpack
;;       ___fldiv (ARG)
;;         ___flpack
;;         ___fladd (ARG)
;;           ___flpack
;;     ___flsub
;;       ___fladd
;;         ___flpack
;;       ___flmul (ARG)
;;         ___flpack
;;         ___fldiv (ARG)
;;           ___flpack
;;           ___fladd (ARG)
;;             ___flpack
;;       ___fldiv (ARG)
;;         ___flpack
;;         ___fladd (ARG)
;;           ___flpack
;;     ___fldiv
;;       ___flpack
;;       ___fladd (ARG)
;;         ___flpack
;;     _display_unit
;;       _lcd_gotoxy
;;         _lcd_send
;;           ___wmul (ARG)
;;       ___wmul
;;       _lcd_send
;;         ___wmul (ARG)
;;     ___fltol
;;     _display_reading
;;       _lcd_gotoxy
;;         _lcd_send
;;           ___wmul (ARG)
;;       _lcd_puts
;;         _lcd_putch
;;           ___wmul
;;           _lcd_send
;;             ___wmul (ARG)
;;       _lcd_send
;;         ___wmul (ARG)
;;       ___lwdiv
;;       _display_digit
;;         _lcd_gotoxy
;;           _lcd_send
;;             ___wmul (ARG)
;;         _lcd_send
;;           ___wmul (ARG)
;;         ___lwdiv (ARG)
;;         ___lwmod (ARG)
;;           ___lwdiv (ARG)
;;       ___lwmod
;;         ___lwdiv (ARG)
;;   _measure_inductance
;;     _lcd_gotoxy
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_puts
;;       _lcd_putch
;;         ___wmul
;;         _lcd_send
;;           ___wmul (ARG)
;;     _measure_freq
;;       _delay10ms
;;       ___lwtofl (ARG)
;;         ___flpack
;;         _delay10ms (ARG)
;;     ___lwtofl
;;       ___flpack
;;       _delay10ms (ARG)
;;     ___flge
;;     ___flsub
;;       ___fladd
;;         ___flpack
;;       ___flmul (ARG)
;;         ___flpack
;;         ___fldiv (ARG)
;;           ___flpack
;;           ___fladd (ARG)
;;             ___flpack
;;       ___fldiv (ARG)
;;         ___flpack
;;         ___fladd (ARG)
;;           ___flpack
;;     ___flmul
;;       ___flpack
;;       ___fldiv (ARG)
;;         ___flpack
;;         ___fladd (ARG)
;;           ___flpack
;;     ___fldiv
;;       ___flpack
;;       ___fladd (ARG)
;;         ___flpack
;;     _display_unit
;;       _lcd_gotoxy
;;         _lcd_send
;;           ___wmul (ARG)
;;       ___wmul
;;       _lcd_send
;;         ___wmul (ARG)
;;     ___fltol
;;     _display_reading
;;       _lcd_gotoxy
;;         _lcd_send
;;           ___wmul (ARG)
;;       _lcd_puts
;;         _lcd_putch
;;           ___wmul
;;           _lcd_send
;;             ___wmul (ARG)
;;       _lcd_send
;;         ___wmul (ARG)
;;       ___lwdiv
;;       _display_digit
;;         _lcd_gotoxy
;;           _lcd_send
;;             ___wmul (ARG)
;;         _lcd_send
;;           ___wmul (ARG)
;;         ___lwdiv (ARG)
;;         ___lwmod (ARG)
;;           ___lwdiv (ARG)
;;       ___lwmod
;;         ___lwdiv (ARG)
;;   _indicator
;;     _lcd_gotoxy
;;       _lcd_send
;;         ___wmul (ARG)
;;     _lcd_send
;;       ___wmul (ARG)
;;     _lcd_puts
;;       _lcd_putch
;;         ___wmul
;;         _lcd_send
;;           ___wmul (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      8B       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3B      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     22      2E       7       57.5%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      90      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   57[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
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
;;		_lcd_gotoxy
;;		_lcd_send
;;		_lcd_puts
;;		_delay10ms
;;		_calibrate
;;		_lcd_clear
;;		_ser_puts
;;		_measure_capacitance
;;		_measure_inductance
;;		_indicator
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l10246:	
;main.c: 28: int i;
;main.c: 29: initialize();
	fcall	_initialize
	line	30
;main.c: 30: lcd_gotoxy(0, 0);
	clrf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	32
	
l10248:	
;main.c: 32: for(i = 0; i < 504; i++) lcd_send(logo_image[i], 1);
	clrf	(main@i)
	clrf	(main@i+1)
	
l10254:	
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	high(display@logo_image|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i+1),w
	movwf	btemp+1
	movlw	low(display@logo_image|8000h)
	addwf	(main@i),w
	movwf	fsr0
	skipnc
	incf	btemp+1,f
	fcall	stringtab
	fcall	_lcd_send
	
l10256:	
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l10258:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2055
	movlw	low(01F8h)
	subwf	(main@i),w
u2055:

	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l10254
u2050:
	line	33
	
l10260:	
;main.c: 33: lcd_gotoxy(40, 5);
	movlw	05h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(028h)
	fcall	_lcd_gotoxy
	line	34
	
l10262:	
;main.c: 34: lcd_puts("YUS'09");
	movlw	low(STR_4|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_4|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	35
	
l10264:	
;main.c: 35: delay10ms(200);
	movlw	0C8h
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	line	36
;main.c: 36: calibrate();
	fcall	_calibrate
	line	37
	
l10266:	
;main.c: 37: lcd_clear();
	fcall	_lcd_clear
	line	41
	
l10268:	
;main.c: 41: ser_puts("...\r\n");
	movlw	low(STR_5|8000h)
	movwf	(?_ser_puts)
	movlw	high(STR_5|8000h)
	movwf	((?_ser_puts))+1
	fcall	_ser_puts
	line	43
	
l10270:	
;main.c: 43: if(RB0)
	btfss	(48/8),(48)&7
	goto	u2061
	goto	u2060
u2061:
	goto	l10274
u2060:
	line	44
	
l10272:	
;main.c: 44: measure_capacitance();
	fcall	_measure_capacitance
	goto	l1426
	line	46
	
l10274:	
;main.c: 45: else
;main.c: 46: measure_inductance();
	fcall	_measure_inductance
	
l1426:	
	line	47
;main.c: 47: indicator(1);
	movlw	(01h)
	fcall	_indicator
	line	48
	
l10276:	
;main.c: 48: delay10ms(30);
	movlw	01Eh
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	line	49
	
l10278:	
;main.c: 49: indicator(0);
	movlw	(0)
	fcall	_indicator
	line	50
;main.c: 50: delay10ms(20);
	movlw	014h
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	goto	l10268
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	52
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_measure_inductance
psect	text569,local,class=CODE,delta=2
global __ptext569
__ptext569:

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 168 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   30[BANK1 ] int 
;;  denominator     4    4[BANK1 ] int 
;;  numerator       4    0[BANK1 ] int 
;;  var             2   28[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      34       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      34       0       0
;;Total ram usage:       34 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_puts
;;		_measure_freq
;;		___lwtofl
;;		___flge
;;		___flsub
;;		___flmul
;;		___fldiv
;;		_display_unit
;;		___fltol
;;		_display_reading
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text569
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
	line	168
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:	
	opt	stack 3
; Regs used in _measure_inductance: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	171
	
l10190:	
;main.c: 169: unsigned int var;
;main.c: 170: double Lin, numerator, denominator;
;main.c: 171: lcd_gotoxy(7, 5);
	movlw	05h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(07h)
	fcall	_lcd_gotoxy
	line	172
	
l10192:	
;main.c: 172: lcd_puts(" inductance ");
	movlw	low(STR_9|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_9|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	173
	
l10194:	
;main.c: 173: var = measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@var+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@var)^080h
	line	174
	
l10196:	
;main.c: 174: F3 = (double)var;
	movf	(measure_inductance@var+1)^080h,w
	movwf	(?___lwtofl+1)
	movf	(measure_inductance@var)^080h,w
	movwf	(?___lwtofl)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(_F3+3)^080h
	movf	(2+(?___lwtofl)),w
	movwf	(_F3+2)^080h
	movf	(1+(?___lwtofl)),w
	movwf	(_F3+1)^080h
	movf	(0+(?___lwtofl)),w
	movwf	(_F3)^080h

	line	175
	
l10198:	
;main.c: 175: if(F3 > F1)
	movf	(_F1+3)^080h,w
	movwf	(?___flge+3)
	movf	(_F1+2)^080h,w
	movwf	(?___flge+2)
	movf	(_F1+1)^080h,w
	movwf	(?___flge+1)
	movf	(_F1)^080h,w
	movwf	(?___flge)

	movf	(_F3+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(_F3+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(_F3+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(_F3)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u2011
	goto	u2010
u2011:
	goto	l10202
u2010:
	line	176
	
l10200:	
;main.c: 176: F3 = F1;
	movf	(_F1+3)^080h,w
	movwf	(_F3+3)^080h
	movf	(_F1+2)^080h,w
	movwf	(_F3+2)^080h
	movf	(_F1+1)^080h,w
	movwf	(_F3+1)^080h
	movf	(_F1)^080h,w
	movwf	(_F3)^080h

	line	177
	
l10202:	
;main.c: 177: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(?___flsub+3)
	movf	(2+(?___flmul)),w
	movwf	(?___flsub+2)
	movf	(1+(?___flmul)),w
	movwf	(?___flsub+1)
	movf	(0+(?___flmul)),w
	movwf	(?___flsub)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	3+(?___flsub)+04h
	movf	(2+(?___flmul)),w
	movwf	2+(?___flsub)+04h
	movf	(1+(?___flmul)),w
	movwf	1+(?___flsub)+04h
	movf	(0+(?___flmul)),w
	movwf	0+(?___flsub)+04h

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396)^080h

	
l10204:	
;main.c: 177: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flsub+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flsub+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flsub+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flsub)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flsub)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flsub)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flsub)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flsub)+04h

	fcall	___flsub
	movf	(3+(?___flsub)),w
	movwf	(?___flsub+3)
	movf	(2+(?___flsub)),w
	movwf	(?___flsub+2)
	movf	(1+(?___flsub)),w
	movwf	(?___flsub+1)
	movf	(0+(?___flsub)),w
	movwf	(?___flsub)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	3+(?___flsub)+04h
	movf	(2+(?___flmul)),w
	movwf	2+(?___flsub)+04h
	movf	(1+(?___flmul)),w
	movwf	1+(?___flsub)+04h
	movf	(0+(?___flmul)),w
	movwf	0+(?___flsub)+04h

	fcall	___flsub
	movf	(3+(?___flsub)),w
	movwf	(?___flmul+3)
	movf	(2+(?___flsub)),w
	movwf	(?___flmul+2)
	movf	(1+(?___flsub)),w
	movwf	(?___flmul+1)
	movf	(0+(?___flsub)),w
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397)^080h

	
l10206:	
;main.c: 177: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movlw	0x46
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	movlw	0x1c
	movwf	(?___flmul+2)
	movlw	0x40
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator)^080h

	line	178
	
l10208:	
;main.c: 178: denominator = 4 * 3.14159 * 3.14159 * F1 * F1 * F2 * F2 * F3 * F3 * 1000;
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8396)^080h

	
l10210:	
;main.c: 178: denominator = 4 * 3.14159 * 3.14159 * F1 * F1 * F2 * F2 * F3 * F3 * 1000;
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8396)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8397)^080h

	
l10212:	
;main.c: 178: denominator = 4 * 3.14159 * 3.14159 * F1 * F1 * F2 * F2 * F3 * F3 * 1000;
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8397)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8398+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8398+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8398+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8398)^080h

	
l10214:	
;main.c: 178: denominator = 4 * 3.14159 * 3.14159 * F1 * F1 * F2 * F2 * F3 * F3 * 1000;
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8398+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8398+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8398+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8398)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8399+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8399+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8399+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8399)^080h

	
l10216:	
;main.c: 178: denominator = 4 * 3.14159 * 3.14159 * F1 * F1 * F2 * F2 * F3 * F3 * 1000;
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8399+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8399+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8399+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8399)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8400+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8400+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8400+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$8400)^080h

	
l10218:	
;main.c: 178: denominator = 4 * 3.14159 * 3.14159 * F1 * F1 * F2 * F2 * F3 * F3 * 1000;
	movlw	0x47
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	movlw	0x1a
	movwf	(?___flmul+2)
	movlw	0x36
	movwf	(?___flmul+1)
	movlw	0x5a
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8400+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8400+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8400+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$8400)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator)^080h

	line	179
	
l10220:	
;main.c: 179: Lin = (numerator / denominator) * 1E15;
	movlw	0x58
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	movlw	0x63
	movwf	(?___flmul+2)
	movlw	0x5f
	movwf	(?___flmul+1)
	movlw	0xa9
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	3+(?___flmul)+04h
	movf	(2+(?___fldiv)),w
	movwf	2+(?___flmul)+04h
	movf	(1+(?___fldiv)),w
	movwf	1+(?___flmul)+04h
	movf	(0+(?___fldiv)),w
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	180
	
l10222:	
;main.c: 180: if(Lin > 999) {
	movlw	0x44
	movwf	(?___flge+3)
	movlw	0x79
	movwf	(?___flge+2)
	movlw	0xc0
	movwf	(?___flge+1)
	movlw	0x0
	movwf	(?___flge)

	movf	(measure_inductance@Lin+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(measure_inductance@Lin)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u2021
	goto	u2020
u2021:
	goto	l10240
u2020:
	line	181
	
l10224:	
;main.c: 181: if(Lin > (999E3)) {
	movlw	0x49
	movwf	(?___flge+3)
	movlw	0x73
	movwf	(?___flge+2)
	movlw	0xe5
	movwf	(?___flge+1)
	movlw	0x80
	movwf	(?___flge)

	movf	(measure_inductance@Lin+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(measure_inductance@Lin)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u2031
	goto	u2030
u2031:
	goto	l10236
u2030:
	line	182
	
l10226:	
;main.c: 182: if(Lin > (999E6)) {
	movlw	0x4e
	movwf	(?___flge+3)
	movlw	0x6e
	movwf	(?___flge+2)
	movlw	0x2e
	movwf	(?___flge+1)
	movlw	0x1f
	movwf	(?___flge)

	movf	(measure_inductance@Lin+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(measure_inductance@Lin)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u2041
	goto	u2040
u2041:
	goto	l10232
u2040:
	line	183
	
l10228:	
;main.c: 183: Lin = Lin / (1E9);
	movlw	0x4e
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+3)
	movlw	0x6e
	movwf	(?___fldiv+2)
	movlw	0x6b
	movwf	(?___fldiv+1)
	movlw	0x28
	movwf	(?___fldiv)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	184
	
l10230:	
;main.c: 184: display_unit(0);
	movlw	(0)
	fcall	_display_unit
	line	185
;main.c: 185: } else {
	goto	l10242
	line	186
	
l10232:	
;main.c: 186: Lin = Lin / (1E6);
	movlw	0x49
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+3)
	movlw	0x74
	movwf	(?___fldiv+2)
	movlw	0x24
	movwf	(?___fldiv+1)
	movlw	0x0
	movwf	(?___fldiv)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	187
	
l10234:	
;main.c: 187: display_unit(1);
	movlw	(01h)
	fcall	_display_unit
	goto	l10242
	line	190
	
l10236:	
;main.c: 190: Lin = Lin / 1E3;
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+3)
	movlw	0x7a
	movwf	(?___fldiv+2)
	movlw	0x0
	movwf	(?___fldiv+1)
	movlw	0x0
	movwf	(?___fldiv)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	191
	
l10238:	
;main.c: 191: display_unit(2);
	movlw	(02h)
	fcall	_display_unit
	goto	l10242
	line	194
	
l10240:	
;main.c: 194: display_unit(3);
	movlw	(03h)
	fcall	_display_unit
	line	195
	
l10242:	
;main.c: 195: Lin = Lin * 100;
	movlw	0x42
	movwf	(?___flmul+3)
	movlw	0xc8
	movwf	(?___flmul+2)
	movlw	0x0
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	196
	
l10244:	
;main.c: 196: var = (unsigned int)Lin;
	movf	(measure_inductance@Lin+3)^080h,w
	movwf	(?___fltol+3)
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	(?___fltol+2)
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	(?___fltol+1)
	movf	(measure_inductance@Lin)^080h,w
	movwf	(?___fltol)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movwf	(measure_inductance@var+1)^080h
	movf	0+(((0+(?___fltol)))),w
	movwf	(measure_inductance@var)^080h
	line	197
;main.c: 197: display_reading(var);
	movf	(measure_inductance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_display_reading+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_display_reading)
	fcall	_display_reading
	line	198
	
l1464:	
	return
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
;; =============== function _measure_inductance ends ============

	signat	_measure_inductance,88
	global	_measure_capacitance
psect	text570,local,class=CODE,delta=2
global __ptext570
__ptext570:

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 138 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   22[BANK1 ] unsigned int 
;;  var             2   20[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      26       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      26       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_puts
;;		_measure_freq
;;		___lwtofl
;;		___flge
;;		___flmul
;;		___flsub
;;		___fldiv
;;		_display_unit
;;		___fltol
;;		_display_reading
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text570
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
	line	138
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:	
	opt	stack 3
; Regs used in _measure_capacitance: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	141
	
l10142:	
;main.c: 139: unsigned int var;
;main.c: 140: double Cin;
;main.c: 141: lcd_gotoxy(7, 5);
	movlw	05h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(07h)
	fcall	_lcd_gotoxy
	line	142
	
l10144:	
;main.c: 142: lcd_puts(" capacitance");
	movlw	low(STR_8|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_8|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	143
	
l10146:	
;main.c: 143: var = measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@var+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@var)^080h
	line	144
	
l10148:	
;main.c: 144: F3 = (double)var;
	movf	(measure_capacitance@var+1)^080h,w
	movwf	(?___lwtofl+1)
	movf	(measure_capacitance@var)^080h,w
	movwf	(?___lwtofl)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(_F3+3)^080h
	movf	(2+(?___lwtofl)),w
	movwf	(_F3+2)^080h
	movf	(1+(?___lwtofl)),w
	movwf	(_F3+1)^080h
	movf	(0+(?___lwtofl)),w
	movwf	(_F3)^080h

	line	145
	
l10150:	
;main.c: 145: if(F3 > F1)
	movf	(_F1+3)^080h,w
	movwf	(?___flge+3)
	movf	(_F1+2)^080h,w
	movwf	(?___flge+2)
	movf	(_F1+1)^080h,w
	movwf	(?___flge+1)
	movf	(_F1)^080h,w
	movwf	(?___flge)

	movf	(_F3+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(_F3+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(_F3+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(_F3)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u1971
	goto	u1970
u1971:
	goto	l10154
u1970:
	line	146
	
l10152:	
;main.c: 146: F3 = F1;
	movf	(_F1+3)^080h,w
	movwf	(_F3+3)^080h
	movf	(_F1+2)^080h,w
	movwf	(_F3+2)^080h
	movf	(_F1+1)^080h,w
	movwf	(_F3+1)^080h
	movf	(_F1)^080h,w
	movwf	(_F3)^080h

	line	147
	
l10154:	
;main.c: 147: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * 1000 / (F3 * F3 * (F1 * F1 - F2 * F2));
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(?___flsub+3)
	movf	(2+(?___flmul)),w
	movwf	(?___flsub+2)
	movf	(1+(?___flmul)),w
	movwf	(?___flsub+1)
	movf	(0+(?___flmul)),w
	movwf	(?___flsub)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	3+(?___flsub)+04h
	movf	(2+(?___flmul)),w
	movwf	2+(?___flsub)+04h
	movf	(1+(?___flmul)),w
	movwf	1+(?___flsub)+04h
	movf	(0+(?___flmul)),w
	movwf	0+(?___flsub)+04h

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8391+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8391+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8391+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8391)^080h

	
l10156:	
;main.c: 147: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * 1000 / (F3 * F3 * (F1 * F1 - F2 * F2));
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8391+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8391+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8391+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8391)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8392+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8392+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8392+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8392)^080h

	
l10158:	
;main.c: 147: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * 1000 / (F3 * F3 * (F1 * F1 - F2 * F2));
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(?___flsub+3)
	movf	(2+(?___flmul)),w
	movwf	(?___flsub+2)
	movf	(1+(?___flmul)),w
	movwf	(?___flsub+1)
	movf	(0+(?___flmul)),w
	movwf	(?___flsub)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	3+(?___flsub)+04h
	movf	(2+(?___flmul)),w
	movwf	2+(?___flsub)+04h
	movf	(1+(?___flmul)),w
	movwf	1+(?___flsub)+04h
	movf	(0+(?___flmul)),w
	movwf	0+(?___flsub)+04h

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8393+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8393+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8393+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8393)^080h

	
l10160:	
;main.c: 147: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * 1000 / (F3 * F3 * (F1 * F1 - F2 * F2));
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8393+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8393+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8393+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8393)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8394+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8394+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8394+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8394)^080h

	
l10162:	
;main.c: 147: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * 1000 / (F3 * F3 * (F1 * F1 - F2 * F2));
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8394+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8394+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8394+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8394)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8395+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8395+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8395+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$8395)^080h

	
l10164:	
;main.c: 147: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * 1000 / (F3 * F3 * (F1 * F1 - F2 * F2));
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8392+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8392+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8392+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8392)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(?___fldiv+3)
	movf	(2+(?___flmul)),w
	movwf	(?___fldiv+2)
	movf	(1+(?___flmul)),w
	movwf	(?___fldiv+1)
	movf	(0+(?___flmul)),w
	movwf	(?___fldiv)

	movlw	0x44
	movwf	(?___flmul+3)
	movlw	0x7a
	movwf	(?___flmul+2)
	movlw	0x0
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8395+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8395+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8395+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$8395)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	3+(?___fldiv)+04h
	movf	(2+(?___flmul)),w
	movwf	2+(?___fldiv)+04h
	movf	(1+(?___flmul)),w
	movwf	1+(?___fldiv)+04h
	movf	(0+(?___flmul)),w
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	148
	
l10166:	
;main.c: 148: if(Cin > 999) {
	movlw	0x44
	movwf	(?___flge+3)
	movlw	0x79
	movwf	(?___flge+2)
	movlw	0xc0
	movwf	(?___flge+1)
	movlw	0x0
	movwf	(?___flge)

	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(measure_capacitance@Cin)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u1981
	goto	u1980
u1981:
	goto	l10184
u1980:
	line	149
	
l10168:	
;main.c: 149: if(Cin > (999E3)) {
	movlw	0x49
	movwf	(?___flge+3)
	movlw	0x73
	movwf	(?___flge+2)
	movlw	0xe5
	movwf	(?___flge+1)
	movlw	0x80
	movwf	(?___flge)

	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(measure_capacitance@Cin)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u1991
	goto	u1990
u1991:
	goto	l10180
u1990:
	line	150
	
l10170:	
;main.c: 150: if(Cin > (999E6)) {
	movlw	0x4e
	movwf	(?___flge+3)
	movlw	0x6e
	movwf	(?___flge+2)
	movlw	0x2e
	movwf	(?___flge+1)
	movlw	0x1f
	movwf	(?___flge)

	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	3+(?___flge)+04h
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	2+(?___flge)+04h
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	1+(?___flge)+04h
	movf	(measure_capacitance@Cin)^080h,w
	movwf	0+(?___flge)+04h

	fcall	___flge
	btfsc	status,0
	goto	u2001
	goto	u2000
u2001:
	goto	l10176
u2000:
	line	151
	
l10172:	
;main.c: 151: Cin = Cin / (1E9);
	movlw	0x4e
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+3)
	movlw	0x6e
	movwf	(?___fldiv+2)
	movlw	0x6b
	movwf	(?___fldiv+1)
	movlw	0x28
	movwf	(?___fldiv)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	152
	
l10174:	
;main.c: 152: display_unit(4);
	movlw	(04h)
	fcall	_display_unit
	line	153
;main.c: 153: } else {
	goto	l10186
	line	154
	
l10176:	
;main.c: 154: Cin = Cin / (1E6);
	movlw	0x49
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+3)
	movlw	0x74
	movwf	(?___fldiv+2)
	movlw	0x24
	movwf	(?___fldiv+1)
	movlw	0x0
	movwf	(?___fldiv)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	155
	
l10178:	
;main.c: 155: display_unit(5);
	movlw	(05h)
	fcall	_display_unit
	goto	l10186
	line	158
	
l10180:	
;main.c: 158: Cin = Cin / 1E3;
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fldiv+3)
	movlw	0x7a
	movwf	(?___fldiv+2)
	movlw	0x0
	movwf	(?___fldiv+1)
	movlw	0x0
	movwf	(?___fldiv)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___fldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___fldiv)+04h

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	159
	
l10182:	
;main.c: 159: display_unit(6);
	movlw	(06h)
	fcall	_display_unit
	goto	l10186
	line	162
	
l10184:	
;main.c: 162: display_unit(7);
	movlw	(07h)
	fcall	_display_unit
	line	163
	
l10186:	
;main.c: 163: Cin = Cin * 100;
	movlw	0x42
	movwf	(?___flmul+3)
	movlw	0xc8
	movwf	(?___flmul+2)
	movlw	0x0
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___flmul)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___flmul)+04h

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	164
	
l10188:	
;main.c: 164: var = (unsigned int)Cin;
	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	(?___fltol+3)
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	(?___fltol+2)
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	(?___fltol+1)
	movf	(measure_capacitance@Cin)^080h,w
	movwf	(?___fltol)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movwf	(measure_capacitance@var+1)^080h
	movf	0+(((0+(?___fltol)))),w
	movwf	(measure_capacitance@var)^080h
	line	165
;main.c: 165: display_reading(var);
	movf	(measure_capacitance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_display_reading+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_display_reading)
	fcall	_display_reading
	line	166
	
l1454:	
	return
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
;; =============== function _measure_capacitance ends ============

	signat	_measure_capacitance,88
	global	_calibrate
psect	text571,local,class=CODE,delta=2
global __ptext571
__ptext571:

;; *************** function _calibrate *****************
;; Defined at:
;;		line 115 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_puts
;;		_measure_freq
;;		___lwtofl
;;		_delay10ms
;;		_lcd_send
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text571
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
	line	115
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:	
	opt	stack 4
; Regs used in _calibrate: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	117
	
l10104:	
;main.c: 116: unsigned char i;
;main.c: 117: lcd_clear();
	fcall	_lcd_clear
	line	118
;main.c: 118: lcd_gotoxy(1, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	clrf	(?_lcd_gotoxy+1)
	movlw	(01h)
	fcall	_lcd_gotoxy
	line	119
	
l10106:	
;main.c: 119: lcd_puts("Calibrating.");
	movlw	low(STR_6|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_6|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	120
	
l10108:	
;main.c: 120: lcd_gotoxy(1, 3);
	movlw	03h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(01h)
	fcall	_lcd_gotoxy
	line	121
;main.c: 121: lcd_puts("please wait..");
	movlw	low(STR_7|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_7|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	122
	
l10110:	
;main.c: 122: RC0 = 0;
	bcf	(56/8),(56)&7
	line	123
	
l10112:	
;main.c: 123: F1 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(?___lwtofl+1)
	movf	(0+(?_measure_freq)),w
	movwf	(?___lwtofl)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+3)^080h
	movf	(2+(?___lwtofl)),w
	movwf	(_F1+2)^080h
	movf	(1+(?___lwtofl)),w
	movwf	(_F1+1)^080h
	movf	(0+(?___lwtofl)),w
	movwf	(_F1)^080h

	line	124
	
l10114:	
;main.c: 124: delay10ms(50);
	movlw	032h
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	line	125
	
l10116:	
;main.c: 125: F1 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(?___lwtofl+1)
	movf	(0+(?_measure_freq)),w
	movwf	(?___lwtofl)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+3)^080h
	movf	(2+(?___lwtofl)),w
	movwf	(_F1+2)^080h
	movf	(1+(?___lwtofl)),w
	movwf	(_F1+1)^080h
	movf	(0+(?___lwtofl)),w
	movwf	(_F1)^080h

	line	126
	
l10118:	
;main.c: 126: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(56/8),(56)&7
	line	127
	
l10120:	
;main.c: 127: F2 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(?___lwtofl+1)
	movf	(0+(?_measure_freq)),w
	movwf	(?___lwtofl)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+3)^080h
	movf	(2+(?___lwtofl)),w
	movwf	(_F2+2)^080h
	movf	(1+(?___lwtofl)),w
	movwf	(_F2+1)^080h
	movf	(0+(?___lwtofl)),w
	movwf	(_F2)^080h

	line	128
	
l10122:	
;main.c: 128: delay10ms(50);
	movlw	032h
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	line	129
	
l10124:	
;main.c: 129: F2 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(?___lwtofl+1)
	movf	(0+(?_measure_freq)),w
	movwf	(?___lwtofl)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+3)^080h
	movf	(2+(?___lwtofl)),w
	movwf	(_F2+2)^080h
	movf	(1+(?___lwtofl)),w
	movwf	(_F2+1)^080h
	movf	(0+(?___lwtofl)),w
	movwf	(_F2)^080h

	line	130
	
l10126:	
;main.c: 130: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(56/8),(56)&7
	line	131
	
l10128:	
;main.c: 131: lcd_gotoxy(0, 4);
	movlw	04h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	132
	
l10130:	
;main.c: 132: for(i = 0; i < 84; i++) {
	clrf	(calibrate@i)
	line	133
	
l10136:	
;main.c: 133: lcd_send(0xfc, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(0FCh)
	fcall	_lcd_send
	line	134
;main.c: 134: delay10ms(2);
	movlw	02h
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	line	132
	
l10138:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(calibrate@i),f
	
l10140:	
	movlw	(054h)
	subwf	(calibrate@i),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l10136
u1960:
	line	136
	
l1444:	
	return
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
;; =============== function _calibrate ends ============

	signat	_calibrate,88
	global	_initialize
psect	text572,local,class=CODE,delta=2
global __ptext572
__ptext572:

;; *************** function _initialize *****************
;; Defined at:
;;		line 54 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
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
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_lcd_clear
;;		_ser_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text572
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
	line	54
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:	
	opt	stack 4
; Regs used in _initialize: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l10072:	
;main.c: 56: CMCON = 0b00000101;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	57
;main.c: 57: TRISA = 0b11001111;
	movlw	(0CFh)
	movwf	(133)^080h	;volatile
	line	59
	
l10074:	
;main.c: 59: T0CS = 1;
	bsf	(1037/8)^080h,(1037)&7
	line	60
	
l10076:	
;main.c: 60: T0SE = 1;
	bsf	(1036/8)^080h,(1036)&7
	line	61
	
l10078:	
;main.c: 61: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	62
	
l10080:	
;main.c: 62: PS2 = 1;
	bsf	(1034/8)^080h,(1034)&7
	line	63
	
l10082:	
;main.c: 63: PS1 = 1;
	bsf	(1033/8)^080h,(1033)&7
	line	64
	
l10084:	
;main.c: 64: PS0 = 1;
	bsf	(1032/8)^080h,(1032)&7
	line	66
	
l10086:	
;main.c: 66: lcd_init();
	fcall	_lcd_init
	line	67
	
l10088:	
;main.c: 67: lcd_clear();
	fcall	_lcd_clear
	line	69
	
l10090:	
;main.c: 69: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	70
	
l10092:	
;main.c: 70: TRISC0 = 0;
	bcf	(1080/8)^080h,(1080)&7
	line	73
	
l10094:	
;main.c: 73: ser_init();
	fcall	_ser_init
	line	78
	
l10096:	
;main.c: 78: TRISC &= ~0b01000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(6/8),(6)&7	;volatile
	line	80
	
l10098:	
;main.c: 80: PEIE = 1;
	bsf	(94/8),(94)&7
	line	81
	
l10100:	
;main.c: 81: GIE = 1;
	bsf	(95/8),(95)&7
	line	84
	
l10102:	
;main.c: 84: nRBPU = 1;
	bsf	(1039/8)^080h,(1039)&7
	line	88
	
l1432:	
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
;; =============== function _initialize ends ============

	signat	_initialize,88
	global	_indicator
psect	text573,local,class=CODE,delta=2
global __ptext573
__ptext573:

;; *************** function _indicator *****************
;; Defined at:
;;		line 53 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1   11[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_send
;;		_lcd_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text573
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
	line	53
	global	__size_of_indicator
	__size_of_indicator	equ	__end_of_indicator-_indicator
	
_indicator:	
	opt	stack 4
; Regs used in _indicator: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;indicator@indicate stored from wreg
	movwf	(indicator@indicate)
	line	54
	
l10064:	
;display.c: 54: if(indicate) {
	movf	(indicator@indicate),w
	skipz
	goto	u1950
	goto	l10068
u1950:
	line	55
	
l10066:	
;display.c: 55: lcd_gotoxy(70, 4);
	movlw	04h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(046h)
	fcall	_lcd_gotoxy
	line	56
;display.c: 56: lcd_send(0x1C, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(01Ch)
	fcall	_lcd_send
	line	57
;display.c: 57: lcd_send(0x3E, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(03Eh)
	fcall	_lcd_send
	line	58
;display.c: 58: lcd_send(0x36, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(036h)
	fcall	_lcd_send
	line	59
;display.c: 59: lcd_send(0x3E, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(03Eh)
	fcall	_lcd_send
	line	60
;display.c: 60: lcd_send(0x1C, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(01Ch)
	fcall	_lcd_send
	line	61
;display.c: 61: } else {
	goto	l43
	line	62
	
l10068:	
;display.c: 62: lcd_gotoxy(70, 4);
	movlw	04h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(046h)
	fcall	_lcd_gotoxy
	line	63
	
l10070:	
;display.c: 63: lcd_puts(" ");
	movlw	low(STR_3|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_3|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	65
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_indicator
	__end_of_indicator:
;; =============== function _indicator ends ============

	signat	_indicator,4216
	global	_display_reading
psect	text574,local,class=CODE,delta=2
global __ptext574
__ptext574:

;; *************** function _display_reading *****************
;; Defined at:
;;		line 28 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
;; Parameters:    Size  Location     Type
;;  measurement     2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_puts
;;		_lcd_send
;;		___lwdiv
;;		_display_digit
;;		___lwmod
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text574
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
	line	28
	global	__size_of_display_reading
	__size_of_display_reading	equ	__end_of_display_reading-_display_reading
	
_display_reading:	
	opt	stack 3
; Regs used in _display_reading: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	30
	
l10040:	
;display.c: 30: lcd_gotoxy(0, 2);
	movlw	02h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	31
	
l10042:	
;display.c: 31: lcd_puts("         ");
	movlw	low(STR_1|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_1|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	32
	
l10044:	
;display.c: 32: lcd_gotoxy(0, 3);
	movlw	03h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	33
;display.c: 33: lcd_puts("         ");
	movlw	low(STR_2|8000h)
	movwf	(?_lcd_puts)
	movlw	high(STR_2|8000h)
	movwf	((?_lcd_puts))+1
	fcall	_lcd_puts
	line	35
	
l10046:	
;display.c: 35: lcd_gotoxy(35, 3);
	movlw	03h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(023h)
	fcall	_lcd_gotoxy
	line	36
	
l10048:	
;display.c: 36: lcd_send(0x70, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(070h)
	fcall	_lcd_send
	line	37
	
l10050:	
;display.c: 37: lcd_send(0x70, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(070h)
	fcall	_lcd_send
	line	38
	
l10052:	
;display.c: 38: lcd_send(0x70, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(070h)
	fcall	_lcd_send
	line	40
	
l10054:	
;display.c: 40: if(measurement / 10000 > 0)
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	iorwf	(0+(?___lwdiv)),w
	skipnz
	goto	u1921
	goto	u1920
u1921:
	goto	l10058
u1920:
	line	41
	
l10056:	
;display.c: 41: display_digit(3, 5, measurement / 10000);
	movlw	(05h)
	movwf	(?_display_digit)
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	0+(?_display_digit)+01h
	movlw	(03h)
	fcall	_display_digit
	line	43
	
l10058:	
;display.c: 43: if(((measurement / 1000) % 10 > 0) || (measurement / 10000 > 0))
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	((1+(?___lwmod))),w
	iorwf	((0+(?___lwmod))),w
	skipz
	goto	u1931
	goto	u1930
u1931:
	goto	l10062
u1930:
	
l10060:	
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	iorwf	(0+(?___lwdiv)),w
	skipnz
	goto	u1941
	goto	u1940
u1941:
	goto	l35
u1940:
	line	44
	
l10062:	
;display.c: 44: display_digit(3, 15, (measurement / 1000) % 10);
	movlw	(0Fh)
	movwf	(?_display_digit)
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	0+(?_display_digit)+01h
	movlw	(03h)
	fcall	_display_digit
	
l35:	
	line	46
;display.c: 46: display_digit(3, 25, (measurement / 100) % 10);
	movlw	(019h)
	movwf	(?_display_digit)
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	0+(?_display_digit)+01h
	movlw	(03h)
	fcall	_display_digit
	line	48
;display.c: 48: display_digit(3, 40, (measurement / 10) % 10);
	movlw	(028h)
	movwf	(?_display_digit)
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	0+(?_display_digit)+01h
	movlw	(03h)
	fcall	_display_digit
	line	50
;display.c: 50: display_digit(3, 50, measurement % 10);
	movlw	(032h)
	movwf	(?_display_digit)
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(display_reading@measurement+1),w
	movwf	1+(?___lwmod)+02h
	movf	(display_reading@measurement),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	0+(?_display_digit)+01h
	movlw	(03h)
	fcall	_display_digit
	line	51
	
l38:	
	return
	opt stack 0
GLOBAL	__end_of_display_reading
	__end_of_display_reading:
;; =============== function _display_reading ends ============

	signat	_display_reading,4216
	global	_lcd_clear
psect	text575,local,class=CODE,delta=2
global __ptext575
__ptext575:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 228 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_send
;; This function is called by:
;;		_main
;;		_initialize
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text575
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
	line	228
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	231
	
l10026:	
;lcd3310.c: 229: unsigned int i;
;lcd3310.c: 231: lcd_gotoxy(0, 0);
	clrf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	232
	
l10028:	
;lcd3310.c: 232: for(i = 0; i < 504; ++i) {
	clrf	(lcd_clear@i)
	clrf	(lcd_clear@i+1)
	line	233
	
l10034:	
;lcd3310.c: 233: lcd_send(0, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(0)
	fcall	_lcd_send
	line	232
	
l10036:	
	incf	(lcd_clear@i),f
	skipnz
	incf	(lcd_clear@i+1),f
	
l10038:	
	movlw	high(01F8h)
	subwf	(lcd_clear@i+1),w
	movlw	low(01F8h)
	skipnz
	subwf	(lcd_clear@i),w
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l10034
u1910:
	line	235
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_puts
psect	text576,local,class=CODE,delta=2
global __ptext576
__ptext576:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 259 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
;; Parameters:    Size  Location     Type
;;  s               2    9[COMMON] PTR const unsigned char 
;;		 -> STR_9(13), STR_8(13), STR_7(14), STR_6(13), 
;;		 -> STR_4(7), STR_3(2), STR_2(10), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_display_reading
;;		_indicator
;;		_main
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text576
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
	line	259
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	260
	
l10018:	
;lcd3310.c: 260: while(*s) {
	goto	l10024
	line	261
	
l10020:	
;lcd3310.c: 261: lcd_putch(*s);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_putch
	line	262
	
l10022:	
;lcd3310.c: 262: ++s;
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	260
	
l10024:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l10020
u1900:
	line	265
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_display_unit
psect	text577,local,class=CODE,delta=2
global __ptext577
__ptext577:

;; *************** function _display_unit *****************
;; Defined at:
;;		line 19 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1   11[COMMON] unsigned char 
;;  i               1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_gotoxy
;;		___wmul
;;		_lcd_send
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text577
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
	line	19
	global	__size_of_display_unit
	__size_of_display_unit	equ	__end_of_display_unit-_display_unit
	
_display_unit:	
	opt	stack 4
; Regs used in _display_unit: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;display_unit@unit stored from wreg
	line	21
	movwf	(display_unit@unit)
	
l9990:	
;display.c: 20: unsigned char i;
;display.c: 21: lcd_gotoxy(60, 2);
	movlw	02h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(03Ch)
	fcall	_lcd_gotoxy
	line	22
	
l9992:	
;display.c: 22: for(i = 0; i < 18; i++) lcd_send(units[unit * 36 + i], 1);
	clrf	(display_unit@i)
	
l9998:	
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(display_unit@unit),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	024h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	low(_units|8000h)
	movwf	(??_display_unit+0)+0
	movlw	high(_units|8000h)
	movwf	(??_display_unit+0)+0+1
	movf	(0+(?___wmul)),w
	addwf	0+(??_display_unit+0)+0,w
	movwf	(??_display_unit+2)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_display_unit+0)+0,w
	movwf	1+(??_display_unit+2)+0
	movf	(display_unit@i),w
	addwf	0+(??_display_unit+2)+0,w
	movwf	fsr0
	movf	1+(??_display_unit+2)+0,w
	skipnc
	incf	1+(??_display_unit+2)+0,w
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcd_send
	
l10000:	
	incf	(display_unit@i),f
	
l10002:	
	movlw	(012h)
	subwf	(display_unit@i),w
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l9998
u1880:
	line	23
	
l10004:	
;display.c: 23: lcd_gotoxy(60, 3);
	movlw	03h
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	(03Ch)
	fcall	_lcd_gotoxy
	line	24
	
l10006:	
;display.c: 24: for(i = 18; i < 36; i++) lcd_send(units[unit * 36 + i], 1);
	movlw	(012h)
	movwf	(display_unit@i)
	
l10012:	
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movf	(display_unit@unit),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	024h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	low(_units|8000h)
	movwf	(??_display_unit+0)+0
	movlw	high(_units|8000h)
	movwf	(??_display_unit+0)+0+1
	movf	(0+(?___wmul)),w
	addwf	0+(??_display_unit+0)+0,w
	movwf	(??_display_unit+2)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_display_unit+0)+0,w
	movwf	1+(??_display_unit+2)+0
	movf	(display_unit@i),w
	addwf	0+(??_display_unit+2)+0,w
	movwf	fsr0
	movf	1+(??_display_unit+2)+0,w
	skipnc
	incf	1+(??_display_unit+2)+0,w
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcd_send
	
l10014:	
	incf	(display_unit@i),f
	
l10016:	
	movlw	(024h)
	subwf	(display_unit@i),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l10012
u1890:
	line	25
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_display_unit
	__end_of_display_unit:
;; =============== function _display_unit ends ============

	signat	_display_unit,4216
	global	_display_digit
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:

;; *************** function _display_digit *****************
;; Defined at:
;;		line 4 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
;; Parameters:    Size  Location     Type
;;  line            1    wreg     unsigned char 
;;  column          1   12[COMMON] unsigned char 
;;  digit           1   13[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  line            1    2[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_send
;; This function is called by:
;;		_display_reading
;; This function uses a non-reentrant model
;;
psect	text578
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\display.c"
	line	4
	global	__size_of_display_digit
	__size_of_display_digit	equ	__end_of_display_digit-_display_digit
	
_display_digit:	
	opt	stack 3
; Regs used in _display_digit: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;display_digit@line stored from wreg
	line	6
	movwf	(display_digit@line)
	
l9950:	
;display.c: 5: unsigned char i;
;display.c: 6: if(line < 1 || line > 5)
	movf	(display_digit@line),w
	skipz
	goto	u1820
	goto	l18
u1820:
	
l9952:	
	movlw	(06h)
	subwf	(display_digit@line),w
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l9954
u1830:
	goto	l18
	line	8
	
l9954:	
;display.c: 8: if(column > 74)
	movlw	(04Bh)
	subwf	(display_digit@column),w
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l9958
u1840:
	goto	l18
	line	10
	
l9958:	
;display.c: 10: if(digit > 9)
	movlw	(0Ah)
	subwf	(display_digit@digit),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l9962
u1850:
	goto	l18
	line	13
	
l9962:	
;display.c: 13: lcd_gotoxy(column, line - 1);
	movf	(display_digit@line),w
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movlw	low(0FFFFh)
	addwf	(?_lcd_gotoxy),f
	skipnc
	incf	(?_lcd_gotoxy+1),f
	movlw	high(0FFFFh)
	addwf	(?_lcd_gotoxy+1),f
	movf	(display_digit@column),w
	fcall	_lcd_gotoxy
	line	14
	
l9964:	
;display.c: 14: for(i = 0; i < 8; i++) lcd_send(digits_8x16[(digit << 4) + i], 1);
	clrf	(display_digit@i)
	
l9970:	
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	swapf	(display_digit@digit),w
	andlw	(0ffh shl 4) & 0ffh
	addlw	low(_digits_8x16|8000h)
	movwf	(??_display_digit+0)+0
	movlw	high(_digits_8x16|8000h)
	skipnc
	addlw	1
	movwf	1+((??_display_digit+0)+0)
	movf	(display_digit@i),w
	addwf	0+(??_display_digit+0)+0,w
	movwf	fsr0
	movf	1+(??_display_digit+0)+0,w
	skipnc
	incf	1+(??_display_digit+0)+0,w
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcd_send
	
l9972:	
	incf	(display_digit@i),f
	
l9974:	
	movlw	(08h)
	subwf	(display_digit@i),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l9970
u1860:
	line	15
	
l9976:	
;display.c: 15: lcd_gotoxy(column, line);
	movf	(display_digit@line),w
	movwf	(?_lcd_gotoxy)
	clrf	(?_lcd_gotoxy+1)
	movf	(display_digit@column),w
	fcall	_lcd_gotoxy
	line	16
	
l9978:	
;display.c: 16: for(i = 8; i < 16; i++) lcd_send(digits_8x16[(digit << 4) + i], 1);
	movlw	(08h)
	movwf	(display_digit@i)
	
l9984:	
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	swapf	(display_digit@digit),w
	andlw	(0ffh shl 4) & 0ffh
	addlw	low(_digits_8x16|8000h)
	movwf	(??_display_digit+0)+0
	movlw	high(_digits_8x16|8000h)
	skipnc
	addlw	1
	movwf	1+((??_display_digit+0)+0)
	movf	(display_digit@i),w
	addwf	0+(??_display_digit+0)+0,w
	movwf	fsr0
	movf	1+(??_display_digit+0)+0,w
	skipnc
	incf	1+(??_display_digit+0)+0,w
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcd_send
	
l9986:	
	incf	(display_digit@i),f
	
l9988:	
	movlw	(010h)
	subwf	(display_digit@i),w
	skipc
	goto	u1871
	goto	u1870
u1871:
	goto	l9984
u1870:
	line	17
	
l18:	
	return
	opt stack 0
GLOBAL	__end_of_display_digit
	__end_of_display_digit:
;; =============== function _display_digit ends ============

	signat	_display_digit,12408
	global	___flsub
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

;; *************** function ___flsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\flsub.c"
;; Parameters:    Size  Location     Type
;;  f2              4   49[BANK0 ] unsigned char 
;;  f1              4   53[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   49[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text579
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\flsub.c"
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:	
	opt	stack 4
; Regs used in ___flsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l9944:	
	movlw	080h
	xorwf	(___flsub@f2+3),f
	line	19
	
l9946:	
	movf	(___flsub@f2+3),w
	movwf	(?___fladd+3)
	movf	(___flsub@f2+2),w
	movwf	(?___fladd+2)
	movf	(___flsub@f2+1),w
	movwf	(?___fladd+1)
	movf	(___flsub@f2),w
	movwf	(?___fladd)

	movf	(___flsub@f1+3),w
	movwf	3+(?___fladd)+04h
	movf	(___flsub@f1+2),w
	movwf	2+(?___fladd)+04h
	movf	(___flsub@f1+1),w
	movwf	1+(?___fladd)+04h
	movf	(___flsub@f1),w
	movwf	0+(?___fladd)+04h

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(?___flsub+3)
	movf	(2+(?___fladd)),w
	movwf	(?___flsub+2)
	movf	(1+(?___fladd)),w
	movwf	(?___flsub+1)
	movf	(0+(?___fladd)),w
	movwf	(?___flsub)

	line	20
	
l6688:	
	return
	opt stack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
;; =============== function ___flsub ends ============

	signat	___flsub,8316
	global	_measure_freq
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 91 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  prescaler_cn    2    6[BANK0 ] unsigned int 
;;  oldTMR0         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay10ms
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text580
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
	line	91
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:	
	opt	stack 5
; Regs used in _measure_freq: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l9908:	
;main.c: 92: unsigned int oldTMR0, prescaler_cntr;
;main.c: 93: TMR0IF = 0;
	bcf	(90/8),(90)&7
	line	94
;main.c: 94: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	95
	
l9910:	
;main.c: 95: delay10ms(2);
	movlw	02h
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	line	96
	
l9912:	
;main.c: 96: TMR0 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	97
	
l9914:	
;main.c: 97: delay10ms(10);
	movlw	0Ah
	movwf	(?_delay10ms)
	clrf	(?_delay10ms+1)
	fcall	_delay10ms
	line	98
	
l9916:	
;main.c: 98: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	99
	
l9918:	
;main.c: 99: oldTMR0 = TMR0;
	bcf	status, 5	;RP0=0, select bank0
	movf	(1),w	;volatile
	movwf	(measure_freq@oldTMR0)
	clrf	(measure_freq@oldTMR0+1)
	line	100
	
l9920:	
;main.c: 100: prescaler_cntr = 0;
	clrf	(measure_freq@prescaler_cntr)
	clrf	(measure_freq@prescaler_cntr+1)
	line	102
	
l9922:	
;main.c: 102: T0SE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1036/8)^080h,(1036)&7
	line	103
	
l9924:	
;main.c: 103: _nop();
	nop
	line	104
	
l9926:	
;main.c: 104: _nop();
	nop
	line	105
	
l9928:	
;main.c: 105: T0SE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1036/8)^080h,(1036)&7
	line	106
	
l9930:	
;main.c: 106: _nop();
	nop
	line	107
	
l9932:	
;main.c: 107: _nop();
	nop
	line	108
	
l9934:	
;main.c: 108: prescaler_cntr++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(measure_freq@prescaler_cntr),f
	skipnz
	incf	(measure_freq@prescaler_cntr+1),f
	line	109
	
l9936:	
;main.c: 109: } while(oldTMR0 == TMR0 && prescaler_cntr <= 255);
	movf	(1),w	;volatile
	movwf	(??_measure_freq+0)+0
	clrf	(??_measure_freq+0)+0+1
	movf	(measure_freq@oldTMR0+1),w
	xorwf	1+(??_measure_freq+0)+0,w
	skipz
	goto	u1805
	movf	(measure_freq@oldTMR0),w
	xorwf	0+(??_measure_freq+0)+0,w
u1805:

	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l9940
u1800:
	
l9938:	
	movlw	high(0100h)
	subwf	(measure_freq@prescaler_cntr+1),w
	movlw	low(0100h)
	skipnz
	subwf	(measure_freq@prescaler_cntr),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l9922
u1810:
	line	111
	
l9940:	
;main.c: 111: return ((oldTMR0 << 8) + (256 - prescaler_cntr));
	movf	(measure_freq@oldTMR0),w
	movwf	(?_measure_freq+1)
	clrf	(?_measure_freq)
	movf	(measure_freq@prescaler_cntr),w
	subwf	(?_measure_freq),f
	movf	(measure_freq@prescaler_cntr+1),w
	skipc
	decf	(?_measure_freq+1),f
	subwf	(?_measure_freq+1),f
	movlw	(0100h >> 8)
	addwf	(?_measure_freq+1),f
	line	112
	
l1439:	
	return
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
;; =============== function _measure_freq ends ============

	signat	_measure_freq,90
	global	_lcd_putch
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 244 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;;		_lcd_send
;; This function is called by:
;;		_lcd_puts
;; This function uses a non-reentrant model
;;
psect	text581
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
	line	244
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 4
; Regs used in _lcd_putch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	245
	
l9900:	
;lcd3310.c: 245: if(c > 'z' || c < 32) {
	movlw	(07Bh)
	subwf	(lcd_putch@c),w
	skipnc
	goto	u1781
	goto	u1780
u1781:
	goto	l703
u1780:
	
l9902:	
	movlw	(020h)
	subwf	(lcd_putch@c),w
	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l9904
u1790:
	goto	l703
	line	249
	
l9904:	
;lcd3310.c: 247: }
;lcd3310.c: 249: lcd_send(lcd_font[c - 32][0], 1);
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
	line	250
;lcd3310.c: 250: lcd_send(lcd_font[c - 32][1], 1);
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
	line	251
;lcd3310.c: 251: lcd_send(lcd_font[c - 32][2], 1);
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
	line	252
;lcd3310.c: 252: lcd_send(lcd_font[c - 32][3], 1);
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
	line	253
;lcd3310.c: 253: lcd_send(lcd_font[c - 32][4], 1);
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
	line	254
	
l9906:	
;lcd3310.c: 254: lcd_send(0, 1);
	clrf	(?_lcd_send)
	incf	(?_lcd_send),f
	movlw	(0)
	fcall	_lcd_send
	line	255
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_lcd_init
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 164 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text582
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
	line	164
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	165
	
l9860:	
;lcd3310.c: 165: TRISC &= 0x00;
	clrf	(135)^080h	;volatile
	line	166
	
l9862:	
;lcd3310.c: 166: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u2077:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2077
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2077
	nop2
opt asmopt_on

	line	168
	
l9864:	
;lcd3310.c: 168: _nop();
	nop
	line	169
	
l9866:	
;lcd3310.c: 169: RC5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	170
	
l9868:	
;lcd3310.c: 170: _nop();
	nop
	line	171
	
l9870:	
;lcd3310.c: 171: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	172
	
l9872:	
;lcd3310.c: 172: _nop();
	nop
	line	173
	
l9874:	
;lcd3310.c: 173: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	174
	
l9876:	
;lcd3310.c: 174: _nop();
	nop
	line	175
	
l9878:	
;lcd3310.c: 175: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	176
	
l9880:	
;lcd3310.c: 176: _nop();
	nop
	line	179
	
l9882:	
;lcd3310.c: 179: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	180
	
l9884:	
;lcd3310.c: 180: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u2087:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2087
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2087
	nop2
opt asmopt_on

	line	182
	
l9886:	
;lcd3310.c: 182: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	186
	
l9888:	
;lcd3310.c: 186: lcd_send(0x21, 0);
	clrf	(?_lcd_send)
	movlw	(021h)
	fcall	_lcd_send
	line	187
	
l9890:	
;lcd3310.c: 187: lcd_send(0xC8, 0);
	clrf	(?_lcd_send)
	movlw	(0C8h)
	fcall	_lcd_send
	line	188
	
l9892:	
;lcd3310.c: 188: lcd_send(0x06, 0);
	clrf	(?_lcd_send)
	movlw	(06h)
	fcall	_lcd_send
	line	189
	
l9894:	
;lcd3310.c: 189: lcd_send(0x13, 0);
	clrf	(?_lcd_send)
	movlw	(013h)
	fcall	_lcd_send
	line	191
	
l9896:	
;lcd3310.c: 191: lcd_send(0x20, 0);
	clrf	(?_lcd_send)
	movlw	(020h)
	fcall	_lcd_send
	line	193
	
l9898:	
;lcd3310.c: 193: lcd_send(0x0C, 0);
	clrf	(?_lcd_send)
	movlw	(0Ch)
	fcall	_lcd_send
	line	215
	
l684:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_gotoxy
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 238 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_display_digit
;;		_display_unit
;;		_display_reading
;;		_indicator
;;		_lcd_clear
;;		_main
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text583
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
	line	238
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 5
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@x stored from wreg
	movwf	(lcd_gotoxy@x)
	line	239
	
l9858:	
;lcd3310.c: 239: lcd_send(x | 0b10000000, 0);
	clrf	(?_lcd_send)
	movf	(lcd_gotoxy@x),w
	iorlw	080h
	fcall	_lcd_send
	line	240
;lcd3310.c: 240: lcd_send((y & 0b00000111) | 0b01000000, 0);
	clrf	(?_lcd_send)
	movf	(lcd_gotoxy@y),w
	andlw	07h
	iorlw	040h
	fcall	_lcd_send
	line	241
	
l697:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	___lwtofl
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

;; *************** function ___lwtofl *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   10[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text584
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtofl.c"
	line	29
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:	
	opt	stack 5
; Regs used in ___lwtofl: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l9854:	
	movf	(___lwtofl@c),w
	movwf	(?___flpack)
	movf	(___lwtofl@c+1),w
	movwf	((?___flpack))+1
	clrf	2+((?___flpack))
	clrf	3+((?___flpack))
	movlw	(096h)
	movwf	0+(?___flpack)+04h
	clrf	0+(?___flpack)+05h
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___lwtofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___lwtofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___lwtofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___lwtofl)

	line	31
	
l6867:	
	return
	opt stack 0
GLOBAL	__end_of___lwtofl
	__end_of___lwtofl:
;; =============== function ___lwtofl ends ============

	signat	___lwtofl,4220
	global	___flmul
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:

;; *************** function ___flmul *****************
;; Defined at:
;;		line 51 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\flmul.c"
;; Parameters:    Size  Location     Type
;;  f1              4   30[BANK0 ] unsigned int 
;;  f2              4   34[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    4   43[BANK0 ] unsigned long 
;;  sign            1   48[BANK0 ] unsigned char 
;;  cntr            1   47[BANK0 ] unsigned char 
;;  exp             1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   30[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text585
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\flmul.c"
	line	51
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:	
	opt	stack 5
; Regs used in ___flmul: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l9802:	
	movf	(___flmul@f1),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@f1+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@f1+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@f1+3),w
	movwf	((??___flmul+0)+0+3)
	clrc
	rlf	(??___flmul+0)+2,w
	rlf	(??___flmul+0)+3,w
	movwf	(___flmul@exp)
	movf	((___flmul@exp)),f
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l9806
u1700:
	line	56
	
l9804:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l6704
	line	57
	
l9806:	
	movf	(___flmul@f2),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@f2+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@f2+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@f2+3),w
	movwf	((??___flmul+0)+0+3)
	clrc
	rlf	(??___flmul+0)+2,w
	rlf	(??___flmul+0)+3,w
	movwf	(___flmul@sign)
	movf	((___flmul@sign)),f
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l9810
u1710:
	line	58
	
l9808:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l6704
	line	59
	
l9810:	
	movf	(___flmul@sign),w
	addlw	07Bh
	addwf	(___flmul@exp),f
	line	60
	
l9812:	
	movf	0+(((___flmul@f1))+3),w
	movwf	(___flmul@sign)
	line	61
	
l9814:	
	movf	0+(((___flmul@f2))+3),w
	xorwf	(___flmul@sign),f
	line	62
	
l9816:	
	movlw	(080h)
	andwf	(___flmul@sign),f
	line	63
	
l9818:	
	bsf	(___flmul@f1)+(23/8),(23)&7
	line	65
	
l9820:	
	bsf	(___flmul@f2)+(23/8),(23)&7
	line	66
	
l9822:	
	movlw	0FFh
	andwf	(___flmul@f2),f
	movlw	0FFh
	andwf	(___flmul@f2+1),f
	movlw	0FFh
	andwf	(___flmul@f2+2),f
	movlw	0
	andwf	(___flmul@f2+3),f
	line	67
	
l9824:	
	clrf	(___flmul@f3_as_product)
	clrf	(___flmul@f3_as_product+1)
	clrf	(___flmul@f3_as_product+2)
	clrf	(___flmul@f3_as_product+3)
	line	68
	
l9826:	
	movlw	(07h)
	movwf	(___flmul@cntr)
	line	70
	
l9828:	
	btfss	(___flmul@f1),(0)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l9832
u1720:
	line	71
	
l9830:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1731
	addwf	(___flmul@f3_as_product+1),f
u1731:
	movf	(___flmul@f2+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1732
	addwf	(___flmul@f3_as_product+2),f
u1732:
	movf	(___flmul@f2+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1733
	addwf	(___flmul@f3_as_product+3),f
u1733:

	line	72
	
l9832:	
	clrc
	rrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	73
	
l9834:	
	clrc
	rlf	(___flmul@f2),f
	rlf	(___flmul@f2+1),f
	rlf	(___flmul@f2+2),f
	rlf	(___flmul@f2+3),f
	line	74
	
l9836:	
	decfsz	(___flmul@cntr),f
	goto	u1741
	goto	u1740
u1741:
	goto	l9828
u1740:
	line	75
	
l9838:	
	movlw	(011h)
	movwf	(___flmul@cntr)
	line	77
	
l9840:	
	btfss	(___flmul@f1),(0)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l9844
u1750:
	line	78
	
l9842:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1761
	addwf	(___flmul@f3_as_product+1),f
u1761:
	movf	(___flmul@f2+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1762
	addwf	(___flmul@f3_as_product+2),f
u1762:
	movf	(___flmul@f2+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1763
	addwf	(___flmul@f3_as_product+3),f
u1763:

	line	79
	
l9844:	
	clrc
	rrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	80
	
l9846:	
	clrc
	rrf	(___flmul@f3_as_product+3),f
	rrf	(___flmul@f3_as_product+2),f
	rrf	(___flmul@f3_as_product+1),f
	rrf	(___flmul@f3_as_product),f
	line	81
	
l9848:	
	decfsz	(___flmul@cntr),f
	goto	u1771
	goto	u1770
u1771:
	goto	l9840
u1770:
	line	82
	
l9850:	
	movf	(___flmul@f3_as_product+3),w
	movwf	(?___flpack+3)
	movf	(___flmul@f3_as_product+2),w
	movwf	(?___flpack+2)
	movf	(___flmul@f3_as_product+1),w
	movwf	(?___flpack+1)
	movf	(___flmul@f3_as_product),w
	movwf	(?___flpack)

	movf	(___flmul@exp),w
	movwf	0+(?___flpack)+04h
	movf	(___flmul@sign),w
	movwf	0+(?___flpack)+05h
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___flmul+3)
	movf	(2+(?___flpack)),w
	movwf	(?___flmul+2)
	movf	(1+(?___flpack)),w
	movwf	(?___flmul+1)
	movf	(0+(?___flpack)),w
	movwf	(?___flmul)

	line	83
	
l6704:	
	return
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
;; =============== function ___flmul ends ============

	signat	___flmul,8316
	global	___fldiv
psect	text586,local,class=CODE,delta=2
global __ptext586
__ptext586:

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldiv.c"
;; Parameters:    Size  Location     Type
;;  f2              4   11[BANK0 ] unsigned char 
;;  f1              4   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  f3              4   23[BANK0 ] unsigned char 
;;  sign            1   29[BANK0 ] unsigned char 
;;  exp             1   28[BANK0 ] unsigned char 
;;  cntr            1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   11[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text586
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldiv.c"
	line	50
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:	
	opt	stack 5
; Regs used in ___fldiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l9762:	
	movf	(___fldiv@f1),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@f1+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@f1+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@f1+3),w
	movwf	((??___fldiv+0)+0+3)
	clrc
	rlf	(??___fldiv+0)+2,w
	rlf	(??___fldiv+0)+3,w
	movwf	(___fldiv@exp)
	movf	((___fldiv@exp)),f
	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l9766
u1660:
	line	56
	
l9764:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l6694
	line	57
	
l9766:	
	movf	(___fldiv@f2),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@f2+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@f2+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@f2+3),w
	movwf	((??___fldiv+0)+0+3)
	clrc
	rlf	(??___fldiv+0)+2,w
	rlf	(??___fldiv+0)+3,w
	movwf	(___fldiv@sign)
	movf	((___fldiv@sign)),f
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l9770
u1670:
	line	58
	
l9768:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l6694
	line	59
	
l9770:	
	movlw	(089h)
	addwf	(___fldiv@sign),w
	movwf	(??___fldiv+0)+0
	movf	0+(??___fldiv+0)+0,w
	subwf	(___fldiv@exp),f
	line	60
	
l9772:	
	movf	0+(((___fldiv@f1))+3),w
	movwf	(___fldiv@sign)
	line	61
	
l9774:	
	movf	0+(((___fldiv@f2))+3),w
	xorwf	(___fldiv@sign),f
	line	62
	
l9776:	
	movlw	(080h)
	andwf	(___fldiv@sign),f
	line	63
	
l9778:	
	bsf	(___fldiv@f1)+(23/8),(23)&7
	line	64
	
l9780:	
	movlw	0FFh
	andwf	(___fldiv@f1),f
	movlw	0FFh
	andwf	(___fldiv@f1+1),f
	movlw	0FFh
	andwf	(___fldiv@f1+2),f
	movlw	0
	andwf	(___fldiv@f1+3),f
	line	65
	
l9782:	
	bsf	(___fldiv@f2)+(23/8),(23)&7
	line	66
	
l9784:	
	movlw	0FFh
	andwf	(___fldiv@f2),f
	movlw	0FFh
	andwf	(___fldiv@f2+1),f
	movlw	0FFh
	andwf	(___fldiv@f2+2),f
	movlw	0
	andwf	(___fldiv@f2+3),f
	line	67
	
l9786:	
	movlw	(020h)
	movwf	(___fldiv@cntr)
	line	69
	
l9788:	
	clrc
	rlf	(___fldiv@f3),f
	rlf	(___fldiv@f3+1),f
	rlf	(___fldiv@f3+2),f
	rlf	(___fldiv@f3+3),f
	line	70
	movf	(___fldiv@f2+3),w
	subwf	(___fldiv@f1+3),w
	skipz
	goto	u1685
	movf	(___fldiv@f2+2),w
	subwf	(___fldiv@f1+2),w
	skipz
	goto	u1685
	movf	(___fldiv@f2+1),w
	subwf	(___fldiv@f1+1),w
	skipz
	goto	u1685
	movf	(___fldiv@f2),w
	subwf	(___fldiv@f1),w
u1685:
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l9794
u1680:
	line	71
	
l9790:	
	movf	(___fldiv@f2),w
	subwf	(___fldiv@f1),f
	movf	(___fldiv@f2+1),w
	skipc
	incfsz	(___fldiv@f2+1),w
	subwf	(___fldiv@f1+1),f
	movf	(___fldiv@f2+2),w
	skipc
	incfsz	(___fldiv@f2+2),w
	subwf	(___fldiv@f1+2),f
	movf	(___fldiv@f2+3),w
	skipc
	incfsz	(___fldiv@f2+3),w
	subwf	(___fldiv@f1+3),f
	line	72
	
l9792:	
	bsf	(___fldiv@f3)+(0/8),(0)&7
	line	74
	
l9794:	
	clrc
	rlf	(___fldiv@f1),f
	rlf	(___fldiv@f1+1),f
	rlf	(___fldiv@f1+2),f
	rlf	(___fldiv@f1+3),f
	line	75
	
l9796:	
	decfsz	(___fldiv@cntr),f
	goto	u1691
	goto	u1690
u1691:
	goto	l9788
u1690:
	line	76
	
l9798:	
	movf	(___fldiv@f3+3),w
	movwf	(?___flpack+3)
	movf	(___fldiv@f3+2),w
	movwf	(?___flpack+2)
	movf	(___fldiv@f3+1),w
	movwf	(?___flpack+1)
	movf	(___fldiv@f3),w
	movwf	(?___flpack)

	movf	(___fldiv@exp),w
	movwf	0+(?___flpack)+04h
	movf	(___fldiv@sign),w
	movwf	0+(?___flpack)+05h
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___fldiv+3)
	movf	(2+(?___flpack)),w
	movwf	(?___fldiv+2)
	movf	(1+(?___flpack)),w
	movwf	(?___fldiv+1)
	movf	(0+(?___flpack)),w
	movwf	(?___fldiv)

	line	77
	
l6694:	
	return
	opt stack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
;; =============== function ___fldiv ends ============

	signat	___fldiv,8316
	global	___fladd
psect	text587,local,class=CODE,delta=2
global __ptext587
__ptext587:

;; *************** function ___fladd *****************
;; Defined at:
;;		line 89 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fladd.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[BANK0 ] unsigned char 
;;  f2              4    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   10[BANK0 ] unsigned char 
;;  exp2            1    9[BANK0 ] unsigned char 
;;  sign            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      11       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___flpack
;; This function is called by:
;;		___flsub
;; This function uses a non-reentrant model
;;
psect	text587
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fladd.c"
	line	89
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:	
	opt	stack 4
; Regs used in ___fladd: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l9684:	
	movf	(___fladd@f1),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@f1+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@f1+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@f1+3),w
	movwf	((??___fladd+0)+0+3)
	clrc
	rlf	(??___fladd+0)+2,w
	rlf	(??___fladd+0)+3,w
	movwf	(___fladd@exp1)
	line	93
	movf	(___fladd@f2),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@f2+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@f2+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@f2+3),w
	movwf	((??___fladd+0)+0+3)
	clrc
	rlf	(??___fladd+0)+2,w
	rlf	(??___fladd+0)+3,w
	movwf	(___fladd@exp2)
	line	94
	
l9686:	
	movf	(___fladd@exp1),w
	skipz
	goto	u1460
	goto	l9692
u1460:
	
l9688:	
	movf	(___fladd@exp2),w
	subwf	(___fladd@exp1),w
	skipnc
	goto	u1471
	goto	u1470
u1471:
	goto	l9696
u1470:
	
l9690:	
	movf	(___fladd@exp2),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp1),w
	subwf	(??___fladd+0)+0,f
	movlw	(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u1481
	goto	u1480
u1481:
	goto	l9696
u1480:
	line	95
	
l9692:	
	movf	(___fladd@f2+3),w
	movwf	(?___fladd+3)
	movf	(___fladd@f2+2),w
	movwf	(?___fladd+2)
	movf	(___fladd@f2+1),w
	movwf	(?___fladd+1)
	movf	(___fladd@f2),w
	movwf	(?___fladd)

	goto	l6658
	line	96
	
l9696:	
	movf	(___fladd@exp2),w
	skipz
	goto	u1490
	goto	l6661
u1490:
	
l9698:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l9702
u1500:
	
l9700:	
	movf	(___fladd@exp1),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp2),w
	subwf	(??___fladd+0)+0,f
	movlw	(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l9702
u1510:
	
l6661:	
	line	97
	goto	l6658
	line	98
	
l9702:	
	movlw	(06h)
	movwf	(___fladd@sign)
	line	99
	
l9704:	
	btfss	(___fladd@f1+3),(31)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l6662
u1520:
	line	100
	
l9706:	
	bsf	(___fladd@sign)+(7/8),(7)&7
	
l6662:	
	line	101
	btfss	(___fladd@f2+3),(31)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l6663
u1530:
	line	102
	
l9708:	
	bsf	(___fladd@sign)+(6/8),(6)&7
	
l6663:	
	line	103
	bsf	(___fladd@f1)+(23/8),(23)&7
	line	104
	
l9710:	
	movlw	0FFh
	andwf	(___fladd@f1),f
	movlw	0FFh
	andwf	(___fladd@f1+1),f
	movlw	0FFh
	andwf	(___fladd@f1+2),f
	movlw	0
	andwf	(___fladd@f1+3),f
	line	105
	
l9712:	
	bsf	(___fladd@f2)+(23/8),(23)&7
	line	106
	movlw	0FFh
	andwf	(___fladd@f2),f
	movlw	0FFh
	andwf	(___fladd@f2+1),f
	movlw	0FFh
	andwf	(___fladd@f2+2),f
	movlw	0
	andwf	(___fladd@f2+3),f
	line	108
	movf	(___fladd@exp2),w
	subwf	(___fladd@exp1),w
	skipnc
	goto	u1541
	goto	u1540
u1541:
	goto	l9724
u1540:
	line	112
	
l9714:	
	clrc
	rlf	(___fladd@f2),f
	rlf	(___fladd@f2+1),f
	rlf	(___fladd@f2+2),f
	rlf	(___fladd@f2+3),f
	line	113
	decf	(___fladd@exp2),f
	line	114
	
l9716:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u1551
	goto	u1550
u1551:
	goto	l9722
u1550:
	
l9718:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l9714
u1560:
	goto	l9722
	line	116
	
l9720:	
	clrc
	rrf	(___fladd@f1+3),f
	rrf	(___fladd@f1+2),f
	rrf	(___fladd@f1+1),f
	rrf	(___fladd@f1),f
	line	117
	incf	(___fladd@exp1),f
	line	115
	
l9722:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u1571
	goto	u1570
u1571:
	goto	l9720
u1570:
	goto	l6672
	line	119
	
l9724:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u1581
	goto	u1580
u1581:
	goto	l6672
u1580:
	line	123
	
l9726:	
	clrc
	rlf	(___fladd@f1),f
	rlf	(___fladd@f1+1),f
	rlf	(___fladd@f1+2),f
	rlf	(___fladd@f1+3),f
	line	124
	decf	(___fladd@exp1),f
	line	125
	
l9728:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u1591
	goto	u1590
u1591:
	goto	l9734
u1590:
	
l9730:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l9726
u1600:
	goto	l9734
	line	127
	
l9732:	
	clrc
	rrf	(___fladd@f2+3),f
	rrf	(___fladd@f2+2),f
	rrf	(___fladd@f2+1),f
	rrf	(___fladd@f2),f
	line	128
	incf	(___fladd@exp2),f
	line	126
	
l9734:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l9732
u1610:
	line	131
	
l6672:	
	btfss	(___fladd@sign),(7)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l9740
u1620:
	line	133
	
l9736:	
	movlw	0FFh
	xorwf	(___fladd@f1),f
	movlw	0FFh
	xorwf	(___fladd@f1+1),f
	movlw	0FFh
	xorwf	(___fladd@f1+2),f
	movlw	0FFh
	xorwf	(___fladd@f1+3),f
	line	134
	
l9738:	
	incf	(___fladd@f1),f
	skipnz
	incf	(___fladd@f1+1),f
	skipnz
	incf	(___fladd@f1+2),f
	skipnz
	incf	(___fladd@f1+3),f
	line	136
	
l9740:	
	btfss	(___fladd@sign),(6)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l9746
u1630:
	line	138
	
l9742:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	139
	
l9744:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	141
	
l9746:	
	clrf	(___fladd@sign)
	line	142
	
l9748:	
	movf	(___fladd@f1),w
	addwf	(___fladd@f2),f
	movf	(___fladd@f1+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1641
	addwf	(___fladd@f2+1),f
u1641:
	movf	(___fladd@f1+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1642
	addwf	(___fladd@f2+2),f
u1642:
	movf	(___fladd@f1+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1643
	addwf	(___fladd@f2+3),f
u1643:

	line	143
	
l9750:	
	btfss	(___fladd@f2+3),(31)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l9758
u1650:
	line	144
	
l9752:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	145
	
l9754:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	146
	
l9756:	
	clrf	(___fladd@sign)
	incf	(___fladd@sign),f
	line	148
	
l9758:	
	movf	(___fladd@f2+3),w
	movwf	(?___flpack+3)
	movf	(___fladd@f2+2),w
	movwf	(?___flpack+2)
	movf	(___fladd@f2+1),w
	movwf	(?___flpack+1)
	movf	(___fladd@f2),w
	movwf	(?___flpack)

	movf	(___fladd@exp1),w
	movwf	0+(?___flpack)+04h
	movf	(___fladd@sign),w
	movwf	0+(?___flpack)+05h
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___fladd+3)
	movf	(2+(?___flpack)),w
	movwf	(?___fladd+2)
	movf	(1+(?___flpack)),w
	movwf	(?___fladd+1)
	movf	(0+(?___flpack)),w
	movwf	(?___fladd)

	line	149
	
l6658:	
	return
	opt stack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
;; =============== function ___fladd ends ============

	signat	___fladd,8316
	global	_ser_puts
psect	text588,local,class=CODE,delta=2
global __ptext588
__ptext588:

;; *************** function _ser_puts *****************
;; Defined at:
;;		line 92 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
;; Parameters:    Size  Location     Type
;;  s               2    1[COMMON] PTR const unsigned char 
;;		 -> STR_5(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text588
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	92
	global	__size_of_ser_puts
	__size_of_ser_puts	equ	__end_of_ser_puts-_ser_puts
	
_ser_puts:	
	opt	stack 6
; Regs used in _ser_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	93
	
l9676:	
;ser.c: 93: while(*s) ser_putch(*s++);
	goto	l9682
	
l9678:	
	movf	(ser_puts@s+1),w
	movwf	btemp+1
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_ser_putch
	
l9680:	
	incf	(ser_puts@s),f
	skipnz
	incf	(ser_puts@s+1),f
	
l9682:	
	movf	(ser_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l9678
u1450:
	line	94
	
l4603:	
	return
	opt stack 0
GLOBAL	__end_of_ser_puts
	__end_of_ser_puts:
;; =============== function _ser_puts ends ============

	signat	_ser_puts,4216
	global	_delay10ms
psect	text589,local,class=CODE,delta=2
global __ptext589
__ptext589:

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 200 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_measure_freq
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text589
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\main.c"
	line	200
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:	
	opt	stack 5
; Regs used in _delay10ms: [wreg+status,2+status,0]
	line	201
;main.c: 201: do {
	
l1467:	
	line	202
	
l9672:	
;main.c: 202: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_delay10ms+0)+0+1),f
	movlw	238
movwf	((??_delay10ms+0)+0),f
u2097:
	decfsz	((??_delay10ms+0)+0),f
	goto	u2097
	decfsz	((??_delay10ms+0)+0+1),f
	goto	u2097
	clrwdt
opt asmopt_on

	line	203
	
l9674:	
;main.c: 203: } while(--period_10ms);
	movlw	low(01h)
	subwf	(delay10ms@period_10ms),f
	movlw	high(01h)
	skipc
	decf	(delay10ms@period_10ms+1),f
	subwf	(delay10ms@period_10ms+1),f
	movf	(((delay10ms@period_10ms+1))),w
	iorwf	(((delay10ms@period_10ms))),w
	skipz
	goto	u1441
	goto	u1440
u1441:
	goto	l1467
u1440:
	line	204
	
l1469:	
	return
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
;; =============== function _delay10ms ends ============

	signat	_delay10ms,4216
	global	_lcd_send
psect	text590,local,class=CODE,delta=2
global __ptext590
__ptext590:

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 140 in file "C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  cmd             1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_digit
;;		_display_unit
;;		_display_reading
;;		_indicator
;;		_lcd_init
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_putch
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text590
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\julznc\lcd3310.c"
	line	140
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:	
	opt	stack 4
; Regs used in _lcd_send: [wreg+status,2+status,0]
;lcd_send@a stored from wreg
	line	142
	movwf	(lcd_send@a)
	
l9650:	
;lcd3310.c: 142: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	143
	
l9652:	
;lcd3310.c: 143: if(cmd == 0) {
	movf	(lcd_send@cmd),f
	skipz
	goto	u1351
	goto	u1350
u1351:
	goto	l672
u1350:
	line	144
	
l9654:	
;lcd3310.c: 144: RC1 = 0;
	bcf	(57/8),(57)&7
	line	145
	
l672:	
	line	146
;lcd3310.c: 145: }
;lcd3310.c: 146: _nop();
	nop
	line	147
;lcd3310.c: 147: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	150
;lcd3310.c: 150: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b10000000)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(7)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l673
u1360:
	
l9656:	
	bsf	(60/8),(60)&7
	
l673:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	151
;lcd3310.c: 151: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b01000000)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(6)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l674
u1370:
	
l9658:	
	bsf	(60/8),(60)&7
	
l674:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	152
;lcd3310.c: 152: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b00100000)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(5)&7
	goto	u1381
	goto	u1380
u1381:
	goto	l675
u1380:
	
l9660:	
	bsf	(60/8),(60)&7
	
l675:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	153
;lcd3310.c: 153: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b00010000)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(4)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l676
u1390:
	
l9662:	
	bsf	(60/8),(60)&7
	
l676:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	154
;lcd3310.c: 154: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b00001000)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(3)&7
	goto	u1401
	goto	u1400
u1401:
	goto	l677
u1400:
	
l9664:	
	bsf	(60/8),(60)&7
	
l677:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	155
;lcd3310.c: 155: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b00000100)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(2)&7
	goto	u1411
	goto	u1410
u1411:
	goto	l678
u1410:
	
l9666:	
	bsf	(60/8),(60)&7
	
l678:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	156
;lcd3310.c: 156: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b00000010)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(1)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l679
u1420:
	
l9668:	
	bsf	(60/8),(60)&7
	
l679:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	157
;lcd3310.c: 157: _nop(); RC5 = 0; _nop(); RC4 = 0; if((a) & (0b00000001)) { RC4 = 1; } _nop(); RC5 = 1;
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	btfss	(lcd_send@a),(0)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l680
u1430:
	
l9670:	
	bsf	(60/8),(60)&7
	
l680:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	159
;lcd3310.c: 159: _nop();
	nop
	line	160
;lcd3310.c: 160: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	161
	
l681:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
;; =============== function _lcd_send ends ============

	signat	_lcd_send,8312
	global	___flge
psect	text591,local,class=CODE,delta=2
global __ptext591
__ptext591:

;; *************** function ___flge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    0[COMMON] unsigned char 
;;  ff2             4    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text591
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\flge.c"
	line	5
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:	
	opt	stack 6
; Regs used in ___flge: [wreg+status,2+status,0]
	line	6
	
l9636:	
	btfss	(___flge@ff1+3),(31)&7
	goto	u1301
	goto	u1300
u1301:
	goto	l9640
u1300:
	line	7
	
l9638:	
	movlw	0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff1),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff1+1),w
	skipc
	incfsz	(___flge@ff1+1),w
	goto	u1311
	goto	u1312
u1311:
	subwf	(??___flge+0)+1,f
u1312:
	movf	(___flge@ff1+2),w
	skipc
	incfsz	(___flge@ff1+2),w
	goto	u1313
	goto	u1314
u1313:
	subwf	(??___flge+0)+2,f
u1314:
	movf	(___flge@ff1+3),w
	skipc
	incfsz	(___flge@ff1+3),w
	goto	u1315
	goto	u1316
u1315:
	subwf	(??___flge+0)+3,f
u1316:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff1+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff1+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff1+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff1)

	line	8
	
l9640:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l6802
u1320:
	line	9
	
l9642:	
	movlw	0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff2),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff2+1),w
	skipc
	incfsz	(___flge@ff2+1),w
	goto	u1331
	goto	u1332
u1331:
	subwf	(??___flge+0)+1,f
u1332:
	movf	(___flge@ff2+2),w
	skipc
	incfsz	(___flge@ff2+2),w
	goto	u1333
	goto	u1334
u1333:
	subwf	(??___flge+0)+2,f
u1334:
	movf	(___flge@ff2+3),w
	skipc
	incfsz	(___flge@ff2+3),w
	goto	u1335
	goto	u1336
u1335:
	subwf	(??___flge+0)+3,f
u1336:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff2+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff2+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff2+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff2)

	
l6802:	
	line	10
	movlw	080h
	xorwf	(___flge@ff1+3),f
	line	11
	movlw	080h
	xorwf	(___flge@ff2+3),f
	line	12
	movf	(___flge@ff2+3),w
	subwf	(___flge@ff1+3),w
	skipz
	goto	u1345
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u1345
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u1345
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u1345:
	skipnc
	goto	u1341
	goto	u1340
u1341:
	goto	l9646
u1340:
	
l9644:	
	clrc
	
	goto	l6803
	
l9646:	
	setc
	
	line	13
	
l6803:	
	return
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
;; =============== function ___flge ends ============

	signat	___flge,8312
	global	___fltol
psect	text592,local,class=CODE,delta=2
global __ptext592
__ptext592:

;; *************** function ___fltol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1    9[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text592
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fltol.c"
	line	44
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:	
	opt	stack 6
; Regs used in ___fltol: [wreg+status,2+status,0]
	line	47
	
l9604:	
	movf	(___fltol@f1),w
	movwf	(??___fltol+0)+0
	movf	(___fltol@f1+1),w
	movwf	((??___fltol+0)+0+1)
	movf	(___fltol@f1+2),w
	movwf	((??___fltol+0)+0+2)
	movf	(___fltol@f1+3),w
	movwf	((??___fltol+0)+0+3)
	clrc
	rlf	(??___fltol+0)+2,w
	rlf	(??___fltol+0)+3,w
	movwf	(___fltol@exp1)
	movf	((___fltol@exp1)),f
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l9608
u1220:
	line	48
	
l9606:	
	clrf	(?___fltol)
	clrf	(?___fltol+1)
	clrf	(?___fltol+2)
	clrf	(?___fltol+3)
	goto	l6777
	line	49
	
l9608:	
	movf	(___fltol@f1),w
	movwf	(??___fltol+0)+0
	movf	(___fltol@f1+1),w
	movwf	((??___fltol+0)+0+1)
	movf	(___fltol@f1+2),w
	movwf	((??___fltol+0)+0+2)
	movf	(___fltol@f1+3),w
	movwf	((??___fltol+0)+0+3)
	movlw	01Fh
u1235:
	clrc
	rrf	(??___fltol+0)+3,f
	rrf	(??___fltol+0)+2,f
	rrf	(??___fltol+0)+1,f
	rrf	(??___fltol+0)+0,f
u1230:
	addlw	-1
	skipz
	goto	u1235
	movf	0+(??___fltol+0)+0,w
	movwf	(___fltol@sign1)
	line	50
	
l9610:	
	bsf	(___fltol@f1)+(23/8),(23)&7
	line	51
	
l9612:	
	movlw	0FFh
	andwf	(___fltol@f1),f
	movlw	0FFh
	andwf	(___fltol@f1+1),f
	movlw	0FFh
	andwf	(___fltol@f1+2),f
	movlw	0
	andwf	(___fltol@f1+3),f
	line	52
	
l9614:	
	movlw	low(096h)
	subwf	(___fltol@exp1),f
	line	53
	
l9616:	
	btfss	(___fltol@exp1),7
	goto	u1241
	goto	u1240
u1241:
	goto	l9626
u1240:
	line	54
	
l9618:	
	movf	(___fltol@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u1251
	goto	u1250
u1251:
	goto	l9622
u1250:
	goto	l9606
	line	57
	
l9622:	
	clrc
	rrf	(___fltol@f1+3),f
	rrf	(___fltol@f1+2),f
	rrf	(___fltol@f1+1),f
	rrf	(___fltol@f1),f
	line	58
	
l9624:	
	incfsz	(___fltol@exp1),f
	goto	u1261
	goto	u1260
u1261:
	goto	l9622
u1260:
	goto	l9632
	line	60
	
l9626:	
	movlw	(020h)
	subwf	(___fltol@exp1),w
	skipc
	goto	u1271
	goto	u1270
u1271:
	goto	l6784
u1270:
	goto	l9606
	line	63
	
l9630:	
	clrc
	rlf	(___fltol@f1),f
	rlf	(___fltol@f1+1),f
	rlf	(___fltol@f1+2),f
	rlf	(___fltol@f1+3),f
	line	64
	decf	(___fltol@exp1),f
	line	65
	
l6784:	
	line	62
	movf	(___fltol@exp1),f
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l9630
u1280:
	line	67
	
l9632:	
	movf	(___fltol@sign1),w
	skipz
	goto	u1290
	goto	l6787
u1290:
	line	68
	
l9634:	
	comf	(___fltol@f1),f
	comf	(___fltol@f1+1),f
	comf	(___fltol@f1+2),f
	comf	(___fltol@f1+3),f
	incf	(___fltol@f1),f
	skipnz
	incf	(___fltol@f1+1),f
	skipnz
	incf	(___fltol@f1+2),f
	skipnz
	incf	(___fltol@f1+3),f
	
l6787:	
	line	69
	line	70
	
l6777:	
	return
	opt stack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
;; =============== function ___fltol ends ============

	signat	___fltol,4220
	global	___flpack
psect	text593,local,class=CODE,delta=2
global __ptext593
__ptext593:

;; *************** function ___flpack *****************
;; Defined at:
;;		line 64 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\double.c"
;; Parameters:    Size  Location     Type
;;  arg             4    0[COMMON] unsigned long 
;;  exp             1    4[COMMON] unsigned char 
;;  sign            1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___fladd
;;		___fldiv
;;		___flmul
;;		___lwtofl
;; This function uses a non-reentrant model
;;
psect	text593
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\double.c"
	line	64
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:	
	opt	stack 5
; Regs used in ___flpack: [wreg+status,2+status,0]
	line	65
	
l9578:	
	movf	(___flpack@exp),w
	skipz
	goto	u1150
	goto	l7056
u1150:
	
l9580:	
	movf	(___flpack@arg+3),w
	iorwf	(___flpack@arg+2),w
	iorwf	(___flpack@arg+1),w
	iorwf	(___flpack@arg),w
	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l9584
u1160:
	
l7056:	
	line	66
	clrf	(?___flpack)
	clrf	(?___flpack+1)
	clrf	(?___flpack+2)
	clrf	(?___flpack+3)
	goto	l7057
	line	68
	
l9582:	
	incf	(___flpack@exp),f
	line	69
	clrc
	rrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	67
	
l9584:	
	movlw	high highword(-33554432)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l9582
u1170:
	goto	l9592
	line	72
	
l9586:	
	incf	(___flpack@exp),f
	line	73
	
l9588:	
	incf	(___flpack@arg),f
	skipnz
	incf	(___flpack@arg+1),f
	skipnz
	incf	(___flpack@arg+2),f
	skipnz
	incf	(___flpack@arg+3),f
	line	74
	
l9590:	
	clrc
	rrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	71
	
l9592:	
	movlw	high highword(-16777216)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l9586
u1180:
	goto	l9596
	line	77
	
l9594:	
	decf	(___flpack@exp),f
	line	78
	clrc
	rlf	(___flpack@arg),f
	rlf	(___flpack@arg+1),f
	rlf	(___flpack@arg+2),f
	rlf	(___flpack@arg+3),f
	line	76
	
l9596:	
	btfss	(___flpack@arg+2),(23)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l9594
u1190:
	
l7066:	
	line	80
	btfsc	(___flpack@exp),(0)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l9600
u1200:
	line	81
	
l9598:	
	movlw	0FFh
	andwf	(___flpack@arg),f
	movlw	0FFh
	andwf	(___flpack@arg+1),f
	movlw	07Fh
	andwf	(___flpack@arg+2),f
	movlw	0FFh
	andwf	(___flpack@arg+3),f
	line	82
	
l9600:	
	clrc
	rrf	(___flpack@exp),f
	line	83
	movf	(___flpack@exp),w
	movwf	((??___flpack+0)+0+3)
	clrf	((??___flpack+0)+0+2)
	clrf	((??___flpack+0)+0+1)
	clrf	(??___flpack+0)+0
	movf	0+(??___flpack+0)+0,w
	iorwf	(___flpack@arg),f
	movf	1+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+1),f
	movf	2+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+2),f
	movf	3+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+3),f
	line	84
	movf	(___flpack@sign),w
	skipz
	goto	u1210
	goto	l7068
u1210:
	line	85
	
l9602:	
	bsf	(___flpack@arg)+(31/8),(31)&7
	
l7068:	
	line	86
	line	87
	
l7057:	
	return
	opt stack 0
GLOBAL	__end_of___flpack
	__end_of___flpack:
;; =============== function ___flpack ends ============

	signat	___flpack,12412
	global	___lwmod
psect	text594,local,class=CODE,delta=2
global __ptext594
__ptext594:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_reading
;; This function uses a non-reentrant model
;;
psect	text594
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l9558:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1111
	goto	u1110
u1111:
	goto	l9574
u1110:
	line	9
	
l9560:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l9564
	line	11
	
l9562:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l9564:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1121
	goto	u1120
u1121:
	goto	l9562
u1120:
	line	15
	
l9566:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1135
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1135:
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l9570
u1130:
	line	16
	
l9568:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l9570:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l9572:	
	decfsz	(___lwmod@counter),f
	goto	u1141
	goto	u1140
u1141:
	goto	l9566
u1140:
	line	20
	
l9574:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l6567:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text595,local,class=CODE,delta=2
global __ptext595
__ptext595:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_reading
;; This function uses a non-reentrant model
;;
psect	text595
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l9532:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l9534:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1071
	goto	u1070
u1071:
	goto	l9554
u1070:
	line	11
	
l9536:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l9540
	line	13
	
l9538:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l9540:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l9538
u1080:
	line	17
	
l9542:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l9544:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1095
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1095:
	skipc
	goto	u1091
	goto	u1090
u1091:
	goto	l9550
u1090:
	line	19
	
l9546:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l9548:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l9550:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l9552:	
	decfsz	(___lwdiv@counter),f
	goto	u1101
	goto	u1100
u1101:
	goto	l9542
u1100:
	line	25
	
l9554:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l6557:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text596,local,class=CODE,delta=2
global __ptext596
__ptext596:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_unit
;;		_lcd_putch
;; This function uses a non-reentrant model
;;
psect	text596
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l9516:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l9518:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l9522
u1050:
	line	8
	
l9520:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l9522:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l9524:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l9526:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l9518
u1060:
	line	12
	
l9528:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l6547:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_ser_putch
psect	text597,local,class=CODE,delta=2
global __ptext597
__ptext597:

;; *************** function _ser_putch *****************
;; Defined at:
;;		line 82 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ser_puts
;; This function uses a non-reentrant model
;;
psect	text597
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	82
	global	__size_of_ser_putch
	__size_of_ser_putch	equ	__end_of_ser_putch-_ser_putch
	
_ser_putch:	
	opt	stack 6
; Regs used in _ser_putch: [wreg-fsr0h+status,2+status,0]
;ser_putch@c stored from wreg
	movwf	(ser_putch@c)
	line	83
	
l9502:	
;ser.c: 83: while(((txiptr + 1) & ((uint8_t)16 - 1)) == txoptr) continue;
	
l9504:	
	incf	(_txiptr),w	;volatile
	andlw	0Fh
	xorwf	(_txoptr),w	;volatile
	skipnz
	goto	u1041
	goto	u1040
u1041:
	goto	l9504
u1040:
	
l4596:	
	line	84
;ser.c: 84: GIE = 0;
	bcf	(95/8),(95)&7
	line	85
	
l9506:	
;ser.c: 85: txfifo[txiptr] = c;
	movf	(_txiptr),w
	addlw	_txfifo&0ffh
	movwf	fsr0
	movf	(ser_putch@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	86
	
l9508:	
;ser.c: 86: txiptr = (txiptr + 1) & ((uint8_t)16 - 1);
	incf	(_txiptr),f	;volatile
	
l9510:	
	movlw	(0Fh)
	andwf	(_txiptr),f	;volatile
	line	87
	
l9512:	
;ser.c: 87: TXIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1124/8)^080h,(1124)&7
	line	88
	
l9514:	
;ser.c: 88: GIE = 1;
	bsf	(95/8),(95)&7
	line	89
	
l4597:	
	return
	opt stack 0
GLOBAL	__end_of_ser_putch
	__end_of_ser_putch:
;; =============== function _ser_putch ends ============

	signat	_ser_putch,4216
	global	_ser_init
psect	text598,local,class=CODE,delta=2
global __ptext598
__ptext598:

;; *************** function _ser_init *****************
;; Defined at:
;;		line 125 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text598
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	125
	global	__size_of_ser_init
	__size_of_ser_init	equ	__end_of_ser_init-_ser_init
	
_ser_init:	
	opt	stack 6
; Regs used in _ser_init: [wreg+status,2]
	line	128
	
l9480:	
;ser.c: 128: TRISC6 = 1;
	bsf	(1086/8)^080h,(1086)&7
	line	129
;ser.c: 129: RC7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(63/8),(63)&7
	line	131
;ser.c: 131: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1218/8)^080h,(1218)&7
	line	136
	
l9482:	
;ser.c: 136: SPBRG = ser_brg;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	139
	
l9484:	
;ser.c: 139: TX9 = 0;
	bcf	(1222/8)^080h,(1222)&7
	line	140
	
l9486:	
;ser.c: 140: RX9 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7
	line	142
	
l9488:	
;ser.c: 142: SYNC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	143
	
l9490:	
;ser.c: 143: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	144
	
l9492:	
;ser.c: 144: CREN = 1;
	bsf	(196/8),(196)&7
	line	145
	
l9494:	
;ser.c: 145: TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1124/8)^080h,(1124)&7
	line	147
	
l9496:	
;ser.c: 147: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	148
	
l9498:	
;ser.c: 148: PEIE = 1;
	bsf	(94/8),(94)&7
	line	150
	
l9500:	
;ser.c: 150: rxiptr = rxoptr = txiptr = txoptr = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_txoptr)	;volatile
	clrf	(_txiptr)	;volatile
	clrf	(_rxoptr)	;volatile
	clrf	(_rxiptr)	;volatile
	line	151
	
l4625:	
	return
	opt stack 0
GLOBAL	__end_of_ser_init
	__end_of_ser_init:
;; =============== function _ser_init ends ============

	signat	_ser_init,88
psect	text599,local,class=CODE,delta=2
global __ptext599
__ptext599:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
