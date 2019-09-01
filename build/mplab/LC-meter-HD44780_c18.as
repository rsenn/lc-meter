opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 201502162209"

opt pagewidth 120

	opt pm

	processor	18F252
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATA equ 0F89h ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 910 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1993 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2540 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2801 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2813 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2903 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2909 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2976 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3543 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3549 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3630 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3740 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3866 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 4035 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 4092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4186 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4300 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4330 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4336 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4342 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4354 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4378 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4528 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4881 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4887 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4893 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4934 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4946 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4952 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 5063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 5069 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f252.h"
TOSU equ 0FFFh ;# 
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
;;
;; C18 inline assembly external references (forward declarations)
;;
global TMR0, _TMR0
global TMR2, _TMR2
global TXREG, _TXREG
global RCREG, _RCREG
global SPBRG, _SPBRG
global TRISA, _TRISA
global TRISC, _TRISC
	FNCALL	_main,_calibrate
	FNCALL	_main,_delay10ms
	FNCALL	_main,_indicator
	FNCALL	_main,_measure_capacitance
	FNCALL	_main,_measure_inductance
	FNCALL	_main,_ser_init
	FNCALL	_main,_ser_puts
	FNCALL	_main,_timer2_init
	FNCALL	_measure_inductance,___fldiv
	FNCALL	_measure_inductance,___flge
	FNCALL	_measure_inductance,___flmul
	FNCALL	_measure_inductance,___flsub
	FNCALL	_measure_inductance,___fltol
	FNCALL	_measure_inductance,___lwtofl
	FNCALL	_measure_inductance,_measure_freq
	FNCALL	_measure_inductance,_print_reading
	FNCALL	_measure_inductance,_print_unit
	FNCALL	_measure_capacitance,___fldiv
	FNCALL	_measure_capacitance,___flge
	FNCALL	_measure_capacitance,___flmul
	FNCALL	_measure_capacitance,___flsub
	FNCALL	_measure_capacitance,___fltol
	FNCALL	_measure_capacitance,___lwtofl
	FNCALL	_measure_capacitance,_format_double
	FNCALL	_measure_capacitance,_format_xint32
	FNCALL	_measure_capacitance,_measure_freq
	FNCALL	_measure_capacitance,_print_reading
	FNCALL	_measure_capacitance,_print_unit
	FNCALL	_measure_capacitance,_ser_putch
	FNCALL	_measure_capacitance,_ser_puts
	FNCALL	_format_xint32,_format_number
	FNCALL	_format_xint32,_format_putchar
	FNCALL	_format_xint32,_output_putch
	FNCALL	_format_xint32,_ser_putch
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,_format_putchar
	FNCALL	_format_number,_output_putch
	FNCALL	_format_number,_ser_putch
	FNCALL	_format_double,___awtofl
	FNCALL	_format_double,___fldiv
	FNCALL	_format_double,___flge
	FNCALL	_format_double,___flmul
	FNCALL	_format_double,___flsub
	FNCALL	_format_double,___fltol
	FNCALL	_format_double,_floor
	FNCALL	_format_double,_format_putchar
	FNCALL	_format_double,_log10
	FNCALL	_format_double,_output_putch
	FNCALL	_format_double,_pow
	FNCALL	_format_double,_ser_putch
	FNCALL	_pow,___flge
	FNCALL	_pow,___flmul
	FNCALL	_pow,___flneg
	FNCALL	_pow,___fltol
	FNCALL	_pow,___lltofl
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_exp,___awtofl
	FNCALL	_exp,___fldiv
	FNCALL	_exp,___flge
	FNCALL	_exp,___flmul
	FNCALL	_exp,___flneg
	FNCALL	_exp,___flsub
	FNCALL	_exp,___fltol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_floor,___altofl
	FNCALL	_floor,___fladd
	FNCALL	_floor,___flge
	FNCALL	_floor,___fltol
	FNCALL	_floor,_frexp
	FNCALL	___altofl,___flpack
	FNCALL	___flsub,___fladd
	FNCALL	___fldiv,___flpack
	FNCALL	___lltofl,___flpack
	FNCALL	_output_putch,_ser_putch
	FNCALL	_log10,___flmul
	FNCALL	_log10,_log
	FNCALL	_log,___awtofl
	FNCALL	_log,___fladd
	FNCALL	_log,___flmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_eval_poly,___fladd
	FNCALL	_eval_poly,___flmul
	FNCALL	___flmul,___flpack
	FNCALL	___fladd,___flpack
	FNCALL	___awtofl,___flpack
	FNCALL	_calibrate,___lwtofl
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_ser_puts
	FNCALL	_ser_puts,_ser_putch
	FNCALL	_delay10ms,___wmul
	FNCALL	___lwtofl,___flpack
	FNROOT	_main
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_putchar_ptr
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	10

;initializer for _putchar_ptr
		db	low(_format_putchar)
	db	high(_format_putchar)

	global	exp@coeff
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	17
exp@coeff:
	dw	(1.0000000000000000 & 0ffffh)
	dw	highword (1.0000000000000000)
	dw	(0.69314718056000002 & 0ffffh)
	dw	highword (0.69314718056000002)
	dw	(0.24022650695000000 & 0ffffh)
	dw	highword (0.24022650695000000)
	dw	(0.055504108944999998 & 0ffffh)
	dw	highword (0.055504108944999998)
	dw	(0.0096181261778999997 & 0ffffh)
	dw	highword (0.0096181261778999997)
	dw	(0.0013333710529000000 & 0ffffh)
	dw	highword (0.0013333710529000000)
	dw	(0.00015399104432000000 & 0ffffh)
	dw	highword (0.00015399104432000000)
	dw	(1.5327675256999998e-005 & 0ffffh)
	dw	highword (1.5327675256999998e-005)
	dw	(1.2485143336000000e-006 & 0ffffh)
	dw	highword (1.2485143336000000e-006)
	dw	(1.3908092220999999e-007 & 0ffffh)
	dw	highword (1.3908092220999999e-007)
	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	9
log@coeff:
	dw	(0.0000000000000000 & 0ffffh)
	dw	highword (0.0000000000000000)
	dw	(0.99999642389999999 & 0ffffh)
	dw	highword (0.99999642389999999)
	dw	(-0.49987412380000001 & 0ffffh)
	dw	highword (-0.49987412380000001)
	dw	(0.33179902579999998 & 0ffffh)
	dw	highword (0.33179902579999998)
	dw	(-0.24073380840000000 & 0ffffh)
	dw	highword (-0.24073380840000000)
	dw	(0.16765407110000000 & 0ffffh)
	dw	highword (0.16765407110000000)
	dw	(-0.095329389700000003 & 0ffffh)
	dw	highword (-0.095329389700000003)
	dw	(0.036088493700000002 & 0ffffh)
	dw	highword (0.036088493700000002)
	dw	(-0.0064535442000000004 & 0ffffh)
	dw	highword (-0.0064535442000000004)
	global __end_oflog@coeff
__end_oflog@coeff:
	global	exp@coeff
	global	log@coeff
	global	_rxiptr
	global	_rxoptr
	global	_ser_tmp
	global	_txiptr
	global	_txoptr
	global	_rxfifo
	global	_txfifo
	global	_F2
	global	_F3
	global	_msecs
	global	_seconds
	global	_timer1of
	global	_blink
	global	_F1
	global	_CCal
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
	global	_CCal
_CCal:
       ds      4
	global	_bres
	global	_bres
_bres:
       ds      2
	global	_msecpart
	global	_msecpart
_msecpart:
       ds      2
	global	_TMR0
_TMR0	set	0xFD6
	global	_RCREG
_RCREG	set	0xFAE
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_TMR2
_TMR2	set	0xFCC
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISC
_TRISC	set	0xF94
	global	_TXREG
_TXREG	set	0xFAD
	global	_BRGH
_BRGH	set	0x7D62
	global	_CREN
_CREN	set	0x7D5C
	global	_GIE
_GIE	set	0x7F97
	global	_LATC3
_LATC3	set	0x7C5B
	global	_LATC4
_LATC4	set	0x7C5C
	global	_LATC5
_LATC5	set	0x7C5D
	global	_LATC7
_LATC7	set	0x7C5F
	global	_NOT_RBPU
_NOT_RBPU	set	0x7F8F
	global	_PEIE
_PEIE	set	0x7F96
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RX9
_RX9	set	0x7D5E
	global	_SPEN
_SPEN	set	0x7D5F
	global	_SSPEN
_SSPEN	set	0x7E35
	global	_SYNC
_SYNC	set	0x7D64
	global	_T0CS
_T0CS	set	0x7EAD
	global	_T0SE
_T0SE	set	0x7EAC
	global	_T2CKPS0
_T2CKPS0	set	0x7E50
	global	_T2CKPS1
_T2CKPS1	set	0x7E51
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR2IE
_TMR2IE	set	0x7CE9
	global	_TMR2IF
_TMR2IF	set	0x7CF1
	global	_TMR2ON
_TMR2ON	set	0x7E52
	global	_TOUTPS0
_TOUTPS0	set	0x7E53
	global	_TOUTPS1
_TOUTPS1	set	0x7E54
	global	_TOUTPS2
_TOUTPS2	set	0x7E55
	global	_TRISC0
_TRISC0	set	0x7CA0
	global	_TRISC1
_TRISC1	set	0x7CA1
	global	_TRISC2
_TRISC2	set	0x7CA2
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_TRISC5
_TRISC5	set	0x7CA5
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TX9
_TX9	set	0x7D66
	global	_TXEN
_TXEN	set	0x7D65
	global	_TXIE
_TXIE	set	0x7CEC
	global	_TXIF
_TXIF	set	0x7CF4
psect	smallconst
	
STR_8:
	db	13
	db	10
	db	67	;'C'
	db	67	;'C'
	db	97	;'a'
	db	108	;'l'
	db	61	;'='
	db	0
	
STR_1:
	db	46
	db	46
	db	46
	db	13
	db	10
	db	0
	
STR_5:
	db	13
	db	10
	db	70	;'F'
	db	49	;'1'
	db	61	;'='
	db	0
	
STR_6:
	db	13
	db	10
	db	70	;'F'
	db	50	;'2'
	db	61	;'='
	db	0
	
STR_7:
	db	13
	db	10
	db	70	;'F'
	db	51	;'3'
	db	61	;'='
	db	0
	
STR_10:
	db	67	;'C'
	db	105	;'i'
	db	110	;'n'
	db	61	;'='
	db	0
	
STR_4:
	db	118	;'v'
	db	97	;'a'
	db	114	;'r'
	db	61	;'='
	db	0
STR_2	equ	STR_1+3
STR_3	equ	STR_1+3
STR_9	equ	STR_1+3
STR_11	equ	STR_1+3
; #config settings
global __CFG_OSCS$OFF
__CFG_OSCS$OFF equ 0x0
global __CFG_OSC$HSPLL
__CFG_OSC$HSPLL equ 0x0
global __CFG_PWRT$ON
__CFG_PWRT$ON equ 0x0
global __CFG_BORV$27
__CFG_BORV$27 equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MUX$ON
__CFG_CCP2MUX$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_STVR$OFF
__CFG_STVR$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
	file	"LC-meter-HD44780_c18.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_rxiptr
_rxiptr:
       ds      1
	global	_rxoptr
_rxoptr:
       ds      1
	global	_ser_tmp
_ser_tmp:
       ds      1
	global	_txiptr
_txiptr:
       ds      1
	global	_txoptr
_txoptr:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	10
	global	_putchar_ptr
_putchar_ptr:
       ds      2
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_rxfifo
_rxfifo:
       ds      16
	global	_txfifo
_txfifo:
       ds      16
	global	_F2
_F2:
       ds      4
	global	_F3
_F3:
       ds      4
	global	_msecs
_msecs:
       ds      4
	global	_seconds
_seconds:
       ds      4
	global	_timer1of
	global	_timer1of
_timer1of:
       ds      4
_blink:
       ds      2
	global	_F1
_F1:
       ds      4
	file	"LC-meter-HD44780_c18.as"
	line	#
psect	cinit
; Clear objects allocated to BANK0 (58 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	58
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (5 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (2 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+1		
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_measure_capacitance$923
_measure_capacitance$923:	; 4 bytes @ 0x0
	ds   4
	global	_measure_capacitance$924
_measure_capacitance$924:	; 4 bytes @ 0x4
	ds   4
	global	_measure_capacitance$925
_measure_capacitance$925:	; 4 bytes @ 0x8
	ds   4
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0xC
	ds   1
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0xD
	ds   2
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0xF
	ds   4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0x0
	global	_exp$940
_exp$940:	; 4 bytes @ 0x0
	ds   4
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x4
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0x4
	ds   2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x6
	ds   1
	global	?_pow
?_pow:	; 4 bytes @ 0x7
	global	pow@x
pow@x:	; 4 bytes @ 0x7
	ds   1
	global	_measure_inductance$926
_measure_inductance$926:	; 4 bytes @ 0x8
	ds   3
	global	pow@y
pow@y:	; 4 bytes @ 0xB
	ds   1
	global	_measure_inductance$930
_measure_inductance$930:	; 4 bytes @ 0xC
	ds   3
	global	_pow$938
_pow$938:	; 4 bytes @ 0xF
	ds   1
	global	_measure_inductance$931
_measure_inductance$931:	; 4 bytes @ 0x10
	ds   3
	global	_pow$939
_pow$939:	; 4 bytes @ 0x13
	ds   1
	global	_measure_inductance$932
_measure_inductance$932:	; 4 bytes @ 0x14
	ds   3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x17
	ds   1
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x18
	global	pow@yi
pow@yi:	; 4 bytes @ 0x18
	ds   1
	global	_measure_inductance$927
_measure_inductance$927:	; 4 bytes @ 0x19
	ds   3
?_format_double:	; 0 bytes @ 0x1C
	global	format_double@num
format_double@num:	; 4 bytes @ 0x1C
	ds   1
	global	_measure_inductance$928
_measure_inductance$928:	; 4 bytes @ 0x1D
	ds   3
	global	_format_double$935
_format_double$935:	; 4 bytes @ 0x20
	ds   1
	global	_measure_inductance$929
_measure_inductance$929:	; 4 bytes @ 0x21
	ds   3
	global	_format_double$936
_format_double$936:	; 4 bytes @ 0x24
	ds   1
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x25
	ds   2
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x27
	ds   1
	global	format_double@weight
format_double@weight:	; 4 bytes @ 0x28
	ds   4
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0x2C
	ds   2
	global	format_double@m
format_double@m:	; 2 bytes @ 0x2E
	ds   2
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ser_putch:	; 0 bytes @ 0x0
?_timer2_init:	; 0 bytes @ 0x0
?_ser_init:	; 0 bytes @ 0x0
?_calibrate:	; 0 bytes @ 0x0
?_measure_capacitance:	; 0 bytes @ 0x0
?_measure_inductance:	; 0 bytes @ 0x0
?_indicator:	; 0 bytes @ 0x0
?_print_unit:	; 0 bytes @ 0x0
?_output_putch:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_format_putchar:	; 0 bytes @ 0x0
?_isr:	; 2 bytes @ 0x0
print_unit@unit:	; 1 bytes @ 0x0
indicator@indicate:	; 1 bytes @ 0x0
format_putchar@c:	; 1 bytes @ 0x0
	ds   2
??_ser_putch:	; 0 bytes @ 0x2
??_timer2_init:	; 0 bytes @ 0x2
??_ser_init:	; 0 bytes @ 0x2
??_indicator:	; 0 bytes @ 0x2
?_print_reading:	; 0 bytes @ 0x2
??_print_unit:	; 0 bytes @ 0x2
??_output_putch:	; 0 bytes @ 0x2
??_format_putchar:	; 0 bytes @ 0x2
?___flge:	; 1 bit 
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	?___flpack
?___flpack:	; 4 bytes @ 0x2
	global	?_frexp
?_frexp:	; 4 bytes @ 0x2
	global	?___flneg
?___flneg:	; 4 bytes @ 0x2
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0x2
	global	ser_putch@c
ser_putch@c:	; 1 bytes @ 0x2
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___flpack@arg
___flpack@arg:	; 4 bytes @ 0x2
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x2
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x2
	global	frexp@value
frexp@value:	; 4 bytes @ 0x2
	ds   1
?_ser_puts:	; 0 bytes @ 0x3
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0x3
	global	ser_puts@s
ser_puts@s:	; 2 bytes @ 0x3
	ds   1
??_print_reading:	; 0 bytes @ 0x4
??_measure_freq:	; 0 bytes @ 0x4
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	ds   1
??_ser_puts:	; 0 bytes @ 0x5
	ds   1
??___wmul:	; 0 bytes @ 0x6
??___flneg:	; 0 bytes @ 0x6
??___lwdiv:	; 0 bytes @ 0x6
??___lwmod:	; 0 bytes @ 0x6
	global	measure_freq@prev
measure_freq@prev:	; 1 bytes @ 0x6
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	global	frexp@eptr
frexp@eptr:	; 2 bytes @ 0x6
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x6
	ds   1
	global	measure_freq@i
measure_freq@i:	; 1 bytes @ 0x7
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds   1
?_delay10ms:	; 0 bytes @ 0x8
??___flpack:	; 0 bytes @ 0x8
??_frexp:	; 0 bytes @ 0x8
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x8
	global	delay10ms@period_10ms
delay10ms@period_10ms:	; 2 bytes @ 0x8
	ds   1
?_format_number:	; 0 bytes @ 0x9
	global	format_number@n
format_number@n:	; 2 bytes @ 0x9
	ds   1
??_delay10ms:	; 0 bytes @ 0xA
??___flge:	; 0 bytes @ 0xA
	global	delay10ms@ms
delay10ms@ms:	; 4 bytes @ 0xA
	ds   1
	global	format_number@base
format_number@base:	; 1 bytes @ 0xB
	ds   1
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0xC
	global	?___awtofl
?___awtofl:	; 4 bytes @ 0xC
	global	?___lltofl
?___lltofl:	; 4 bytes @ 0xC
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0xC
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0xC
	global	___awtofl@c
___awtofl@c:	; 2 bytes @ 0xC
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0xC
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0xC
	global	___lltofl@c
___lltofl@c:	; 4 bytes @ 0xC
	ds   1
??_format_number:	; 0 bytes @ 0xD
	ds   1
	global	delay10ms@run
delay10ms@run:	; 1 bytes @ 0xE
	ds   2
??_calibrate:	; 0 bytes @ 0x10
??___awtofl:	; 0 bytes @ 0x10
??___lltofl:	; 0 bytes @ 0x10
??___lwtofl:	; 0 bytes @ 0x10
	global	___awtofl@sign
___awtofl@sign:	; 1 bytes @ 0x10
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0x10
	ds   1
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0x11
	ds   3
??___fldiv:	; 0 bytes @ 0x14
	global	___fldiv@f3
___fldiv@f3:	; 4 bytes @ 0x14
	ds   4
	global	___fldiv@cntr
___fldiv@cntr:	; 1 bytes @ 0x18
	ds   1
	global	___fldiv@exp
___fldiv@exp:	; 1 bytes @ 0x19
	ds   1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x1A
	ds   1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x1B
	global	___flmul@f1
___flmul@f1:	; 4 bytes @ 0x1B
	ds   4
	global	___flmul@f2
___flmul@f2:	; 4 bytes @ 0x1F
	ds   4
??___flmul:	; 0 bytes @ 0x23
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x23
	ds   1
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x24
	ds   4
	global	___flmul@cntr
___flmul@cntr:	; 1 bytes @ 0x28
	ds   1
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x29
	ds   1
	global	?___fladd
?___fladd:	; 4 bytes @ 0x2A
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x2A
	ds   4
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x2E
	ds   3
	global	_format_number$301
_format_number$301:	; 2 bytes @ 0x31
	ds   1
??___fladd:	; 0 bytes @ 0x32
	ds   1
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x33
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x33
	ds   1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x34
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x34
	ds   1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x35
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0x35
	ds   1
?_format_xint32:	; 0 bytes @ 0x36
	global	?___flsub
?___flsub:	; 4 bytes @ 0x36
	global	?_eval_poly
?_eval_poly:	; 4 bytes @ 0x36
	global	format_xint32@x
format_xint32@x:	; 4 bytes @ 0x36
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x36
	global	eval_poly@x
eval_poly@x:	; 4 bytes @ 0x36
	ds   4
??_format_xint32:	; 0 bytes @ 0x3A
	global	eval_poly@d
eval_poly@d:	; 2 bytes @ 0x3A
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x3A
	ds   2
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x3C
	ds   2
??___flsub:	; 0 bytes @ 0x3E
??_eval_poly:	; 0 bytes @ 0x3E
	ds   4
	global	eval_poly@res
eval_poly@res:	; 4 bytes @ 0x42
	ds   4
	global	?_ldexp
?_ldexp:	; 4 bytes @ 0x46
	global	?_log
?_log:	; 4 bytes @ 0x46
	global	ldexp@value
ldexp@value:	; 4 bytes @ 0x46
	global	log@x
log@x:	; 4 bytes @ 0x46
	ds   4
??_log:	; 0 bytes @ 0x4A
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x4A
	global	log@exponent
log@exponent:	; 2 bytes @ 0x4A
	ds   2
??_ldexp:	; 0 bytes @ 0x4C
	global	?_log10
?_log10:	; 4 bytes @ 0x4C
	global	log10@x
log10@x:	; 4 bytes @ 0x4C
	ds   4
??_log10:	; 0 bytes @ 0x50
	global	_log10$937
_log10$937:	; 4 bytes @ 0x50
	ds   4
	global	?___fltol
?___fltol:	; 4 bytes @ 0x54
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x54
	ds   4
??___fltol:	; 0 bytes @ 0x58
	ds   4
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x5C
	ds   1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x5D
	ds   1
??_measure_inductance:	; 0 bytes @ 0x5E
	global	?___altofl
?___altofl:	; 4 bytes @ 0x5E
	global	___altofl@c
___altofl@c:	; 4 bytes @ 0x5E
	ds   4
??___altofl:	; 0 bytes @ 0x62
	global	___altofl@sign
___altofl@sign:	; 1 bytes @ 0x62
	ds   1
	global	?_floor
?_floor:	; 4 bytes @ 0x63
	global	floor@x
floor@x:	; 4 bytes @ 0x63
	ds   4
??_floor:	; 0 bytes @ 0x67
	global	floor@i
floor@i:	; 4 bytes @ 0x67
	ds   4
	global	floor@expon
floor@expon:	; 2 bytes @ 0x6B
	ds   2
	global	?_exp
?_exp:	; 4 bytes @ 0x6D
	global	exp@x
exp@x:	; 4 bytes @ 0x6D
	ds   4
??_measure_capacitance:	; 0 bytes @ 0x71
??_format_double:	; 0 bytes @ 0x71
??_pow:	; 0 bytes @ 0x71
??_exp:	; 0 bytes @ 0x71
??_main:	; 0 bytes @ 0x71
;!
;!Data Sizes:
;!    Strings     42
;!    Constant    76
;!    Data        2
;!    BSS         63
;!    Persistent  8
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127    113     120
;!    BANK0           128     48     114
;!    BANK1           256     19      19
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(2) Largest target is 40
;!		 -> exp@coeff(CODE[40]), log@coeff(CODE[36]), 
;!
;!    frexp@eptr	PTR int  size(2) Largest target is 2
;!		 -> log@exponent(COMRAM[2]), floor@expon(COMRAM[2]), 
;!
;!    ser_puts@s	PTR const char  size(2) Largest target is 8
;!		 -> STR_11(CODE[3]), STR_10(CODE[5]), STR_9(CODE[3]), STR_8(CODE[8]), 
;!		 -> STR_7(CODE[6]), STR_6(CODE[6]), STR_5(CODE[6]), STR_4(CODE[5]), 
;!		 -> STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[6]), 
;!
;!    putchar_ptr	PTR FTN(char ,)void  size(2) Largest target is 0
;!		 -> format_putchar(), ser_putch(), output_putch(), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _measure_inductance->___fltol
;!    _format_xint32->_format_number
;!    _format_number->___lwdiv
;!    _pow->_exp
;!    _exp->_floor
;!    _ldexp->_eval_poly
;!    _floor->___altofl
;!    ___fltol->_log10
;!    ___altofl->___fltol
;!    ___flsub->___fladd
;!    ___fldiv->___flpack
;!    ___lltofl->___flpack
;!    _log10->_log
;!    _log->_eval_poly
;!    _eval_poly->___fladd
;!    ___flmul->___fldiv
;!    ___fladd->___flmul
;!    ___awtofl->___flpack
;!    _calibrate->___lwtofl
;!    _ser_puts->_ser_putch
;!    _delay10ms->___wmul
;!    ___lwtofl->___flpack
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _measure_capacitance->_format_double
;!    _format_double->_pow
;!    _pow->_exp
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_measure_capacitance
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0  202069
;!                          _calibrate
;!                          _delay10ms
;!                          _indicator
;!                _measure_capacitance
;!                 _measure_inductance
;!                           _ser_init
;!                           _ser_puts
;!                        _timer2_init
;! ---------------------------------------------------------------------------------
;! (1) _timer2_init                                          4     4      0     156
;!                                              2 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _ser_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _measure_inductance                                  55    55      0   22602
;!                                              0 BANK0     43    43      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___lwtofl
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;! ---------------------------------------------------------------------------------
;! (1) _measure_capacitance                                 19    19      0  173255
;!                                              0 BANK1     19    19      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___lwtofl
;!                      _format_double
;!                      _format_xint32
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                          _ser_putch
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _print_unit                                           1     1      0       0
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        2     0      2     130
;!                                              2 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _format_xint32                                        4     0      4    2558
;!                                             54 COMRAM     4     0      4
;!                      _format_number
;!                     _format_putchar *
;!                       _output_putch *
;!                          _ser_putch *
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       45    41      4    2010
;!                                              9 COMRAM    45    41      4
;!                            ___lwdiv
;!                            ___lwmod
;!                     _format_putchar *
;!                       _output_putch *
;!                          _ser_putch *
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     362
;!                                              2 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     371
;!                                              2 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _format_double                                       20    16      4  147690
;!                                             28 BANK0     20    16      4
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                              _floor
;!                     _format_putchar *
;!                              _log10
;!                       _output_putch *
;!                                _pow
;!                          _ser_putch *
;! ---------------------------------------------------------------------------------
;! (3) _pow                                                 21    13      8   82778
;!                                              7 BANK0     21    13      8
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___fltol
;!                           ___lltofl
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _exp                                                 11     7      4   44563
;!                                            109 COMRAM     4     0      4
;!                                              0 BANK0      7     7      0
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _ldexp                                                8     2      6     489
;!                                             70 COMRAM     8     2      6
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _floor                                               10     6      4   10644
;!                                             99 COMRAM    10     6      4
;!                           ___altofl
;!                            ___fladd
;!                            ___fldiv (ARG)
;!                             ___flge
;!                            ___fltol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4     882
;!                                             84 COMRAM    10     6      4
;!                            ___fldiv (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                               8     0      8    1978
;!                                              2 COMRAM     8     0      8
;! ---------------------------------------------------------------------------------
;! (6) ___altofl                                             5     1      4    2446
;!                                             94 COMRAM     5     1      4
;!                           ___flpack
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    5269
;!                                             54 COMRAM     8     0      8
;!                           ___awtofl (ARG)
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___flneg                                              4     0      4     260
;!                                              2 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (2) ___fldiv                                             15     7      8    4021
;!                                             12 COMRAM    15     7      8
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (4) ___lltofl                                             4     0      4    2344
;!                                             12 COMRAM     4     0      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     1      0      62
;!                                              2 COMRAM     1     1      0
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (3) _log10                                                8     4      4   32189
;!                                             76 COMRAM     8     4      4
;!                            ___flmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _log                                                  6     2      4   25582
;!                                             70 COMRAM     6     2      4
;!                           ___awtofl
;!                            ___fladd
;!                            ___flmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) _frexp                                                8     2      6     582
;!                                              2 COMRAM     8     2      6
;! ---------------------------------------------------------------------------------
;! (5) _eval_poly                                           16     8      8   11289
;!                                             54 COMRAM    16     8      8
;!                            ___fladd
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             15     7      8    6432
;!                                             27 COMRAM    15     7      8
;!                           ___awtofl (ARG)
;!                            ___fldiv (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             12     4      8    4213
;!                                             42 COMRAM    12     4      8
;!                           ___awtofl (ARG)
;!                            ___flmul (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___awtofl                                             9     5      4    2686
;!                                             12 COMRAM     5     1      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (3) _format_putchar                                       1     1      0       0
;! ---------------------------------------------------------------------------------
;! (1) _indicator                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0    4480
;!                           ___lwtofl
;!                          _delay10ms
;!                       _measure_freq
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (1) _ser_puts                                             2     0      2     791
;!                                              3 COMRAM     2     0      2
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (2) _ser_putch                                            1     1      0      31
;!                                              2 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         8     6      2     235
;!                                              2 COMRAM     8     6      2
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            7     5      2     785
;!                                              8 COMRAM     7     5      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     198
;!                                              2 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwtofl                                             4     0      4    2669
;!                                             12 COMRAM     4     0      4
;!                           ___flpack
;!                       _measure_freq (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___flpack                                            10     4      6    2248
;!                                              2 COMRAM    10     4      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _isr                                                  2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _calibrate
;!     ___lwtofl
;!       ___flpack
;!       _measure_freq (ARG)
;!     _delay10ms
;!       ___wmul
;!     _measure_freq
;!     _ser_puts
;!       _ser_putch
;!   _delay10ms
;!     ___wmul
;!   _indicator
;!   _measure_capacitance
;!     ___fldiv
;!       ___flpack
;!     ___flge
;!     ___flmul
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fldiv (ARG)
;!         ___flpack
;!       ___flpack (ARG)
;!       _frexp (ARG)
;!     ___flsub
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!     ___fltol
;!       ___fldiv (ARG)
;!         ___flpack
;!       _log10 (ARG)
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     ___lwtofl
;!       ___flpack
;!       _measure_freq (ARG)
;!     _format_double
;!       ___awtofl
;!         ___flpack
;!       ___fldiv
;!         ___flpack
;!       ___flge
;!       ___flmul
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flsub
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___flmul (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!       ___fltol
;!         ___fldiv (ARG)
;!           ___flpack
;!         _log10 (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _log
;!             ___awtofl
;!               ___flpack
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!             _frexp
;!       _floor
;!         ___altofl
;!           ___flpack
;!           ___fltol (ARG)
;!             ___fldiv (ARG)
;!               ___flpack
;!             _log10 (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               _log
;!                 ___awtofl
;!                   ___flpack
;!                 ___fladd
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___flmul (ARG)
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 _eval_poly
;!                   ___fladd
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___flmul (ARG)
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flmul
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                 _frexp
;!         ___fladd
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___flmul (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flge (ARG)
;!         ___fltol (ARG)
;!           ___fldiv (ARG)
;!             ___flpack
;!           _log10 (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _log
;!               ___awtofl
;!                 ___flpack
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___fladd
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___flmul (ARG)
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!               _frexp
;!         _frexp (ARG)
;!       _format_putchar *
;!       _log10 *
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!       _output_putch *
;!         _ser_putch
;!       _pow *
;!         ___flge
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flneg
;!         ___fltol
;!           ___fldiv (ARG)
;!             ___flpack
;!           _log10 (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _log
;!               ___awtofl
;!                 ___flpack
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___fladd
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___flmul (ARG)
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!               _frexp
;!         ___lltofl
;!           ___flpack
;!         _exp
;!           ___awtofl
;!             ___flpack
;!           ___fldiv
;!             ___flpack
;!           ___flge
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flneg
;!           ___flsub
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fladd (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           ___fltol
;!             ___fldiv (ARG)
;!               ___flpack
;!             _log10 (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               _log
;!                 ___awtofl
;!                   ___flpack
;!                 ___fladd
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___flmul (ARG)
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 _eval_poly
;!                   ___fladd
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___flmul (ARG)
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flmul
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                 _frexp
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _floor
;!             ___altofl
;!               ___flpack
;!               ___fltol (ARG)
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 _log10 (ARG)
;!                   ___flmul
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   _log
;!                     ___awtofl
;!                       ___flpack
;!                     ___fladd
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___flmul (ARG)
;!                         ___awtofl (ARG)
;!                           ___flpack
;!                         ___fldiv (ARG)
;!                           ___flpack
;!                         ___flpack (ARG)
;!                         _frexp (ARG)
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flmul
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     _eval_poly
;!                       ___fladd
;!                         ___awtofl (ARG)
;!                           ___flpack
;!                         ___flmul (ARG)
;!                           ___awtofl (ARG)
;!                             ___flpack
;!                           ___fldiv (ARG)
;!                             ___flpack
;!                           ___flpack (ARG)
;!                           _frexp (ARG)
;!                         ___flpack (ARG)
;!                         _frexp (ARG)
;!                       ___flmul
;!                         ___awtofl (ARG)
;!                           ___flpack
;!                         ___fldiv (ARG)
;!                           ___flpack
;!                         ___flpack (ARG)
;!                         _frexp (ARG)
;!                     _frexp
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flge (ARG)
;!             ___fltol (ARG)
;!               ___fldiv (ARG)
;!                 ___flpack
;!               _log10 (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 _log
;!                   ___awtofl
;!                     ___flpack
;!                   ___fladd
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___flmul (ARG)
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flmul
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   _eval_poly
;!                     ___fladd
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___flmul (ARG)
;!                         ___awtofl (ARG)
;!                           ___flpack
;!                         ___fldiv (ARG)
;!                           ___flpack
;!                         ___flpack (ARG)
;!                         _frexp (ARG)
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flmul
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                   _frexp
;!             _frexp (ARG)
;!           _ldexp
;!             _eval_poly (ARG)
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!           _log (ARG)
;!             ___awtofl
;!               ___flpack
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!             _frexp
;!         _log
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!       _ser_putch *
;!     _format_xint32
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _output_putch *
;!           _ser_putch
;!         _ser_putch *
;!       _format_putchar *
;!       _output_putch *
;!         _ser_putch
;!       _ser_putch *
;!     _measure_freq
;!     _print_reading
;!     _print_unit
;!     _ser_putch
;!     _ser_puts
;!       _ser_putch
;!   _measure_inductance
;!     ___fldiv
;!       ___flpack
;!     ___flge
;!     ___flmul
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fldiv (ARG)
;!         ___flpack
;!       ___flpack (ARG)
;!       _frexp (ARG)
;!     ___flsub
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!     ___fltol
;!       ___fldiv (ARG)
;!         ___flpack
;!       _log10 (ARG)
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     ___lwtofl
;!       ___flpack
;!       _measure_freq (ARG)
;!     _measure_freq
;!     _print_reading
;!     _print_unit
;!   _ser_init
;!   _ser_puts
;!     _ser_putch
;!   _timer2_init
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      17        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BANK5              100      0       0      14        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     13      13       7        7.4%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     30      72       5       89.1%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     71      78       1       94.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      FD      15        0.0%
;!DATA                 0      0      FD       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 115 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_calibrate
;;		_delay10ms
;;		_indicator
;;		_measure_capacitance
;;		_measure_inductance
;;		_ser_init
;;		_ser_puts
;;		_timer2_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	115
global __ptext0
__ptext0:
psect	text0
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	115
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	116
	
l3683:
;LC-meter.c: 116: bres = msecpart = msecs = seconds = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_seconds))&0ffh	;volatile
	movlw	high(0)
	movwf	((_seconds+1))&0ffh	;volatile
	movlw	low highword(0)
	movwf	((_seconds+2))&0ffh	;volatile
	movlw	high highword(0)
	movwf	((_seconds+3))&0ffh	;volatile
	movff	(_seconds),(_msecs)	;volatile
	movff	(_seconds+1),(_msecs+1)	;volatile
	movff	(_seconds+2),(_msecs+2)	;volatile
	movff	(_seconds+3),(_msecs+3)	;volatile
	movff	(_msecs),(_msecpart)	;volatile
	movff	(_msecs+1),(_msecpart+1)	;volatile
	movff	(_msecpart),(_bres)	;volatile
	movff	(_msecpart+1),(_bres+1)	;volatile
	line	118
;LC-meter.c: 118: CCal = 1000;
	movlw	low(1000.0000000000000)
	movwf	((_CCal))&0ffh
	movlw	high(1000.0000000000000)
	movwf	((_CCal+1))&0ffh
	movlw	low highword(1000.0000000000000)
	movwf	((_CCal+2))&0ffh
	movlw	high highword(1000.0000000000000)
	movwf	((_CCal+3))&0ffh
	line	127
;LC-meter.c: 127: TRISA = 0b11001111;
	movlw	low(0CFh)
	movwf	((c:3986)),c	;volatile
	line	129
	
l3685:; BSR set to: 0

;LC-meter.c: 129: T0CS = 1;
	bsf	c:(32429/8),(32429)&7	;volatile
	line	130
	
l3687:; BSR set to: 0

;LC-meter.c: 130: T0SE = 1;
	bsf	c:(32428/8),(32428)&7	;volatile
	line	141
	
l3689:; BSR set to: 0

;LC-meter.c: 141: NOT_RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	144
	
l3691:; BSR set to: 0

;LC-meter.c: 144: TRISC3 = 0;
	bcf	c:(31907/8),(31907)&7	;volatile
	line	145
	
l3693:; BSR set to: 0

;LC-meter.c: 145: LATC3 = ((1) == 0);
	bcf	c:(31835/8),(31835)&7	;volatile
	line	147
	
l3695:; BSR set to: 0

;LC-meter.c: 147: SSPEN = 0;
	bcf	c:(32309/8),(32309)&7	;volatile
	line	152
	
l3697:; BSR set to: 0

;LC-meter.c: 152: timer2_init(0b000 | 0x80);
	movlw	(080h)&0ffh
	
	call	_timer2_init
	line	157
	
l3699:
;LC-meter.c: 157: TRISC1 = 0;
	bcf	c:(31905/8),(31905)&7	;volatile
	line	160
	
l3701:
;LC-meter.c: 160: TRISC3 = 0;
	bcf	c:(31907/8),(31907)&7	;volatile
	line	162
	
l3703:
;LC-meter.c: 162: TRISC0 = 1;
	bsf	c:(31904/8),(31904)&7	;volatile
	line	163
	
l3705:
;LC-meter.c: 163: TRISC2 = 1;
	bsf	c:(31906/8),(31906)&7	;volatile
	line	173
	
l3707:
;LC-meter.c: 173: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	174
	
l3709:
;LC-meter.c: 174: TRISC5 = 0;
	bcf	c:(31909/8),(31909)&7	;volatile
	line	176
	
l3711:
;LC-meter.c: 176: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	177
	
l3713:
;LC-meter.c: 177: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	178
	
l3715:; BSR set to: 0

;LC-meter.c: 178: LATC5 = 1;
	bsf	c:(31837/8),(31837)&7	;volatile
	line	179
	
l3717:; BSR set to: 0

;LC-meter.c: 179: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	180
	
l3719:; BSR set to: 0

;LC-meter.c: 180: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	181
	
l3721:; BSR set to: 0

;LC-meter.c: 181: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	182
	
l3723:; BSR set to: 0

;LC-meter.c: 182: LATC5 = 1;
	bsf	c:(31837/8),(31837)&7	;volatile
	line	183
	
l3725:; BSR set to: 0

;LC-meter.c: 183: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	184
	
l3727:; BSR set to: 0

;LC-meter.c: 184: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	187
	
l3729:; BSR set to: 0

;LC-meter.c: 187: ser_init();
	call	_ser_init	;wreg free
	line	192
	
l3731:; BSR set to: 0

;LC-meter.c: 192: TRISC &= ~0b01000000;
	bcf	(0+(6/8)+(c:3988)),c,(6)&7	;volatile
	line	194
	
l3733:; BSR set to: 0

;LC-meter.c: 194: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	195
	
l3735:; BSR set to: 0

;LC-meter.c: 195: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	214
	
l3737:; BSR set to: 0

;LC-meter.c: 214: delay10ms(200);
	movlw	high(0C8h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(0C8h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	217
	
l3739:; BSR set to: 0

;LC-meter.c: 217: calibrate();
	call	_calibrate	;wreg free
	line	230
	
l3741:
;LC-meter.c: 230: ser_puts("...\r\n");
		movlw	low(STR_1)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_1)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	231
	
l3743:
;LC-meter.c: 231: if(LATC4)
	btfss	c:(31836/8),(31836)&7	;volatile
	goto	u3621
	goto	u3620
u3621:
	goto	l3747
u3620:
	line	232
	
l3745:
;LC-meter.c: 232: measure_capacitance();
	call	_measure_capacitance	;wreg free
	goto	l3749
	line	234
	
l3747:
;LC-meter.c: 233: else
;LC-meter.c: 234: measure_inductance();
	call	_measure_inductance	;wreg free
	line	236
	
l3749:
;LC-meter.c: 236: indicator(1);
	movlw	(01h)&0ffh
	
	call	_indicator
	line	237
	
l3751:
;LC-meter.c: 237: delay10ms(30);
	movlw	high(01Eh)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(01Eh)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	238
;LC-meter.c: 238: indicator(0);
	movlw	(0)&0ffh
	
	call	_indicator
	line	239
	
l3753:
;LC-meter.c: 239: delay10ms(20);
	movlw	high(014h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(014h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	240
;LC-meter.c: 240: }
	goto	l3741
	global	start
	goto	start
	opt stack 0
	line	241
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_timer2_init

;; *************** function _timer2_init *****************
;; Defined at:
;;		line 81 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1    3[COMRAM] unsigned char 
;;  postscaler      1    0        unsigned char 
;;  ps              1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\timer.c"
	line	81
global __ptext1
__ptext1:
psect	text1
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\timer.c"
	line	81
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:; BSR set to: 0

;incstack = 0
	opt	stack 29
	dw	0FFFFh
;timer2_init@ps_mode stored from wreg
	movwf	((c:timer2_init@ps_mode)),c
	line	82
	
l2653:; BSR set to: 0

;timer.c: 82: unsigned char ps = ps_mode & 0b1111;
	movf	((c:timer2_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer2_init@ps)),c
	line	83
	
l2655:; BSR set to: 0

	line	86
	
l2657:; BSR set to: 0

;timer.c: 86: TOUTPS0 = postscaler & 1;
	bcf	c:(32339/8),(32339)&7	;volatile
	line	87
;timer.c: 87: TOUTPS1 = (postscaler >> 1) & 1;
	bcf	c:(32340/8),(32340)&7	;volatile
	line	88
;timer.c: 88: TOUTPS2 = (postscaler >> 2) & 1;
	bcf	c:(32341/8),(32341)&7	;volatile
	line	90
;timer.c: 90: T2CKPS0 = (ps >> 1) & 1;
	movff	(c:timer2_init@ps),??_timer2_init+0+0
	bcf	status,0
	rrcf	(??_timer2_init+0+0),c

	rrcf	(??_timer2_init+0+0),c,w
	btfsc	status,0
	bra	u2315
	bcf	c:(32336/8),(32336)&7	;volatile
	bra	u2316
	u2315:
	bsf	c:(32336/8),(32336)&7	;volatile
	u2316:

	line	91
;timer.c: 91: T2CKPS1 = (ps >> 2) & 1;
	movff	(c:timer2_init@ps),??_timer2_init+0+0
	bcf	status,0
	rrcf	(??_timer2_init+0+0),c
	bcf	status,0
	rrcf	(??_timer2_init+0+0),c

	rrcf	(??_timer2_init+0+0),c,w
	btfsc	status,0
	bra	u2325
	bcf	c:(32337/8),(32337)&7	;volatile
	bra	u2326
	u2325:
	bsf	c:(32337/8),(32337)&7	;volatile
	u2326:

	line	93
	
l2659:
;timer.c: 93: TMR2 = 0;
	clrf	((c:4044)),c	;volatile
	line	95
	
l2661:
;timer.c: 95: TMR2ON = 1;
	bsf	c:(32338/8),(32338)&7	;volatile
	line	97
	
l2663:
;timer.c: 97: TMR2IF = 0;
	bcf	c:(31985/8),(31985)&7	;volatile
	line	98
	
l2665:
;timer.c: 98: TMR2IE = !!(ps_mode & 0x80);
	
	btfsc	((c:timer2_init@ps_mode)),c,(7)&7
	goto	u2331
	goto	u2330
u2331:
	bsf	c:(31977/8),(31977)&7	;volatile
	goto	u2345
u2330:
	bcf	c:(31977/8),(31977)&7	;volatile
u2345:
	line	99
	
l326:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
	signat	_timer2_init,4216
	global	_ser_init

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
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	125
global __ptext2
__ptext2:
psect	text2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	125
	global	__size_of_ser_init
	__size_of_ser_init	equ	__end_of_ser_init-_ser_init
	
_ser_init:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	128
	
l2667:; BSR set to: 0

;ser.c: 128: TRISC6 = 1;
	bsf	c:(31910/8),(31910)&7	;volatile
	line	129
;ser.c: 129: LATC7 = 1;
	bsf	c:(31839/8),(31839)&7	;volatile
	line	131
;ser.c: 131: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	136
	
l2669:; BSR set to: 0

;ser.c: 136: SPBRG = ser_brg;
	movlw	low(01Fh)
	movwf	((c:4015)),c	;volatile
	line	139
	
l2671:; BSR set to: 0

;ser.c: 139: TX9 = 0;
	bcf	c:(32102/8),(32102)&7	;volatile
	line	140
	
l2673:; BSR set to: 0

;ser.c: 140: RX9 = 0;
	bcf	c:(32094/8),(32094)&7	;volatile
	line	142
	
l2675:; BSR set to: 0

;ser.c: 142: SYNC = 0;
	bcf	c:(32100/8),(32100)&7	;volatile
	line	143
	
l2677:; BSR set to: 0

;ser.c: 143: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	144
	
l2679:; BSR set to: 0

;ser.c: 144: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	145
	
l2681:; BSR set to: 0

;ser.c: 145: TXIE = 0;
	bcf	c:(31980/8),(31980)&7	;volatile
	line	147
	
l2683:; BSR set to: 0

;ser.c: 147: TXEN = 1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	148
	
l2685:; BSR set to: 0

;ser.c: 148: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	150
	
l2687:; BSR set to: 0

;ser.c: 150: rxiptr = rxoptr = txiptr = txoptr = 0;
	clrf	((c:_txoptr)),c	;volatile
	clrf	((c:_txiptr)),c	;volatile
	clrf	((c:_rxoptr)),c	;volatile
	clrf	((c:_rxiptr)),c	;volatile
	line	151
	
l305:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ser_init
	__end_of_ser_init:
	signat	_ser_init,88
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 469 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   39[BANK0 ] unsigned char 
;;  denominator     4    4[BANK0 ] unsigned char 
;;  numerator       4    0[BANK0 ] unsigned char 
;;  var             2   37[BANK0 ] unsigned short 
;;  unit            1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      43       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      43       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___lwtofl
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	469
global __ptext3
__ptext3:
psect	text3
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	469
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	479
	
l3653:
;LC-meter.c: 470: unsigned char unit;
;LC-meter.c: 471: unsigned short int var;
;LC-meter.c: 473: double Lin, numerator, denominator;
;LC-meter.c: 479: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_inductance@var)
	movff	1+?_measure_freq,(measure_inductance@var+1)
	line	481
;LC-meter.c: 481: F3 = (double)var;
	movff	(measure_inductance@var),(c:___lwtofl@c)
	movff	(measure_inductance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	482
;LC-meter.c: 482: if(F3 > F1)
	movff	(_F1),(c:___flge@ff1)
	movff	(_F1+1),(c:___flge@ff1+1)
	movff	(_F1+2),(c:___flge@ff1+2)
	movff	(_F1+3),(c:___flge@ff1+3)
	movff	(_F3),(c:___flge@ff2)
	movff	(_F3+1),(c:___flge@ff2+1)
	movff	(_F3+2),(c:___flge@ff2+2)
	movff	(_F3+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3581
	goto	u3580
u3581:
	goto	l3657
u3580:
	line	483
	
l3655:
;LC-meter.c: 483: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	485
	
l3657:
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F2),(c:___flsub@f2)
	movff	(_F2+1),(c:___flsub@f2+1)
	movff	(_F2+2),(c:___flsub@f2+2)
	movff	(_F2+3),(c:___flsub@f2+3)
	movff	(_F2),(c:___flsub@f1)
	movff	(_F2+1),(c:___flsub@f1+1)
	movff	(_F2+2),(c:___flsub@f1+2)
	movff	(_F2+3),(c:___flsub@f1+3)
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$926)
	movff	1+?___flsub,(_measure_inductance$926+1)
	movff	2+?___flsub,(_measure_inductance$926+2)
	movff	3+?___flsub,(_measure_inductance$926+3)
	
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$926),(c:___flsub@f2)
	movff	(_measure_inductance$926+1),(c:___flsub@f2+1)
	movff	(_measure_inductance$926+2),(c:___flsub@f2+2)
	movff	(_measure_inductance$926+3),(c:___flsub@f2+3)
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f1)
	movff	1+?___flmul,(c:___flsub@f1+1)
	movff	2+?___flmul,(c:___flsub@f1+2)
	movff	3+?___flmul,(c:___flsub@f1+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$927)
	movff	1+?___flsub,(_measure_inductance$927+1)
	movff	2+?___flsub,(_measure_inductance$927+2)
	movff	3+?___flsub,(_measure_inductance$927+3)
	
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_F3),(c:___flmul@f1)
	movff	(_F3+1),(c:___flmul@f1+1)
	movff	(_F3+2),(c:___flmul@f1+2)
	movff	(_F3+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f2)
	movff	1+?___flmul,(c:___flsub@f2+1)
	movff	2+?___flmul,(c:___flsub@f2+2)
	movff	3+?___flmul,(c:___flsub@f2+3)
	
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f1)
	movff	1+?___flmul,(c:___flsub@f1+1)
	movff	2+?___flmul,(c:___flsub@f1+2)
	movff	3+?___flmul,(c:___flsub@f1+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$928)
	movff	1+?___flsub,(_measure_inductance$928+1)
	movff	2+?___flsub,(_measure_inductance$928+2)
	movff	3+?___flsub,(_measure_inductance$928+3)
	
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$927),(c:___flmul@f2)
	movff	(_measure_inductance$927+1),(c:___flmul@f2+1)
	movff	(_measure_inductance$927+2),(c:___flmul@f2+2)
	movff	(_measure_inductance$927+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$928),(c:___flmul@f1)
	movff	(_measure_inductance$928+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$928+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$928+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$929)
	movff	1+?___flmul,(_measure_inductance$929+1)
	movff	2+?___flmul,(_measure_inductance$929+2)
	movff	3+?___flmul,(_measure_inductance$929+3)
	
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$929),(c:___flmul@f1)
	movff	(_measure_inductance$929+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$929+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$929+3),(c:___flmul@f1+3)
	movlw	low(10000.000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(10000.000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(10000.000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(10000.000000000000)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@numerator)
	movff	1+?___flmul,(measure_inductance@numerator+1)
	movff	2+?___flmul,(measure_inductance@numerator+2)
	movff	3+?___flmul,(measure_inductance@numerator+3)
	
	line	487
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$930)
	movff	1+?___flmul,(_measure_inductance$930+1)
	movff	2+?___flmul,(_measure_inductance$930+2)
	movff	3+?___flmul,(_measure_inductance$930+3)
	
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$930),(c:___flmul@f1)
	movff	(_measure_inductance$930+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$930+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$930+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$927)
	movff	1+?___flmul,(_measure_inductance$927+1)
	movff	2+?___flmul,(_measure_inductance$927+2)
	movff	3+?___flmul,(_measure_inductance$927+3)
	
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$927),(c:___flmul@f1)
	movff	(_measure_inductance$927+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$927+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$927+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$928)
	movff	1+?___flmul,(_measure_inductance$928+1)
	movff	2+?___flmul,(_measure_inductance$928+2)
	movff	3+?___flmul,(_measure_inductance$928+3)
	
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$928),(c:___flmul@f1)
	movff	(_measure_inductance$928+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$928+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$928+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$929)
	movff	1+?___flmul,(_measure_inductance$929+1)
	movff	2+?___flmul,(_measure_inductance$929+2)
	movff	3+?___flmul,(_measure_inductance$929+3)
	
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$929),(c:___flmul@f1)
	movff	(_measure_inductance$929+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$929+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$929+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$931)
	movff	1+?___flmul,(_measure_inductance$931+1)
	movff	2+?___flmul,(_measure_inductance$931+2)
	movff	3+?___flmul,(_measure_inductance$931+3)
	
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_CCal),(c:___flmul@f2)
	movff	(_CCal+1),(c:___flmul@f2+1)
	movff	(_CCal+2),(c:___flmul@f2+2)
	movff	(_CCal+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$931),(c:___flmul@f1)
	movff	(_measure_inductance$931+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$931+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$931+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$932)
	movff	1+?___flmul,(_measure_inductance$932+1)
	movff	2+?___flmul,(_measure_inductance$932+2)
	movff	3+?___flmul,(_measure_inductance$932+3)
	
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_measure_inductance$932),(c:___flmul@f1)
	movff	(_measure_inductance$932+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$932+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$932+3),(c:___flmul@f1+3)
	movlw	low(39.478417604357432)
	movwf	((c:___flmul@f2)),c
	movlw	high(39.478417604357432)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(39.478417604357432)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(39.478417604357432)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@denominator)
	movff	1+?___flmul,(measure_inductance@denominator+1)
	movff	2+?___flmul,(measure_inductance@denominator+2)
	movff	3+?___flmul,(measure_inductance@denominator+3)
	
	line	489
;LC-meter.c: 489: Lin = (numerator / denominator) * 1e+15l;
	movff	(measure_inductance@denominator),(c:___fldiv@f1)
	movff	(measure_inductance@denominator+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@denominator+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@denominator+3),(c:___fldiv@f1+3)
	movff	(measure_inductance@numerator),(c:___fldiv@f2)
	movff	(measure_inductance@numerator+1),(c:___fldiv@f2+1)
	movff	(measure_inductance@numerator+2),(c:___fldiv@f2+2)
	movff	(measure_inductance@numerator+3),(c:___fldiv@f2+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:___flmul@f1)
	movff	1+?___fldiv,(c:___flmul@f1+1)
	movff	2+?___fldiv,(c:___flmul@f1+2)
	movff	3+?___fldiv,(c:___flmul@f1+3)
	
	movlw	low(1000000000000000.0)
	movwf	((c:___flmul@f2)),c
	movlw	high(1000000000000000.0)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(1000000000000000.0)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(1000000000000000.0)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@Lin)
	movff	1+?___flmul,(measure_inductance@Lin+1)
	movff	2+?___flmul,(measure_inductance@Lin+2)
	movff	3+?___flmul,(measure_inductance@Lin+3)
	
	line	491
;LC-meter.c: 491: if(Lin > 999) {
	movlw	low(999.00000000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999.00000000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999.00000000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999.00000000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3591
	goto	u3590
u3591:
	goto	l3675
u3590:
	line	492
	
l3659:
;LC-meter.c: 492: if(Lin > (999e+03l)) {
	movlw	low(999000.00000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000.00000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000.00000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000.00000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3601
	goto	u3600
u3601:
	goto	l3671
u3600:
	line	493
	
l3661:
;LC-meter.c: 493: if(Lin > (999e+06l)) {
	movlw	low(999000000.00000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000000.00000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000000.00000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000000.00000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3611
	goto	u3610
u3611:
	goto	l3667
u3610:
	line	494
	
l3663:
;LC-meter.c: 494: Lin = Lin / (1e+09l);
	movff	(measure_inductance@Lin),(c:___fldiv@f2)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f2+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f2+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f2+3)
	movlw	low(1000000000.0000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1000000000.0000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1000000000.0000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1000000000.0000000)
	movwf	((c:___fldiv@f1+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	495
	
l3665:
;LC-meter.c: 495: unit = 0;
	movlb	0	; () banked
	clrf	((measure_inductance@unit))&0ffh
	line	496
;LC-meter.c: 496: } else {
	goto	l3677
	line	497
	
l3667:
;LC-meter.c: 497: Lin = Lin / (1e+06l);
	movff	(measure_inductance@Lin),(c:___fldiv@f2)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f2+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f2+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f2+3)
	movlw	low(1000000.0000000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1000000.0000000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1000000.0000000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1000000.0000000000)
	movwf	((c:___fldiv@f1+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	498
	
l3669:
;LC-meter.c: 498: unit = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l3677
	line	501
	
l3671:
;LC-meter.c: 501: Lin = Lin / 1e+03l;
	movff	(measure_inductance@Lin),(c:___fldiv@f2)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f2+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f2+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f2+3)
	movlw	low(1000.0000000000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1000.0000000000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1000.0000000000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1000.0000000000000)
	movwf	((c:___fldiv@f1+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	502
	
l3673:
;LC-meter.c: 502: unit = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l3677
	line	505
	
l3675:
;LC-meter.c: 505: unit = 3;
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	line	507
	
l3677:; BSR set to: 0

;LC-meter.c: 507: Lin = Lin * 100;
	movff	(measure_inductance@Lin),(c:___flmul@f1)
	movff	(measure_inductance@Lin+1),(c:___flmul@f1+1)
	movff	(measure_inductance@Lin+2),(c:___flmul@f1+2)
	movff	(measure_inductance@Lin+3),(c:___flmul@f1+3)
	movlw	low(100.00000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(100.00000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(100.00000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(100.00000000000000)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@Lin)
	movff	1+?___flmul,(measure_inductance@Lin+1)
	movff	2+?___flmul,(measure_inductance@Lin+2)
	movff	3+?___flmul,(measure_inductance@Lin+3)
	
	line	508
	
l3679:
;LC-meter.c: 508: var = (unsigned short int)Lin;
	movff	(measure_inductance@Lin),(c:___fltol@f1)
	movff	(measure_inductance@Lin+1),(c:___fltol@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fltol@f1+2)
	movff	(measure_inductance@Lin+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_inductance@var)
	movff	1+?___fltol,(measure_inductance@var+1)
	line	510
	
l3681:
;LC-meter.c: 510: print_reading(var);
	movff	(measure_inductance@var),(c:print_reading@measurement)
	movff	(measure_inductance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	511
;LC-meter.c: 511: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_inductance@unit))&0ffh,w
	
	call	_print_unit
	line	512
	
l179:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,88
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 391 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   15[BANK1 ] unsigned char 
;;  var             2   13[BANK1 ] unsigned short 
;;  unit            1   12[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0      19       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0      19       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___lwtofl
;;		_format_double
;;		_format_xint32
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_ser_putch
;;		_ser_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	391
global __ptext4
__ptext4:
psect	text4
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	391
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	402
	
l3567:
;LC-meter.c: 392: unsigned char unit;
;LC-meter.c: 393: unsigned short int var;
;LC-meter.c: 395: double Cin;
;LC-meter.c: 402: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_capacitance@var)
	movff	1+?_measure_freq,(measure_capacitance@var+1)
	line	404
;LC-meter.c: 404: F3 = (double)var;
	movff	(measure_capacitance@var),(c:___lwtofl@c)
	movff	(measure_capacitance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	406
	
l3569:
;LC-meter.c: 406: putchar_ptr = &ser_putch;
		movlw	low(_ser_putch)
	movwf	((c:_putchar_ptr)),c
	movlw	high(_ser_putch)
	movwf	((c:_putchar_ptr+1)),c

	line	407
	
l3571:
;LC-meter.c: 407: ser_puts("var=");
		movlw	low(STR_4)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_4)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	408
	
l3573:
;LC-meter.c: 408: format_xint32( var);
	movff	(measure_capacitance@var),(c:format_xint32@x)
	movff	(measure_capacitance@var+1),(c:format_xint32@x+1)
	clrf	((c:format_xint32@x+2)),c
	clrf	((c:format_xint32@x+3)),c

	call	_format_xint32	;wreg free
	line	409
	
l3575:
;LC-meter.c: 409: ser_puts("\r\nF1=");
		movlw	low(STR_5)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_5)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	410
	
l3577:
;LC-meter.c: 410: format_double( F1);
	movff	(_F1),(format_double@num)
	movff	(_F1+1),(format_double@num+1)
	movff	(_F1+2),(format_double@num+2)
	movff	(_F1+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	411
	
l3579:
;LC-meter.c: 411: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	412
	
l3581:
;LC-meter.c: 412: format_xint32( *(unsigned long int*)&F1);
	movff	(_F1),(c:format_xint32@x)
	movff	(_F1+1),(c:format_xint32@x+1)
	movff	(_F1+2),(c:format_xint32@x+2)
	movff	(_F1+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	413
	
l3583:
;LC-meter.c: 413: ser_puts("\r\nF2=");
		movlw	low(STR_6)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_6)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	414
	
l3585:
;LC-meter.c: 414: format_double( F2);
	movff	(_F2),(format_double@num)
	movff	(_F2+1),(format_double@num+1)
	movff	(_F2+2),(format_double@num+2)
	movff	(_F2+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	415
	
l3587:
;LC-meter.c: 415: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	416
	
l3589:
;LC-meter.c: 416: format_xint32( *(unsigned long int*)&F2);
	movff	(_F2),(c:format_xint32@x)
	movff	(_F2+1),(c:format_xint32@x+1)
	movff	(_F2+2),(c:format_xint32@x+2)
	movff	(_F2+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	417
	
l3591:
;LC-meter.c: 417: ser_puts("\r\nF3=");
		movlw	low(STR_7)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_7)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	418
	
l3593:
;LC-meter.c: 418: format_double( F3);
	movff	(_F3),(format_double@num)
	movff	(_F3+1),(format_double@num+1)
	movff	(_F3+2),(format_double@num+2)
	movff	(_F3+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	419
	
l3595:
;LC-meter.c: 419: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	420
	
l3597:
;LC-meter.c: 420: format_xint32( *(unsigned long int*)&F3);
	movff	(_F3),(c:format_xint32@x)
	movff	(_F3+1),(c:format_xint32@x+1)
	movff	(_F3+2),(c:format_xint32@x+2)
	movff	(_F3+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	421
	
l3599:
;LC-meter.c: 421: ser_puts("\r\nCCal=");
		movlw	low(STR_8)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_8)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	422
	
l3601:
;LC-meter.c: 422: format_double( CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	movff	(_CCal+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	423
	
l3603:
;LC-meter.c: 423: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	424
	
l3605:
;LC-meter.c: 424: format_xint32( *(unsigned long int*)&CCal);
	movff	(_CCal),(c:format_xint32@x)
	movff	(_CCal+1),(c:format_xint32@x+1)
	movff	(_CCal+2),(c:format_xint32@x+2)
	movff	(_CCal+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	425
	
l3607:
;LC-meter.c: 425: ser_puts("\r\n");
		movlw	low(STR_9)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_9)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	427
	
l3609:
;LC-meter.c: 427: putchar_ptr = &output_putch;
		movlw	low(_output_putch)
	movwf	((c:_putchar_ptr)),c
	movlw	high(_output_putch)
	movwf	((c:_putchar_ptr+1)),c

	line	429
	
l3611:
;LC-meter.c: 429: if(F3 > F1)
	movff	(_F1),(c:___flge@ff1)
	movff	(_F1+1),(c:___flge@ff1+1)
	movff	(_F1+2),(c:___flge@ff1+2)
	movff	(_F1+3),(c:___flge@ff1+3)
	movff	(_F3),(c:___flge@ff2)
	movff	(_F3+1),(c:___flge@ff2+1)
	movff	(_F3+2),(c:___flge@ff2+2)
	movff	(_F3+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3541
	goto	u3540
u3541:
	goto	l3615
u3540:
	line	430
	
l3613:
;LC-meter.c: 430: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	432
	
l3615:
;LC-meter.c: 432: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_F3),(c:___flmul@f1)
	movff	(_F3+1),(c:___flmul@f1+1)
	movff	(_F3+2),(c:___flmul@f1+2)
	movff	(_F3+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f2)
	movff	1+?___flmul,(c:___flsub@f2+1)
	movff	2+?___flmul,(c:___flsub@f2+2)
	movff	3+?___flmul,(c:___flsub@f2+3)
	
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f1)
	movff	1+?___flmul,(c:___flsub@f1+1)
	movff	2+?___flmul,(c:___flsub@f1+2)
	movff	3+?___flmul,(c:___flsub@f1+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_capacitance$923)
	movff	1+?___flsub,(_measure_capacitance$923+1)
	movff	2+?___flsub,(_measure_capacitance$923+2)
	movff	3+?___flsub,(_measure_capacitance$923+3)
	
;LC-meter.c: 432: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$923),(c:___flmul@f1)
	movff	(_measure_capacitance$923+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$923+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$923+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$924)
	movff	1+?___flmul,(_measure_capacitance$924+1)
	movff	2+?___flmul,(_measure_capacitance$924+2)
	movff	3+?___flmul,(_measure_capacitance$924+3)
	
;LC-meter.c: 432: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$924),(c:___flmul@f1)
	movff	(_measure_capacitance$924+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$924+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$924+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$925)
	movff	1+?___flmul,(_measure_capacitance$925+1)
	movff	2+?___flmul,(_measure_capacitance$925+2)
	movff	3+?___flmul,(_measure_capacitance$925+3)
	
;LC-meter.c: 432: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_measure_capacitance$925),(c:___flmul@f1)
	movff	(_measure_capacitance$925+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$925+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$925+3),(c:___flmul@f1+3)
	movff	(_CCal),(c:___flmul@f2)
	movff	(_CCal+1),(c:___flmul@f2+1)
	movff	(_CCal+2),(c:___flmul@f2+2)
	movff	(_CCal+3),(c:___flmul@f2+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_capacitance@Cin)
	movff	1+?___flmul,(measure_capacitance@Cin+1)
	movff	2+?___flmul,(measure_capacitance@Cin+2)
	movff	3+?___flmul,(measure_capacitance@Cin+3)
	
	line	436
	
l3617:
;LC-meter.c: 436: ser_puts("Cin=");
		movlw	low(STR_10)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_10)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	437
	
l3619:
;LC-meter.c: 437: format_double( Cin);
	movff	(measure_capacitance@Cin),(format_double@num)
	movff	(measure_capacitance@Cin+1),(format_double@num+1)
	movff	(measure_capacitance@Cin+2),(format_double@num+2)
	movff	(measure_capacitance@Cin+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	438
	
l3621:
;LC-meter.c: 438: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	439
	
l3623:
;LC-meter.c: 439: format_xint32( *(unsigned long int*)&Cin);
	movff	(measure_capacitance@Cin),(c:format_xint32@x)
	movff	(measure_capacitance@Cin+1),(c:format_xint32@x+1)
	movff	(measure_capacitance@Cin+2),(c:format_xint32@x+2)
	movff	(measure_capacitance@Cin+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	440
	
l3625:
;LC-meter.c: 440: ser_puts("\r\n");
		movlw	low(STR_11)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_11)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	442
	
l3627:
;LC-meter.c: 442: if(Cin > 999) {
	movlw	low(999.00000000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999.00000000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999.00000000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999.00000000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3551
	goto	u3550
u3551:
	goto	l3645
u3550:
	line	443
	
l3629:
;LC-meter.c: 443: if(Cin > (999e+03l)) {
	movlw	low(999000.00000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000.00000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000.00000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000.00000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3561
	goto	u3560
u3561:
	goto	l3641
u3560:
	line	444
	
l3631:
;LC-meter.c: 444: if(Cin > (999e+06l)) {
	movlw	low(999000000.00000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000000.00000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000000.00000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000000.00000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3571
	goto	u3570
u3571:
	goto	l3637
u3570:
	line	445
	
l3633:
;LC-meter.c: 445: Cin = Cin / (1e+09l);
	movff	(measure_capacitance@Cin),(c:___fldiv@f2)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f2+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f2+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f2+3)
	movlw	low(1000000000.0000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1000000000.0000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1000000000.0000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1000000000.0000000)
	movwf	((c:___fldiv@f1+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	446
	
l3635:
;LC-meter.c: 446: unit = 4;
	movlw	low(04h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	447
;LC-meter.c: 447: } else {
	goto	l3647
	line	448
	
l3637:
;LC-meter.c: 448: Cin = Cin / (1e+06l);
	movff	(measure_capacitance@Cin),(c:___fldiv@f2)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f2+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f2+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f2+3)
	movlw	low(1000000.0000000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1000000.0000000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1000000.0000000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1000000.0000000000)
	movwf	((c:___fldiv@f1+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	449
	
l3639:
;LC-meter.c: 449: unit = 5;
	movlw	low(05h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l3647
	line	452
	
l3641:
;LC-meter.c: 452: Cin = Cin / 1e+03l;
	movff	(measure_capacitance@Cin),(c:___fldiv@f2)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f2+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f2+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f2+3)
	movlw	low(1000.0000000000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1000.0000000000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1000.0000000000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1000.0000000000000)
	movwf	((c:___fldiv@f1+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	453
	
l3643:
;LC-meter.c: 453: unit = 6;
	movlw	low(06h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l3647
	line	456
	
l3645:
;LC-meter.c: 456: unit = 7;
	movlw	low(07h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	458
	
l3647:; BSR set to: 1

;LC-meter.c: 458: Cin = Cin * 100;
	movff	(measure_capacitance@Cin),(c:___flmul@f1)
	movff	(measure_capacitance@Cin+1),(c:___flmul@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___flmul@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___flmul@f1+3)
	movlw	low(100.00000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(100.00000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(100.00000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(100.00000000000000)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_capacitance@Cin)
	movff	1+?___flmul,(measure_capacitance@Cin+1)
	movff	2+?___flmul,(measure_capacitance@Cin+2)
	movff	3+?___flmul,(measure_capacitance@Cin+3)
	
	line	459
	
l3649:
;LC-meter.c: 459: var = (unsigned short int)Cin;
	movff	(measure_capacitance@Cin),(c:___fltol@f1)
	movff	(measure_capacitance@Cin+1),(c:___fltol@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___fltol@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_capacitance@var)
	movff	1+?___fltol,(measure_capacitance@var+1)
	line	461
	
l3651:
;LC-meter.c: 461: print_reading(var);
	movff	(measure_capacitance@var),(c:print_reading@measurement)
	movff	(measure_capacitance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	462
;LC-meter.c: 462: print_unit(unit);
	movlb	1	; () banked
	movf	((measure_capacitance@unit))&0ffh,w
	
	call	_print_unit
	line	463
	
l169:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
	signat	_measure_capacitance,88
	global	_print_unit

;; *************** function _print_unit *****************
;; Defined at:
;;		line 408 in file "C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : E/0
;;		On exit  : E/0
;;		Unchanged: E/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
	line	408
global __ptext5
__ptext5:
psect	text5
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
	line	408
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	426
	
l211:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4216
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 429 in file "C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2    2[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	429
global __ptext6
__ptext6:
psect	text6
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
	line	429
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	465
	
l214:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_reading
	__end_of_print_reading:
	signat	_print_reading,4216
	global	_format_xint32

;; *************** function _format_xint32 *****************
;; Defined at:
;;		line 48 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
;; Parameters:    Size  Location     Type
;;  x               4   54[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_format_number
;;		_format_putchar
;;		_output_putch
;;		_ser_putch
;; This function is called by:
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	48
global __ptext7
__ptext7:
psect	text7
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	48
	global	__size_of_format_xint32
	__size_of_format_xint32	equ	__end_of_format_xint32-_format_xint32
	
_format_xint32:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	49
	
l3529:
;format.c: 49: putchar_ptr('0');
	call	u3488
	goto	u3489
u3488:
	push
	
	movwf	pclath
	movf	((c:_putchar_ptr)),c,w
	movwf	tosl
	movf	((c:_putchar_ptr+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlw	(030h)&0ffh
	
	return	;indir
		dw	0FFFFh; errata NOP
u3489:
	line	50
;format.c: 50: putchar_ptr('x');
	call	u3498
	goto	u3499
u3498:
	push
	
	movwf	pclath
	movf	((c:_putchar_ptr)),c,w
	movwf	tosl
	movf	((c:_putchar_ptr+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlw	(078h)&0ffh
	
	return	;indir
		dw	0FFFFh; errata NOP
u3499:
	line	51
;format.c: 51: format_number((unsigned short int)(x >> 16), 16, -4);
	movff	0+((c:format_xint32@x)+02h),(c:format_number@n)
	movff	1+((c:format_xint32@x)+02h),(c:format_number@n+1)
	movlw	low(010h)
	movwf	((c:format_number@base)),c
	movlw	low(-4)
	movwf	((c:format_number@pad)),c
	call	_format_number
	line	52
;format.c: 52: format_number((unsigned short int)(x & 0xffff), 16, -4);
	movff	(c:format_xint32@x),(c:format_number@n)
	movff	(c:format_xint32@x+1),(c:format_number@n+1)
	movlw	low(010h)
	movwf	((c:format_number@base)),c
	movlw	low(-4)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	53
	
l355:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_xint32
	__end_of_format_xint32:
	signat	_format_xint32,4216
	global	_format_number

;; *************** function _format_number *****************
;; Defined at:
;;		line 14 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
;; Parameters:    Size  Location     Type
;;  n               2    9[COMRAM] unsigned short 
;;  base            1   11[COMRAM] unsigned char 
;;  pad             1   12[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   17[COMRAM] char [32]
;;  i               1   53[COMRAM] char 
;;  di              1   52[COMRAM] unsigned char 
;;  padchar         1   51[COMRAM] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:        37       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        45       0       0       0       0       0       0
;;Total ram usage:       45 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_format_putchar
;;		_output_putch
;;		_ser_putch
;; This function is called by:
;;		_format_xint32
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	14
global __ptext8
__ptext8:
psect	text8
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	14
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	17
	
l3397:
;format.c: 15: char buf[8 * sizeof(long)];
;format.c: 16: unsigned char di;
;format.c: 17: signed char i = 0;
	clrf	((c:format_number@i)),c
	line	18
	
l3399:
;format.c: 18: char padchar = ' ';
	movlw	low(020h)
	movwf	((c:format_number@padchar)),c
	line	20
	
l3401:
;format.c: 20: if(pad < 0) {
	btfsc	((c:format_number@pad)),c,7
	goto	u3320
	goto	u3321

u3321:
	goto	l3407
u3320:
	line	21
	
l3403:
;format.c: 21: pad = -pad;
	negf	((c:format_number@pad)),c
	line	22
	
l3405:
;format.c: 22: padchar = '0';
	movlw	low(030h)
	movwf	((c:format_number@padchar)),c
	line	34
	
l3407:
;format.c: 34: di = n % base;
	movff	(c:format_number@n),(c:___lwmod@dividend)
	movff	(c:format_number@n+1),(c:___lwmod@dividend+1)
	movff	(c:format_number@base),(c:___lwmod@divisor)
	clrf	((c:___lwmod@divisor+1)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	movwf	((c:format_number@di)),c
	line	35
	
l3409:
;format.c: 35: buf[i++] = (di < 10 ? (unsigned char)'0' + di : (unsigned char)'A' + di - 10);
		movlw	0Ah-1
	cpfsgt	((c:format_number@di)),c
	goto	u3331
	goto	u3330

u3331:
	goto	l3413
u3330:
	
l3411:
	movlw	low(037h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$301)),c
	clrf	1+((c:_format_number$301)),c
	movlw	high(037h)
	addwfc	1+((c:_format_number$301)),c
	goto	l3415
	
l3413:
	movlw	low(030h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$301)),c
	clrf	1+((c:_format_number$301)),c
	movlw	high(030h)
	addwfc	1+((c:_format_number$301)),c
	
l3415:
	movlw	low(format_number@buf)
	addwf	((c:format_number@i)),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(format_number@buf)
	addwfc	1+c:fsr2l
	movff	(c:_format_number$301),indf2

	
l3417:
	incf	((c:format_number@i)),c
	line	37
	
l3419:
;format.c: 37: n /= base;
	movff	(c:format_number@n),(c:___lwdiv@dividend)
	movff	(c:format_number@n+1),(c:___lwdiv@dividend+1)
	movff	(c:format_number@base),(c:___lwdiv@divisor)
	clrf	((c:___lwdiv@divisor+1)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:format_number@n)
	movff	1+?___lwdiv,(c:format_number@n+1)
	line	38
	
l3421:
;format.c: 38: } while(n > 0);
	movf	((c:format_number@n)),c,w
iorwf	((c:format_number@n+1)),c,w
	btfss	status,2
	goto	u3341
	goto	u3340

u3341:
	goto	l3407
u3340:
	goto	l3425
	line	40
	
l3423:
	call	u3358
	goto	u3359
u3358:
	push
	
	movwf	pclath
	movf	((c:_putchar_ptr)),c,w
	movwf	tosl
	movf	((c:_putchar_ptr+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movf	((c:format_number@padchar)),c,w
	
	return	;indir
		dw	0FFFFh; errata NOP
u3359:
	
l3425:
	decf	((c:format_number@pad)),c
	incf	((c:format_number@pad)),c,w
	movwf	(??_format_number+0+0)&0ffh,c
		movf	((c:format_number@i)),c,w
	xorlw	80h
	movwf	(??_format_number+1+0)&0ffh,c
	movf	((??_format_number+0+0)),c,w
	xorlw	80h
	subwf	(??_format_number+1+0)&0ffh,c,w
	btfss	status,0
	goto	u3361
	goto	u3360

u3361:
	goto	l3423
u3360:
	line	42
	
l3427:
;format.c: 42: for(; i > 0; i--) putchar_ptr((char)buf[(signed short int)i - 1]);
		movf	((c:format_number@i)),c,w
	xorlw	80h
	addlw	-(80h^01h)
	btfsc	status,0
	goto	u3371
	goto	u3370

u3371:
	goto	l3431
u3370:
	goto	l352
	
l3431:
	call	u3388
	goto	u3389
u3388:
	push
	
	movwf	pclath
	movf	((c:_putchar_ptr)),c,w
	movwf	tosl
	movf	((c:_putchar_ptr+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlw	low(-1)
	movwf	(??_format_number+0+0)&0ffh,c
	movlw	high(-1)
	movwf	1+(??_format_number+0+0)&0ffh,c
	movff	(c:format_number@i),??_format_number+2+0
	clrf	(??_format_number+2+0+1)&0ffh,c
	btfsc	(??_format_number+2+0)&0ffh,c,7
	decf	(??_format_number+2+0+1)&0ffh,c
	movf	(??_format_number+0+0),c,w
	addwf	(??_format_number+2+0),c
	movf	(??_format_number+0+1),c,w
	addwfc	(??_format_number+2+1),c
	movlw	low(format_number@buf)
	addwf	(??_format_number+2+0),c,w
	movwf	c:fsr2l
	movlw	high(format_number@buf)
	addwfc	(??_format_number+2+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	return	;indir
		dw	0FFFFh; errata NOP
u3389:
	
l3433:
	decf	((c:format_number@i)),c
	goto	l3427
	line	44
	
l352:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
	signat	_format_number,12408
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    2[COMRAM] unsigned int 
;;  divisor         2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	13
	
l3341:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u3211
	goto	u3210

u3211:
	goto	l944
u3210:
	line	14
	
l3343:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l3347
	line	16
	
l3345:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	line	15
	
l3347:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l3345
u3220:
	line	20
	
l3349:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u3231
	goto	u3230

u3231:
	goto	l3353
u3230:
	line	21
	
l3351:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	line	22
	
l3353:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l3355:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l3349
	line	24
	
l944:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l951:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    2[COMRAM] unsigned int 
;;  divisor         2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	14
	
l3319:
	clrf	((c:___lwdiv@quotient)),c
	clrf	((c:___lwdiv@quotient+1)),c
	line	15
	
l3321:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u3181
	goto	u3180

u3181:
	goto	l934
u3180:
	line	16
	
l3323:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l3327
	line	18
	
l3325:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	line	17
	
l3327:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l3325
u3190:
	line	22
	
l3329:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l3331:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3201
	goto	u3200

u3201:
	goto	l3337
u3200:
	line	24
	
l3333:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l3335:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	line	27
	
l3337:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l3339:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l3329
	line	29
	
l934:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l941:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 74 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
;; Parameters:    Size  Location     Type
;;  num             4   28[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  weight          4   40[BANK0 ] unsigned int 
;;  m               2   46[BANK0 ] short 
;;  digit           2   44[BANK0 ] short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0      16       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      20       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awtofl
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		_floor
;;		_format_putchar
;;		_log10
;;		_output_putch
;;		_pow
;;		_ser_putch
;; This function is called by:
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	74
global __ptext11
__ptext11:
psect	text11
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	74
	global	__size_of_format_double
	__size_of_format_double	equ	__end_of_format_double-_format_double
	
_format_double:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	75
	
l3531:
;format.c: 75: short m = (short)log10(num);
	movff	(format_double@num),(c:log10@x)
	movff	(format_double@num+1),(c:log10@x+1)
	movff	(format_double@num+2),(c:log10@x+2)
	movff	(format_double@num+3),(c:log10@x+3)
	call	_log10
	movff	0+?_log10,(c:___fltol@f1)
	movff	1+?_log10,(c:___fltol@f1+1)
	movff	2+?_log10,(c:___fltol@f1+2)
	movff	3+?_log10,(c:___fltol@f1+3)
	
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@m)
	movff	1+?___fltol,(format_double@m+1)
	line	79
;format.c: 76: short digit;
;format.c: 79: while(num > 0 + 1.19209290e-07) {
	goto	l3551
	line	80
	
l3533:
;format.c: 80: double weight = pow(10.0l, m);
	movff	(format_double@m),(c:___awtofl@c)
	movff	(format_double@m+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(_format_double$935)
	movff	1+?___awtofl,(_format_double$935+1)
	movff	2+?___awtofl,(_format_double$935+2)
	movff	3+?___awtofl,(_format_double$935+3)
	
	
l3535:
;format.c: 80: double weight = pow(10.0l, m);
	movlw	low(10.000000000000000)
	movlb	0	; () banked
	movwf	((pow@x))&0ffh
	movlw	high(10.000000000000000)
	movwf	((pow@x+1))&0ffh
	movlw	low highword(10.000000000000000)
	movwf	((pow@x+2))&0ffh
	movlw	high highword(10.000000000000000)
	movwf	((pow@x+3))&0ffh
	movff	(_format_double$935),(pow@y)
	movff	(_format_double$935+1),(pow@y+1)
	movff	(_format_double$935+2),(pow@y+2)
	movff	(_format_double$935+3),(pow@y+3)
	call	_pow	;wreg free
	movff	0+?_pow,(format_double@weight)
	movff	1+?_pow,(format_double@weight+1)
	movff	2+?_pow,(format_double@weight+2)
	movff	3+?_pow,(format_double@weight+3)
	
	line	81
	
l3537:; BSR set to: 0

;format.c: 81: digit = (short)floor(num / weight);
	movff	(format_double@weight),(c:___fldiv@f1)
	movff	(format_double@weight+1),(c:___fldiv@f1+1)
	movff	(format_double@weight+2),(c:___fldiv@f1+2)
	movff	(format_double@weight+3),(c:___fldiv@f1+3)
	movff	(format_double@num),(c:___fldiv@f2)
	movff	(format_double@num+1),(c:___fldiv@f2+1)
	movff	(format_double@num+2),(c:___fldiv@f2+2)
	movff	(format_double@num+3),(c:___fldiv@f2+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:floor@x)
	movff	1+?___fldiv,(c:floor@x+1)
	movff	2+?___fldiv,(c:floor@x+2)
	movff	3+?___fldiv,(c:floor@x+3)
	
	call	_floor	;wreg free
	movff	0+?_floor,(_format_double$936)
	movff	1+?_floor,(_format_double$936+1)
	movff	2+?_floor,(_format_double$936+2)
	movff	3+?_floor,(_format_double$936+3)
	
	
l3539:
;format.c: 81: digit = (short)floor(num / weight);
	movff	(_format_double$936),(c:___fltol@f1)
	movff	(_format_double$936+1),(c:___fltol@f1+1)
	movff	(_format_double$936+2),(c:___fltol@f1+2)
	movff	(_format_double$936+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@digit)
	movff	1+?___fltol,(format_double@digit+1)
	line	82
	
l3541:
;format.c: 82: num -= (digit * weight);
	movff	(format_double@num),(c:___flsub@f1)
	movff	(format_double@num+1),(c:___flsub@f1+1)
	movff	(format_double@num+2),(c:___flsub@f1+2)
	movff	(format_double@num+3),(c:___flsub@f1+3)
	movff	(format_double@weight),(c:___flmul@f2)
	movff	(format_double@weight+1),(c:___flmul@f2+1)
	movff	(format_double@weight+2),(c:___flmul@f2+2)
	movff	(format_double@weight+3),(c:___flmul@f2+3)
	movff	(format_double@digit),(c:___awtofl@c)
	movff	(format_double@digit+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(c:___flmul@f1)
	movff	1+?___awtofl,(c:___flmul@f1+1)
	movff	2+?___awtofl,(c:___flmul@f1+2)
	movff	3+?___awtofl,(c:___flmul@f1+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f2)
	movff	1+?___flmul,(c:___flsub@f2+1)
	movff	2+?___flmul,(c:___flsub@f2+2)
	movff	3+?___flmul,(c:___flsub@f2+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(format_double@num)
	movff	1+?___flsub,(format_double@num+1)
	movff	2+?___flsub,(format_double@num+2)
	movff	3+?___flsub,(format_double@num+3)
	
	line	83
	
l3543:
;format.c: 83: putchar_ptr((char)('0' + digit));
	call	u3508
	goto	u3509
u3508:
	push
	
	movwf	pclath
	movf	((c:_putchar_ptr)),c,w
	movwf	tosl
	movf	((c:_putchar_ptr+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlb	0	; () banked
	movf	((format_double@digit))&0ffh,w
	addlw	low(030h)
	
	return	;indir
		dw	0FFFFh; errata NOP
u3509:
	line	84
	
l3545:
;format.c: 84: if(m == 0)
	movlb	0	; () banked
	movf	((format_double@m))&0ffh,w
iorwf	((format_double@m+1))&0ffh,w
	btfss	status,2
	goto	u3511
	goto	u3510

u3511:
	goto	l3549
u3510:
	line	85
	
l3547:; BSR set to: 0

;format.c: 85: putchar_ptr('.');
	call	u3528
	goto	u3529
u3528:
	push
	
	movwf	pclath
	movf	((c:_putchar_ptr)),c,w
	movwf	tosl
	movf	((c:_putchar_ptr+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlw	(02Eh)&0ffh
	
	return	;indir
		dw	0FFFFh; errata NOP
u3529:
	line	86
	
l3549:
;format.c: 86: m--;
	movlb	0	; () banked
	decf	((format_double@m))&0ffh
	btfss	status,0
	decf	((format_double@m+1))&0ffh
	line	79
	
l3551:
	movlw	low(1.1920929000000001e-007)
	movwf	((c:___flge@ff1)),c
	movlw	high(1.1920929000000001e-007)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(1.1920929000000001e-007)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(1.1920929000000001e-007)
	movwf	((c:___flge@ff1+3)),c
	movff	(format_double@num),(c:___flge@ff2)
	movff	(format_double@num+1),(c:___flge@ff2+1)
	movff	(format_double@num+2),(c:___flge@ff2+2)
	movff	(format_double@num+3),(c:___flge@ff2+3)
	call	___flge
	btfss	status,0
	goto	u3531
	goto	u3530
u3531:
	goto	l3533
u3530:
	line	88
	
l369:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_double
	__end_of_format_double:
	signat	_format_double,4216
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               4    7[BANK0 ] short 
;;  y               4   11[BANK0 ] short 
;; Auto vars:     Size  Location     Type
;;  yi              4   24[BANK0 ] unsigned long 
;;  sign            1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    7[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       8       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      21       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___flge
;;		___flmul
;;		___flneg
;;		___fltol
;;		___lltofl
;;		_exp
;;		_log
;; This function is called by:
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	7
	
l3443:; BSR set to: 0

	clrf	((pow@sign))&0ffh
	line	10
	
l3445:; BSR set to: 0

	movf	((pow@x))&0ffh,w
iorwf	((pow@x+1))&0ffh,w
iorwf	((pow@x+2))&0ffh,w
iorwf	((pow@x+3))&0ffh,w
	btfss	status,2
	goto	u3391
	goto	u3390

u3391:
	goto	l3449
u3390:
	line	11
	
l3447:; BSR set to: 0

	movlw	low(0.0000000000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(0.0000000000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(0.0000000000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(0.0000000000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(pow@y),(c:___flge@ff2)
	movff	(pow@y+1),(c:___flge@ff2+1)
	movff	(pow@y+2),(c:___flge@ff2+2)
	movff	(pow@y+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	line	13
	
l971:
	line	14
	movlb	0	; () banked
	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l972
	line	16
	
l3449:; BSR set to: 0

	movf	((pow@y))&0ffh,w
iorwf	((pow@y+1))&0ffh,w
iorwf	((pow@y+2))&0ffh,w
iorwf	((pow@y+3))&0ffh,w
	btfss	status,2
	goto	u3401
	goto	u3400

u3401:
	goto	l3455
u3400:
	line	17
	
l3451:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((?_pow))&0ffh
	movlw	high(1.0000000000000000)
	movwf	((?_pow+1))&0ffh
	movlw	low highword(1.0000000000000000)
	movwf	((?_pow+2))&0ffh
	movlw	high highword(1.0000000000000000)
	movwf	((?_pow+3))&0ffh
	goto	l972
	line	18
	
l3455:; BSR set to: 0

	btfsc	((pow@x+3))&0ffh,7
	goto	u3410
	goto	u3411

u3411:
	goto	l3465
u3410:
	line	19
	
l3457:; BSR set to: 0

	movff	(pow@y),(c:___fltol@f1)
	movff	(pow@y+1),(c:___fltol@f1+1)
	movff	(pow@y+2),(c:___fltol@f1+2)
	movff	(pow@y+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(pow@yi)
	movff	1+?___fltol,(pow@yi+1)
	movff	2+?___fltol,(pow@yi+2)
	movff	3+?___fltol,(pow@yi+3)
	
	line	20
	movff	(pow@yi),(c:___lltofl@c)
	movff	(pow@yi+1),(c:___lltofl@c+1)
	movff	(pow@yi+2),(c:___lltofl@c+2)
	movff	(pow@yi+3),(c:___lltofl@c+3)
	call	___lltofl	;wreg free
	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
xorwf	(0+?___lltofl),c,w
	bnz	u3420
movf	((pow@y+1))&0ffh,w
xorwf	(1+?___lltofl),c,w
	bnz	u3420
movf	((pow@y+2))&0ffh,w
xorwf	(2+?___lltofl),c,w
	bnz	u3420
movf	((pow@y+3))&0ffh,w
xorwf	(3+?___lltofl),c,w
	btfsc	status,2
	goto	u3421
	goto	u3420

u3421:
	goto	l3461
u3420:
	line	22
	
l3459:; BSR set to: 0

	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l972
	line	24
	
l3461:; BSR set to: 0

	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movwf	((pow@sign))&0ffh
	line	25
	
l3463:; BSR set to: 0

	movff	(pow@x),(c:___flneg@f1)
	movff	(pow@x+1),(c:___flneg@f1+1)
	movff	(pow@x+2),(c:___flneg@f1+2)
	movff	(pow@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(pow@x)
	movff	1+?___flneg,(pow@x+1)
	movff	2+?___flneg,(pow@x+2)
	movff	3+?___flneg,(pow@x+3)
	
	line	27
	
l3465:; BSR set to: 0

	movff	(pow@x),(c:log@x)
	movff	(pow@x+1),(c:log@x+1)
	movff	(pow@x+2),(c:log@x+2)
	movff	(pow@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_pow$938)
	movff	1+?_log,(_pow$938+1)
	movff	2+?_log,(_pow$938+2)
	movff	3+?_log,(_pow$938+3)
	
	
l3467:
	movff	(_pow$938),(c:___flmul@f1)
	movff	(_pow$938+1),(c:___flmul@f1+1)
	movff	(_pow$938+2),(c:___flmul@f1+2)
	movff	(_pow$938+3),(c:___flmul@f1+3)
	movff	(pow@y),(c:___flmul@f2)
	movff	(pow@y+1),(c:___flmul@f2+1)
	movff	(pow@y+2),(c:___flmul@f2+2)
	movff	(pow@y+3),(c:___flmul@f2+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pow$939)
	movff	1+?___flmul,(_pow$939+1)
	movff	2+?___flmul,(_pow$939+2)
	movff	3+?___flmul,(_pow$939+3)
	
	
l3469:
	movff	(_pow$939),(c:exp@x)
	movff	(_pow$939+1),(c:exp@x+1)
	movff	(_pow$939+2),(c:exp@x+2)
	movff	(_pow$939+3),(c:exp@x+3)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	movff	3+?_exp,(pow@x+3)
	
	line	28
	
l3471:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	btfsc	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l976
u3430:
	line	29
	
l3473:; BSR set to: 0

	movff	(pow@x),(c:___flneg@f1)
	movff	(pow@x+1),(c:___flneg@f1+1)
	movff	(pow@x+2),(c:___flneg@f1+2)
	movff	(pow@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(?_pow)
	movff	1+?___flneg,(?_pow+1)
	movff	2+?___flneg,(?_pow+2)
	movff	3+?___flneg,(?_pow+3)
	
	goto	l972
	
l976:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	movff	(pow@x+3),(?_pow+3)
	line	31
	
l972:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8316
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               4  109[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2    4[BANK0 ] int 
;;  sign            1    6[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  4  109[COMRAM] char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       7       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtofl
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	31
	
l3357:
	movf	((c:exp@x)),c,w
iorwf	((c:exp@x+1)),c,w
iorwf	((c:exp@x+2)),c,w
iorwf	((c:exp@x+3)),c,w
	btfss	status,2
	goto	u3241
	goto	u3240

u3241:
	goto	l3363
u3240:
	line	32
	
l3359:
	movlw	low(1.0000000000000000)
	movwf	((c:?_exp)),c
	movlw	high(1.0000000000000000)
	movwf	((c:?_exp+1)),c
	movlw	low highword(1.0000000000000000)
	movwf	((c:?_exp+2)),c
	movlw	high highword(1.0000000000000000)
	movwf	((c:?_exp+3)),c
	goto	l998
	line	34
	
l3363:
	movlw	low(709.78271289338397)
	movwf	((c:___flge@ff1)),c
	movlw	high(709.78271289338397)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(709.78271289338397)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(709.78271289338397)
	movwf	((c:___flge@ff1+3)),c
	movff	(c:exp@x),(c:___flge@ff2)
	movff	(c:exp@x+1),(c:___flge@ff2+1)
	movff	(c:exp@x+2),(c:___flge@ff2+2)
	movff	(c:exp@x+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3251
	goto	u3250
u3251:
	goto	l3369
u3250:
	line	36
	
l3365:
	movlw	low(3.4028234699999998e+038)
	movwf	((c:?_exp)),c
	movlw	high(3.4028234699999998e+038)
	movwf	((c:?_exp+1)),c
	movlw	low highword(3.4028234699999998e+038)
	movwf	((c:?_exp+2)),c
	movlw	high highword(3.4028234699999998e+038)
	movwf	((c:?_exp+3)),c
	goto	l998
	line	38
	
l3369:
	movff	(c:exp@x),(c:___flge@ff1)
	movff	(c:exp@x+1),(c:___flge@ff1+1)
	movff	(c:exp@x+2),(c:___flge@ff1+2)
	movff	(c:exp@x+3),(c:___flge@ff1+3)
	movlw	low(-745.13321910194111)
	movwf	((c:___flge@ff2)),c
	movlw	high(-745.13321910194111)
	movwf	((c:___flge@ff2+1)),c
	movlw	low highword(-745.13321910194111)
	movwf	((c:___flge@ff2+2)),c
	movlw	high highword(-745.13321910194111)
	movwf	((c:___flge@ff2+3)),c
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3261
	goto	u3260
u3261:
	goto	l3373
u3260:
	line	40
	
l3371:
	clrf	((c:?_exp)),c
	clrf	((c:?_exp+1)),c
	clrf	((c:?_exp+2)),c
	clrf	((c:?_exp+3)),c

	goto	l998
	line	43
	
l3373:
	btfsc	((c:exp@x+3)),c,7
	goto	u3271
	goto	u3270

u3271:
	movlw	1
	goto	u3280
u3270:
	movlw	0
u3280:
	movlb	0	; () banked
	movwf	((exp@sign))&0ffh
	line	44
	
l3375:; BSR set to: 0

	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l1001
u3290:
	line	45
	
l3377:; BSR set to: 0

	movff	(c:exp@x),(c:___flneg@f1)
	movff	(c:exp@x+1),(c:___flneg@f1+1)
	movff	(c:exp@x+2),(c:___flneg@f1+2)
	movff	(c:exp@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(c:exp@x)
	movff	1+?___flneg,(c:exp@x+1)
	movff	2+?___flneg,(c:exp@x+2)
	movff	3+?___flneg,(c:exp@x+3)
	
	
l1001:; BSR set to: 0

	line	46
	movff	(c:exp@x),(c:___flmul@f1)
	movff	(c:exp@x+1),(c:___flmul@f1+1)
	movff	(c:exp@x+2),(c:___flmul@f1+2)
	movff	(c:exp@x+3),(c:___flmul@f1+3)
	movlw	low(1.4426950408999999)
	movwf	((c:___flmul@f2)),c
	movlw	high(1.4426950408999999)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(1.4426950408999999)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(1.4426950408999999)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:exp@x)
	movff	1+?___flmul,(c:exp@x+1)
	movff	2+?___flmul,(c:exp@x+2)
	movff	3+?___flmul,(c:exp@x+3)
	
	line	47
	
l3379:
	movff	(c:exp@x),(c:floor@x)
	movff	(c:exp@x+1),(c:floor@x+1)
	movff	(c:exp@x+2),(c:floor@x+2)
	movff	(c:exp@x+3),(c:floor@x+3)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$940)
	movff	1+?_floor,(_exp$940+1)
	movff	2+?_floor,(_exp$940+2)
	movff	3+?_floor,(_exp$940+3)
	
	
l3381:
	movff	(_exp$940),(c:___fltol@f1)
	movff	(_exp$940+1),(c:___fltol@f1+1)
	movff	(_exp$940+2),(c:___fltol@f1+2)
	movff	(_exp$940+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(exp@exponent)
	movff	1+?___fltol,(exp@exponent+1)
	line	48
	
l3383:
	movff	(c:exp@x),(c:___flsub@f1)
	movff	(c:exp@x+1),(c:___flsub@f1+1)
	movff	(c:exp@x+2),(c:___flsub@f1+2)
	movff	(c:exp@x+3),(c:___flsub@f1+3)
	movff	(exp@exponent),(c:___awtofl@c)
	movff	(exp@exponent+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(c:___flsub@f2)
	movff	1+?___awtofl,(c:___flsub@f2+1)
	movff	2+?___awtofl,(c:___flsub@f2+2)
	movff	3+?___awtofl,(c:___flsub@f2+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(c:exp@x)
	movff	1+?___flsub,(c:exp@x+1)
	movff	2+?___flsub,(c:exp@x+2)
	movff	3+?___flsub,(c:exp@x+3)
	
	line	49
	
l3385:
	movff	(c:exp@x),(c:eval_poly@x)
	movff	(c:exp@x+1),(c:eval_poly@x+1)
	movff	(c:exp@x+2),(c:eval_poly@x+2)
	movff	(c:exp@x+3),(c:eval_poly@x+3)
		movlw	low(exp@coeff)
	movwf	((c:eval_poly@d)),c
	movlw	high(exp@coeff)
	movwf	((c:eval_poly@d+1)),c

	movlw	high(09h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(09h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:ldexp@value)
	movff	1+?_eval_poly,(c:ldexp@value+1)
	movff	2+?_eval_poly,(c:ldexp@value+2)
	movff	3+?_eval_poly,(c:ldexp@value+3)
	
	movff	(exp@exponent),(c:ldexp@newexp)
	movff	(exp@exponent+1),(c:ldexp@newexp+1)
	call	_ldexp	;wreg free
	movff	0+?_ldexp,(c:exp@x)
	movff	1+?_ldexp,(c:exp@x+1)
	movff	2+?_ldexp,(c:exp@x+2)
	movff	3+?_ldexp,(c:exp@x+3)
	
	line	50
	
l3387:
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l1002
u3300:
	line	52
	
l3389:; BSR set to: 0

		incf	((c:exp@x)),c,w
	bnz	u3311
	incf	((c:exp@x+1)),c,w
	bnz	u3311
	movlw	127
	xorwf	((c:exp@x+2)),c,w
	bnz	u3311
	movlw	127
	xorwf	((c:exp@x+3)),c,w
	btfss	status,2
	goto	u3311
	goto	u3310

u3311:
	goto	l3393
u3310:
	line	53
	
l3391:; BSR set to: 0

	clrf	((c:?_exp)),c
	clrf	((c:?_exp+1)),c
	clrf	((c:?_exp+2)),c
	clrf	((c:?_exp+3)),c

	goto	l998
	line	54
	
l3393:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1.0000000000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1.0000000000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1.0000000000000000)
	movwf	((c:___fldiv@f2+3)),c
	movff	(c:exp@x),(c:___fldiv@f1)
	movff	(c:exp@x+1),(c:___fldiv@f1+1)
	movff	(c:exp@x+2),(c:___fldiv@f1+2)
	movff	(c:exp@x+3),(c:___fldiv@f1+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:?_exp)
	movff	1+?___fldiv,(c:?_exp+1)
	movff	2+?___fldiv,(c:?_exp+2)
	movff	3+?___fldiv,(c:?_exp+3)
	
	goto	l998
	line	55
	
l1002:; BSR set to: 0

	line	56
	movff	(c:exp@x),(c:?_exp)
	movff	(c:exp@x+1),(c:?_exp+1)
	movff	(c:exp@x+2),(c:?_exp+2)
	movff	(c:exp@x+3),(c:?_exp+3)
	line	57
	
l998:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4220
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4   70[COMRAM] char 
;;  newexp          2   74[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   70[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	279
	
l3257:
	movf	((c:ldexp@value)),c,w
iorwf	((c:ldexp@value+1)),c,w
iorwf	((c:ldexp@value+2)),c,w
iorwf	((c:ldexp@value+3)),c,w
	btfss	status,2
	goto	u3101
	goto	u3100

u3101:
	goto	l3261
u3100:
	line	280
	
l3259:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l735
	line	282
	
l3261:
	movf	(0+((c:ldexp@value)+03h)),c,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0+0)&0ffh,c
	clrf	(??_ldexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_ldexp+0+0),c,f
	rlcf	(??_ldexp+0+1),c,f
	movf	(??_ldexp+0+0),c,w
	addwf	((c:ldexp@newexp)),c
	movf	(??_ldexp+0+1),c,w
	addwfc	((c:ldexp@newexp+1)),c

	line	283
	btfsc	(0+((c:ldexp@value)+02h)),c,7
	goto	u3111
	goto	u3110
u3111:
	movlw	1
	goto	u3116
u3110:
	movlw	0
u3116:
	addwf	((c:ldexp@newexp)),c
	movlw	0
	addwfc	((c:ldexp@newexp+1)),c
	line	287
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u3120
	goto	u3121

u3121:
	goto	l3267
u3120:
	line	289
	
l3263:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l735
	line	291
	
l3267:
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u3131
	decf	((c:ldexp@newexp+1)),c,w
	btfss	status,0
	goto	u3131
	goto	u3130

u3131:
	goto	l3281
u3130:
	line	293
	
l3269:
	btfsc	((c:ldexp@value+3)),c,7
	goto	u3140
	goto	u3141

u3141:
	goto	l3277
u3140:
	line	294
	
l3271:
	movlw	low(-3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l735
	line	296
	
l3277:
	movlw	low(3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l735
	line	300
	
l3281:
	rlcf	((c:ldexp@newexp+1)),c,w
	rrcf	((c:ldexp@newexp+1)),c,w
	movwf	(??_ldexp+0+0+1)&0ffh,c
	rrcf	((c:ldexp@newexp)),c,w
	movwf	(??_ldexp+0+0)&0ffh,c
	movf	(0+((c:ldexp@value)+03h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not ((1<<7)-1)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+03h)),c
	line	301
	movff	(c:ldexp@newexp),??_ldexp+0+0
	movlw	01h
	andwf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	movf	(0+((c:ldexp@value)+02h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+02h)),c
	line	306
	
l3283:
	movff	(c:ldexp@value),(c:?_ldexp)
	movff	(c:ldexp@value+1),(c:?_ldexp+1)
	movff	(c:ldexp@value+2),(c:?_ldexp+2)
	movff	(c:ldexp@value+3),(c:?_ldexp+3)
	line	307
	
l735:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8316
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               4   99[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  i               4  103[COMRAM] int 
;;  expon           2  107[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   99[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___altofl
;;		___fladd
;;		___flge
;;		___fltol
;;		_frexp
;; This function is called by:
;;		_format_double
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	18
	
l3175:
	movff	(c:floor@x),(c:frexp@value)
	movff	(c:floor@x+1),(c:frexp@value+1)
	movff	(c:floor@x+2),(c:frexp@value+2)
	movff	(c:floor@x+3),(c:frexp@value+3)
		movlw	low(floor@expon)
	movwf	((c:frexp@eptr)),c
	movlw	high(floor@expon)
	movwf	((c:frexp@eptr+1)),c

	call	_frexp	;wreg free
	line	19
	
l3177:
	btfsc	((c:floor@expon+1)),c,7
	goto	u3000
	goto	u3001

u3001:
	goto	l3185
u3000:
	line	20
	
l3179:
	btfsc	((c:floor@x+3)),c,7
	goto	u3010
	goto	u3011

u3011:
	goto	l702
u3010:
	line	21
	
l3181:
	movlw	low(-1.0000000000000000)
	movwf	((c:?_floor)),c
	movlw	high(-1.0000000000000000)
	movwf	((c:?_floor+1)),c
	movlw	low highword(-1.0000000000000000)
	movwf	((c:?_floor+2)),c
	movlw	high highword(-1.0000000000000000)
	movwf	((c:?_floor+3)),c
	goto	l703
	
l702:
	line	22
	clrf	((c:?_floor)),c
	clrf	((c:?_floor+1)),c
	clrf	((c:?_floor+2)),c
	clrf	((c:?_floor+3)),c

	goto	l703
	line	24
	
l3185:
		movf	((c:floor@expon+1)),c,w
	bnz	u3020
	movlw	29
	subwf	 ((c:floor@expon)),c,w
	btfss	status,0
	goto	u3021
	goto	u3020

u3021:
	goto	l3189
u3020:
	line	25
	
l3187:
	movff	(c:floor@x),(c:?_floor)
	movff	(c:floor@x+1),(c:?_floor+1)
	movff	(c:floor@x+2),(c:?_floor+2)
	movff	(c:floor@x+3),(c:?_floor+3)
	goto	l703
	line	26
	
l3189:
	movff	(c:floor@x),(c:___fltol@f1)
	movff	(c:floor@x+1),(c:___fltol@f1+1)
	movff	(c:floor@x+2),(c:___fltol@f1+2)
	movff	(c:floor@x+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(c:___altofl@c)
	movff	1+?___fltol,(c:___altofl@c+1)
	movff	2+?___fltol,(c:___altofl@c+2)
	movff	3+?___fltol,(c:___altofl@c+3)
	
	call	___altofl	;wreg free
	movff	0+?___altofl,(c:floor@i)
	movff	1+?___altofl,(c:floor@i+1)
	movff	2+?___altofl,(c:floor@i+2)
	movff	3+?___altofl,(c:floor@i+3)
	
	line	27
	movff	(c:floor@x),(c:___flge@ff1)
	movff	(c:floor@x+1),(c:___flge@ff1+1)
	movff	(c:floor@x+2),(c:___flge@ff1+2)
	movff	(c:floor@x+3),(c:___flge@ff1+3)
	movff	(c:floor@i),(c:___flge@ff2)
	movff	(c:floor@i+1),(c:___flge@ff2+1)
	movff	(c:floor@i+2),(c:___flge@ff2+2)
	movff	(c:floor@i+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3031
	goto	u3030
u3031:
	goto	l705
u3030:
	line	28
	
l3191:
	movff	(c:floor@i),(c:___fladd@f1)
	movff	(c:floor@i+1),(c:___fladd@f1+1)
	movff	(c:floor@i+2),(c:___fladd@f1+2)
	movff	(c:floor@i+3),(c:___fladd@f1+3)
	movlw	low(-1.0000000000000000)
	movwf	((c:___fladd@f2)),c
	movlw	high(-1.0000000000000000)
	movwf	((c:___fladd@f2+1)),c
	movlw	low highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+2)),c
	movlw	high highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+3)),c
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:?_floor)
	movff	1+?___fladd,(c:?_floor+1)
	movff	2+?___fladd,(c:?_floor+2)
	movff	3+?___fladd,(c:?_floor+3)
	
	goto	l703
	
l705:
	line	29
	movff	(c:floor@i),(c:?_floor)
	movff	(c:floor@i+1),(c:?_floor+1)
	movff	(c:floor@i+2),(c:?_floor+2)
	movff	(c:floor@i+3),(c:?_floor+3)
	line	30
	
l703:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4220
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4   84[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   93[COMRAM] unsigned char 
;;  sign1           1   92[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   84[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;;		_format_double
;;		_floor
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	47
	
l3125:
	rlcf	((c:___fltol@f1+2)),c,w
	rlcf	((c:___fltol@f1+3)),c,w
	movwf	((c:___fltol@exp1)),c
	movf	((c:___fltol@exp1)),c,w
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l3129
u2920:
	line	48
	
l3127:
	clrf	((c:?___fltol)),c
	clrf	((c:?___fltol+1)),c
	clrf	((c:?___fltol+2)),c
	clrf	((c:?___fltol+3)),c

	goto	l715
	line	49
	
l3129:
	movff	(c:___fltol@f1),??___fltol+0+0
	movff	(c:___fltol@f1+1),??___fltol+0+0+1
	movff	(c:___fltol@f1+2),??___fltol+0+0+2
	movff	(c:___fltol@f1+3),??___fltol+0+0+3
	movlw	01Fh+1
	goto	u2930
u2935:
	bcf	status,0
	rrcf	(??___fltol+0+3),c
	rrcf	(??___fltol+0+2),c
	rrcf	(??___fltol+0+1),c
	rrcf	(??___fltol+0+0),c
u2930:
	decfsz	wreg
	goto	u2935
	movf	(??___fltol+0+0),c,w
	movwf	((c:___fltol@sign1)),c
	line	50
	
l3131:
	bsf	(0+(23/8)+(c:___fltol@f1)),c,(23)&7
	line	51
	
l3133:
	movlw	0FFh
	andwf	((c:___fltol@f1)),c
	movlw	0FFh
	andwf	((c:___fltol@f1+1)),c
	movlw	0FFh
	andwf	((c:___fltol@f1+2)),c
	movlw	0
	andwf	((c:___fltol@f1+3)),c
	line	52
	
l3135:
	movlw	(096h)&0ffh
	subwf	((c:___fltol@exp1)),c
	line	53
	
l3137:
	btfsc	((c:___fltol@exp1)),c,7
	goto	u2940
	goto	u2941

u2941:
	goto	l3147
u2940:
	line	54
	
l3139:
		movf	((c:___fltol@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u2951
	goto	u2950

u2951:
	goto	l3143
u2950:
	goto	l3127
	line	57
	
l3143:
	bcf	status,0
	rrcf	((c:___fltol@f1+3)),c
	rrcf	((c:___fltol@f1+2)),c
	rrcf	((c:___fltol@f1+1)),c
	rrcf	((c:___fltol@f1)),c
	line	58
	
l3145:
	incfsz	((c:___fltol@exp1)),c
	
	goto	l3143
	goto	l3155
	line	60
	
l3147:
		movlw	020h-1
	cpfsgt	((c:___fltol@exp1)),c
	goto	u2961
	goto	u2960

u2961:
	goto	l3153
u2960:
	goto	l3127
	line	63
	
l3151:
	bcf	status,0
	rlcf	((c:___fltol@f1)),c
	rlcf	((c:___fltol@f1+1)),c
	rlcf	((c:___fltol@f1+2)),c
	rlcf	((c:___fltol@f1+3)),c
	line	64
	decf	((c:___fltol@exp1)),c
	line	62
	
l3153:
	movf	((c:___fltol@exp1)),c,w
	btfss	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l3151
u2970:
	line	67
	
l3155:
	movf	((c:___fltol@sign1)),c,w
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l3159
u2980:
	line	68
	
l3157:
	comf	((c:___fltol@f1+3)),c
	comf	((c:___fltol@f1+2)),c
	comf	((c:___fltol@f1+1)),c
	negf	((c:___fltol@f1)),c
	movlw	0
	addwfc	((c:___fltol@f1+1)),c
	addwfc	((c:___fltol@f1+2)),c
	addwfc	((c:___fltol@f1+3)),c
	line	69
	
l3159:
	movff	(c:___fltol@f1),(c:?___fltol)
	movff	(c:___fltol@f1+1),(c:?___fltol+1)
	movff	(c:___fltol@f1+2),(c:?___fltol+2)
	movff	(c:___fltol@f1+3),(c:?___fltol+3)
	line	70
	
l715:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    2[COMRAM] long 
;;  ff2             4    6[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;;		_format_double
;;		_floor
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	6
	
l3091:
	
	btfss	((c:___flge@ff1+3)),c,(31)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l3095
u2870:
	line	7
	
l3093:
	negf	((c:___flge@ff1)),c
	comf	((c:___flge@ff1+1)),c
	btfsc	status,0
	incf	((c:___flge@ff1+1)),c
	comf	((c:___flge@ff1+2)),c
	btfsc	status,0
	incf	((c:___flge@ff1+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff1+3)),c
	line	8
	
l3095:
	
	btfss	((c:___flge@ff2+3)),c,(31)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l659
u2880:
	line	9
	
l3097:
	negf	((c:___flge@ff2)),c
	comf	((c:___flge@ff2+1)),c
	btfsc	status,0
	incf	((c:___flge@ff2+1)),c
	comf	((c:___flge@ff2+2)),c
	btfsc	status,0
	incf	((c:___flge@ff2+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff2+3)),c
	
l659:
	line	10
	movlw	0
	xorwf	((c:___flge@ff1)),c
	movlw	0
	xorwf	((c:___flge@ff1+1)),c
	movlw	0
	xorwf	((c:___flge@ff1+2)),c
	movlw	080h
	xorwf	((c:___flge@ff1+3)),c
	line	11
	movlw	0
	xorwf	((c:___flge@ff2)),c
	movlw	0
	xorwf	((c:___flge@ff2+1)),c
	movlw	0
	xorwf	((c:___flge@ff2+2)),c
	movlw	080h
	xorwf	((c:___flge@ff2+3)),c
	line	12
		movf	((c:___flge@ff2)),c,w
	subwf	((c:___flge@ff1)),c,w
	movf	((c:___flge@ff2+1)),c,w
	subwfb	((c:___flge@ff1+1)),c,w
	movf	((c:___flge@ff2+2)),c,w
	subwfb	((c:___flge@ff1+2)),c,w
	movf	((c:___flge@ff2+3)),c,w
	subwfb	((c:___flge@ff1+3)),c,w
	btfsc	status,0
	goto	u2891
	goto	u2890

u2891:
	goto	l3101
u2890:
	
l3099:
	bcf	status,0
	goto	l660
	
l3101:
	bsf	status,0
	line	13
	
l660:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___altofl

;; *************** function ___altofl *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
;; Parameters:    Size  Location     Type
;;  c               4   94[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   98[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   94[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
	global	__size_of___altofl
	__size_of___altofl	equ	__end_of___altofl-___altofl
	
___altofl:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	40
	
l2967:
	clrf	((c:___altofl@sign)),c
	line	41
	
l2969:
	btfsc	((c:___altofl@c+3)),c,7
	goto	u2630
	goto	u2631

u2631:
	goto	l2975
u2630:
	line	42
	
l2971:
	comf	((c:___altofl@c+3)),c
	comf	((c:___altofl@c+2)),c
	comf	((c:___altofl@c+1)),c
	negf	((c:___altofl@c)),c
	movlw	0
	addwfc	((c:___altofl@c+1)),c
	addwfc	((c:___altofl@c+2)),c
	addwfc	((c:___altofl@c+3)),c
	line	43
	
l2973:
	movlw	low(01h)
	movwf	((c:___altofl@sign)),c
	line	45
	
l2975:
	movff	(c:___altofl@c),(c:___flpack@arg)
	movff	(c:___altofl@c+1),(c:___flpack@arg+1)
	movff	(c:___altofl@c+2),(c:___flpack@arg+2)
	movff	(c:___altofl@c+3),(c:___flpack@arg+3)
	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movff	(c:___altofl@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___altofl)
	movff	1+?___flpack,(c:?___altofl+1)
	movff	2+?___flpack,(c:?___altofl+2)
	movff	3+?___flpack,(c:?___altofl+3)
	
	line	46
	
l463:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___altofl
	__end_of___altofl:
	signat	___altofl,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
;; Parameters:    Size  Location     Type
;;  f1              4   54[COMRAM] unsigned char 
;;  f2              4   58[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   54[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;;		_format_double
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	20
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	20
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	23
	
l3231:
	movf	((c:___flsub@f2)),c,w
iorwf	((c:___flsub@f2+1)),c,w
iorwf	((c:___flsub@f2+2)),c,w
iorwf	((c:___flsub@f2+3)),c,w
	btfsc	status,2
	goto	u3071
	goto	u3070

u3071:
	goto	l3235
u3070:
	line	24
	
l3233:
	movlw	0
	xorwf	((c:___flsub@f2)),c
	movlw	0
	xorwf	((c:___flsub@f2+1)),c
	movlw	0
	xorwf	((c:___flsub@f2+2)),c
	movlw	080h
	xorwf	((c:___flsub@f2+3)),c
	line	30
	
l3235:
	movff	(c:___flsub@f1),(c:___fladd@f1)
	movff	(c:___flsub@f1+1),(c:___fladd@f1+1)
	movff	(c:___flsub@f1+2),(c:___fladd@f1+2)
	movff	(c:___flsub@f1+3),(c:___fladd@f1+3)
	movff	(c:___flsub@f2),(c:___fladd@f2)
	movff	(c:___flsub@f2+1),(c:___fladd@f2+1)
	movff	(c:___flsub@f2+2),(c:___fladd@f2+2)
	movff	(c:___flsub@f2+3),(c:___fladd@f2+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:?___flsub)
	movff	1+?___fladd,(c:?___flsub+1)
	movff	2+?___fladd,(c:?___flsub+2)
	movff	3+?___fladd,(c:?___flsub+3)
	
	line	32
	
l711:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
global __ptext20
__ptext20:
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
	global	__size_of___flneg
	__size_of___flneg	equ	__end_of___flneg-___flneg
	
___flneg:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	17
	
l3249:; BSR set to: 0

	movf	((c:___flneg@f1)),c,w
iorwf	((c:___flneg@f1+1)),c,w
iorwf	((c:___flneg@f1+2)),c,w
iorwf	((c:___flneg@f1+3)),c,w
	btfsc	status,2
	goto	u3091
	goto	u3090

u3091:
	goto	l3253
u3090:
	line	18
	
l3251:; BSR set to: 0

	movlw	0
	xorwf	((c:___flneg@f1)),c
	movlw	0
	xorwf	((c:___flneg@f1+1)),c
	movlw	0
	xorwf	((c:___flneg@f1+2)),c
	movlw	080h
	xorwf	((c:___flneg@f1+3)),c
	line	19
	
l3253:; BSR set to: 0

	movff	(c:___flneg@f1),(c:?___flneg)
	movff	(c:___flneg@f1+1),(c:?___flneg+1)
	movff	(c:___flneg@f1+2),(c:?___flneg+2)
	movff	(c:___flneg@f1+3),(c:?___flneg+3)
	line	20
	
l677:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 56 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
;; Parameters:    Size  Location     Type
;;  f2              4   12[COMRAM] unsigned char 
;;  f1              4   16[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  f3              4   20[COMRAM] unsigned char 
;;  sign            1   26[COMRAM] unsigned char 
;;  exp             1   25[COMRAM] unsigned char 
;;  cntr            1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;;		_format_double
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	56
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	56
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:; BSR set to: 0

;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	63
	
l3195:
	rlcf	((c:___fldiv@f1+2)),c,w
	rlcf	((c:___fldiv@f1+3)),c,w
	movwf	((c:___fldiv@exp)),c
	movf	((c:___fldiv@exp)),c,w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l3199
u3040:
	line	64
	
l3197:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l651
	line	65
	
l3199:
	rlcf	((c:___fldiv@f2+2)),c,w
	rlcf	((c:___fldiv@f2+3)),c,w
	movwf	((c:___fldiv@sign)),c
	movf	((c:___fldiv@sign)),c,w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l3203
u3050:
	line	66
	
l3201:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l651
	line	67
	
l3203:
	movf	((c:___fldiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___fldiv@exp)),c
	line	68
	
l3205:
	movff	0+((c:___fldiv@f1)+03h),(c:___fldiv@sign)
	line	69
	movf	(0+((c:___fldiv@f2)+03h)),c,w
	xorwf	((c:___fldiv@sign)),c
	line	70
	movlw	(080h)&0ffh
	andwf	((c:___fldiv@sign)),c
	line	71
	
l3207:
	bsf	(0+(23/8)+(c:___fldiv@f1)),c,(23)&7
	line	72
	
l3209:
	movlw	0FFh
	andwf	((c:___fldiv@f1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f1+1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f1+2)),c
	movlw	0
	andwf	((c:___fldiv@f1+3)),c
	line	73
	bsf	(0+(23/8)+(c:___fldiv@f2)),c,(23)&7
	line	74
	
l3211:
	movlw	0FFh
	andwf	((c:___fldiv@f2)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+2)),c
	movlw	0
	andwf	((c:___fldiv@f2+3)),c
	line	75
	
l3213:
	movlw	low(020h)
	movwf	((c:___fldiv@cntr)),c
	line	77
	
l3215:
	bcf	status,0
	rlcf	((c:___fldiv@f3)),c
	rlcf	((c:___fldiv@f3+1)),c
	rlcf	((c:___fldiv@f3+2)),c
	rlcf	((c:___fldiv@f3+3)),c
	line	78
	
l3217:
		movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c,w
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c,w
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c,w
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c,w
	btfss	status,0
	goto	u3061
	goto	u3060

u3061:
	goto	l3223
u3060:
	line	79
	
l3219:
	movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c
	line	80
	
l3221:
	bsf	(0+(0/8)+(c:___fldiv@f3)),c,(0)&7
	line	82
	
l3223:
	bcf	status,0
	rlcf	((c:___fldiv@f1)),c
	rlcf	((c:___fldiv@f1+1)),c
	rlcf	((c:___fldiv@f1+2)),c
	rlcf	((c:___fldiv@f1+3)),c
	line	83
	
l3225:
	decfsz	((c:___fldiv@cntr)),c
	
	goto	l3215
	line	84
	
l3227:
	movff	(c:___fldiv@f3),(c:___flpack@arg)
	movff	(c:___fldiv@f3+1),(c:___flpack@arg+1)
	movff	(c:___fldiv@f3+2),(c:___flpack@arg+2)
	movff	(c:___fldiv@f3+3),(c:___flpack@arg+3)
	movff	(c:___fldiv@exp),(c:___flpack@exp)
	movff	(c:___fldiv@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___fldiv)
	movff	1+?___flpack,(c:?___fldiv+1)
	movff	2+?___flpack,(c:?___fldiv+2)
	movff	3+?___flpack,(c:?___fldiv+3)
	
	line	85
	
l651:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	___lltofl

;; *************** function ___lltofl *****************
;; Defined at:
;;		line 30 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
;; Parameters:    Size  Location     Type
;;  c               4   12[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
	global	__size_of___lltofl
	__size_of___lltofl	equ	__end_of___lltofl-___lltofl
	
___lltofl:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	32
	
l3297:
	movff	(c:___lltofl@c),(c:___flpack@arg)
	movff	(c:___lltofl@c+1),(c:___flpack@arg+1)
	movff	(c:___lltofl@c+2),(c:___flpack@arg+2)
	movff	(c:___lltofl@c+3),(c:___flpack@arg+3)
	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movlw	low(0)
	movwf	((c:___flpack@sign)),c
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___lltofl)
	movff	1+?___flpack,(c:?___lltofl+1)
	movff	2+?___flpack,(c:?___lltofl+2)
	movff	3+?___flpack,(c:?___lltofl+3)
	
	line	33
	
l877:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lltofl
	__end_of___lltofl:
	signat	___lltofl,4220
	global	_output_putch
	global	_ser_putch
	global	_format_putchar

;; *************** function _format_putchar *****************
;; Defined at:
;;		line 6 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_format_xint32
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	6
global __ptext23
__ptext23:
psect	text23
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\format.c"
	line	6
	global	__size_of_format_putchar
	__size_of_format_putchar	equ	__end_of_format_putchar-_format_putchar
	
_format_putchar:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	7
	
l3295:
	line	8
;format.c: 7: return;
	
l335:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_putchar
	__end_of_format_putchar:
	signat	_format_putchar,4216

;; *************** function _ser_putch *****************
;; Defined at:
;;		line 82 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMRAM] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_output_putch
;;		_measure_capacitance
;;		_ser_puts
;;		_format_number
;;		_format_xint32
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	82
global __ptext24
__ptext24:
psect	text24
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	82
	global	__size_of_ser_putch
	__size_of_ser_putch	equ	__end_of_ser_putch-_ser_putch
	
_ser_putch:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;ser_putch@c stored from wreg
	movwf	((c:ser_putch@c)),c
	line	83
	
l3163:
;ser.c: 83: while(((txiptr + 1) & ((unsigned char)16 - 1)) == txoptr) continue;
	
l3165:
	incf	((c:_txiptr)),c,w	;volatile
	andlw	low(0Fh)
	xorwf	((c:_txoptr)),c,w	;volatile
	btfsc	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l3165
u2990:
	
l276:
	line	84
;ser.c: 84: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	85
	
l3167:
;ser.c: 85: txfifo[txiptr] = c;
	movlw	low(_txfifo)
	addwf	((c:_txiptr)),c,w	;volatile
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_txfifo)
	addwfc	1+c:fsr2l
	movff	(c:ser_putch@c),indf2

	line	86
	
l3169:
;ser.c: 86: txiptr = (txiptr + 1) & ((unsigned char)16 - 1);
	incf	((c:_txiptr)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:_txiptr)),c	;volatile
	line	87
	
l3171:
;ser.c: 87: TXIE = 1;
	bsf	c:(31980/8),(31980)&7	;volatile
	line	88
	
l3173:
;ser.c: 88: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	89
	
l277:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ser_putch
	__end_of_ser_putch:
	signat	_ser_putch,4216

;; *************** function _output_putch *****************
;; Defined at:
;;		line 48 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMRAM] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_measure_capacitance
;;		_format_number
;;		_format_xint32
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	48
global __ptext25
__ptext25:
psect	text25
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	48
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;output_putch@c stored from wreg
	movwf	((c:output_putch@c)),c
	line	54
	
l3293:
;LC-meter.c: 54: ser_putch(c);
	movf	((c:output_putch@c)),c,w
	
	call	_ser_putch
	line	56
	
l111:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4216
	global	_log10

;; *************** function _log10 *****************
;; Defined at:
;;		line 39 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4   76[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   76[COMRAM] char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___flmul
;;		_log
;; This function is called by:
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
	global	__size_of_log10
	__size_of_log10	equ	__end_of_log10-_log10
	
_log10:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	41
	
l3437:
	movff	(c:log10@x),(c:log@x)
	movff	(c:log10@x+1),(c:log@x+1)
	movff	(c:log10@x+2),(c:log@x+2)
	movff	(c:log10@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(c:_log10$937)
	movff	1+?_log,(c:_log10$937+1)
	movff	2+?_log,(c:_log10$937+2)
	movff	3+?_log,(c:_log10$937+3)
	
	
l3439:
	movff	(c:_log10$937),(c:___flmul@f1)
	movff	(c:_log10$937+1),(c:___flmul@f1+1)
	movff	(c:_log10$937+2),(c:___flmul@f1+2)
	movff	(c:_log10$937+3),(c:___flmul@f1+3)
	movlw	low(0.43429448189999997)
	movwf	((c:___flmul@f2)),c
	movlw	high(0.43429448189999997)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(0.43429448189999997)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(0.43429448189999997)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:?_log10)
	movff	1+?___flmul,(c:?_log10+1)
	movff	2+?___flmul,(c:?_log10+2)
	movff	3+?___flmul,(c:?_log10+3)
	
	line	42
	
l901:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_log10
	__end_of_log10:
	signat	_log10,4220
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4   70[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   74[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   70[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtofl
;;		___fladd
;;		___flmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_log10
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	5
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	24
	
l3301:
	btfsc	((c:log@x+3)),c,7
	goto	u3160
	goto	u3161

u3161:
	goto	l3305
u3160:
	line	26
	
l3303:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l897
	line	28
	
l3305:
	movf	((c:log@x)),c,w
iorwf	((c:log@x+1)),c,w
iorwf	((c:log@x+2)),c,w
iorwf	((c:log@x+3)),c,w
	btfss	status,2
	goto	u3171
	goto	u3170

u3171:
	goto	l3309
u3170:
	line	30
	
l3307:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l897
	line	32
	
l3309:
	movlw	low(2.0000000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(2.0000000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(2.0000000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(2.0000000000000000)
	movwf	((c:___flmul@f2+3)),c
		movlw	low(log@exponent)
	movwf	((c:frexp@eptr)),c
	movlw	high(log@exponent)
	movwf	((c:frexp@eptr+1)),c

	movff	(c:log@x),(c:frexp@value)
	movff	(c:log@x+1),(c:frexp@value+1)
	movff	(c:log@x+2),(c:frexp@value+2)
	movff	(c:log@x+3),(c:frexp@value+3)
	call	_frexp	;wreg free
	movff	0+?_frexp,(c:___flmul@f1)
	movff	1+?_frexp,(c:___flmul@f1+1)
	movff	2+?_frexp,(c:___flmul@f1+2)
	movff	3+?_frexp,(c:___flmul@f1+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@f1)
	movff	1+?___flmul,(c:___fladd@f1+1)
	movff	2+?___flmul,(c:___fladd@f1+2)
	movff	3+?___flmul,(c:___fladd@f1+3)
	
	movlw	low(-1.0000000000000000)
	movwf	((c:___fladd@f2)),c
	movlw	high(-1.0000000000000000)
	movwf	((c:___fladd@f2+1)),c
	movlw	low highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+2)),c
	movlw	high highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+3)),c
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:log@x)
	movff	1+?___fladd,(c:log@x+1)
	movff	2+?___fladd,(c:log@x+2)
	movff	3+?___fladd,(c:log@x+3)
	
	line	33
	
l3311:
	decf	((c:log@exponent)),c
	btfss	status,0
	decf	((c:log@exponent+1)),c
	line	34
	
l3313:
	movff	(c:log@x),(c:eval_poly@x)
	movff	(c:log@x+1),(c:eval_poly@x+1)
	movff	(c:log@x+2),(c:eval_poly@x+2)
	movff	(c:log@x+3),(c:eval_poly@x+3)
		movlw	low(log@coeff)
	movwf	((c:eval_poly@d)),c
	movlw	high(log@coeff)
	movwf	((c:eval_poly@d+1)),c

	movlw	high(08h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(08h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:log@x)
	movff	1+?_eval_poly,(c:log@x+1)
	movff	2+?_eval_poly,(c:log@x+2)
	movff	3+?_eval_poly,(c:log@x+3)
	
	line	35
	
l3315:
	movlw	low(0.69314718055994995)
	movwf	((c:___flmul@f2)),c
	movlw	high(0.69314718055994995)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(0.69314718055994995)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(0.69314718055994995)
	movwf	((c:___flmul@f2+3)),c
	movff	(c:log@exponent),(c:___awtofl@c)
	movff	(c:log@exponent+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(c:___flmul@f1)
	movff	1+?___awtofl,(c:___flmul@f1+1)
	movff	2+?___awtofl,(c:___flmul@f1+2)
	movff	3+?___awtofl,(c:___flmul@f1+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@f1)
	movff	1+?___flmul,(c:___fladd@f1+1)
	movff	2+?___flmul,(c:___fladd@f1+2)
	movff	3+?___flmul,(c:___fladd@f1+3)
	
	movff	(c:log@x),(c:___fladd@f2)
	movff	(c:log@x+1),(c:___fladd@f2+1)
	movff	(c:log@x+2),(c:___fladd@f2+2)
	movff	(c:log@x+3),(c:___fladd@f2+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:?_log)
	movff	1+?___fladd,(c:?_log+1)
	movff	2+?___fladd,(c:?_log+2)
	movff	3+?___fladd,(c:?_log+3)
	
	line	36
	
l897:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4220
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4    2[COMRAM] int 
;;  eptr            2    6[COMRAM] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMRAM] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
global __ptext28
__ptext28:
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	256
	
l3105:
	movf	((c:frexp@value)),c,w
iorwf	((c:frexp@value+1)),c,w
iorwf	((c:frexp@value+2)),c,w
iorwf	((c:frexp@value+3)),c,w
	btfss	status,2
	goto	u2901
	goto	u2900

u2901:
	goto	l3113
u2900:
	line	257
	
l3107:
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l3109:
	clrf	((c:?_frexp)),c
	clrf	((c:?_frexp+1)),c
	clrf	((c:?_frexp+2)),c
	clrf	((c:?_frexp+3)),c

	goto	l731
	line	261
	
l3113:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0+0)&0ffh,c
	clrf	(??_frexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_frexp+0+0),c,f
	rlcf	(??_frexp+0+1),c,f
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movff	??_frexp+0+0,postinc2
	movff	??_frexp+0+1,postdec2

	line	262
	btfsc	(0+((c:frexp@value)+02h)),c,7
	goto	u2911
	goto	u2910
u2911:
	movlw	1
	goto	u2916
u2910:
	movlw	0
u2916:
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l3115:
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l3117:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	(0+((c:frexp@value)+03h)),c
	line	269
	
l3119:
	bcf	(0+((c:frexp@value)+02h)),c,7
	line	273
	
l3121:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	movff	(c:frexp@value+3),(c:?_frexp+3)
	line	274
	
l731:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8316
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               4   54[COMRAM] PTR int 
;;  d               2   58[COMRAM] PTR const 
;;		 -> exp@coeff(40), log@coeff(36), 
;;  n               2   60[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  res             4   66[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   54[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___fladd
;;		___flmul
;; This function is called by:
;;		_log
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
global __ptext29
__ptext29:
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	8
	
l3287:
	movff	(c:eval_poly@n),??_eval_poly+0+0
	movff	(c:eval_poly@n+1),??_eval_poly+0+0+1
	bcf	status,0
	rlcf	(??_eval_poly+0+0),c
	rlcf	(??_eval_poly+0+1),c
	bcf	status,0
	rlcf	(??_eval_poly+0+0),c
	rlcf	(??_eval_poly+0+1),c
	movff	(c:eval_poly@d),??_eval_poly+2+0
	movff	(c:eval_poly@d+1),??_eval_poly+2+0+1
	movf	(??_eval_poly+0+0),c,w
	addwf	(??_eval_poly+2+0),c
	movf	(??_eval_poly+0+1),c,w
	addwfc	(??_eval_poly+2+1),c
	movff	??_eval_poly+2+0,tblptrl
	movff	??_eval_poly+2+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res+1)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res+2)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res+3)
	line	9
	goto	l3291
	line	10
	
l3289:
	movff	(c:eval_poly@res),(c:___flmul@f2)
	movff	(c:eval_poly@res+1),(c:___flmul@f2+1)
	movff	(c:eval_poly@res+2),(c:___flmul@f2+2)
	movff	(c:eval_poly@res+3),(c:___flmul@f2+3)
	movff	(c:eval_poly@x),(c:___flmul@f1)
	movff	(c:eval_poly@x+1),(c:___flmul@f1+1)
	movff	(c:eval_poly@x+2),(c:___flmul@f1+2)
	movff	(c:eval_poly@x+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@f1)
	movff	1+?___flmul,(c:___fladd@f1+1)
	movff	2+?___flmul,(c:___fladd@f1+2)
	movff	3+?___flmul,(c:___fladd@f1+3)
	
	decf	((c:eval_poly@n)),c
	btfss	status,0
	decf	((c:eval_poly@n+1)),c
	movff	(c:eval_poly@n),??_eval_poly+0+0
	movff	(c:eval_poly@n+1),??_eval_poly+0+0+1
	bcf	status,0
	rlcf	(??_eval_poly+0+0),c
	rlcf	(??_eval_poly+0+1),c
	bcf	status,0
	rlcf	(??_eval_poly+0+0),c
	rlcf	(??_eval_poly+0+1),c
	movff	(c:eval_poly@d),??_eval_poly+2+0
	movff	(c:eval_poly@d+1),??_eval_poly+2+0+1
	movf	(??_eval_poly+0+0),c,w
	addwf	(??_eval_poly+2+0),c
	movf	(??_eval_poly+0+1),c,w
	addwfc	(??_eval_poly+2+1),c
	movff	??_eval_poly+2+0,tblptrl
	movff	??_eval_poly+2+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@f2)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@f2+1)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@f2+2)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@f2+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:eval_poly@res)
	movff	1+?___fladd,(c:eval_poly@res+1)
	movff	2+?___fladd,(c:eval_poly@res+2)
	movff	3+?___fladd,(c:eval_poly@res+3)
	
	line	9
	
l3291:
	movf	((c:eval_poly@n)),c,w
iorwf	((c:eval_poly@n+1)),c,w
	btfss	status,2
	goto	u3151
	goto	u3150

u3151:
	goto	l3289
u3150:
	
l983:
	line	11
	movff	(c:eval_poly@res),(c:?_eval_poly)
	movff	(c:eval_poly@res+1),(c:?_eval_poly+1)
	movff	(c:eval_poly@res+2),(c:?_eval_poly+2)
	movff	(c:eval_poly@res+3),(c:?_eval_poly+3)
	line	12
	
l984:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12412
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
;; Parameters:    Size  Location     Type
;;  f1              4   27[COMRAM] int 
;;  f2              4   31[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    4   36[COMRAM] unsigned long 
;;  sign            1   41[COMRAM] unsigned char 
;;  cntr            1   40[COMRAM] unsigned char 
;;  exp             1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   27[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;;		_format_double
;;		_log
;;		_log10
;;		_pow
;;		_eval_poly
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
global __ptext30
__ptext30:
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	67
	
l3045:
	rlcf	((c:___flmul@f1+2)),c,w
	rlcf	((c:___flmul@f1+3)),c,w
	movwf	((c:___flmul@exp)),c
	movf	((c:___flmul@exp)),c,w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l3049
u2830:
	line	68
	
l3047:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l666
	line	69
	
l3049:
	rlcf	((c:___flmul@f2+2)),c,w
	rlcf	((c:___flmul@f2+3)),c,w
	movwf	((c:___flmul@sign)),c
	movf	((c:___flmul@sign)),c,w
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l3053
u2840:
	line	70
	
l3051:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l666
	line	71
	
l3053:
	movf	((c:___flmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___flmul@exp)),c
	line	72
	
l3055:
	movff	0+((c:___flmul@f1)+03h),(c:___flmul@sign)
	line	73
	movf	(0+((c:___flmul@f2)+03h)),c,w
	xorwf	((c:___flmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___flmul@sign)),c
	line	75
	
l3057:
	bsf	(0+(23/8)+(c:___flmul@f1)),c,(23)&7
	line	77
	
l3059:
	bsf	(0+(23/8)+(c:___flmul@f2)),c,(23)&7
	line	78
	movlw	0FFh
	andwf	((c:___flmul@f2)),c
	movlw	0FFh
	andwf	((c:___flmul@f2+1)),c
	movlw	0FFh
	andwf	((c:___flmul@f2+2)),c
	movlw	0
	andwf	((c:___flmul@f2+3)),c
	line	79
	
l3061:
	clrf	((c:___flmul@f3_as_product)),c
	clrf	((c:___flmul@f3_as_product+1)),c
	clrf	((c:___flmul@f3_as_product+2)),c
	clrf	((c:___flmul@f3_as_product+3)),c

	line	197
	
l3063:
	movlw	low(07h)
	movwf	((c:___flmul@cntr)),c
	line	199
	
l3065:
	
	btfss	((c:___flmul@f1)),c,(0)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l3069
u2850:
	line	200
	
l3067:
	movf	((c:___flmul@f2)),c,w
	addwf	((c:___flmul@f3_as_product)),c
	movf	((c:___flmul@f2+1)),c,w
	addwfc	((c:___flmul@f3_as_product+1)),c
	movf	((c:___flmul@f2+2)),c,w
	addwfc	((c:___flmul@f3_as_product+2)),c
	movf	((c:___flmul@f2+3)),c,w
	addwfc	((c:___flmul@f3_as_product+3)),c
	line	201
	
l3069:
	bcf	status,0
	rrcf	((c:___flmul@f1+3)),c
	rrcf	((c:___flmul@f1+2)),c
	rrcf	((c:___flmul@f1+1)),c
	rrcf	((c:___flmul@f1)),c
	line	202
	
l3071:
	bcf	status,0
	rlcf	((c:___flmul@f2)),c
	rlcf	((c:___flmul@f2+1)),c
	rlcf	((c:___flmul@f2+2)),c
	rlcf	((c:___flmul@f2+3)),c
	line	203
	
l3073:
	decfsz	((c:___flmul@cntr)),c
	
	goto	l3065
	line	206
	
l3075:
	movlw	low(011h)
	movwf	((c:___flmul@cntr)),c
	line	208
	
l3077:
	
	btfss	((c:___flmul@f1)),c,(0)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l3081
u2860:
	line	209
	
l3079:
	movf	((c:___flmul@f2)),c,w
	addwf	((c:___flmul@f3_as_product)),c
	movf	((c:___flmul@f2+1)),c,w
	addwfc	((c:___flmul@f3_as_product+1)),c
	movf	((c:___flmul@f2+2)),c,w
	addwfc	((c:___flmul@f3_as_product+2)),c
	movf	((c:___flmul@f2+3)),c,w
	addwfc	((c:___flmul@f3_as_product+3)),c
	line	210
	
l3081:
	bcf	status,0
	rrcf	((c:___flmul@f1+3)),c
	rrcf	((c:___flmul@f1+2)),c
	rrcf	((c:___flmul@f1+1)),c
	rrcf	((c:___flmul@f1)),c
	line	211
	
l3083:
	bcf	status,0
	rrcf	((c:___flmul@f3_as_product+3)),c
	rrcf	((c:___flmul@f3_as_product+2)),c
	rrcf	((c:___flmul@f3_as_product+1)),c
	rrcf	((c:___flmul@f3_as_product)),c
	line	212
	
l3085:
	decfsz	((c:___flmul@cntr)),c
	
	goto	l3077
	line	219
	
l3087:
	movff	(c:___flmul@f3_as_product),(c:___flpack@arg)
	movff	(c:___flmul@f3_as_product+1),(c:___flpack@arg+1)
	movff	(c:___flmul@f3_as_product+2),(c:___flpack@arg+2)
	movff	(c:___flmul@f3_as_product+3),(c:___flpack@arg+3)
	movff	(c:___flmul@exp),(c:___flpack@exp)
	movff	(c:___flmul@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___flmul)
	movff	1+?___flpack,(c:?___flmul+1)
	movff	2+?___flpack,(c:?___flmul+2)
	movff	3+?___flpack,(c:?___flmul+3)
	
	line	220
	
l666:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 88 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
;; Parameters:    Size  Location     Type
;;  f1              4   42[COMRAM] unsigned char 
;;  f2              4   46[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   53[COMRAM] unsigned char 
;;  exp2            1   52[COMRAM] unsigned char 
;;  sign            1   51[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   42[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_floor
;;		___flsub
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
global __ptext31
__ptext31:
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	92
	
l2979:
	rlcf	((c:___fladd@f1+2)),c,w
	rlcf	((c:___fladd@f1+3)),c,w
	movwf	((c:___fladd@exp1)),c
	line	93
	rlcf	((c:___fladd@f2+2)),c,w
	rlcf	((c:___fladd@f2+3)),c,w
	movwf	((c:___fladd@exp2)),c
	line	94
	movf	((c:___fladd@exp1)),c,w
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l619
u2640:
	
l2981:
		movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	btfsc	status,0
	goto	u2651
	goto	u2650

u2651:
	goto	l2985
u2650:
	
l2983:
	movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2661
	goto	u2660

u2661:
	goto	l2985
u2660:
	
l619:
	line	95
	movff	(c:___fladd@f2),(c:?___fladd)
	movff	(c:___fladd@f2+1),(c:?___fladd+1)
	movff	(c:___fladd@f2+2),(c:?___fladd+2)
	movff	(c:___fladd@f2+3),(c:?___fladd+3)
	goto	l620
	line	96
	
l2985:
	movf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l623
u2670:
	
l2987:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l2991
u2680:
	
l2989:
	movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2691
	goto	u2690

u2691:
	goto	l2991
u2690:
	
l623:
	line	97
	movff	(c:___fladd@f1),(c:?___fladd)
	movff	(c:___fladd@f1+1),(c:?___fladd+1)
	movff	(c:___fladd@f1+2),(c:?___fladd+2)
	movff	(c:___fladd@f1+3),(c:?___fladd+3)
	goto	l620
	line	98
	
l2991:
	movlw	low(06h)
	movwf	((c:___fladd@sign)),c
	line	99
	
l2993:
	
	btfss	((c:___fladd@f1+3)),c,(31)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l2997
u2700:
	line	100
	
l2995:
	bsf	(0+(7/8)+(c:___fladd@sign)),c,(7)&7
	line	101
	
l2997:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l625
u2710:
	line	102
	
l2999:
	bsf	(0+(6/8)+(c:___fladd@sign)),c,(6)&7
	
l625:
	line	103
	bsf	(0+(23/8)+(c:___fladd@f1)),c,(23)&7
	line	104
	
l3001:
	movlw	0FFh
	andwf	((c:___fladd@f1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+2)),c
	movlw	0
	andwf	((c:___fladd@f1+3)),c
	line	105
	
l3003:
	bsf	(0+(23/8)+(c:___fladd@f2)),c,(23)&7
	line	106
	movlw	0FFh
	andwf	((c:___fladd@f2)),c
	movlw	0FFh
	andwf	((c:___fladd@f2+1)),c
	movlw	0FFh
	andwf	((c:___fladd@f2+2)),c
	movlw	0
	andwf	((c:___fladd@f2+3)),c
	line	108
		movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	btfsc	status,0
	goto	u2721
	goto	u2720

u2721:
	goto	l3015
u2720:
	line	112
	
l3005:
	bcf	status,0
	rlcf	((c:___fladd@f2)),c
	rlcf	((c:___fladd@f2+1)),c
	rlcf	((c:___fladd@f2+2)),c
	rlcf	((c:___fladd@f2+3)),c
	line	113
	decf	((c:___fladd@exp2)),c
	line	114
	
l3007:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2731
	goto	u2730

u2731:
	goto	l3013
u2730:
	
l3009:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l3005
u2740:
	goto	l3013
	line	116
	
l3011:
	bcf	status,0
	rrcf	((c:___fladd@f1+3)),c
	rrcf	((c:___fladd@f1+2)),c
	rrcf	((c:___fladd@f1+1)),c
	rrcf	((c:___fladd@f1)),c
	line	117
	incf	((c:___fladd@exp1)),c
	line	115
	
l3013:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u2751
	goto	u2750

u2751:
	goto	l3011
u2750:
	goto	l634
	line	119
	
l3015:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u2761
	goto	u2760

u2761:
	goto	l634
u2760:
	line	123
	
l3017:
	bcf	status,0
	rlcf	((c:___fladd@f1)),c
	rlcf	((c:___fladd@f1+1)),c
	rlcf	((c:___fladd@f1+2)),c
	rlcf	((c:___fladd@f1+3)),c
	line	124
	decf	((c:___fladd@exp1)),c
	line	125
	
l3019:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2771
	goto	u2770

u2771:
	goto	l3025
u2770:
	
l3021:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3017
u2780:
	goto	l3025
	line	127
	
l3023:
	bcf	status,0
	rrcf	((c:___fladd@f2+3)),c
	rrcf	((c:___fladd@f2+2)),c
	rrcf	((c:___fladd@f2+1)),c
	rrcf	((c:___fladd@f2)),c
	line	128
	incf	((c:___fladd@exp2)),c
	line	126
	
l3025:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u2791
	goto	u2790

u2791:
	goto	l3023
u2790:
	line	131
	
l634:
	
	btfss	((c:___fladd@sign)),c,(7)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l3029
u2800:
	line	133
	
l3027:
	movlw	0FFh
	xorwf	((c:___fladd@f1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f1+1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f1+2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f1+3)),c
	line	134
	movlw	low(01h)
	addwf	((c:___fladd@f1)),c
	movlw	0
	addwfc	((c:___fladd@f1+1)),c
	addwfc	((c:___fladd@f1+2)),c
	addwfc	((c:___fladd@f1+3)),c
	line	136
	
l3029:
	
	btfss	((c:___fladd@sign)),c,(6)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l3033
u2810:
	line	138
	
l3031:
	movlw	0FFh
	xorwf	((c:___fladd@f2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+3)),c
	line	139
	movlw	low(01h)
	addwf	((c:___fladd@f2)),c
	movlw	0
	addwfc	((c:___fladd@f2+1)),c
	addwfc	((c:___fladd@f2+2)),c
	addwfc	((c:___fladd@f2+3)),c
	line	141
	
l3033:
	clrf	((c:___fladd@sign)),c
	line	142
	movf	((c:___fladd@f1)),c,w
	addwf	((c:___fladd@f2)),c
	movf	((c:___fladd@f1+1)),c,w
	addwfc	((c:___fladd@f2+1)),c
	movf	((c:___fladd@f1+2)),c,w
	addwfc	((c:___fladd@f2+2)),c
	movf	((c:___fladd@f1+3)),c,w
	addwfc	((c:___fladd@f2+3)),c
	line	143
	
l3035:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l3041
u2820:
	line	144
	
l3037:
	movlw	0FFh
	xorwf	((c:___fladd@f2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+3)),c
	line	145
	movlw	low(01h)
	addwf	((c:___fladd@f2)),c
	movlw	0
	addwfc	((c:___fladd@f2+1)),c
	addwfc	((c:___fladd@f2+2)),c
	addwfc	((c:___fladd@f2+3)),c
	line	146
	
l3039:
	movlw	low(01h)
	movwf	((c:___fladd@sign)),c
	line	148
	
l3041:
	movff	(c:___fladd@f2),(c:___flpack@arg)
	movff	(c:___fladd@f2+1),(c:___flpack@arg+1)
	movff	(c:___fladd@f2+2),(c:___flpack@arg+2)
	movff	(c:___fladd@f2+3),(c:___flpack@arg+3)
	movff	(c:___fladd@exp1),(c:___flpack@exp)
	movff	(c:___fladd@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___fladd)
	movff	1+?___flpack,(c:?___fladd+1)
	movff	2+?___flpack,(c:?___fladd+2)
	movff	3+?___flpack,(c:?___fladd+3)
	
	line	149
	
l620:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___awtofl

;; *************** function ___awtofl *****************
;; Defined at:
;;		line 31 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   12[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  f1              4    0        int 
;;  sign            1   16[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_format_double
;;		_log
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
global __ptext32
__ptext32:
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
	global	__size_of___awtofl
	__size_of___awtofl	equ	__end_of___awtofl-___awtofl
	
___awtofl:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	36
	
l3239:
	clrf	((c:___awtofl@sign)),c
	line	37
	
l3241:
	btfsc	((c:___awtofl@c+1)),c,7
	goto	u3080
	goto	u3081

u3081:
	goto	l3245
u3080:
	line	38
	
l3243:
	negf	((c:___awtofl@c)),c
	comf	((c:___awtofl@c+1)),c
	btfsc	status,0
	incf	((c:___awtofl@c+1)),c
	line	39
	incf	((c:___awtofl@sign)),c
	line	41
	
l3245:
	movff	(c:___awtofl@c),(c:___flpack@arg)
	movff	(c:___awtofl@c+1),(c:___flpack@arg+1)
	clrf	((c:___flpack@arg+2)),c
	clrf	((c:___flpack@arg+3)),c

	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movff	(c:___awtofl@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___awtofl)
	movff	1+?___flpack,(c:?___awtofl+1)
	movff	2+?___flpack,(c:?___awtofl+2)
	movff	3+?___flpack,(c:?___awtofl+3)
	
	line	42
	
l587:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awtofl
	__end_of___awtofl:
	signat	___awtofl,4220
	global	_indicator

;; *************** function _indicator *****************
;; Defined at:
;;		line 469 in file "C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : E/0
;;		On exit  : E/0
;;		Unchanged: E/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
	line	469
global __ptext33
__ptext33:
psect	text33
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\print.c"
	line	469
	global	__size_of_indicator
	__size_of_indicator	equ	__end_of_indicator-_indicator
	
_indicator:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	490
	
l217:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_indicator
	__end_of_indicator:
	signat	_indicator,4216
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 346 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwtofl
;;		_delay10ms
;;		_measure_freq
;;		_ser_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	346
global __ptext34
__ptext34:
psect	text34
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	346
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	360
	
l3557:; BSR set to: 0

;LC-meter.c: 347: unsigned char i;
;LC-meter.c: 360: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	362
	
l3559:; BSR set to: 0

;LC-meter.c: 362: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F1)
	movff	1+?___lwtofl,(_F1+1)
	movff	2+?___lwtofl,(_F1+2)
	movff	3+?___lwtofl,(_F1+3)
	
	line	363
;LC-meter.c: 363: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	365
;LC-meter.c: 365: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F1)
	movff	1+?___lwtofl,(_F1+1)
	movff	2+?___lwtofl,(_F1+2)
	movff	3+?___lwtofl,(_F1+3)
	
	line	366
	
l3561:
;LC-meter.c: 366: LATC5 = 1;
	bsf	c:(31837/8),(31837)&7	;volatile
	line	368
;LC-meter.c: 368: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F2)
	movff	1+?___lwtofl,(_F2+1)
	movff	2+?___lwtofl,(_F2+2)
	movff	3+?___lwtofl,(_F2+3)
	
	line	369
;LC-meter.c: 369: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	371
;LC-meter.c: 371: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F2)
	movff	1+?___lwtofl,(_F2+1)
	movff	2+?___lwtofl,(_F2+2)
	movff	3+?___lwtofl,(_F2+3)
	
	line	372
	
l3563:
;LC-meter.c: 372: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	384
	
l3565:
;LC-meter.c: 384: ser_puts("\r\n");
		movlw	low(STR_3)
	movwf	((c:ser_puts@s)),c
	movlw	high(STR_3)
	movwf	((c:ser_puts@s+1)),c

	call	_ser_puts	;wreg free
	line	385
	
l159:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,88
	global	_ser_puts

;; *************** function _ser_puts *****************
;; Defined at:
;;		line 92 in file "C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMRAM] PTR const char 
;;		 -> STR_11(3), STR_10(5), STR_9(3), STR_8(8), 
;;		 -> STR_7(6), STR_6(6), STR_5(6), STR_4(5), 
;;		 -> STR_3(3), STR_2(3), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_main
;;		_calibrate
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	92
global __ptext35
__ptext35:
psect	text35
	file	"C:\Users\vboxuser\Desktop\lc-meter\lib\ser.c"
	line	92
	global	__size_of_ser_puts
	__size_of_ser_puts	equ	__end_of_ser_puts-_ser_puts
	
_ser_puts:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	93
	
l3477:
;ser.c: 93: while(*s) ser_putch(*s++);
	goto	l3483
	
l3479:
	movff	(c:ser_puts@s),tblptrl
	movff	(c:ser_puts@s+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w
	
	call	_ser_putch
	
l3481:
	infsnz	((c:ser_puts@s)),c
	incf	((c:ser_puts@s+1)),c
	
l3483:
	movff	(c:ser_puts@s),tblptrl
	movff	(c:ser_puts@s+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3479
u3440:
	line	94
	
l283:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ser_puts
	__end_of_ser_puts:
	signat	_ser_puts,4216
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 299 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    7[COMRAM] char 
;;  count           2    8[COMRAM] unsigned short 
;;  prev            1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	299
global __ptext36
__ptext36:
psect	text36
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	299
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	303
	
l3485:
;LC-meter.c: 300: unsigned char prev;
;LC-meter.c: 301: unsigned short int count;
;LC-meter.c: 303: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	305
	
l3487:
;LC-meter.c: 305: TRISA &= ~0b00010000;
	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	308
	
l3489:
;LC-meter.c: 308: _delay((unsigned long)((20)*(20000000/4000.0)));
	movlw	98
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	118
u3637:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	goto	u3637
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3637
	nop2

	line	310
	
l3491:
;LC-meter.c: 310: TMR0 = 0x00;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	312
	
l3493:
;LC-meter.c: 312: for(char i = 0; i < 10; i++) _delay((unsigned long)((10)*(20000000/4000.0)));
	clrf	((c:measure_freq@i)),c
	
l3497:
	movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u3647:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	goto	u3647
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3647

	
l3499:
	incf	((c:measure_freq@i)),c
		movf	((c:measure_freq@i)),c,w
	xorlw	80h
	addlw	-(80h^0Ah)
	btfss	status,0
	goto	u3451
	goto	u3450

u3451:
	goto	l3497
u3450:
	line	314
	
l3501:
;LC-meter.c: 314: TRISA |= 0b00010000;
	bsf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	316
	
l3503:
;LC-meter.c: 316: prev = TMR0;
	movff	(c:4054),(c:measure_freq@prev)	;volatile
	line	317
	
l3505:
;LC-meter.c: 317: count = 0;
	clrf	((c:measure_freq@count)),c
	clrf	((c:measure_freq@count+1)),c
	line	321
	
l3507:
;LC-meter.c: 321: T0SE = 1;
	bsf	c:(32428/8),(32428)&7	;volatile
	line	322
	
l3509:
;LC-meter.c: 322: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	323
	
l3511:
;LC-meter.c: 323: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	325
	
l3513:
;LC-meter.c: 325: T0SE = 0;
	bcf	c:(32428/8),(32428)&7	;volatile
	line	326
	
l3515:
;LC-meter.c: 326: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	327
	
l3517:
;LC-meter.c: 327: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	328
;LC-meter.c: 328: count++;
	infsnz	((c:measure_freq@count)),c
	incf	((c:measure_freq@count+1)),c
	line	329
	
l3519:
;LC-meter.c: 329: } while(prev == TMR0 && count <= 255);
	movf	((c:measure_freq@prev)),c,w
	xorwf	((c:4054)),c,w	;volatile
	iorwf	((c:4054+1)),c,w	;volatile

	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3523
u3460:
	
l3521:
		decf	((c:measure_freq@count+1)),c,w
	btfss	status,0
	goto	u3471
	goto	u3470

u3471:
	goto	l3507
u3470:
	line	332
	
l3523:
;LC-meter.c: 332: count = ((prev << 8) + (256 - count));
	movf	((c:measure_freq@prev)),c,w
	movwf	(??_measure_freq+0+0+1)&0ffh,c
	clrf	(??_measure_freq+0+0)&0ffh,c
	movf	((c:measure_freq@count)),c,w
	subwf	(??_measure_freq+0+0),c
	movf	((c:measure_freq@count+1)),c,w
	subwfb	(??_measure_freq+0+1),c
	movlw	low(0100h)
	addwf	(??_measure_freq+0+0),c,w
	movwf	((c:measure_freq@count)),c
	movlw	high(0100h)
	addwfc	(??_measure_freq+0+1),c,w
	movwf	1+((c:measure_freq@count)),c
	line	339
	
l3525:
;LC-meter.c: 339: return count;
	movff	(c:measure_freq@count),(c:?_measure_freq)
	movff	(c:measure_freq@count+1),(c:?_measure_freq+1)
	line	340
	
l156:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
	signat	_measure_freq,90
	global	_delay10ms

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 532 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     2    8[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  ms              4   10[COMRAM] unsigned long 
;;  run             1   14[COMRAM] enum E2497
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	line	532
global __ptext37
__ptext37:
psect	text37
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	532
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	537
	
l2555:
;LC-meter.c: 536: unsigned long int ms;
;LC-meter.c: 537: BOOL run = 1;
	movlw	low(01h)
	movwf	((c:delay10ms@run)),c
	line	539
	
l2557:
;LC-meter.c: 539: GIE = 0, ms = msecs, GIE = 1;
	bcf	c:(32663/8),(32663)&7	;volatile
	
l2559:
	movff	(_msecs),(c:delay10ms@ms)	;volatile
	movff	(_msecs+1),(c:delay10ms@ms+1)	;volatile
	movff	(_msecs+2),(c:delay10ms@ms+2)	;volatile
	movff	(_msecs+3),(c:delay10ms@ms+3)	;volatile
	
l2561:
	bsf	c:(32663/8),(32663)&7	;volatile
	line	544
	
l2563:
;LC-meter.c: 544: ms += period_10ms * 10;
	movff	(c:delay10ms@period_10ms),(c:___wmul@multiplier)
	movff	(c:delay10ms@period_10ms+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	addwf	((c:delay10ms@ms)),c
	movf	(1+?___wmul),c,w
	addwfc	((c:delay10ms@ms+1)),c
	movlw	0
	addwfc	((c:delay10ms@ms+2)),c
	movlw	0
	addwfc	((c:delay10ms@ms+3)),c

	line	548
	
l2565:
;LC-meter.c: 548: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	549
	
l2567:
;LC-meter.c: 549: if(ms <= msecs)
		movf	((c:delay10ms@ms)),c,w
	movlb	0	; () banked
	subwf	((_msecs))&0ffh,w	;volatile
	movf	((c:delay10ms@ms+1)),c,w
	subwfb	((_msecs+1))&0ffh,w	;volatile
	movf	((c:delay10ms@ms+2)),c,w
	subwfb	((_msecs+2))&0ffh,w	;volatile
	movf	((c:delay10ms@ms+3)),c,w
	subwfb	((_msecs+3))&0ffh,w	;volatile
	btfss	status,0
	goto	u2191
	goto	u2190

u2191:
	goto	l183
u2190:
	line	550
	
l2569:; BSR set to: 0

;LC-meter.c: 550: run = 0;
	clrf	((c:delay10ms@run)),c
	
l183:; BSR set to: 0

	line	551
;LC-meter.c: 551: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	552
	
l2571:; BSR set to: 0

;LC-meter.c: 552: } while(run);
	movf	((c:delay10ms@run)),c,w
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l2565
u2200:
	line	553
	
l185:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
	signat	_delay10ms,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMRAM] unsigned int 
;;  multiplicand    2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay10ms
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
	line	15
global __ptext38
__ptext38:
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:; BSR set to: 0

;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	43
	
l2547:
	clrf	((c:___wmul@product)),c
	clrf	((c:___wmul@product+1)),c
	line	44
	
l372:
	line	45
	
	btfss	((c:___wmul@multiplier)),c,(0)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l2551
u2170:
	line	46
	
l2549:
	movf	((c:___wmul@multiplicand)),c,w
	addwf	((c:___wmul@product)),c
	movf	((c:___wmul@multiplicand+1)),c,w
	addwfc	((c:___wmul@product+1)),c

	line	47
	
l2551:
	bcf	status,0
	rlcf	((c:___wmul@multiplicand)),c
	rlcf	((c:___wmul@multiplicand+1)),c
	line	48
	
l2553:
	bcf	status,0
	rrcf	((c:___wmul@multiplier+1)),c
	rrcf	((c:___wmul@multiplier)),c
	line	49
	movf	((c:___wmul@multiplier)),c,w
iorwf	((c:___wmul@multiplier+1)),c,w
	btfss	status,2
	goto	u2181
	goto	u2180

u2181:
	goto	l372
u2180:
	
l374:
	line	52
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	line	53
	
l375:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwtofl

;; *************** function ___lwtofl *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   12[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
global __ptext39
__ptext39:
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	30
	
l3553:
	movff	(c:___lwtofl@c),(c:___flpack@arg)
	movff	(c:___lwtofl@c+1),(c:___flpack@arg+1)
	clrf	((c:___flpack@arg+2)),c
	clrf	((c:___flpack@arg+3)),c

	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movlw	low(0)
	movwf	((c:___flpack@sign)),c
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___lwtofl)
	movff	1+?___flpack,(c:?___lwtofl+1)
	movff	2+?___flpack,(c:?___lwtofl+2)
	movff	3+?___flpack,(c:?___lwtofl+3)
	
	line	31
	
l956:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwtofl
	__end_of___lwtofl:
	signat	___lwtofl,4220
	global	___flpack

;; *************** function ___flpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
;; Parameters:    Size  Location     Type
;;  arg             4    2[COMRAM] unsigned long 
;;  exp             1    6[COMRAM] unsigned char 
;;  sign            1    7[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altofl
;;		___awtofl
;;		___fladd
;;		___fldiv
;;		___flmul
;;		___lltofl
;;		___lwtofl
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
global __ptext40
__ptext40:
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	65
	
l2937:
	movf	((c:___flpack@exp)),c,w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l598
u2550:
	
l2939:
	movf	((c:___flpack@arg)),c,w
iorwf	((c:___flpack@arg+1)),c,w
iorwf	((c:___flpack@arg+2)),c,w
iorwf	((c:___flpack@arg+3)),c,w
	btfss	status,2
	goto	u2561
	goto	u2560

u2561:
	goto	l2943
u2560:
	
l598:
	line	66
	clrf	((c:?___flpack)),c
	clrf	((c:?___flpack+1)),c
	clrf	((c:?___flpack+2)),c
	clrf	((c:?___flpack+3)),c

	goto	l599
	line	68
	
l2941:
	incf	((c:___flpack@exp)),c
	line	69
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	67
	
l2943:
	movlw	0
	andwf	((c:___flpack@arg)),c,w
	movwf	(??___flpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___flpack@arg+1)),c,w
	movwf	1+(??___flpack+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___flpack@arg+2)),c,w
	movwf	2+(??___flpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___flpack@arg+3)),c,w
	movwf	3+(??___flpack+0+0)&0ffh,c
	movf	(??___flpack+0+0),c,w
iorwf	(??___flpack+0+1),c,w
iorwf	(??___flpack+0+2),c,w
iorwf	(??___flpack+0+3),c,w
	btfss	status,2
	goto	u2571
	goto	u2570

u2571:
	goto	l2941
u2570:
	goto	l603
	line	72
	
l2945:
	incf	((c:___flpack@exp)),c
	line	73
	
l2947:
	movlw	low(01h)
	addwf	((c:___flpack@arg)),c
	movlw	0
	addwfc	((c:___flpack@arg+1)),c
	addwfc	((c:___flpack@arg+2)),c
	addwfc	((c:___flpack@arg+3)),c
	line	74
	
l2949:
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	75
	
l603:
	line	71
	movlw	0
	andwf	((c:___flpack@arg)),c,w
	movwf	(??___flpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___flpack@arg+1)),c,w
	movwf	1+(??___flpack+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___flpack@arg+2)),c,w
	movwf	2+(??___flpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___flpack@arg+3)),c,w
	movwf	3+(??___flpack+0+0)&0ffh,c
	movf	(??___flpack+0+0),c,w
iorwf	(??___flpack+0+1),c,w
iorwf	(??___flpack+0+2),c,w
iorwf	(??___flpack+0+3),c,w
	btfss	status,2
	goto	u2581
	goto	u2580

u2581:
	goto	l2945
u2580:
	goto	l2953
	line	77
	
l2951:
	decf	((c:___flpack@exp)),c
	line	78
	bcf	status,0
	rlcf	((c:___flpack@arg)),c
	rlcf	((c:___flpack@arg+1)),c
	rlcf	((c:___flpack@arg+2)),c
	rlcf	((c:___flpack@arg+3)),c
	line	76
	
l2953:
	
	btfsc	((c:___flpack@arg+2)),c,(23)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l610
u2590:
	
l2955:
		movlw	02h-0
	cpfslt	((c:___flpack@exp)),c
	goto	u2601
	goto	u2600

u2601:
	goto	l2951
u2600:
	
l610:
	line	80
	
	btfsc	((c:___flpack@exp)),c,(0)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l611
u2610:
	line	81
	
l2957:
	movlw	0FFh
	andwf	((c:___flpack@arg)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+1)),c
	movlw	07Fh
	andwf	((c:___flpack@arg+2)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+3)),c
	
l611:
	line	82
	bcf status,0
	rrcf	((c:___flpack@exp)),c

	line	83
	movff	(c:___flpack@exp),??___flpack+0+0
	clrf	(??___flpack+0+0+1)&0ffh,c
	clrf	(??___flpack+0+0+2)&0ffh,c
	clrf	(??___flpack+0+0+3)&0ffh,c
	movff	??___flpack+0+0,??___flpack+0+3
	clrf	(??___flpack+0+2),c
	clrf	(??___flpack+0+1),c
	clrf	(??___flpack+0+0),c
	movf	(??___flpack+0+0),c,w
	iorwf	((c:___flpack@arg)),c
	movf	(??___flpack+0+1),c,w
	iorwf	((c:___flpack@arg+1)),c
	movf	(??___flpack+0+2),c,w
	iorwf	((c:___flpack@arg+2)),c
	movf	(??___flpack+0+3),c,w
	iorwf	((c:___flpack@arg+3)),c

	line	84
	
l2959:
	movf	((c:___flpack@sign)),c,w
	btfsc	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l2963
u2620:
	line	85
	
l2961:
	bsf	(0+(31/8)+(c:___flpack@arg)),c,(31)&7
	line	86
	
l2963:
	movff	(c:___flpack@arg),(c:?___flpack)
	movff	(c:___flpack@arg+1),(c:?___flpack+1)
	movff	(c:___flpack@arg+2),(c:?___flpack+2)
	movff	(c:___flpack@arg+3),(c:?___flpack+3)
	line	87
	
l599:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flpack
	__end_of___flpack:
	signat	___flpack,12412
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 79 in file "C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  123[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode
psect	intcode
	file	"C:\Users\vboxuser\Desktop\lc-meter\src\LC-meter.c"
	line	79
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
;incstack = 0
	opt	stack 23
	dw	0FFFFh; errata NOP
	movff	fsr2l+0,??_isr+0
	movff	fsr2h+0,??_isr+1
	line	81
	
i2l2815:
;LC-meter.c: 81: if(TMR2IF) {
	btfss	c:(31985/8),(31985)&7	;volatile
	goto	i2u243_41
	goto	i2u243_40
i2u243_41:
	goto	i2l2839
i2u243_40:
	line	83
	
i2l2817:
;LC-meter.c: 83: bres += 256;
	movlb	0	; () banked
	movlw	(0100h >> 8)
	addwf	((_bres+1))&0ffh	;volatile
	line	85
;LC-meter.c: 85: if(bres >= 5000) {
		movlw	136
	subwf	 ((_bres))&0ffh,w	;volatile
	movlw	19
	subwfb	((_bres+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u244_41
	goto	i2u244_40

i2u244_41:
	goto	i2l2837
i2u244_40:
	line	86
	
i2l2819:; BSR set to: 0

;LC-meter.c: 86: bres -= 5000;
	movlw	low(01388h)
	subwf	((_bres))&0ffh	;volatile
	movlw	high(01388h)
	subwfb	((_bres+1))&0ffh	;volatile
	line	87
	
i2l2821:; BSR set to: 0

;LC-meter.c: 87: msecpart++;
	infsnz	((_msecpart))&0ffh	;volatile
	incf	((_msecpart+1))&0ffh	;volatile
	line	88
	
i2l2823:; BSR set to: 0

;LC-meter.c: 88: msecs++;
	movlw	low(01h)
	addwf	((_msecs))&0ffh	;volatile
	movlw	0
	addwfc	((_msecs+1))&0ffh	;volatile
	addwfc	((_msecs+2))&0ffh	;volatile
	addwfc	((_msecs+3))&0ffh	;volatile
	line	90
	
i2l2825:; BSR set to: 0

;LC-meter.c: 90: LATC3 = (((blink > 200)) == 0);
		movf	((_blink+1))&0ffh,w
	bnz	i2u245_40
	movlw	201
	subwf	 ((_blink))&0ffh,w
	btfss	status,0
	goto	i2u245_41
	goto	i2u245_40

i2u245_41:
	bsf	c:(31835/8),(31835)&7	;volatile
	goto	i2u246_45
i2u245_40:
	bcf	c:(31835/8),(31835)&7	;volatile
i2u246_45:
	line	91
	
i2l2827:
;LC-meter.c: 91: if(blink >= 400)
		movlw	144
	movlb	0	; () banked
	subwf	 ((_blink))&0ffh,w
	movlw	1
	subwfb	((_blink+1))&0ffh,w
	btfss	status,0
	goto	i2u247_41
	goto	i2u247_40

i2u247_41:
	goto	i2l2831
i2u247_40:
	line	92
	
i2l2829:; BSR set to: 0

;LC-meter.c: 92: blink -= 400;
	movlw	low(0190h)
	subwf	((_blink))&0ffh
	movlw	high(0190h)
	subwfb	((_blink+1))&0ffh
	line	93
	
i2l2831:; BSR set to: 0

;LC-meter.c: 93: ++blink;
	infsnz	((_blink))&0ffh
	incf	((_blink+1))&0ffh
	line	96
	
i2l2833:; BSR set to: 0

;LC-meter.c: 96: if(msecpart >= 1000) {
		movlw	232
	subwf	 ((_msecpart))&0ffh,w	;volatile
	movlw	3
	subwfb	((_msecpart+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u248_41
	goto	i2u248_40

i2u248_41:
	goto	i2l2837
i2u248_40:
	line	98
	
i2l2835:; BSR set to: 0

;LC-meter.c: 98: seconds++;
	movlw	low(01h)
	addwf	((_seconds))&0ffh	;volatile
	movlw	0
	addwfc	((_seconds+1))&0ffh	;volatile
	addwfc	((_seconds+2))&0ffh	;volatile
	addwfc	((_seconds+3))&0ffh	;volatile
	line	99
;LC-meter.c: 99: msecpart -= 1000;
	movlw	low(03E8h)
	subwf	((_msecpart))&0ffh	;volatile
	movlw	high(03E8h)
	subwfb	((_msecpart+1))&0ffh	;volatile
	line	103
	
i2l2837:; BSR set to: 0

;LC-meter.c: 100: }
;LC-meter.c: 101: }
;LC-meter.c: 103: TMR2IF = 0;
	bcf	c:(31985/8),(31985)&7	;volatile
	line	106
	
i2l2839:
;LC-meter.c: 104: }
;LC-meter.c: 106: if(RCIF) { rxfifo[rxiptr] = RCREG; ser_tmp = (rxiptr + 1) & ((unsigned char)16 - 1); if(ser_tmp != rxoptr) rxiptr = ser_tmp; }; if(TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= ((unsigned char)16 - 1); if(txoptr == txiptr) { TXIE = 0; }
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u249_41
	goto	i2u249_40
i2u249_41:
	goto	i2l128
i2u249_40:
	
i2l2841:
	movlw	low(_rxfifo)
	addwf	((c:_rxiptr)),c,w	;volatile
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_rxfifo)
	addwfc	1+c:fsr2l
	movff	(c:4014),indf2	;volatile

	
i2l2843:
	incf	((c:_rxiptr)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:_ser_tmp)),c
	
i2l2845:
	movf	((c:_rxoptr)),c,w	;volatile
xorwf	((c:_ser_tmp)),c,w
	btfsc	status,2
	goto	i2u250_41
	goto	i2u250_40

i2u250_41:
	goto	i2l128
i2u250_40:
	
i2l2847:
	movff	(c:_ser_tmp),(c:_rxiptr)	;volatile
	
i2l128:
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	i2u251_41
	goto	i2u251_40
i2u251_41:
	goto	i2l132
i2u251_40:
	
i2l2849:
	btfss	c:(31980/8),(31980)&7	;volatile
	goto	i2u252_41
	goto	i2u252_40
i2u252_41:
	goto	i2l132
i2u252_40:
	
i2l2851:
	movlw	low(_txfifo)
	addwf	((c:_txoptr)),c,w	;volatile
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_txfifo)
	addwfc	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4013)),c	;volatile
	
i2l2853:
	incf	((c:_txoptr)),c	;volatile
	
i2l2855:
	movlw	(0Fh)&0ffh
	andwf	((c:_txoptr)),c	;volatile
	
i2l2857:
	movf	((c:_txiptr)),c,w	;volatile
xorwf	((c:_txoptr)),c,w	;volatile
	btfss	status,2
	goto	i2u253_41
	goto	i2u253_40

i2u253_41:
	goto	i2l131
i2u253_40:
	
i2l2859:
	bcf	c:(31980/8),(31980)&7	;volatile
	
i2l131:
	bcf	c:(31988/8),(31988)&7	;volatile
	line	111
	
i2l132:
	movff	??_isr+1,fsr2h+0
	movff	??_isr+0,fsr2l+0
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,90
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	file ""
	line	0
psect	intcode
fp__format_putchar:
	file ""
	line	0
psect	intcode
fp__ser_putch:
	file ""
	line	0
psect	intcode
fp__output_putch:
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
;;
;; C18 inline assembly external references
;;
TMR0 equ _TMR0
TMR2 equ _TMR2
TXREG equ _TXREG
RCREG equ _RCREG
SPBRG equ _SPBRG
TRISA equ _TRISA
TRISC equ _TRISC
	end
