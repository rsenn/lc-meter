
	; HI-TECH C Compiler for PIC10/12/16 MCUs V9.83
	; Copyright (C) 1984-2011 HI-TECH Software
	;Serial no. HCPICP-36668

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -oLC-meter-julznc-htc-debug.cof -mLC-meter-julznc-htc-debug.map \
	; --summary=default,+psect,+class,+mem,-hex --output=default,-inhx032 \
	; display.p1 lcd3310.p1 main.p1 comparator.p1 delay.p1 format.p1 \
	; lcd5110.p1 ser.p1 timer.p1 uart.p1 --chip=16F876A -I..\..\..\src \
	; -I..\..\..\lib -I..\..\.. -P \
	; --runtime=default,+clear,+init,+keep,-osccal,+download,-resetbits,+stackcall,+clib \
	; --opt=default,-asm,+debug,-speed,+space,3 -v --warn=9 -N127 \
	; -D__DEBUG=1 --double=32 --float=24 --addrqual=ignore -DDEBUG=1 \
	; -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DUSE_SER=1 \
	; -UNDEBUG -g --asmlist --errformat=Error   [%n] %f; %l.%c %s \
	; --msgformat=Advisory[%n] %s --warnformat=Warning [%n] %f; %l.%c %s
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

	; No interrupt routine


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
