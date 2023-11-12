;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"src/measure.c"
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
	extern	___fs2uint
	extern	___fsdiv
	extern	___fssub
	extern	___fsmul
	extern	___fslt
	extern	___uint2fs
	extern	_buffer_puts
	extern	_buffer_putch
	extern	_buffer_init
	extern	_timer0_read_ps
	extern	_format_float
	extern	_format_xint32
	extern	_format_number
	extern	_print_buffer
	extern	_print_reading
	extern	_print_unit
	extern	_put_str
	extern	_lcd_putch
	extern	_lcd_gotoxy
	extern	_lcd_clear
	extern	_ser_puts
	extern	_ser_put
	extern	_ser_putch
	extern	_delay10ms
	extern	_delay_ms
	extern	_TRISA
	extern	_PORTC
	extern	_TMR0
	extern	_buffer
	extern	_CCal
	extern	_F3
	extern	_F2
	extern	_F1
	extern	_INTCONbits

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
	global	_buf_to_ser
	global	_calibrate
	global	_measure_freq
	global	_measure_capacitance
	global	_measure_inductance

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_measure_0	udata
r0x1045	res	1
r0x1044	res	1
r0x1046	res	1
r0x1026	res	1
r0x1025	res	1
r0x1028	res	1
r0x1027	res	1
r0x1029	res	1
r0x103F	res	1
r0x103E	res	1
r0x1041	res	1
r0x1033	res	1
r0x1032	res	1
r0x1034	res	1
r0x1035	res	1
r0x1036	res	1
r0x1037	res	1
r0x1039	res	1
r0x1038	res	1
r0x103C	res	1
r0x103B	res	1
r0x103A	res	1
r0x102B	res	1
r0x102A	res	1
r0x102C	res	1
r0x102D	res	1
r0x1031	res	1
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
_measure_capacitance_Cin_65536_66	res	4
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

IDC_measure_0	code
___str_0
	retlw 0x43 ; 'C'
	retlw 0x61 ; 'a'
	retlw 0x6c ; 'l'
	retlw 0x69 ; 'i'
	retlw 0x62 ; 'b'
	retlw 0x72 ; 'r'
	retlw 0x61 ; 'a'
	retlw 0x74 ; 't'
	retlw 0x69 ; 'i'
	retlw 0x6e ; 'n'
	retlw 0x67 ; 'g'
	retlw 0x00 ; '.'

IDC_measure_1	code
___str_1
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'

IDC_measure_2	code
___str_2
	retlw 0x70 ; 'p'
	retlw 0x6c ; 'l'
	retlw 0x65 ; 'e'
	retlw 0x61 ; 'a'
	retlw 0x73 ; 's'
	retlw 0x65 ; 'e'
	retlw 0x20 ; ' '
	retlw 0x77 ; 'w'
	retlw 0x61 ; 'a'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x2e ; '.'
	retlw 0x00 ; '.'

IDC_measure_3	code
___str_3
	retlw 0x46 ; 'F'
	retlw 0x72 ; 'r'
	retlw 0x65 ; 'e'
	retlw 0x71 ; 'q'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_4	code
___str_4
	retlw 0x43 ; 'C'
	retlw 0x61 ; 'a'
	retlw 0x70 ; 'p'
	retlw 0x61 ; 'a'
	retlw 0x63 ; 'c'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x79 ; 'y'
	retlw 0x20 ; ' '
	retlw 0x00 ; '.'

IDC_measure_5	code
___str_5
	retlw 0x76 ; 'v'
	retlw 0x61 ; 'a'
	retlw 0x72 ; 'r'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_6	code
___str_6
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x46 ; 'F'
	retlw 0x31 ; '1'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_7	code
___str_7
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x46 ; 'F'
	retlw 0x32 ; '2'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_8	code
___str_8
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x46 ; 'F'
	retlw 0x33 ; '3'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_9	code
___str_9
	retlw 0x0d ; '.'
	retlw 0x0a ; '.'
	retlw 0x43 ; 'C'
	retlw 0x43 ; 'C'
	retlw 0x61 ; 'a'
	retlw 0x6c ; 'l'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_10	code
___str_10
	retlw 0x43 ; 'C'
	retlw 0x69 ; 'i'
	retlw 0x6e ; 'n'
	retlw 0x3d ; '='
	retlw 0x00 ; '.'

IDC_measure_11	code
___str_11
	retlw 0x49 ; 'I'
	retlw 0x6e ; 'n'
	retlw 0x64 ; 'd'
	retlw 0x75 ; 'u'
	retlw 0x63 ; 'c'
	retlw 0x74 ; 't'
	retlw 0x69 ; 'i'
	retlw 0x76 ; 'v'
	retlw 0x69 ; 'i'
	retlw 0x74 ; 't'
	retlw 0x79 ; 'y'
	retlw 0x20 ; ' '
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
code_measure	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsdiv
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsdiv
;   ___fsmul
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;15 compiler assigned registers:
;   STK00
;   r0x102A
;   r0x102B
;   r0x102C
;   STK01
;   STK02
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x102D
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;; Starting pCode block
S_measure__measure_inductance	code
_measure_inductance:
; 2 exit points
;	.line	225; "src/measure.c"	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	226; "src/measure.c"	put_str("Inductivity ");
	MOVLW	high (___str_11 + 0)
	BANKSEL	r0x102A
	MOVWF	r0x102A
	MOVLW	(___str_11 + 0)
	MOVWF	r0x102B
	MOVLW	0x80
	MOVWF	r0x102C
	MOVF	r0x102B,W
	MOVWF	STK01
	MOVF	r0x102A,W
	MOVWF	STK00
	MOVF	r0x102C,W
	PAGESEL	_put_str
	CALL	_put_str
	PAGESEL	$
;	.line	228; "src/measure.c"	var = measure_freq();
	PAGESEL	_measure_freq
	CALL	_measure_freq
	PAGESEL	$
	BANKSEL	r0x102A
	MOVWF	r0x102A
	MOVF	STK00,W
;	.line	230; "src/measure.c"	F3 = (double)var;
	MOVWF	r0x102B
	MOVWF	STK00
	MOVF	r0x102A,W
	PAGESEL	___uint2fs
	CALL	___uint2fs
	PAGESEL	$
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
	MOVF	STK00,W
	MOVWF	(_F3 + 2)
	MOVF	STK01,W
	MOVWF	(_F3 + 1)
	MOVF	STK02,W
	MOVWF	_F3
;	.line	231; "src/measure.c"	if(F3 > F1)
	MOVF	_F3,W
	MOVWF	STK06
	MOVF	(_F3 + 1),W
	MOVWF	STK05
	MOVF	(_F3 + 2),W
	MOVWF	STK04
	MOVF	(_F3 + 3),W
	MOVWF	STK03
	BANKSEL	_F1
	MOVF	_F1,W
	MOVWF	STK02
	MOVF	(_F1 + 1),W
	MOVWF	STK01
	MOVF	(_F1 + 2),W
	MOVWF	STK00
	MOVF	(_F1 + 3),W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x102B
	MOVWF	r0x102B
	MOVF	r0x102B,W
	BTFSC	STATUS,2
	GOTO	_00135_DS_
;	.line	232; "src/measure.c"	F3 = F1; // max freq is F1;
	BANKSEL	_F1
	MOVF	_F1,W
	BANKSEL	_F3
	MOVWF	_F3
	BANKSEL	_F1
	MOVF	(_F1 + 1),W
	BANKSEL	_F3
	MOVWF	(_F3 + 1)
	BANKSEL	_F1
	MOVF	(_F1 + 2),W
	BANKSEL	_F3
	MOVWF	(_F3 + 2)
	BANKSEL	_F1
	MOVF	(_F1 + 3),W
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
_00135_DS_:
;	.line	233; "src/measure.c"	numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (GATE_PERIOD * GATE_PERIOD);
	BANKSEL	_F1
	MOVF	_F1,W
	MOVWF	STK06
	MOVF	(_F1 + 1),W
	MOVWF	STK05
	MOVF	(_F1 + 2),W
	MOVWF	STK04
	MOVF	(_F1 + 3),W
	MOVWF	STK03
	MOVF	_F1,W
	MOVWF	STK02
	MOVF	(_F1 + 1),W
	MOVWF	STK01
	MOVF	(_F1 + 2),W
	MOVWF	STK00
	MOVF	(_F1 + 3),W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
	MOVWF	r0x102B
	BANKSEL	_F3
	MOVF	_F3,W
	MOVWF	STK06
	MOVF	(_F3 + 1),W
	MOVWF	STK05
	MOVF	(_F3 + 2),W
	MOVWF	STK04
	MOVF	(_F3 + 3),W
	MOVWF	STK03
	MOVF	_F3,W
	MOVWF	STK02
	MOVF	(_F3 + 1),W
	MOVWF	STK01
	MOVF	(_F3 + 2),W
	MOVWF	STK00
	MOVF	(_F3 + 3),W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	MOVWF	STK06
	MOVF	r0x1030,W
	MOVWF	STK05
	MOVF	r0x102F,W
	MOVWF	STK04
	MOVF	r0x102E,W
	MOVWF	STK03
	MOVF	r0x102B,W
	MOVWF	STK02
	MOVF	r0x102A,W
	MOVWF	STK01
	MOVF	r0x102C,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	MOVF	r0x102B,W
	MOVWF	STK06
	MOVF	r0x102A,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102D,W
	MOVWF	STK03
	MOVF	r0x1031,W
	MOVWF	STK02
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
	MOVWF	r0x102B
	MOVWF	STK06
	MOVF	r0x102A,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102D,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x40
	MOVWF	STK01
	MOVLW	0x1c
	MOVWF	STK00
	MOVLW	0x46
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
	MOVWF	r0x102B
;	.line	234; "src/measure.c"	denominator = 4 * PI * PI * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	BANKSEL	_F1
	MOVF	_F1,W
	MOVWF	STK06
	MOVF	(_F1 + 1),W
	MOVWF	STK05
	MOVF	(_F1 + 2),W
	MOVWF	STK04
	MOVF	(_F1 + 3),W
	MOVWF	STK03
	MOVLW	0xe6
	MOVWF	STK02
	MOVLW	0xe9
	MOVWF	STK01
	MOVLW	0x1d
	MOVWF	STK00
	MOVLW	0x42
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	BANKSEL	_F1
	MOVF	_F1,W
	MOVWF	STK06
	MOVF	(_F1 + 1),W
	MOVWF	STK05
	MOVF	(_F1 + 2),W
	MOVWF	STK04
	MOVF	(_F1 + 3),W
	MOVWF	STK03
	BANKSEL	r0x1031
	MOVF	r0x1031,W
	MOVWF	STK02
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	BANKSEL	_F2
	MOVF	_F2,W
	MOVWF	STK06
	MOVF	(_F2 + 1),W
	MOVWF	STK05
	MOVF	(_F2 + 2),W
	MOVWF	STK04
	MOVF	(_F2 + 3),W
	MOVWF	STK03
	BANKSEL	r0x1031
	MOVF	r0x1031,W
	MOVWF	STK02
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	BANKSEL	_F2
	MOVF	_F2,W
	MOVWF	STK06
	MOVF	(_F2 + 1),W
	MOVWF	STK05
	MOVF	(_F2 + 2),W
	MOVWF	STK04
	MOVF	(_F2 + 3),W
	MOVWF	STK03
	BANKSEL	r0x1031
	MOVF	r0x1031,W
	MOVWF	STK02
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	BANKSEL	_F3
	MOVF	_F3,W
	MOVWF	STK06
	MOVF	(_F3 + 1),W
	MOVWF	STK05
	MOVF	(_F3 + 2),W
	MOVWF	STK04
	MOVF	(_F3 + 3),W
	MOVWF	STK03
	BANKSEL	r0x1031
	MOVF	r0x1031,W
	MOVWF	STK02
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	BANKSEL	_F3
	MOVF	_F3,W
	MOVWF	STK06
	MOVF	(_F3 + 1),W
	MOVWF	STK05
	MOVF	(_F3 + 2),W
	MOVWF	STK04
	MOVF	(_F3 + 3),W
	MOVWF	STK03
	BANKSEL	r0x1031
	MOVF	r0x1031,W
	MOVWF	STK02
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
	MOVWF	r0x1031
	BANKSEL	_CCal
	MOVF	_CCal,W
	MOVWF	STK06
	MOVF	(_CCal + 1),W
	MOVWF	STK05
	MOVF	(_CCal + 2),W
	MOVWF	STK04
	MOVF	(_CCal + 3),W
	MOVWF	STK03
	BANKSEL	r0x1031
	MOVF	r0x1031,W
	MOVWF	STK02
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
	MOVF	STK02,W
;	.line	235; "src/measure.c"	Lin = (numerator / denominator) * 1e+15l; // scale to nH { pF/1e+12 * nH/1e+09 * (s/1e+03)^2 }
	MOVWF	r0x1031
	MOVWF	STK06
	MOVF	r0x1030,W
	MOVWF	STK05
	MOVF	r0x102F,W
	MOVWF	STK04
	MOVF	r0x102E,W
	MOVWF	STK03
	MOVF	r0x102B,W
	MOVWF	STK02
	MOVF	r0x102A,W
	MOVWF	STK01
	MOVF	r0x102C,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
	MOVWF	r0x102B
	MOVWF	STK06
	MOVF	r0x102A,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102D,W
	MOVWF	STK03
	MOVLW	0xa9
	MOVWF	STK02
	MOVLW	0x5f
	MOVWF	STK01
	MOVLW	0x63
	MOVWF	STK00
	MOVLW	0x58
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
;	.line	237; "src/measure.c"	if(Lin > 999) {
	MOVWF	r0x102B
	MOVWF	STK06
	MOVF	r0x102A,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102D,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0xc0
	MOVWF	STK01
	MOVLW	0x79
	MOVWF	STK00
	MOVLW	0x44
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1031
	MOVWF	r0x1031
	MOVF	r0x1031,W
	BTFSC	STATUS,2
	GOTO	_00143_DS_
;	.line	238; "src/measure.c"	if(Lin > (999e+03l)) {
	MOVF	r0x102B,W
	MOVWF	STK06
	MOVF	r0x102A,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102D,W
	MOVWF	STK03
	MOVLW	0x80
	MOVWF	STK02
	MOVLW	0xe5
	MOVWF	STK01
	MOVLW	0x73
	MOVWF	STK00
	MOVLW	0x49
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1031
	MOVWF	r0x1031
	MOVF	r0x1031,W
	BTFSC	STATUS,2
	GOTO	_00140_DS_
;	.line	239; "src/measure.c"	if(Lin > (999e+06l)) {
	MOVF	r0x102B,W
	MOVWF	STK06
	MOVF	r0x102A,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102D,W
	MOVWF	STK03
	MOVLW	0x1f
	MOVWF	STK02
	MOVLW	0x2e
	MOVWF	STK01
	MOVLW	0x6e
	MOVWF	STK00
	MOVLW	0x4e
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1031
	MOVWF	r0x1031
	MOVF	r0x1031,W
	BTFSC	STATUS,2
	GOTO	_00137_DS_
;	.line	240; "src/measure.c"	Lin = Lin / (1e+09l);
	MOVLW	0x28
	MOVWF	STK06
	MOVLW	0x6b
	MOVWF	STK05
	MOVLW	0x6e
	MOVWF	STK04
	MOVLW	0x4e
	MOVWF	STK03
	MOVF	r0x102B,W
	MOVWF	STK02
	MOVF	r0x102A,W
	MOVWF	STK01
	MOVF	r0x102C,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
	MOVWF	r0x102B
;	.line	241; "src/measure.c"	unit = 0; // "H"
	CLRF	r0x1031
	GOTO	_00144_DS_
_00137_DS_:
;	.line	243; "src/measure.c"	Lin = Lin / (1e+06l);
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x24
	MOVWF	STK05
	MOVLW	0x74
	MOVWF	STK04
	MOVLW	0x49
	MOVWF	STK03
	BANKSEL	r0x102B
	MOVF	r0x102B,W
	MOVWF	STK02
	MOVF	r0x102A,W
	MOVWF	STK01
	MOVF	r0x102C,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
	MOVWF	r0x102B
;	.line	244; "src/measure.c"	unit = 1; // "mH"
	MOVLW	0x01
	MOVWF	r0x1031
	GOTO	_00144_DS_
_00140_DS_:
;	.line	247; "src/measure.c"	Lin = Lin / 1e+03l;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x7a
	MOVWF	STK04
	MOVLW	0x44
	MOVWF	STK03
	BANKSEL	r0x102B
	MOVF	r0x102B,W
	MOVWF	STK02
	MOVF	r0x102A,W
	MOVWF	STK01
	MOVF	r0x102C,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
	MOVWF	r0x102B
;	.line	248; "src/measure.c"	unit = 2; // "uH"
	MOVLW	0x02
	MOVWF	r0x1031
	GOTO	_00144_DS_
_00143_DS_:
;	.line	251; "src/measure.c"	unit = 3; // "nH"
	MOVLW	0x03
	BANKSEL	r0x1031
	MOVWF	r0x1031
_00144_DS_:
;	.line	253; "src/measure.c"	Lin = Lin * 100; // scale to 2 decimal place
	BANKSEL	r0x102B
	MOVF	r0x102B,W
	MOVWF	STK06
	MOVF	r0x102A,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102D,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0xc8
	MOVWF	STK00
	MOVLW	0x42
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x102A
	MOVF	STK02,W
;	.line	254; "src/measure.c"	var = (uint16_t)Lin;
	MOVWF	r0x102B
	MOVWF	STK02
	MOVF	r0x102A,W
	MOVWF	STK01
	MOVF	r0x102C,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	___fs2uint
	CALL	___fs2uint
	PAGESEL	$
	BANKSEL	r0x102A
	MOVWF	r0x102A
	MOVF	STK00,W
;	.line	256; "src/measure.c"	print_reading(var);
	MOVWF	r0x102B
	MOVWF	STK00
	MOVF	r0x102A,W
	PAGESEL	_print_reading
	CALL	_print_reading
	PAGESEL	$
;	.line	257; "src/measure.c"	print_unit(unit);
	BANKSEL	r0x1031
	MOVF	r0x1031,W
	PAGESEL	_print_unit
	CALL	_print_unit
	PAGESEL	$
;	.line	258; "src/measure.c"	}
	RETURN	
; exit point of _measure_inductance

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _ser_puts
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;   _lcd_gotoxy
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _ser_puts
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   _ser_puts
;   _format_float
;   _ser_putch
;   _format_xint32
;   _ser_puts
;   ___fslt
;   ___fslt
;   ___fslt
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsmul
;   ___fs2uint
;   _print_reading
;   _print_unit
;19 compiler assigned registers:
;   STK00
;   r0x1032
;   r0x1033
;   r0x1034
;   STK01
;   STK02
;   r0x1035
;   r0x1036
;   r0x1037
;   STK04
;   STK03
;   STK06
;   STK05
;   r0x1038
;   r0x1039
;   r0x103A
;   r0x103B
;   r0x103C
;   r0x103D
;; Starting pCode block
S_measure__measure_capacitance	code
_measure_capacitance:
; 2 exit points
;	.line	139; "src/measure.c"	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	140; "src/measure.c"	put_str("Capacity ");
	MOVLW	high (___str_4 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_4 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_put_str
	CALL	_put_str
	PAGESEL	$
;	.line	142; "src/measure.c"	var = measure_freq();
	PAGESEL	_measure_freq
	CALL	_measure_freq
	PAGESEL	$
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVF	STK00,W
;	.line	144; "src/measure.c"	F3 = (double)var;
	MOVWF	r0x1033
	MOVWF	STK00
	MOVF	r0x1032,W
	PAGESEL	___uint2fs
	CALL	___uint2fs
	PAGESEL	$
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
	MOVF	STK00,W
	MOVWF	(_F3 + 2)
	MOVF	STK01,W
	MOVWF	(_F3 + 1)
	MOVF	STK02,W
	MOVWF	_F3
;	.line	147; "src/measure.c"	ser_puts("var=");
	MOVLW	high (___str_5 + 0)
	BANKSEL	r0x1035
	MOVWF	r0x1035
	MOVLW	(___str_5 + 0)
	MOVWF	r0x1034
	MOVLW	0x80
	MOVWF	r0x1036
	MOVF	r0x1034,W
	MOVWF	STK01
	MOVF	r0x1035,W
	MOVWF	STK00
	MOVF	r0x1036,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;;103	MOVF	r0x1033,W
;;105	MOVF	r0x1032,W
;	.line	148; "src/measure.c"	format_xint32(&ser_putch, var);
	BANKSEL	r0x1036
	CLRF	r0x1036
	CLRF	r0x1037
;;102	MOVF	r0x1034,W
	MOVF	r0x1033,W
	MOVWF	r0x1034
	MOVWF	STK04
;;104	MOVF	r0x1035,W
	MOVF	r0x1032,W
	MOVWF	r0x1035
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_xint32
	CALL	_format_xint32
	PAGESEL	$
;	.line	150; "src/measure.c"	ser_puts("\r\nF1=");
	MOVLW	high (___str_6 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_6 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	151; "src/measure.c"	format_float(&ser_putch, F1);
	BANKSEL	_F1
	MOVF	_F1,W
	MOVWF	STK04
	MOVF	(_F1 + 1),W
	MOVWF	STK03
	MOVF	(_F1 + 2),W
	MOVWF	STK02
	MOVF	(_F1 + 3),W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_float
	CALL	_format_float
	PAGESEL	$
;	.line	153; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
;	.line	154; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&F1);
	MOVLW	high (_F1 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(_F1 + 0)
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1034
	MOVWF	r0x1034
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1035
	MOVWF	r0x1035
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1036
	MOVWF	r0x1036
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1037
	MOVWF	r0x1037
	MOVF	r0x1034,W
	MOVWF	STK04
	MOVF	r0x1035,W
	MOVWF	STK03
	MOVF	r0x1036,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_xint32
	CALL	_format_xint32
	PAGESEL	$
;	.line	156; "src/measure.c"	ser_puts("\r\nF2=");
	MOVLW	high (___str_7 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_7 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	157; "src/measure.c"	format_float(&ser_putch, F2);
	BANKSEL	_F2
	MOVF	_F2,W
	MOVWF	STK04
	MOVF	(_F2 + 1),W
	MOVWF	STK03
	MOVF	(_F2 + 2),W
	MOVWF	STK02
	MOVF	(_F2 + 3),W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_float
	CALL	_format_float
	PAGESEL	$
;	.line	159; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
;	.line	160; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&F2);
	MOVLW	high (_F2 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(_F2 + 0)
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1034
	MOVWF	r0x1034
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1035
	MOVWF	r0x1035
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1036
	MOVWF	r0x1036
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1037
	MOVWF	r0x1037
	MOVF	r0x1034,W
	MOVWF	STK04
	MOVF	r0x1035,W
	MOVWF	STK03
	MOVF	r0x1036,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_xint32
	CALL	_format_xint32
	PAGESEL	$
;	.line	162; "src/measure.c"	ser_puts("\r\nF3=");
	MOVLW	high (___str_8 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_8 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	163; "src/measure.c"	format_float(&ser_putch, F3);
	BANKSEL	_F3
	MOVF	_F3,W
	MOVWF	STK04
	MOVF	(_F3 + 1),W
	MOVWF	STK03
	MOVF	(_F3 + 2),W
	MOVWF	STK02
	MOVF	(_F3 + 3),W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_float
	CALL	_format_float
	PAGESEL	$
;	.line	165; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
;	.line	166; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&F3);
	MOVLW	high (_F3 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(_F3 + 0)
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1034
	MOVWF	r0x1034
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1035
	MOVWF	r0x1035
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1036
	MOVWF	r0x1036
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1037
	MOVWF	r0x1037
	MOVF	r0x1034,W
	MOVWF	STK04
	MOVF	r0x1035,W
	MOVWF	STK03
	MOVF	r0x1036,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_xint32
	CALL	_format_xint32
	PAGESEL	$
;	.line	168; "src/measure.c"	ser_puts("\r\nCCal=");
	MOVLW	high (___str_9 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_9 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	169; "src/measure.c"	format_float(&ser_putch, CCal);
	BANKSEL	_CCal
	MOVF	_CCal,W
	MOVWF	STK04
	MOVF	(_CCal + 1),W
	MOVWF	STK03
	MOVF	(_CCal + 2),W
	MOVWF	STK02
	MOVF	(_CCal + 3),W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_float
	CALL	_format_float
	PAGESEL	$
;	.line	171; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
;	.line	172; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&CCal);
	MOVLW	high (_CCal + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(_CCal + 0)
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1034
	MOVWF	r0x1034
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1035
	MOVWF	r0x1035
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1036
	MOVWF	r0x1036
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1037
	MOVWF	r0x1037
	MOVF	r0x1034,W
	MOVWF	STK04
	MOVF	r0x1035,W
	MOVWF	STK03
	MOVF	r0x1036,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_xint32
	CALL	_format_xint32
	PAGESEL	$
;	.line	174; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_1 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	178; "src/measure.c"	if(F3 > F1)
	BANKSEL	_F3
	MOVF	_F3,W
	MOVWF	STK06
	MOVF	(_F3 + 1),W
	MOVWF	STK05
	MOVF	(_F3 + 2),W
	MOVWF	STK04
	MOVF	(_F3 + 3),W
	MOVWF	STK03
	BANKSEL	_F1
	MOVF	_F1,W
	MOVWF	STK02
	MOVF	(_F1 + 1),W
	MOVWF	STK01
	MOVF	(_F1 + 2),W
	MOVWF	STK00
	MOVF	(_F1 + 3),W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1033
	MOVWF	r0x1033
	MOVF	r0x1033,W
	BTFSC	STATUS,2
	GOTO	_00120_DS_
;	.line	179; "src/measure.c"	F3 = F1; // max freq is F1;
	BANKSEL	_F1
	MOVF	_F1,W
	BANKSEL	_F3
	MOVWF	_F3
	BANKSEL	_F1
	MOVF	(_F1 + 1),W
	BANKSEL	_F3
	MOVWF	(_F3 + 1)
	BANKSEL	_F1
	MOVF	(_F1 + 2),W
	BANKSEL	_F3
	MOVWF	(_F3 + 2)
	BANKSEL	_F1
	MOVF	(_F1 + 3),W
	BANKSEL	_F3
	MOVWF	(_F3 + 3)
_00120_DS_:
;	.line	181; "src/measure.c"	Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	BANKSEL	_F2
	MOVF	_F2,W
	MOVWF	STK06
	MOVF	(_F2 + 1),W
	MOVWF	STK05
	MOVF	(_F2 + 2),W
	MOVWF	STK04
	MOVF	(_F2 + 3),W
	MOVWF	STK03
	MOVF	_F2,W
	MOVWF	STK02
	MOVF	(_F2 + 1),W
	MOVWF	STK01
	MOVF	(_F2 + 2),W
	MOVWF	STK00
	MOVF	(_F2 + 3),W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1035
	MOVWF	r0x1035
	MOVF	STK00,W
	MOVWF	r0x1034
	MOVF	STK01,W
	MOVWF	r0x1032
	MOVF	STK02,W
	MOVWF	r0x1033
	BANKSEL	_F1
	MOVF	_F1,W
	MOVWF	STK06
	MOVF	(_F1 + 1),W
	MOVWF	STK05
	MOVF	(_F1 + 2),W
	MOVWF	STK04
	MOVF	(_F1 + 3),W
	MOVWF	STK03
	MOVF	_F1,W
	MOVWF	STK02
	MOVF	(_F1 + 1),W
	MOVWF	STK01
	MOVF	(_F1 + 2),W
	MOVWF	STK00
	MOVF	(_F1 + 3),W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1038
	MOVWF	r0x1038
	MOVF	STK00,W
	MOVWF	r0x1039
	MOVF	STK01,W
	MOVWF	r0x1037
	MOVF	STK02,W
	MOVWF	r0x1036
	BANKSEL	_F3
	MOVF	_F3,W
	MOVWF	STK06
	MOVF	(_F3 + 1),W
	MOVWF	STK05
	MOVF	(_F3 + 2),W
	MOVWF	STK04
	MOVF	(_F3 + 3),W
	MOVWF	STK03
	MOVF	_F3,W
	MOVWF	STK02
	MOVF	(_F3 + 1),W
	MOVWF	STK01
	MOVF	(_F3 + 2),W
	MOVWF	STK00
	MOVF	(_F3 + 3),W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x103A
	MOVWF	r0x103A
	MOVF	STK00,W
	MOVWF	r0x103B
	MOVF	STK01,W
	MOVWF	r0x103C
	MOVF	STK02,W
;;1	MOVWF	r0x103D
	MOVWF	STK06
	MOVF	r0x103C,W
	MOVWF	STK05
	MOVF	r0x103B,W
	MOVWF	STK04
	MOVF	r0x103A,W
	MOVWF	STK03
	MOVF	r0x1036,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVF	r0x1039,W
	MOVWF	STK00
	MOVF	r0x1038,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1038
	MOVWF	r0x1038
	MOVF	STK00,W
	MOVWF	r0x1039
	MOVF	STK01,W
	MOVWF	r0x1037
	MOVF	STK02,W
	MOVWF	r0x1036
	MOVWF	STK06
	MOVF	r0x1037,W
	MOVWF	STK05
	MOVF	r0x1039,W
	MOVWF	STK04
	MOVF	r0x1038,W
	MOVWF	STK03
	MOVF	r0x1033,W
	MOVWF	STK02
	MOVF	r0x1032,W
	MOVWF	STK01
	MOVF	r0x1034,W
	MOVWF	STK00
	MOVF	r0x1035,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1035
	MOVWF	r0x1035
	MOVF	STK00,W
	MOVWF	r0x1034
	MOVF	STK01,W
	MOVWF	r0x1032
	MOVF	STK02,W
	MOVWF	r0x1033
	BANKSEL	_CCal
	MOVF	_CCal,W
	MOVWF	STK06
	MOVF	(_CCal + 1),W
	MOVWF	STK05
	MOVF	(_CCal + 2),W
	MOVWF	STK04
	MOVF	(_CCal + 3),W
	MOVWF	STK03
	BANKSEL	r0x1033
	MOVF	r0x1033,W
	MOVWF	STK02
	MOVF	r0x1032,W
	MOVWF	STK01
	MOVF	r0x1034,W
	MOVWF	STK00
	MOVF	r0x1035,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
	MOVF	STK00,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
	MOVF	STK01,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
	MOVF	STK02,W
	MOVWF	_measure_capacitance_Cin_65536_66
;	.line	185; "src/measure.c"	ser_puts("Cin=");
	MOVLW	high (___str_10 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_10 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	186; "src/measure.c"	format_float(&ser_putch, Cin);
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK04
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK03
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK02
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_float
	CALL	_format_float
	PAGESEL	$
;	.line	187; "src/measure.c"	ser_putch(' ');
	MOVLW	0x20
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
;	.line	188; "src/measure.c"	format_xint32(&ser_putch, *(uint32_t*)&Cin);
	MOVLW	high (_measure_capacitance_Cin_65536_66 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(_measure_capacitance_Cin_65536_66 + 0)
	MOVWF	r0x1033
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1032
	BTFSC	r0x1032,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1034
	MOVWF	r0x1034
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1035
	MOVWF	r0x1035
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1036
	MOVWF	r0x1036
	BANKSEL	FSR
	INCF	FSR,F
	MOVF	INDF,W
	BANKSEL	r0x1037
	MOVWF	r0x1037
	MOVF	r0x1034,W
	MOVWF	STK04
	MOVF	r0x1035,W
	MOVWF	STK03
	MOVF	r0x1036,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVLW	low (_ser_putch+0)
	MOVWF	STK00
	MOVLW	high (_ser_putch+0)
	PAGESEL	_format_xint32
	CALL	_format_xint32
	PAGESEL	$
;	.line	189; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVLW	(___str_1 + 0)
	MOVWF	r0x1033
	MOVLW	0x80
	MOVWF	r0x1034
	MOVF	r0x1033,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	191; "src/measure.c"	if(Cin > 999) {
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK06
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK05
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK04
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0xc0
	MOVWF	STK01
	MOVLW	0x79
	MOVWF	STK00
	MOVLW	0x44
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1033
	MOVWF	r0x1033
	MOVF	r0x1033,W
	BTFSC	STATUS,2
	GOTO	_00128_DS_
;	.line	192; "src/measure.c"	if(Cin > (999e+03l)) {
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK06
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK05
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK04
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	MOVWF	STK03
	MOVLW	0x80
	MOVWF	STK02
	MOVLW	0xe5
	MOVWF	STK01
	MOVLW	0x73
	MOVWF	STK00
	MOVLW	0x49
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1033
	MOVWF	r0x1033
	MOVF	r0x1033,W
	BTFSC	STATUS,2
	GOTO	_00125_DS_
;	.line	193; "src/measure.c"	if(Cin > (999e+06l)) {
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK06
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK05
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK04
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	MOVWF	STK03
	MOVLW	0x1f
	MOVWF	STK02
	MOVLW	0x2e
	MOVWF	STK01
	MOVLW	0x6e
	MOVWF	STK00
	MOVLW	0x4e
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1033
	MOVWF	r0x1033
	MOVF	r0x1033,W
	BTFSC	STATUS,2
	GOTO	_00122_DS_
;	.line	194; "src/measure.c"	Cin = Cin / (1e+09);
	MOVLW	0x28
	MOVWF	STK06
	MOVLW	0x6b
	MOVWF	STK05
	MOVLW	0x6e
	MOVWF	STK04
	MOVLW	0x4e
	MOVWF	STK03
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK02
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK01
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK00
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
	MOVF	STK00,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
	MOVF	STK01,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
	MOVF	STK02,W
	MOVWF	_measure_capacitance_Cin_65536_66
;	.line	195; "src/measure.c"	unit = 4; //"mF"
	MOVLW	0x04
	BANKSEL	r0x1033
	MOVWF	r0x1033
	GOTO	_00129_DS_
_00122_DS_:
;	.line	197; "src/measure.c"	Cin = Cin / (1e+06);
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x24
	MOVWF	STK05
	MOVLW	0x74
	MOVWF	STK04
	MOVLW	0x49
	MOVWF	STK03
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK02
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK01
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK00
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
	MOVF	STK00,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
	MOVF	STK01,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
	MOVF	STK02,W
	MOVWF	_measure_capacitance_Cin_65536_66
;	.line	198; "src/measure.c"	unit = 5; //"uF"
	MOVLW	0x05
	BANKSEL	r0x1033
	MOVWF	r0x1033
	GOTO	_00129_DS_
_00125_DS_:
;	.line	201; "src/measure.c"	Cin = Cin / 1e+03;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x7a
	MOVWF	STK04
	MOVLW	0x44
	MOVWF	STK03
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK02
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK01
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK00
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
	MOVF	STK00,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
	MOVF	STK01,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
	MOVF	STK02,W
	MOVWF	_measure_capacitance_Cin_65536_66
;	.line	202; "src/measure.c"	unit = 6; //"nF"
	MOVLW	0x06
	BANKSEL	r0x1033
	MOVWF	r0x1033
	GOTO	_00129_DS_
_00128_DS_:
;	.line	205; "src/measure.c"	unit = 7; //"pF"
	MOVLW	0x07
	BANKSEL	r0x1033
	MOVWF	r0x1033
_00129_DS_:
;	.line	207; "src/measure.c"	Cin = Cin * 100; // scale to 2 decimal place
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK06
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK05
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK04
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0xc8
	MOVWF	STK00
	MOVLW	0x42
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	_measure_capacitance_Cin_65536_66
	MOVWF	(_measure_capacitance_Cin_65536_66 + 3)
	MOVF	STK00,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 2)
	MOVF	STK01,W
	MOVWF	(_measure_capacitance_Cin_65536_66 + 1)
	MOVF	STK02,W
	MOVWF	_measure_capacitance_Cin_65536_66
;	.line	208; "src/measure.c"	var = (uint16_t)Cin;
	MOVF	_measure_capacitance_Cin_65536_66,W
	MOVWF	STK02
	MOVF	(_measure_capacitance_Cin_65536_66 + 1),W
	MOVWF	STK01
	MOVF	(_measure_capacitance_Cin_65536_66 + 2),W
	MOVWF	STK00
	MOVF	(_measure_capacitance_Cin_65536_66 + 3),W
	PAGESEL	___fs2uint
	CALL	___fs2uint
	PAGESEL	$
	BANKSEL	r0x1034
	MOVWF	r0x1034
	MOVF	STK00,W
;	.line	210; "src/measure.c"	print_reading(var);
	MOVWF	r0x1032
	MOVWF	STK00
	MOVF	r0x1034,W
	PAGESEL	_print_reading
	CALL	_print_reading
	PAGESEL	$
;	.line	211; "src/measure.c"	print_unit(unit);
	BANKSEL	r0x1033
	MOVF	r0x1033,W
	PAGESEL	_print_unit
	CALL	_print_unit
	PAGESEL	$
;	.line	212; "src/measure.c"	}
	RETURN	
; exit point of _measure_capacitance

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_put
;   _ser_put
;10 compiler assigned registers:
;   r0x103E
;   r0x103F
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;   STK03
;   STK02
;   STK01
;   STK00
;; Starting pCode block
S_measure__buf_to_ser	code
_buf_to_ser:
; 2 exit points
;	.line	122; "src/measure.c"	ser_put(buffer.x, buffer.n);
	MOVLW	high (_buffer + 0)
	BANKSEL	r0x103E
	MOVWF	r0x103E
	MOVLW	(_buffer + 0)
	MOVWF	r0x103F
;;1	CLRF	r0x1040
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1041
	MOVWF	r0x1041
	SWAPF	r0x1041,F
	MOVLW	0x0f
	ANDWF	r0x1041,F
;;101	MOVF	r0x1041,W
;;99	MOVWF	r0x1042
;;1	CLRF	r0x1043
;;100	MOVF	r0x1042,W
	MOVF	r0x1041,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVF	r0x103F,W
	MOVWF	STK01
	MOVF	r0x103E,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_ser_put
	CALL	_ser_put
	PAGESEL	$
;	.line	123; "src/measure.c"	BUFFER_CLEAR();
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	MOVWF	(_buffer + 16)
	ANDLW	0x0f
	MOVWF	(_buffer + 16)
;	.line	124; "src/measure.c"	}
	RETURN	
; exit point of _buf_to_ser

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _timer0_read_ps
;   _lcd_gotoxy
;   _buffer_init
;   _buffer_puts
;   _format_number
;   _print_buffer
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _delay_ms
;   _timer0_read_ps
;   _lcd_gotoxy
;   _buffer_init
;   _buffer_puts
;   _format_number
;   _print_buffer
;10 compiler assigned registers:
;   STK00
;   r0x1025
;   r0x1026
;   r0x1027
;   r0x1028
;   r0x1029
;   STK01
;   STK04
;   STK03
;   STK02
;; Starting pCode block
S_measure__measure_freq	code
_measure_freq:
; 2 exit points
;	.line	76; "src/measure.c"	TMR0IF = 0;
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,2
;	.line	80; "src/measure.c"	TRISA &= ~0b00010000;
	BANKSEL	_TRISA
	BCF	_TRISA,4
;	.line	82; "src/measure.c"	delay_ms(20); // stablize oscillator
	MOVLW	0x14
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	85; "src/measure.c"	TMR0 = 0x00;
	BANKSEL	_TMR0
	CLRF	_TMR0
;	.line	90; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	91; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	92; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	93; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	94; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	95; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	96; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	97; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	98; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	99; "src/measure.c"	delay_ms(10);
	MOVLW	0x0a
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay_ms
	CALL	_delay_ms
	PAGESEL	$
;	.line	104; "src/measure.c"	TRISA |= 0b00010000;
	BANKSEL	_TRISA
	BSF	_TRISA,4
;	.line	107; "src/measure.c"	count = timer0_read_ps();
	PAGESEL	_timer0_read_ps
	CALL	_timer0_read_ps
	PAGESEL	$
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVF	STK00,W
	MOVWF	r0x1026
;	.line	110; "src/measure.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	112; "src/measure.c"	buffer_init();
	PAGESEL	_buffer_init
	CALL	_buffer_init
	PAGESEL	$
;	.line	113; "src/measure.c"	buffer_puts("Freq=");
	MOVLW	high (___str_3 + 0)
	BANKSEL	r0x1027
	MOVWF	r0x1027
	MOVLW	(___str_3 + 0)
	MOVWF	r0x1028
	MOVLW	0x80
	MOVWF	r0x1029
	MOVF	r0x1028,W
	MOVWF	STK01
	MOVF	r0x1027,W
	MOVWF	STK00
	MOVF	r0x1029,W
	PAGESEL	_buffer_puts
	CALL	_buffer_puts
	PAGESEL	$
;	.line	114; "src/measure.c"	format_number(&buffer_putch, count, 10, 5);
	MOVLW	0x05
	MOVWF	STK04
	MOVLW	0x0a
	MOVWF	STK03
	BANKSEL	r0x1026
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
;	.line	115; "src/measure.c"	print_buffer();
	PAGESEL	_print_buffer
	CALL	_print_buffer
	PAGESEL	$
;	.line	117; "src/measure.c"	return count;
	BANKSEL	r0x1026
	MOVF	r0x1026,W
	MOVWF	STK00
	MOVF	r0x1025,W
;	.line	118; "src/measure.c"	}
	RETURN	
; exit point of _measure_freq

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _lcd_clear
;   _lcd_gotoxy
;   _put_str
;   _lcd_gotoxy
;   _ser_puts
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _lcd_gotoxy
;   _lcd_putch
;   _delay10ms
;   _ser_puts
;   _lcd_clear
;   _lcd_gotoxy
;   _put_str
;   _lcd_gotoxy
;   _ser_puts
;   _put_str
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _measure_freq
;   ___uint2fs
;   _delay10ms
;   _measure_freq
;   ___uint2fs
;   _lcd_gotoxy
;   _lcd_putch
;   _delay10ms
;   _ser_puts
;6 compiler assigned registers:
;   STK00
;   r0x1044
;   r0x1045
;   r0x1046
;   STK01
;   STK02
;; Starting pCode block
S_measure__calibrate	code
_calibrate:
; 2 exit points
;	.line	30; "src/measure.c"	lcd_clear();
	PAGESEL	_lcd_clear
	CALL	_lcd_clear
	PAGESEL	$
;	.line	32; "src/measure.c"	lcd_gotoxy(0, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	33; "src/measure.c"	put_str("Calibrating");
	MOVLW	high (___str_0 + 0)
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVLW	(___str_0 + 0)
	MOVWF	r0x1045
	MOVLW	0x80
	MOVWF	r0x1046
	MOVF	r0x1045,W
	MOVWF	STK01
	MOVF	r0x1044,W
	MOVWF	STK00
	MOVF	r0x1046,W
	PAGESEL	_put_str
	CALL	_put_str
	PAGESEL	$
;	.line	35; "src/measure.c"	lcd_gotoxy(0, 1);
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	37; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVLW	(___str_1 + 0)
	MOVWF	r0x1045
	MOVLW	0x80
	MOVWF	r0x1046
	MOVF	r0x1045,W
	MOVWF	STK01
	MOVF	r0x1044,W
	MOVWF	STK00
	MOVF	r0x1046,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	39; "src/measure.c"	put_str("please wait...");
	MOVLW	high (___str_2 + 0)
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVLW	(___str_2 + 0)
	MOVWF	r0x1045
	MOVLW	0x80
	MOVWF	r0x1046
	MOVF	r0x1045,W
	MOVWF	STK01
	MOVF	r0x1044,W
	MOVWF	STK00
	MOVF	r0x1046,W
	PAGESEL	_put_str
	CALL	_put_str
	PAGESEL	$
;	.line	42; "src/measure.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;	.line	44; "src/measure.c"	F1 = (double)measure_freq(); // dummy reading to stabilize oscillator
	PAGESEL	_measure_freq
	CALL	_measure_freq
	PAGESEL	$
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVF	STK00,W
	MOVWF	r0x1045
	MOVWF	STK00
	MOVF	r0x1044,W
	PAGESEL	___uint2fs
	CALL	___uint2fs
	PAGESEL	$
	BANKSEL	_F1
	MOVWF	(_F1 + 3)
	MOVF	STK00,W
	MOVWF	(_F1 + 2)
	MOVF	STK01,W
	MOVWF	(_F1 + 1)
	MOVF	STK02,W
	MOVWF	_F1
;	.line	45; "src/measure.c"	delay10ms(50);
	MOVLW	0x32
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	47; "src/measure.c"	F1 = (double)measure_freq();
	PAGESEL	_measure_freq
	CALL	_measure_freq
	PAGESEL	$
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVF	STK00,W
	MOVWF	r0x1045
	MOVWF	STK00
	MOVF	r0x1044,W
	PAGESEL	___uint2fs
	CALL	___uint2fs
	PAGESEL	$
	BANKSEL	_F1
	MOVWF	(_F1 + 3)
	MOVF	STK00,W
	MOVWF	(_F1 + 2)
	MOVF	STK01,W
	MOVWF	(_F1 + 1)
	MOVF	STK02,W
	MOVWF	_F1
;	.line	48; "src/measure.c"	ADD_CCAL();
	BANKSEL	_PORTC
	BSF	_PORTC,5
;	.line	50; "src/measure.c"	F2 = (double)measure_freq(); // dummy reading to stabilize oscillator
	PAGESEL	_measure_freq
	CALL	_measure_freq
	PAGESEL	$
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVF	STK00,W
	MOVWF	r0x1045
	MOVWF	STK00
	MOVF	r0x1044,W
	PAGESEL	___uint2fs
	CALL	___uint2fs
	PAGESEL	$
	BANKSEL	_F2
	MOVWF	(_F2 + 3)
	MOVF	STK00,W
	MOVWF	(_F2 + 2)
	MOVF	STK01,W
	MOVWF	(_F2 + 1)
	MOVF	STK02,W
	MOVWF	_F2
;	.line	51; "src/measure.c"	delay10ms(50);
	MOVLW	0x32
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	53; "src/measure.c"	F2 = (double)measure_freq();
	PAGESEL	_measure_freq
	CALL	_measure_freq
	PAGESEL	$
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVF	STK00,W
	MOVWF	r0x1045
	MOVWF	STK00
	MOVF	r0x1044,W
	PAGESEL	___uint2fs
	CALL	___uint2fs
	PAGESEL	$
	BANKSEL	_F2
	MOVWF	(_F2 + 3)
	MOVF	STK00,W
	MOVWF	(_F2 + 2)
	MOVF	STK01,W
	MOVWF	(_F2 + 1)
	MOVF	STK02,W
	MOVWF	_F2
;	.line	54; "src/measure.c"	REMOVE_CCAL();
	BANKSEL	_PORTC
	BCF	_PORTC,5
;	.line	57; "src/measure.c"	lcd_gotoxy(11, 0);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x0b
	PAGESEL	_lcd_gotoxy
	CALL	_lcd_gotoxy
	PAGESEL	$
;	.line	58; "src/measure.c"	for(i = 0; i < 6; i++) { // show progress bar
	BANKSEL	r0x1045
	CLRF	r0x1045
_00106_DS_:
;	.line	59; "src/measure.c"	lcd_putch('=');
	MOVLW	0x3d
	PAGESEL	_lcd_putch
	CALL	_lcd_putch
	PAGESEL	$
;	.line	61; "src/measure.c"	delay10ms(28);
	MOVLW	0x1c
	PAGESEL	_delay10ms
	CALL	_delay10ms
	PAGESEL	$
;	.line	58; "src/measure.c"	for(i = 0; i < 6; i++) { // show progress bar
	BANKSEL	r0x1045
	INCF	r0x1045,F
;;unsigned compare: left < lit(0x6=6), size=1
	MOVLW	0x06
	SUBWF	r0x1045,W
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3307: created from rifx:0x7ffeb92ea1b0
;	.line	65; "src/measure.c"	ser_puts("\r\n");
	MOVLW	high (___str_1 + 0)
	MOVWF	r0x1044
	MOVLW	(___str_1 + 0)
	MOVWF	r0x1045
	MOVLW	0x80
	MOVWF	r0x1046
	MOVF	r0x1045,W
	MOVWF	STK01
	MOVF	r0x1044,W
	MOVWF	STK00
	MOVF	r0x1046,W
	PAGESEL	_ser_puts
	CALL	_ser_puts
	PAGESEL	$
;	.line	67; "src/measure.c"	}
	RETURN	
; exit point of _calibrate


;	code size estimation:
;	 1510+  421 =  1931 instructions ( 4704 byte)

	end
