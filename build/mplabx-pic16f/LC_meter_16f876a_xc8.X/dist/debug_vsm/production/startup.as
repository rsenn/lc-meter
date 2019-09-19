
	; Microchip MPLAB XC8 C Compiler V1.34
	; Copyright (C) 1984-2015 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=16F876A -G \
	; -mdist/debug_vsm/production/LC_meter_16f876a_xc8.X.production.map \
	; -DXPRJ_debug_vsm=debug_vsm --double=32 --float=32 \
	; --opt=+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro \
	; -D__XC=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 \
	; -DUSE_HD44780_LCD=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 \
	; -DBAUD_RATE=38400 -D__16f876a=1 -P -N255 -I../../.. -I../../../src \
	; -I../../../lib --warn=-3 --asmlist \
	; --summary=default,-psect,-class,+mem,-hex,-file \
	; --output=default,-inhx032 \
	; --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,+resetbits,+download,+stackcall,+clib \
	; --output=+mcof,-elf --stack=compiled:auto:auto \
	; --errformat=%f:%l: error: (%n) %s \
	; --warnformat=%f:%l: warning: (%n) %s \
	; --msgformat=%f:%l: advisory: (%n) %s --summary=+xml \
	; --summarydir=dist/debug_vsm/production/memoryfile.xml \
	; -odist/debug_vsm/production/LC_meter_16f876a_xc8.X.production.cof \
	; build/debug_vsm/production/_ext/1386528437/print.p1 \
	; build/debug_vsm/production/_ext/1386521430/timer.p1 \
	; build/debug_vsm/production/_ext/1386521430/format.p1 \
	; build/debug_vsm/production/_ext/2124829536/LC-meter.p1 \
	; build/debug_vsm/production/_ext/1386521430/lcd44780.p1 \
	; build/debug_vsm/production/_ext/1386521430/buffer.p1 \
	; build/debug_vsm/production/_ext/2037789166/measure.p1 \
	; build/debug_vsm/production/_ext/1386521430/ser.p1
	;


	processor	16F876A

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
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

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
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

	global stacklo, stackhi
	stacklo	equ	0
	stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	nop	; NOP inserted due to debugger requirements

	; No powerup routine
	global start

; jump to start
	goto	start & 0x7FF | (reset_vec & not 0x7FF)



	psect	init
start

	; Save the TO, PD bit states before they are cleared by clrwdt instruction
	global	___resetbits
	global	___powerdown
	global	___timeout
	___resetbits	equ	32
	___powerdown	equ	(___resetbits*8)+3
	___timeout	equ	(___resetbits*8)+4
	clrf	STATUS		;select bank 0
	movf STATUS,w
	movwf ___resetbits
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG @ 0x2007
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled
;	Power-up Timer Enable bit
;	PWRTE = 0x1, unprogrammed default
;	Flash Program Memory Code Protection bit
;	CP = 0x1, unprogrammed default
;	Brown-out Reset Enable bit
;	BOREN = OFF, BOR disabled
;	In-Circuit Debugger Mode bit
;	DEBUG = 0x1, unprogrammed default
;	Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit
;	LVP = OFF, RB3 is digital I/O, HV on MCLR must be used for programming
;	Data EEPROM Memory Code Protection bit
;	CPD = OFF, Data EEPROM code protection off
;	Flash Program Memory Write Enable bits
;	WRT = 0x3, unprogrammed default
;	Oscillator Selection bits
;	FOSC = HS, HS oscillator

	psect	config
		org 0x0
		dw 0xFF3A


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start
