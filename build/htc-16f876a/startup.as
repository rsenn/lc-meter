
	; HI-TECH C Compiler for PIC10/12/16 MCUs V9.83
	; Copyright (C) 1984-2011 HI-TECH Software
	;Serial no. HCPICP-36668

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --codeoffset=0 --chip=16f876a --asmlist \
	; -mbuild/htc-16f876a/LC_meter_HD44780_release.map \
	; -obuild/htc-16f876a/LC_meter_HD44780_release.hex \
	; build/htc-16f876a/release/LC-meter.p1 \
	; build/htc-16f876a/release/delay.p1 \
	; build/htc-16f876a/release/lcd44780.p1 \
	; build/htc-16f876a/release/display.p1 \
	; build/htc-16f876a/release/uart.p1 build/htc-16f876a/release/timer.p1
	;


	processor	16F876A

	global	_main,start,_exit,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2
	psect	idloc,class=IDLOC,delta=2
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=2
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto	start & 0x7FF | (reset_vec & not 0x7FF)



	psect	init
start
_exit
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect common,class=COMMON,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start