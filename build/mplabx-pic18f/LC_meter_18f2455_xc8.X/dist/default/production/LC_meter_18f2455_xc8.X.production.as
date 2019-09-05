opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 201502162209"

opt pagewidth 120

	opt pm

	processor	18F2455
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
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTA equ 0F80h ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTB equ 0F81h ;# 
# 2645 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTC equ 0F82h ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTE equ 0F84h ;# 
# 3031 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATA equ 0F89h ;# 
# 3166 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATB equ 0F8Ah ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATC equ 0F8Bh ;# 
# 3413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISA equ 0F92h ;# 
# 3418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRA equ 0F92h ;# 
# 3610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISB equ 0F93h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRB equ 0F93h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISC equ 0F94h ;# 
# 3836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRC equ 0F94h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCTUNE equ 0F9Bh ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE1 equ 0F9Dh ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR1 equ 0F9Eh ;# 
# 4206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR1 equ 0F9Fh ;# 
# 4279 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE2 equ 0FA0h ;# 
# 4349 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR2 equ 0FA1h ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR2 equ 0FA2h ;# 
# 4489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON1 equ 0FA6h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON2 equ 0FA7h ;# 
# 4560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEDATA equ 0FA8h ;# 
# 4566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEADR equ 0FA9h ;# 
# 4572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA equ 0FABh ;# 
# 4577 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA1 equ 0FABh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA equ 0FACh ;# 
# 4786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA1 equ 0FACh ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG equ 0FADh ;# 
# 5083 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG1 equ 0FADh ;# 
# 5089 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG equ 0FAEh ;# 
# 5094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG1 equ 0FAEh ;# 
# 5100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG equ 0FAFh ;# 
# 5105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG1 equ 0FAFh ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRGH equ 0FB0h ;# 
# 5117 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T3CON equ 0FB1h ;# 
# 5239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3 equ 0FB2h ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3L equ 0FB2h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3H equ 0FB3h ;# 
# 5257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CMCON equ 0FB4h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CVRCON equ 0FB5h ;# 
# 5436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1AS equ 0FB6h ;# 
# 5441 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1AS equ 0FB6h ;# 
# 5565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1DEL equ 0FB7h ;# 
# 5570 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1DEL equ 0FB7h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCON equ 0FB8h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCTL equ 0FB8h ;# 
# 5783 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP2CON equ 0FBAh ;# 
# 5846 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2 equ 0FBBh ;# 
# 5852 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2L equ 0FBBh ;# 
# 5858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2H equ 0FBCh ;# 
# 5864 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1CON equ 0FBDh ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1 equ 0FBEh ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1L equ 0FBEh ;# 
# 5939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1H equ 0FBFh ;# 
# 5945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON2 equ 0FC0h ;# 
# 6015 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON1 equ 0FC1h ;# 
# 6105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON0 equ 0FC2h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRES equ 0FC3h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESL equ 0FC3h ;# 
# 6239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESH equ 0FC4h ;# 
# 6245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON2 equ 0FC5h ;# 
# 6306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON1 equ 0FC6h ;# 
# 6375 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPSTAT equ 0FC7h ;# 
# 6641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPADD equ 0FC8h ;# 
# 6647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPBUF equ 0FC9h ;# 
# 6653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T2CON equ 0FCAh ;# 
# 6750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PR2 equ 0FCBh ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
MEMCON equ 0FCBh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR2 equ 0FCCh ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T1CON equ 0FCDh ;# 
# 6969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1 equ 0FCEh ;# 
# 6975 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1L equ 0FCEh ;# 
# 6981 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1H equ 0FCFh ;# 
# 6987 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCON equ 0FD0h ;# 
# 7135 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WDTCON equ 0FD1h ;# 
# 7162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
HLVDCON equ 0FD2h ;# 
# 7167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LVDCON equ 0FD2h ;# 
# 7431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCCON equ 0FD3h ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T0CON equ 0FD5h ;# 
# 7582 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0 equ 0FD6h ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0L equ 0FD6h ;# 
# 7594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0H equ 0FD7h ;# 
# 7600 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STATUS equ 0FD8h ;# 
# 7678 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2 equ 0FD9h ;# 
# 7684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2L equ 0FD9h ;# 
# 7690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2H equ 0FDAh ;# 
# 7696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW2 equ 0FDBh ;# 
# 7702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC2 equ 0FDCh ;# 
# 7708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC2 equ 0FDDh ;# 
# 7714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC2 equ 0FDEh ;# 
# 7720 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF2 equ 0FDFh ;# 
# 7726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BSR equ 0FE0h ;# 
# 7732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1 equ 0FE1h ;# 
# 7738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1L equ 0FE1h ;# 
# 7744 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1H equ 0FE2h ;# 
# 7750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW1 equ 0FE3h ;# 
# 7756 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC1 equ 0FE4h ;# 
# 7762 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC1 equ 0FE5h ;# 
# 7768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC1 equ 0FE6h ;# 
# 7774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF1 equ 0FE7h ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WREG equ 0FE8h ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0 equ 0FE9h ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0L equ 0FE9h ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0H equ 0FEAh ;# 
# 7804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW0 equ 0FEBh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC0 equ 0FECh ;# 
# 7816 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC0 equ 0FEDh ;# 
# 7822 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC0 equ 0FEEh ;# 
# 7828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF0 equ 0FEFh ;# 
# 7834 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON3 equ 0FF0h ;# 
# 7925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON2 equ 0FF1h ;# 
# 8001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON equ 0FF2h ;# 
# 8137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PROD equ 0FF3h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODL equ 0FF3h ;# 
# 8149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODH equ 0FF4h ;# 
# 8155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TABLAT equ 0FF5h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTR equ 0FF6h ;# 
# 8169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRL equ 0FF6h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRH equ 0FF7h ;# 
# 8181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRU equ 0FF8h ;# 
# 8189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLAT equ 0FF9h ;# 
# 8196 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PC equ 0FF9h ;# 
# 8202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCL equ 0FF9h ;# 
# 8208 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATH equ 0FFAh ;# 
# 8214 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATU equ 0FFBh ;# 
# 8220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STKPTR equ 0FFCh ;# 
# 8295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOS equ 0FFDh ;# 
# 8301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSL equ 0FFDh ;# 
# 8307 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSH equ 0FFEh ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTA equ 0F80h ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTB equ 0F81h ;# 
# 2645 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTC equ 0F82h ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTE equ 0F84h ;# 
# 3031 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATA equ 0F89h ;# 
# 3166 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATB equ 0F8Ah ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATC equ 0F8Bh ;# 
# 3413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISA equ 0F92h ;# 
# 3418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRA equ 0F92h ;# 
# 3610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISB equ 0F93h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRB equ 0F93h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISC equ 0F94h ;# 
# 3836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRC equ 0F94h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCTUNE equ 0F9Bh ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE1 equ 0F9Dh ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR1 equ 0F9Eh ;# 
# 4206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR1 equ 0F9Fh ;# 
# 4279 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE2 equ 0FA0h ;# 
# 4349 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR2 equ 0FA1h ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR2 equ 0FA2h ;# 
# 4489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON1 equ 0FA6h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON2 equ 0FA7h ;# 
# 4560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEDATA equ 0FA8h ;# 
# 4566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEADR equ 0FA9h ;# 
# 4572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA equ 0FABh ;# 
# 4577 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA1 equ 0FABh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA equ 0FACh ;# 
# 4786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA1 equ 0FACh ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG equ 0FADh ;# 
# 5083 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG1 equ 0FADh ;# 
# 5089 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG equ 0FAEh ;# 
# 5094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG1 equ 0FAEh ;# 
# 5100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG equ 0FAFh ;# 
# 5105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG1 equ 0FAFh ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRGH equ 0FB0h ;# 
# 5117 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T3CON equ 0FB1h ;# 
# 5239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3 equ 0FB2h ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3L equ 0FB2h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3H equ 0FB3h ;# 
# 5257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CMCON equ 0FB4h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CVRCON equ 0FB5h ;# 
# 5436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1AS equ 0FB6h ;# 
# 5441 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1AS equ 0FB6h ;# 
# 5565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1DEL equ 0FB7h ;# 
# 5570 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1DEL equ 0FB7h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCON equ 0FB8h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCTL equ 0FB8h ;# 
# 5783 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP2CON equ 0FBAh ;# 
# 5846 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2 equ 0FBBh ;# 
# 5852 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2L equ 0FBBh ;# 
# 5858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2H equ 0FBCh ;# 
# 5864 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1CON equ 0FBDh ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1 equ 0FBEh ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1L equ 0FBEh ;# 
# 5939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1H equ 0FBFh ;# 
# 5945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON2 equ 0FC0h ;# 
# 6015 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON1 equ 0FC1h ;# 
# 6105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON0 equ 0FC2h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRES equ 0FC3h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESL equ 0FC3h ;# 
# 6239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESH equ 0FC4h ;# 
# 6245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON2 equ 0FC5h ;# 
# 6306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON1 equ 0FC6h ;# 
# 6375 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPSTAT equ 0FC7h ;# 
# 6641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPADD equ 0FC8h ;# 
# 6647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPBUF equ 0FC9h ;# 
# 6653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T2CON equ 0FCAh ;# 
# 6750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PR2 equ 0FCBh ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
MEMCON equ 0FCBh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR2 equ 0FCCh ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T1CON equ 0FCDh ;# 
# 6969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1 equ 0FCEh ;# 
# 6975 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1L equ 0FCEh ;# 
# 6981 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1H equ 0FCFh ;# 
# 6987 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCON equ 0FD0h ;# 
# 7135 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WDTCON equ 0FD1h ;# 
# 7162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
HLVDCON equ 0FD2h ;# 
# 7167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LVDCON equ 0FD2h ;# 
# 7431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCCON equ 0FD3h ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T0CON equ 0FD5h ;# 
# 7582 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0 equ 0FD6h ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0L equ 0FD6h ;# 
# 7594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0H equ 0FD7h ;# 
# 7600 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STATUS equ 0FD8h ;# 
# 7678 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2 equ 0FD9h ;# 
# 7684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2L equ 0FD9h ;# 
# 7690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2H equ 0FDAh ;# 
# 7696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW2 equ 0FDBh ;# 
# 7702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC2 equ 0FDCh ;# 
# 7708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC2 equ 0FDDh ;# 
# 7714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC2 equ 0FDEh ;# 
# 7720 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF2 equ 0FDFh ;# 
# 7726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BSR equ 0FE0h ;# 
# 7732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1 equ 0FE1h ;# 
# 7738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1L equ 0FE1h ;# 
# 7744 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1H equ 0FE2h ;# 
# 7750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW1 equ 0FE3h ;# 
# 7756 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC1 equ 0FE4h ;# 
# 7762 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC1 equ 0FE5h ;# 
# 7768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC1 equ 0FE6h ;# 
# 7774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF1 equ 0FE7h ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WREG equ 0FE8h ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0 equ 0FE9h ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0L equ 0FE9h ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0H equ 0FEAh ;# 
# 7804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW0 equ 0FEBh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC0 equ 0FECh ;# 
# 7816 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC0 equ 0FEDh ;# 
# 7822 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC0 equ 0FEEh ;# 
# 7828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF0 equ 0FEFh ;# 
# 7834 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON3 equ 0FF0h ;# 
# 7925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON2 equ 0FF1h ;# 
# 8001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON equ 0FF2h ;# 
# 8137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PROD equ 0FF3h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODL equ 0FF3h ;# 
# 8149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODH equ 0FF4h ;# 
# 8155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TABLAT equ 0FF5h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTR equ 0FF6h ;# 
# 8169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRL equ 0FF6h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRH equ 0FF7h ;# 
# 8181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRU equ 0FF8h ;# 
# 8189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLAT equ 0FF9h ;# 
# 8196 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PC equ 0FF9h ;# 
# 8202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCL equ 0FF9h ;# 
# 8208 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATH equ 0FFAh ;# 
# 8214 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATU equ 0FFBh ;# 
# 8220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STKPTR equ 0FFCh ;# 
# 8295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOS equ 0FFDh ;# 
# 8301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSL equ 0FFDh ;# 
# 8307 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSH equ 0FFEh ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTA equ 0F80h ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTB equ 0F81h ;# 
# 2645 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTC equ 0F82h ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTE equ 0F84h ;# 
# 3031 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATA equ 0F89h ;# 
# 3166 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATB equ 0F8Ah ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATC equ 0F8Bh ;# 
# 3413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISA equ 0F92h ;# 
# 3418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRA equ 0F92h ;# 
# 3610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISB equ 0F93h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRB equ 0F93h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISC equ 0F94h ;# 
# 3836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRC equ 0F94h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCTUNE equ 0F9Bh ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE1 equ 0F9Dh ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR1 equ 0F9Eh ;# 
# 4206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR1 equ 0F9Fh ;# 
# 4279 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE2 equ 0FA0h ;# 
# 4349 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR2 equ 0FA1h ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR2 equ 0FA2h ;# 
# 4489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON1 equ 0FA6h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON2 equ 0FA7h ;# 
# 4560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEDATA equ 0FA8h ;# 
# 4566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEADR equ 0FA9h ;# 
# 4572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA equ 0FABh ;# 
# 4577 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA1 equ 0FABh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA equ 0FACh ;# 
# 4786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA1 equ 0FACh ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG equ 0FADh ;# 
# 5083 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG1 equ 0FADh ;# 
# 5089 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG equ 0FAEh ;# 
# 5094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG1 equ 0FAEh ;# 
# 5100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG equ 0FAFh ;# 
# 5105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG1 equ 0FAFh ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRGH equ 0FB0h ;# 
# 5117 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T3CON equ 0FB1h ;# 
# 5239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3 equ 0FB2h ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3L equ 0FB2h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3H equ 0FB3h ;# 
# 5257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CMCON equ 0FB4h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CVRCON equ 0FB5h ;# 
# 5436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1AS equ 0FB6h ;# 
# 5441 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1AS equ 0FB6h ;# 
# 5565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1DEL equ 0FB7h ;# 
# 5570 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1DEL equ 0FB7h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCON equ 0FB8h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCTL equ 0FB8h ;# 
# 5783 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP2CON equ 0FBAh ;# 
# 5846 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2 equ 0FBBh ;# 
# 5852 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2L equ 0FBBh ;# 
# 5858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2H equ 0FBCh ;# 
# 5864 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1CON equ 0FBDh ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1 equ 0FBEh ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1L equ 0FBEh ;# 
# 5939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1H equ 0FBFh ;# 
# 5945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON2 equ 0FC0h ;# 
# 6015 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON1 equ 0FC1h ;# 
# 6105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON0 equ 0FC2h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRES equ 0FC3h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESL equ 0FC3h ;# 
# 6239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESH equ 0FC4h ;# 
# 6245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON2 equ 0FC5h ;# 
# 6306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON1 equ 0FC6h ;# 
# 6375 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPSTAT equ 0FC7h ;# 
# 6641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPADD equ 0FC8h ;# 
# 6647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPBUF equ 0FC9h ;# 
# 6653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T2CON equ 0FCAh ;# 
# 6750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PR2 equ 0FCBh ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
MEMCON equ 0FCBh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR2 equ 0FCCh ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T1CON equ 0FCDh ;# 
# 6969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1 equ 0FCEh ;# 
# 6975 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1L equ 0FCEh ;# 
# 6981 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1H equ 0FCFh ;# 
# 6987 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCON equ 0FD0h ;# 
# 7135 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WDTCON equ 0FD1h ;# 
# 7162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
HLVDCON equ 0FD2h ;# 
# 7167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LVDCON equ 0FD2h ;# 
# 7431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCCON equ 0FD3h ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T0CON equ 0FD5h ;# 
# 7582 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0 equ 0FD6h ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0L equ 0FD6h ;# 
# 7594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0H equ 0FD7h ;# 
# 7600 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STATUS equ 0FD8h ;# 
# 7678 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2 equ 0FD9h ;# 
# 7684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2L equ 0FD9h ;# 
# 7690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2H equ 0FDAh ;# 
# 7696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW2 equ 0FDBh ;# 
# 7702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC2 equ 0FDCh ;# 
# 7708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC2 equ 0FDDh ;# 
# 7714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC2 equ 0FDEh ;# 
# 7720 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF2 equ 0FDFh ;# 
# 7726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BSR equ 0FE0h ;# 
# 7732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1 equ 0FE1h ;# 
# 7738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1L equ 0FE1h ;# 
# 7744 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1H equ 0FE2h ;# 
# 7750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW1 equ 0FE3h ;# 
# 7756 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC1 equ 0FE4h ;# 
# 7762 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC1 equ 0FE5h ;# 
# 7768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC1 equ 0FE6h ;# 
# 7774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF1 equ 0FE7h ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WREG equ 0FE8h ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0 equ 0FE9h ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0L equ 0FE9h ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0H equ 0FEAh ;# 
# 7804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW0 equ 0FEBh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC0 equ 0FECh ;# 
# 7816 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC0 equ 0FEDh ;# 
# 7822 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC0 equ 0FEEh ;# 
# 7828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF0 equ 0FEFh ;# 
# 7834 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON3 equ 0FF0h ;# 
# 7925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON2 equ 0FF1h ;# 
# 8001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON equ 0FF2h ;# 
# 8137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PROD equ 0FF3h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODL equ 0FF3h ;# 
# 8149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODH equ 0FF4h ;# 
# 8155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TABLAT equ 0FF5h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTR equ 0FF6h ;# 
# 8169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRL equ 0FF6h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRH equ 0FF7h ;# 
# 8181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRU equ 0FF8h ;# 
# 8189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLAT equ 0FF9h ;# 
# 8196 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PC equ 0FF9h ;# 
# 8202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCL equ 0FF9h ;# 
# 8208 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATH equ 0FFAh ;# 
# 8214 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATU equ 0FFBh ;# 
# 8220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STKPTR equ 0FFCh ;# 
# 8295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOS equ 0FFDh ;# 
# 8301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSL equ 0FFDh ;# 
# 8307 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSH equ 0FFEh ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTA equ 0F80h ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTB equ 0F81h ;# 
# 2645 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTC equ 0F82h ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTE equ 0F84h ;# 
# 3031 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATA equ 0F89h ;# 
# 3166 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATB equ 0F8Ah ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATC equ 0F8Bh ;# 
# 3413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISA equ 0F92h ;# 
# 3418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRA equ 0F92h ;# 
# 3610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISB equ 0F93h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRB equ 0F93h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISC equ 0F94h ;# 
# 3836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRC equ 0F94h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCTUNE equ 0F9Bh ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE1 equ 0F9Dh ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR1 equ 0F9Eh ;# 
# 4206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR1 equ 0F9Fh ;# 
# 4279 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE2 equ 0FA0h ;# 
# 4349 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR2 equ 0FA1h ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR2 equ 0FA2h ;# 
# 4489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON1 equ 0FA6h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON2 equ 0FA7h ;# 
# 4560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEDATA equ 0FA8h ;# 
# 4566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEADR equ 0FA9h ;# 
# 4572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA equ 0FABh ;# 
# 4577 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA1 equ 0FABh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA equ 0FACh ;# 
# 4786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA1 equ 0FACh ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG equ 0FADh ;# 
# 5083 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG1 equ 0FADh ;# 
# 5089 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG equ 0FAEh ;# 
# 5094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG1 equ 0FAEh ;# 
# 5100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG equ 0FAFh ;# 
# 5105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG1 equ 0FAFh ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRGH equ 0FB0h ;# 
# 5117 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T3CON equ 0FB1h ;# 
# 5239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3 equ 0FB2h ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3L equ 0FB2h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3H equ 0FB3h ;# 
# 5257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CMCON equ 0FB4h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CVRCON equ 0FB5h ;# 
# 5436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1AS equ 0FB6h ;# 
# 5441 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1AS equ 0FB6h ;# 
# 5565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1DEL equ 0FB7h ;# 
# 5570 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1DEL equ 0FB7h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCON equ 0FB8h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCTL equ 0FB8h ;# 
# 5783 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP2CON equ 0FBAh ;# 
# 5846 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2 equ 0FBBh ;# 
# 5852 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2L equ 0FBBh ;# 
# 5858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2H equ 0FBCh ;# 
# 5864 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1CON equ 0FBDh ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1 equ 0FBEh ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1L equ 0FBEh ;# 
# 5939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1H equ 0FBFh ;# 
# 5945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON2 equ 0FC0h ;# 
# 6015 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON1 equ 0FC1h ;# 
# 6105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON0 equ 0FC2h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRES equ 0FC3h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESL equ 0FC3h ;# 
# 6239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESH equ 0FC4h ;# 
# 6245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON2 equ 0FC5h ;# 
# 6306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON1 equ 0FC6h ;# 
# 6375 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPSTAT equ 0FC7h ;# 
# 6641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPADD equ 0FC8h ;# 
# 6647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPBUF equ 0FC9h ;# 
# 6653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T2CON equ 0FCAh ;# 
# 6750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PR2 equ 0FCBh ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
MEMCON equ 0FCBh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR2 equ 0FCCh ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T1CON equ 0FCDh ;# 
# 6969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1 equ 0FCEh ;# 
# 6975 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1L equ 0FCEh ;# 
# 6981 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1H equ 0FCFh ;# 
# 6987 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCON equ 0FD0h ;# 
# 7135 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WDTCON equ 0FD1h ;# 
# 7162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
HLVDCON equ 0FD2h ;# 
# 7167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LVDCON equ 0FD2h ;# 
# 7431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCCON equ 0FD3h ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T0CON equ 0FD5h ;# 
# 7582 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0 equ 0FD6h ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0L equ 0FD6h ;# 
# 7594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0H equ 0FD7h ;# 
# 7600 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STATUS equ 0FD8h ;# 
# 7678 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2 equ 0FD9h ;# 
# 7684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2L equ 0FD9h ;# 
# 7690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2H equ 0FDAh ;# 
# 7696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW2 equ 0FDBh ;# 
# 7702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC2 equ 0FDCh ;# 
# 7708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC2 equ 0FDDh ;# 
# 7714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC2 equ 0FDEh ;# 
# 7720 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF2 equ 0FDFh ;# 
# 7726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BSR equ 0FE0h ;# 
# 7732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1 equ 0FE1h ;# 
# 7738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1L equ 0FE1h ;# 
# 7744 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1H equ 0FE2h ;# 
# 7750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW1 equ 0FE3h ;# 
# 7756 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC1 equ 0FE4h ;# 
# 7762 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC1 equ 0FE5h ;# 
# 7768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC1 equ 0FE6h ;# 
# 7774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF1 equ 0FE7h ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WREG equ 0FE8h ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0 equ 0FE9h ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0L equ 0FE9h ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0H equ 0FEAh ;# 
# 7804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW0 equ 0FEBh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC0 equ 0FECh ;# 
# 7816 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC0 equ 0FEDh ;# 
# 7822 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC0 equ 0FEEh ;# 
# 7828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF0 equ 0FEFh ;# 
# 7834 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON3 equ 0FF0h ;# 
# 7925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON2 equ 0FF1h ;# 
# 8001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON equ 0FF2h ;# 
# 8137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PROD equ 0FF3h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODL equ 0FF3h ;# 
# 8149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODH equ 0FF4h ;# 
# 8155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TABLAT equ 0FF5h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTR equ 0FF6h ;# 
# 8169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRL equ 0FF6h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRH equ 0FF7h ;# 
# 8181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRU equ 0FF8h ;# 
# 8189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLAT equ 0FF9h ;# 
# 8196 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PC equ 0FF9h ;# 
# 8202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCL equ 0FF9h ;# 
# 8208 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATH equ 0FFAh ;# 
# 8214 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATU equ 0FFBh ;# 
# 8220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STKPTR equ 0FFCh ;# 
# 8295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOS equ 0FFDh ;# 
# 8301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSL equ 0FFDh ;# 
# 8307 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSH equ 0FFEh ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTA equ 0F80h ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTB equ 0F81h ;# 
# 2645 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTC equ 0F82h ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTE equ 0F84h ;# 
# 3031 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATA equ 0F89h ;# 
# 3166 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATB equ 0F8Ah ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATC equ 0F8Bh ;# 
# 3413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISA equ 0F92h ;# 
# 3418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRA equ 0F92h ;# 
# 3610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISB equ 0F93h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRB equ 0F93h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISC equ 0F94h ;# 
# 3836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRC equ 0F94h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCTUNE equ 0F9Bh ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE1 equ 0F9Dh ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR1 equ 0F9Eh ;# 
# 4206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR1 equ 0F9Fh ;# 
# 4279 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE2 equ 0FA0h ;# 
# 4349 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR2 equ 0FA1h ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR2 equ 0FA2h ;# 
# 4489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON1 equ 0FA6h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON2 equ 0FA7h ;# 
# 4560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEDATA equ 0FA8h ;# 
# 4566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEADR equ 0FA9h ;# 
# 4572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA equ 0FABh ;# 
# 4577 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA1 equ 0FABh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA equ 0FACh ;# 
# 4786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA1 equ 0FACh ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG equ 0FADh ;# 
# 5083 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG1 equ 0FADh ;# 
# 5089 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG equ 0FAEh ;# 
# 5094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG1 equ 0FAEh ;# 
# 5100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG equ 0FAFh ;# 
# 5105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG1 equ 0FAFh ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRGH equ 0FB0h ;# 
# 5117 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T3CON equ 0FB1h ;# 
# 5239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3 equ 0FB2h ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3L equ 0FB2h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3H equ 0FB3h ;# 
# 5257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CMCON equ 0FB4h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CVRCON equ 0FB5h ;# 
# 5436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1AS equ 0FB6h ;# 
# 5441 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1AS equ 0FB6h ;# 
# 5565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1DEL equ 0FB7h ;# 
# 5570 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1DEL equ 0FB7h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCON equ 0FB8h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCTL equ 0FB8h ;# 
# 5783 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP2CON equ 0FBAh ;# 
# 5846 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2 equ 0FBBh ;# 
# 5852 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2L equ 0FBBh ;# 
# 5858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2H equ 0FBCh ;# 
# 5864 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1CON equ 0FBDh ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1 equ 0FBEh ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1L equ 0FBEh ;# 
# 5939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1H equ 0FBFh ;# 
# 5945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON2 equ 0FC0h ;# 
# 6015 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON1 equ 0FC1h ;# 
# 6105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON0 equ 0FC2h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRES equ 0FC3h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESL equ 0FC3h ;# 
# 6239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESH equ 0FC4h ;# 
# 6245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON2 equ 0FC5h ;# 
# 6306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON1 equ 0FC6h ;# 
# 6375 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPSTAT equ 0FC7h ;# 
# 6641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPADD equ 0FC8h ;# 
# 6647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPBUF equ 0FC9h ;# 
# 6653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T2CON equ 0FCAh ;# 
# 6750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PR2 equ 0FCBh ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
MEMCON equ 0FCBh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR2 equ 0FCCh ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T1CON equ 0FCDh ;# 
# 6969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1 equ 0FCEh ;# 
# 6975 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1L equ 0FCEh ;# 
# 6981 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1H equ 0FCFh ;# 
# 6987 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCON equ 0FD0h ;# 
# 7135 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WDTCON equ 0FD1h ;# 
# 7162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
HLVDCON equ 0FD2h ;# 
# 7167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LVDCON equ 0FD2h ;# 
# 7431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCCON equ 0FD3h ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T0CON equ 0FD5h ;# 
# 7582 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0 equ 0FD6h ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0L equ 0FD6h ;# 
# 7594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0H equ 0FD7h ;# 
# 7600 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STATUS equ 0FD8h ;# 
# 7678 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2 equ 0FD9h ;# 
# 7684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2L equ 0FD9h ;# 
# 7690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2H equ 0FDAh ;# 
# 7696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW2 equ 0FDBh ;# 
# 7702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC2 equ 0FDCh ;# 
# 7708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC2 equ 0FDDh ;# 
# 7714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC2 equ 0FDEh ;# 
# 7720 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF2 equ 0FDFh ;# 
# 7726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BSR equ 0FE0h ;# 
# 7732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1 equ 0FE1h ;# 
# 7738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1L equ 0FE1h ;# 
# 7744 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1H equ 0FE2h ;# 
# 7750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW1 equ 0FE3h ;# 
# 7756 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC1 equ 0FE4h ;# 
# 7762 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC1 equ 0FE5h ;# 
# 7768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC1 equ 0FE6h ;# 
# 7774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF1 equ 0FE7h ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WREG equ 0FE8h ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0 equ 0FE9h ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0L equ 0FE9h ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0H equ 0FEAh ;# 
# 7804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW0 equ 0FEBh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC0 equ 0FECh ;# 
# 7816 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC0 equ 0FEDh ;# 
# 7822 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC0 equ 0FEEh ;# 
# 7828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF0 equ 0FEFh ;# 
# 7834 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON3 equ 0FF0h ;# 
# 7925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON2 equ 0FF1h ;# 
# 8001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON equ 0FF2h ;# 
# 8137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PROD equ 0FF3h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODL equ 0FF3h ;# 
# 8149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODH equ 0FF4h ;# 
# 8155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TABLAT equ 0FF5h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTR equ 0FF6h ;# 
# 8169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRL equ 0FF6h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRH equ 0FF7h ;# 
# 8181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRU equ 0FF8h ;# 
# 8189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLAT equ 0FF9h ;# 
# 8196 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PC equ 0FF9h ;# 
# 8202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCL equ 0FF9h ;# 
# 8208 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATH equ 0FFAh ;# 
# 8214 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATU equ 0FFBh ;# 
# 8220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STKPTR equ 0FFCh ;# 
# 8295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOS equ 0FFDh ;# 
# 8301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSL equ 0FFDh ;# 
# 8307 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSH equ 0FFEh ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTA equ 0F80h ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTB equ 0F81h ;# 
# 2645 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTC equ 0F82h ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTE equ 0F84h ;# 
# 3031 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATA equ 0F89h ;# 
# 3166 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATB equ 0F8Ah ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATC equ 0F8Bh ;# 
# 3413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISA equ 0F92h ;# 
# 3418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRA equ 0F92h ;# 
# 3610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISB equ 0F93h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRB equ 0F93h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISC equ 0F94h ;# 
# 3836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRC equ 0F94h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCTUNE equ 0F9Bh ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE1 equ 0F9Dh ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR1 equ 0F9Eh ;# 
# 4206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR1 equ 0F9Fh ;# 
# 4279 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE2 equ 0FA0h ;# 
# 4349 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR2 equ 0FA1h ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR2 equ 0FA2h ;# 
# 4489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON1 equ 0FA6h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON2 equ 0FA7h ;# 
# 4560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEDATA equ 0FA8h ;# 
# 4566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEADR equ 0FA9h ;# 
# 4572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA equ 0FABh ;# 
# 4577 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA1 equ 0FABh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA equ 0FACh ;# 
# 4786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA1 equ 0FACh ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG equ 0FADh ;# 
# 5083 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG1 equ 0FADh ;# 
# 5089 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG equ 0FAEh ;# 
# 5094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG1 equ 0FAEh ;# 
# 5100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG equ 0FAFh ;# 
# 5105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG1 equ 0FAFh ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRGH equ 0FB0h ;# 
# 5117 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T3CON equ 0FB1h ;# 
# 5239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3 equ 0FB2h ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3L equ 0FB2h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3H equ 0FB3h ;# 
# 5257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CMCON equ 0FB4h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CVRCON equ 0FB5h ;# 
# 5436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1AS equ 0FB6h ;# 
# 5441 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1AS equ 0FB6h ;# 
# 5565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1DEL equ 0FB7h ;# 
# 5570 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1DEL equ 0FB7h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCON equ 0FB8h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCTL equ 0FB8h ;# 
# 5783 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP2CON equ 0FBAh ;# 
# 5846 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2 equ 0FBBh ;# 
# 5852 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2L equ 0FBBh ;# 
# 5858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2H equ 0FBCh ;# 
# 5864 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1CON equ 0FBDh ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1 equ 0FBEh ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1L equ 0FBEh ;# 
# 5939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1H equ 0FBFh ;# 
# 5945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON2 equ 0FC0h ;# 
# 6015 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON1 equ 0FC1h ;# 
# 6105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON0 equ 0FC2h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRES equ 0FC3h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESL equ 0FC3h ;# 
# 6239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESH equ 0FC4h ;# 
# 6245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON2 equ 0FC5h ;# 
# 6306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON1 equ 0FC6h ;# 
# 6375 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPSTAT equ 0FC7h ;# 
# 6641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPADD equ 0FC8h ;# 
# 6647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPBUF equ 0FC9h ;# 
# 6653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T2CON equ 0FCAh ;# 
# 6750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PR2 equ 0FCBh ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
MEMCON equ 0FCBh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR2 equ 0FCCh ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T1CON equ 0FCDh ;# 
# 6969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1 equ 0FCEh ;# 
# 6975 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1L equ 0FCEh ;# 
# 6981 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1H equ 0FCFh ;# 
# 6987 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCON equ 0FD0h ;# 
# 7135 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WDTCON equ 0FD1h ;# 
# 7162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
HLVDCON equ 0FD2h ;# 
# 7167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LVDCON equ 0FD2h ;# 
# 7431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCCON equ 0FD3h ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T0CON equ 0FD5h ;# 
# 7582 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0 equ 0FD6h ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0L equ 0FD6h ;# 
# 7594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0H equ 0FD7h ;# 
# 7600 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STATUS equ 0FD8h ;# 
# 7678 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2 equ 0FD9h ;# 
# 7684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2L equ 0FD9h ;# 
# 7690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2H equ 0FDAh ;# 
# 7696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW2 equ 0FDBh ;# 
# 7702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC2 equ 0FDCh ;# 
# 7708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC2 equ 0FDDh ;# 
# 7714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC2 equ 0FDEh ;# 
# 7720 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF2 equ 0FDFh ;# 
# 7726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BSR equ 0FE0h ;# 
# 7732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1 equ 0FE1h ;# 
# 7738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1L equ 0FE1h ;# 
# 7744 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1H equ 0FE2h ;# 
# 7750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW1 equ 0FE3h ;# 
# 7756 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC1 equ 0FE4h ;# 
# 7762 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC1 equ 0FE5h ;# 
# 7768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC1 equ 0FE6h ;# 
# 7774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF1 equ 0FE7h ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WREG equ 0FE8h ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0 equ 0FE9h ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0L equ 0FE9h ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0H equ 0FEAh ;# 
# 7804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW0 equ 0FEBh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC0 equ 0FECh ;# 
# 7816 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC0 equ 0FEDh ;# 
# 7822 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC0 equ 0FEEh ;# 
# 7828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF0 equ 0FEFh ;# 
# 7834 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON3 equ 0FF0h ;# 
# 7925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON2 equ 0FF1h ;# 
# 8001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON equ 0FF2h ;# 
# 8137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PROD equ 0FF3h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODL equ 0FF3h ;# 
# 8149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODH equ 0FF4h ;# 
# 8155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TABLAT equ 0FF5h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTR equ 0FF6h ;# 
# 8169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRL equ 0FF6h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRH equ 0FF7h ;# 
# 8181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRU equ 0FF8h ;# 
# 8189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLAT equ 0FF9h ;# 
# 8196 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PC equ 0FF9h ;# 
# 8202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCL equ 0FF9h ;# 
# 8208 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATH equ 0FFAh ;# 
# 8214 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATU equ 0FFBh ;# 
# 8220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STKPTR equ 0FFCh ;# 
# 8295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOS equ 0FFDh ;# 
# 8301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSL equ 0FFDh ;# 
# 8307 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSH equ 0FFEh ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTA equ 0F80h ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTB equ 0F81h ;# 
# 2645 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTC equ 0F82h ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PORTE equ 0F84h ;# 
# 3031 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATA equ 0F89h ;# 
# 3166 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATB equ 0F8Ah ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LATC equ 0F8Bh ;# 
# 3413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISA equ 0F92h ;# 
# 3418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRA equ 0F92h ;# 
# 3610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISB equ 0F93h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRB equ 0F93h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TRISC equ 0F94h ;# 
# 3836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
DDRC equ 0F94h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCTUNE equ 0F9Bh ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE1 equ 0F9Dh ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR1 equ 0F9Eh ;# 
# 4206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR1 equ 0F9Fh ;# 
# 4279 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIE2 equ 0FA0h ;# 
# 4349 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PIR2 equ 0FA1h ;# 
# 4419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
IPR2 equ 0FA2h ;# 
# 4489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON1 equ 0FA6h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EECON2 equ 0FA7h ;# 
# 4560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEDATA equ 0FA8h ;# 
# 4566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
EEADR equ 0FA9h ;# 
# 4572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA equ 0FABh ;# 
# 4577 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCSTA1 equ 0FABh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA equ 0FACh ;# 
# 4786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXSTA1 equ 0FACh ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG equ 0FADh ;# 
# 5083 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TXREG1 equ 0FADh ;# 
# 5089 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG equ 0FAEh ;# 
# 5094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCREG1 equ 0FAEh ;# 
# 5100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG equ 0FAFh ;# 
# 5105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRG1 equ 0FAFh ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SPBRGH equ 0FB0h ;# 
# 5117 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T3CON equ 0FB1h ;# 
# 5239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3 equ 0FB2h ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3L equ 0FB2h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR3H equ 0FB3h ;# 
# 5257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CMCON equ 0FB4h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CVRCON equ 0FB5h ;# 
# 5436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1AS equ 0FB6h ;# 
# 5441 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1AS equ 0FB6h ;# 
# 5565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ECCP1DEL equ 0FB7h ;# 
# 5570 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1DEL equ 0FB7h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCON equ 0FB8h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BAUDCTL equ 0FB8h ;# 
# 5783 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP2CON equ 0FBAh ;# 
# 5846 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2 equ 0FBBh ;# 
# 5852 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2L equ 0FBBh ;# 
# 5858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR2H equ 0FBCh ;# 
# 5864 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCP1CON equ 0FBDh ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1 equ 0FBEh ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1L equ 0FBEh ;# 
# 5939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
CCPR1H equ 0FBFh ;# 
# 5945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON2 equ 0FC0h ;# 
# 6015 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON1 equ 0FC1h ;# 
# 6105 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADCON0 equ 0FC2h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRES equ 0FC3h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESL equ 0FC3h ;# 
# 6239 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
ADRESH equ 0FC4h ;# 
# 6245 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON2 equ 0FC5h ;# 
# 6306 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPCON1 equ 0FC6h ;# 
# 6375 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPSTAT equ 0FC7h ;# 
# 6641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPADD equ 0FC8h ;# 
# 6647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
SSPBUF equ 0FC9h ;# 
# 6653 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T2CON equ 0FCAh ;# 
# 6750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PR2 equ 0FCBh ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
MEMCON equ 0FCBh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR2 equ 0FCCh ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T1CON equ 0FCDh ;# 
# 6969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1 equ 0FCEh ;# 
# 6975 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1L equ 0FCEh ;# 
# 6981 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR1H equ 0FCFh ;# 
# 6987 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
RCON equ 0FD0h ;# 
# 7135 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WDTCON equ 0FD1h ;# 
# 7162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
HLVDCON equ 0FD2h ;# 
# 7167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
LVDCON equ 0FD2h ;# 
# 7431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
OSCCON equ 0FD3h ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
T0CON equ 0FD5h ;# 
# 7582 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0 equ 0FD6h ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0L equ 0FD6h ;# 
# 7594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TMR0H equ 0FD7h ;# 
# 7600 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STATUS equ 0FD8h ;# 
# 7678 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2 equ 0FD9h ;# 
# 7684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2L equ 0FD9h ;# 
# 7690 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR2H equ 0FDAh ;# 
# 7696 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW2 equ 0FDBh ;# 
# 7702 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC2 equ 0FDCh ;# 
# 7708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC2 equ 0FDDh ;# 
# 7714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC2 equ 0FDEh ;# 
# 7720 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF2 equ 0FDFh ;# 
# 7726 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
BSR equ 0FE0h ;# 
# 7732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1 equ 0FE1h ;# 
# 7738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1L equ 0FE1h ;# 
# 7744 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR1H equ 0FE2h ;# 
# 7750 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW1 equ 0FE3h ;# 
# 7756 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC1 equ 0FE4h ;# 
# 7762 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC1 equ 0FE5h ;# 
# 7768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC1 equ 0FE6h ;# 
# 7774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF1 equ 0FE7h ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
WREG equ 0FE8h ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0 equ 0FE9h ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0L equ 0FE9h ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
FSR0H equ 0FEAh ;# 
# 7804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PLUSW0 equ 0FEBh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PREINC0 equ 0FECh ;# 
# 7816 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTDEC0 equ 0FEDh ;# 
# 7822 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
POSTINC0 equ 0FEEh ;# 
# 7828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INDF0 equ 0FEFh ;# 
# 7834 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON3 equ 0FF0h ;# 
# 7925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON2 equ 0FF1h ;# 
# 8001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
INTCON equ 0FF2h ;# 
# 8137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PROD equ 0FF3h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODL equ 0FF3h ;# 
# 8149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PRODH equ 0FF4h ;# 
# 8155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TABLAT equ 0FF5h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTR equ 0FF6h ;# 
# 8169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRL equ 0FF6h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRH equ 0FF7h ;# 
# 8181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TBLPTRU equ 0FF8h ;# 
# 8189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLAT equ 0FF9h ;# 
# 8196 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PC equ 0FF9h ;# 
# 8202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCL equ 0FF9h ;# 
# 8208 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATH equ 0FFAh ;# 
# 8214 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
PCLATU equ 0FFBh ;# 
# 8220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
STKPTR equ 0FFCh ;# 
# 8295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOS equ 0FFDh ;# 
# 8301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSL equ 0FFDh ;# 
# 8307 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSH equ 0FFEh ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2455.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_calibrate
	FNCALL	_main,_delay10ms
	FNCALL	_main,_format_double
	FNCALL	_main,_indicator
	FNCALL	_main,_lcd_begin
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_puts
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
	FNCALL	_measure_inductance,_lcd_gotoxy
	FNCALL	_measure_inductance,_measure_freq
	FNCALL	_measure_inductance,_print_reading
	FNCALL	_measure_inductance,_print_unit
	FNCALL	_measure_inductance,_put_str
	FNCALL	_measure_capacitance,___fldiv
	FNCALL	_measure_capacitance,___flge
	FNCALL	_measure_capacitance,___flmul
	FNCALL	_measure_capacitance,___flsub
	FNCALL	_measure_capacitance,___fltol
	FNCALL	_measure_capacitance,___lwtofl
	FNCALL	_measure_capacitance,_format_double
	FNCALL	_measure_capacitance,_format_xint32
	FNCALL	_measure_capacitance,_lcd_gotoxy
	FNCALL	_measure_capacitance,_measure_freq
	FNCALL	_measure_capacitance,_print_reading
	FNCALL	_measure_capacitance,_print_unit
	FNCALL	_measure_capacitance,_put_str
	FNCALL	_measure_capacitance,_ser_putch
	FNCALL	_measure_capacitance,_ser_puts
	FNCALL	_print_unit,_lcd_gotoxy
	FNCALL	_print_unit,_ser_puts
	FNCALL	_print_reading,___lwdiv
	FNCALL	_print_reading,___lwmod
	FNCALL	_print_reading,_format_number
	FNCALL	_print_reading,_lcd_gotoxy
	FNCALL	_print_reading,_lcd_puts
	FNCALL	_format_xint32,_format_number
	FNCALL	_format_xint32,_format_putchar
	FNCALL	_format_xint32,_lcd_putch
	FNCALL	_format_xint32,_output_putch
	FNCALL	_format_xint32,_ser_putch
	FNCALL	_format_double,___awtofl
	FNCALL	_format_double,___fldiv
	FNCALL	_format_double,___flge
	FNCALL	_format_double,___flmul
	FNCALL	_format_double,___flsub
	FNCALL	_format_double,___fltol
	FNCALL	_format_double,_floor
	FNCALL	_format_double,_format_putchar
	FNCALL	_format_double,_lcd_putch
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
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_indicator,_lcd_gotoxy
	FNCALL	_indicator,_lcd_puts
	FNCALL	_lcd_puts,_lcd_putch
	FNCALL	_calibrate,___lwtofl
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_lcd_clear
	FNCALL	_calibrate,_lcd_gotoxy
	FNCALL	_calibrate,_lcd_putch
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_put_str
	FNCALL	_calibrate,_ser_puts
	FNCALL	_ser_puts,_ser_putch
	FNCALL	_measure_freq,_format_number
	FNCALL	_measure_freq,_lcd_gotoxy
	FNCALL	_measure_freq,_put_str
	FNCALL	_put_str,_output_putch
	FNCALL	_lcd_gotoxy,_lcd_command
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,_format_putchar
	FNCALL	_format_number,_lcd_putch
	FNCALL	_format_number,_output_putch
	FNCALL	_format_number,_ser_putch
	FNCALL	_output_putch,_lcd_putch
	FNCALL	_output_putch,_ser_putch
	FNCALL	_lcd_putch,_lcd_send
	FNCALL	_lcd_clear,_lcd_command
	FNCALL	_lcd_command,_lcd_send
	FNCALL	_lcd_send,_lcd_write4bits
	FNCALL	___lwtofl,___flpack
	FNROOT	_main
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	lcd_gotoxy@F4094
	global	_putchar_ptr
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"../../../lib/lcd44780.c"
	line	154

;initializer for lcd_gotoxy@F4094
	db	low(0)
	db	low(040h)
	db	low(014h)
	db	low(054h)
	file	"../../../lib/format.c"
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
	global	_txiptr
	global	_txoptr
	global	_txfifo
	global	_F2
	global	_F3
	global	_msecs
	global	_seconds
	global	_timer1of
	global	_blink
	global	_LCD_ctrl
	global	_LCD_function
	global	_LCD_lines
	global	_LCD_mode
	global	_rxiptr
	global	_rxoptr
	global	_ser_tmp
	global	_F1
	global	_rxfifo
	global	_buffer
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
	global	_PORTC
_PORTC	set	0xF82
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
	global	_PEIE
_PEIE	set	0x7F96
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
	global	_RB4
_RB4	set	0x7C0C
	global	_RB5
_RB5	set	0x7C0D
	global	_RB6
_RB6	set	0x7C0E
	global	_RB7
_RB7	set	0x7C0F
	global	_RC3
_RC3	set	0x7C13
	global	_RC4
_RC4	set	0x7C14
	global	_RC7
_RC7	set	0x7C17
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
	global	_TRISB2
_TRISB2	set	0x7C9A
	global	_TRISB3
_TRISB3	set	0x7C9B
	global	_TRISB4
_TRISB4	set	0x7C9C
	global	_TRISB5
_TRISB5	set	0x7C9D
	global	_TRISB6
_TRISB6	set	0x7C9E
	global	_TRISB7
_TRISB7	set	0x7C9F
	global	_TRISC0
_TRISC0	set	0x7CA0
	global	_TRISC1
_TRISC1	set	0x7CA1
	global	_TRISC2
_TRISC2	set	0x7CA2
	global	_TRISC3
_TRISC3	set	0x7CA3
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
	global	_nRBPU
_nRBPU	set	0x7F8F
psect	smallconst
	
STR_23:
	db	112	;'p'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	115	;'s'
	db	101	;'e'
	db	32
	db	119	;'w'
	db	97	;'a'
	db	105	;'i'
	db	116	;'t'
	db	46
	db	46
	db	46
	db	0
	
STR_34:
	db	73	;'I'
	db	110	;'n'
	db	100	;'d'
	db	117	;'u'
	db	99	;'c'
	db	116	;'t'
	db	105	;'i'
	db	118	;'v'
	db	105	;'i'
	db	116	;'t'
	db	121	;'y'
	db	32
	db	0
	
STR_21:
	db	67	;'C'
	db	97	;'a'
	db	108	;'l'
	db	105	;'i'
	db	98	;'b'
	db	114	;'r'
	db	97	;'a'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	0
	
STR_13:
	db	76	;'L'
	db	67	;'C'
	db	45
	db	109	;'m'
	db	101	;'e'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	0
	
STR_25:
	db	67	;'C'
	db	97	;'a'
	db	112	;'p'
	db	97	;'a'
	db	99	;'c'
	db	105	;'i'
	db	116	;'t'
	db	121	;'y'
	db	32
	db	0
	
STR_30:
	db	13
	db	10
	db	67	;'C'
	db	67	;'C'
	db	97	;'a'
	db	108	;'l'
	db	61	;'='
	db	0
	
STR_15:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_14:
	db	46
	db	46
	db	46
	db	13
	db	10
	db	0
	
STR_27:
	db	13
	db	10
	db	70	;'F'
	db	49	;'1'
	db	61	;'='
	db	0
	
STR_28:
	db	13
	db	10
	db	70	;'F'
	db	50	;'2'
	db	61	;'='
	db	0
	
STR_29:
	db	13
	db	10
	db	70	;'F'
	db	51	;'3'
	db	61	;'='
	db	0
	
STR_20:
	db	70	;'F'
	db	114	;'r'
	db	101	;'e'
	db	113	;'q'
	db	61	;'='
	db	0
	
STR_18:
	db	82	;'R'
	db	67	;'C'
	db	52	;'4'
	db	61	;'='
	db	0
	
STR_32:
	db	67	;'C'
	db	105	;'i'
	db	110	;'n'
	db	61	;'='
	db	0
	
STR_26:
	db	118	;'v'
	db	97	;'a'
	db	114	;'r'
	db	61	;'='
	db	0
	
STR_11:
	db	45
	db	42
	db	45
	db	0
	
STR_5:
	db	109	;'m'
	db	70	;'F'
	db	0
	
STR_7:
	db	110	;'n'
	db	70	;'F'
	db	0
	
STR_8:
	db	112	;'p'
	db	70	;'F'
	db	0
	
STR_6:
	db	117	;'u'
	db	70	;'F'
	db	0
	
STR_2:
	db	109	;'m'
	db	72	;'H'
	db	0
	
STR_4:
	db	110	;'n'
	db	72	;'H'
	db	0
	
STR_3:
	db	117	;'u'
	db	72	;'H'
	db	0
STR_1	equ	STR_2+1
STR_16	equ	STR_15+0
STR_10	equ	STR_15+1
STR_17	equ	STR_15+1
STR_12	equ	STR_15+3
STR_9	equ	STR_14+3
STR_19	equ	STR_14+3
STR_22	equ	STR_14+3
STR_24	equ	STR_14+3
STR_31	equ	STR_14+3
STR_33	equ	STR_14+3
; #config settings
	file	"dist/default/production\LC_meter_18f2455_xc8.X.production.as"
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
	global	_txiptr
_txiptr:
       ds      1
	global	_txoptr
_txoptr:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
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
_LCD_ctrl:
       ds      1
_LCD_function:
       ds      1
_LCD_lines:
       ds      1
_LCD_mode:
       ds      1
	global	_rxiptr
_rxiptr:
       ds      1
	global	_rxoptr
_rxoptr:
       ds      1
	global	_ser_tmp
_ser_tmp:
       ds      1
	global	_F1
_F1:
       ds      4
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"../../../lib/lcd44780.c"
	line	154
lcd_gotoxy@F4094:
       ds      4
psect	dataBANK0
	file	"../../../lib/format.c"
	line	10
	global	_putchar_ptr
_putchar_ptr:
       ds      2
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_rxfifo
_rxfifo:
       ds      16
	global	_buffer
_buffer:
       ds      19
	file	"dist/default/production\LC_meter_18f2455_xc8.X.production.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (35 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	35
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (49 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	49
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (2 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to BANK0 (6 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,6
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	_log10$1162
_log10$1162:	; 4 bytes @ 0x0
	ds   4
	global	?___fltol
?___fltol:	; 4 bytes @ 0x4
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x4
	ds   4
??___fltol:	; 0 bytes @ 0x8
	ds   4
	global	?___altofl
?___altofl:	; 4 bytes @ 0xC
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0xC
	global	___altofl@c
___altofl@c:	; 4 bytes @ 0xC
	ds   4
	global	?_floor
?_floor:	; 4 bytes @ 0x10
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0x10
	global	floor@x
floor@x:	; 4 bytes @ 0x10
	ds   4
	global	floor@i
floor@i:	; 4 bytes @ 0x14
	global	_measure_inductance$1155
_measure_inductance$1155:	; 4 bytes @ 0x14
	ds   4
	global	floor@expon
floor@expon:	; 2 bytes @ 0x18
	global	_measure_inductance$1159
_measure_inductance$1159:	; 4 bytes @ 0x18
	ds   2
	global	?_exp
?_exp:	; 4 bytes @ 0x1A
	global	exp@x
exp@x:	; 4 bytes @ 0x1A
	ds   2
	global	_measure_inductance$1160
_measure_inductance$1160:	; 4 bytes @ 0x1C
	ds   2
	global	_exp$1165
_exp$1165:	; 4 bytes @ 0x1E
	ds   2
	global	_measure_inductance$1161
_measure_inductance$1161:	; 4 bytes @ 0x20
	ds   2
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x22
	ds   2
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x24
	global	exp@sign
exp@sign:	; 1 bytes @ 0x24
	ds   1
	global	?_pow
?_pow:	; 4 bytes @ 0x25
	global	pow@x
pow@x:	; 4 bytes @ 0x25
	global	_measure_inductance$1156
_measure_inductance$1156:	; 4 bytes @ 0x25
	ds   4
	global	pow@y
pow@y:	; 4 bytes @ 0x29
	global	_measure_inductance$1157
_measure_inductance$1157:	; 4 bytes @ 0x29
	ds   4
	global	_measure_inductance$1158
_measure_inductance$1158:	; 4 bytes @ 0x2D
	global	_pow$1163
_pow$1163:	; 4 bytes @ 0x2D
	ds   4
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x31
	global	_pow$1164
_pow$1164:	; 4 bytes @ 0x31
	ds   2
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x33
	ds   2
	global	pow@sign
pow@sign:	; 1 bytes @ 0x35
	ds   1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x36
	ds   4
?_format_double:	; 0 bytes @ 0x3A
	global	format_double@num
format_double@num:	; 4 bytes @ 0x3A
	ds   4
	global	_format_double$1150
_format_double$1150:	; 4 bytes @ 0x3E
	ds   4
	global	_format_double$1151
_format_double$1151:	; 4 bytes @ 0x42
	ds   4
	global	format_double@weight
format_double@weight:	; 4 bytes @ 0x46
	ds   4
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0x4A
	ds   2
	global	format_double@m
format_double@m:	; 2 bytes @ 0x4C
	ds   2
	global	_measure_capacitance$1152
_measure_capacitance$1152:	; 4 bytes @ 0x4E
	ds   4
	global	_measure_capacitance$1153
_measure_capacitance$1153:	; 4 bytes @ 0x52
	ds   4
	global	_measure_capacitance$1154
_measure_capacitance$1154:	; 4 bytes @ 0x56
	ds   4
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0x5A
	ds   1
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0x5B
	ds   2
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0x5D
	ds   4
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_lcd_putch:	; 0 bytes @ 0x0
?_ser_puts:	; 0 bytes @ 0x0
?_lcd_puts:	; 0 bytes @ 0x0
?_calibrate:	; 0 bytes @ 0x0
?_measure_capacitance:	; 0 bytes @ 0x0
?_measure_inductance:	; 0 bytes @ 0x0
?_put_str:	; 0 bytes @ 0x0
?_print_unit:	; 0 bytes @ 0x0
?_indicator:	; 0 bytes @ 0x0
?_ser_putch:	; 0 bytes @ 0x0
?_ser_init:	; 0 bytes @ 0x0
?_timer2_init:	; 0 bytes @ 0x0
?_format_putchar:	; 0 bytes @ 0x0
?_lcd_write4bits:	; 0 bytes @ 0x0
?_lcd_command:	; 0 bytes @ 0x0
?_lcd_clear:	; 0 bytes @ 0x0
?_lcd_init:	; 0 bytes @ 0x0
?_output_putch:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_isr:	; 2 bytes @ 0x0
print_unit@unit:	; 1 bytes @ 0x0
format_putchar@c:	; 1 bytes @ 0x0
	ds   2
?_delay10ms:	; 0 bytes @ 0x2
??_ser_putch:	; 0 bytes @ 0x2
??_ser_init:	; 0 bytes @ 0x2
??_timer2_init:	; 0 bytes @ 0x2
??_format_putchar:	; 0 bytes @ 0x2
??_lcd_write4bits:	; 0 bytes @ 0x2
??_lcd_init:	; 0 bytes @ 0x2
?___flge:	; 1 bit 
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
	global	ser_putch@c
ser_putch@c:	; 1 bytes @ 0x2
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x2
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x2
	global	delay10ms@period_10ms
delay10ms@period_10ms:	; 2 bytes @ 0x2
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
??_ser_puts:	; 0 bytes @ 0x3
?_lcd_send:	; 0 bytes @ 0x3
	global	ser_puts@s
ser_puts@s:	; 1 bytes @ 0x3
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0x3
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x3
	global	_lcd_init$265
_lcd_init$265:	; 2 bytes @ 0x3
	ds   1
??_delay10ms:	; 0 bytes @ 0x4
??_lcd_send:	; 0 bytes @ 0x4
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x4
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	ds   1
??_lcd_putch:	; 0 bytes @ 0x5
??_lcd_command:	; 0 bytes @ 0x5
	global	lcd_putch@value
lcd_putch@value:	; 1 bytes @ 0x5
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0x5
	ds   1
?_lcd_gotoxy:	; 0 bytes @ 0x6
??_lcd_puts:	; 0 bytes @ 0x6
??_lcd_clear:	; 0 bytes @ 0x6
?_lcd_begin:	; 0 bytes @ 0x6
??_output_putch:	; 0 bytes @ 0x6
??___flneg:	; 0 bytes @ 0x6
??___lwdiv:	; 0 bytes @ 0x6
??___lwmod:	; 0 bytes @ 0x6
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x6
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0x6
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0x6
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x6
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	global	delay10ms@ms
delay10ms@ms:	; 4 bytes @ 0x6
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x6
	ds   1
??_lcd_gotoxy:	; 0 bytes @ 0x7
??_put_str:	; 0 bytes @ 0x7
??_frexp:	; 0 bytes @ 0x7
??_lcd_begin:	; 0 bytes @ 0x7
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x7
	global	lcd_puts@i
lcd_puts@i:	; 1 bytes @ 0x7
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x7
	ds   1
??___flpack:	; 0 bytes @ 0x8
	global	lcd_puts@string
lcd_puts@string:	; 1 bytes @ 0x8
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0x8
	global	put_str@i
put_str@i:	; 1 bytes @ 0x8
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	global	lcd_gotoxy@row_offsets
lcd_gotoxy@row_offsets:	; 4 bytes @ 0x8
	ds   1
?_format_number:	; 0 bytes @ 0x9
	global	put_str@s
put_str@s:	; 1 bytes @ 0x9
	global	format_number@n
format_number@n:	; 2 bytes @ 0x9
	ds   1
??___flge:	; 0 bytes @ 0xA
	global	delay10ms@run
delay10ms@run:	; 1 bytes @ 0xA
	ds   1
	global	format_number@base
format_number@base:	; 1 bytes @ 0xB
	ds   1
??_print_unit:	; 0 bytes @ 0xC
??_indicator:	; 0 bytes @ 0xC
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0xC
	global	?___awtofl
?___awtofl:	; 4 bytes @ 0xC
	global	?___lltofl
?___lltofl:	; 4 bytes @ 0xC
	global	indicator@indicate
indicator@indicate:	; 1 bytes @ 0xC
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0xC
	global	___awtofl@c
___awtofl@c:	; 2 bytes @ 0xC
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0xC
	global	___lltofl@c
___lltofl@c:	; 4 bytes @ 0xC
	ds   1
??_format_number:	; 0 bytes @ 0xD
	ds   2
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0xF
	ds   1
??___awtofl:	; 0 bytes @ 0x10
??___lltofl:	; 0 bytes @ 0x10
	global	___awtofl@sign
___awtofl@sign:	; 1 bytes @ 0x10
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0x10
	ds   4
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
	ds   12
	global	_format_number$188
_format_number$188:	; 2 bytes @ 0x2F
	ds   1
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x30
	ds   1
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x31
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x31
	ds   1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x32
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x32
	ds   1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x33
	ds   1
?_print_reading:	; 0 bytes @ 0x34
?_format_xint32:	; 0 bytes @ 0x34
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x34
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x34
	global	format_xint32@x
format_xint32@x:	; 4 bytes @ 0x34
	ds   2
??_print_reading:	; 0 bytes @ 0x36
??_measure_freq:	; 0 bytes @ 0x36
	global	?___fladd
?___fladd:	; 4 bytes @ 0x36
	global	_print_reading$1146
_print_reading$1146:	; 2 bytes @ 0x36
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x36
	ds   2
??_format_xint32:	; 0 bytes @ 0x38
	global	measure_freq@prev
measure_freq@prev:	; 1 bytes @ 0x38
	global	_print_reading$1147
_print_reading$1147:	; 2 bytes @ 0x38
	ds   1
	global	measure_freq@i
measure_freq@i:	; 1 bytes @ 0x39
	ds   1
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x3A
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x3A
	ds   2
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0x3C
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0x3C
	ds   2
??___fladd:	; 0 bytes @ 0x3E
	ds   1
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x3F
	ds   1
??_calibrate:	; 0 bytes @ 0x40
??___lwtofl:	; 0 bytes @ 0x40
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x40
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x40
	ds   1
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0x41
	ds   1
	global	?___flsub
?___flsub:	; 4 bytes @ 0x42
	global	?_eval_poly
?_eval_poly:	; 4 bytes @ 0x42
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x42
	global	eval_poly@x
eval_poly@x:	; 4 bytes @ 0x42
	ds   4
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x46
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x46
	ds   1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x47
	ds   2
??_eval_poly:	; 0 bytes @ 0x49
	ds   1
??___flsub:	; 0 bytes @ 0x4A
	global	eval_poly@res
eval_poly@res:	; 4 bytes @ 0x4A
	ds   4
	global	?_ldexp
?_ldexp:	; 4 bytes @ 0x4E
	global	?_log
?_log:	; 4 bytes @ 0x4E
	global	ldexp@value
ldexp@value:	; 4 bytes @ 0x4E
	global	log@x
log@x:	; 4 bytes @ 0x4E
	ds   4
??_log:	; 0 bytes @ 0x52
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x52
	global	log@exponent
log@exponent:	; 2 bytes @ 0x52
	ds   2
??_ldexp:	; 0 bytes @ 0x54
	global	?_log10
?_log10:	; 4 bytes @ 0x54
	global	log10@x
log10@x:	; 4 bytes @ 0x54
	ds   4
??_log10:	; 0 bytes @ 0x58
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x58
	ds   1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x59
	ds   1
??_measure_inductance:	; 0 bytes @ 0x5A
??___altofl:	; 0 bytes @ 0x5A
	global	___altofl@sign
___altofl@sign:	; 1 bytes @ 0x5A
	ds   1
??_pow:	; 0 bytes @ 0x5B
??_floor:	; 0 bytes @ 0x5B
??_measure_capacitance:	; 0 bytes @ 0x5B
??_exp:	; 0 bytes @ 0x5B
??_format_double:	; 0 bytes @ 0x5B
??_main:	; 0 bytes @ 0x5B
;!
;!Data Sizes:
;!    Strings     145
;!    Constant    76
;!    Data        6
;!    BSS         86
;!    Persistent  8
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     91      93
;!    BANK0           160     97     160
;!    BANK1           256      0      35
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 40
;!		 -> exp@coeff(CODE[40]), log@coeff(CODE[36]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(COMRAM[2]), floor@expon(BANK0[2]), 
;!
;!    put_str@s	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_34(CODE[13]), STR_25(CODE[10]), STR_23(CODE[15]), STR_21(CODE[12]), 
;!		 -> STR_20(CODE[6]), 
;!
;!    sp__memcpy	PTR void  size(2) Largest target is 19
;!		 -> buffer.x(BANK1[16]), buffer(BANK1[19]), 
;!
;!    lcd_puts@string	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_18(CODE[5]), STR_17(CODE[6]), STR_16(CODE[7]), STR_15(CODE[7]), 
;!		 -> STR_13(CODE[10]), STR_12(CODE[4]), STR_11(CODE[4]), STR_10(CODE[6]), 
;!
;!    putchar_ptr	PTR FTN(unsigned char ,)void  size(2) Largest target is 0
;!		 -> output_putch(), format_putchar(), ser_putch(), lcd_putch(), 
;!
;!    ser_puts@s	PTR const unsigned char  size(1) Largest target is 8
;!		 -> STR_33(CODE[3]), STR_32(CODE[5]), STR_31(CODE[3]), STR_30(CODE[8]), 
;!		 -> STR_29(CODE[6]), STR_28(CODE[6]), STR_27(CODE[6]), STR_26(CODE[5]), 
;!		 -> STR_24(CODE[3]), STR_22(CODE[3]), STR_19(CODE[3]), STR_14(CODE[6]), 
;!		 -> STR_9(CODE[3]), 
;!
;!    print_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;!		 -> STR_8(CODE[3]), STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), 
;!		 -> STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[2]), 
;!
;!    S33$op	PTR FTN(unsigned char ,)void  size(2) Largest target is 0
;!
;!    buffer.op	PTR FTN(unsigned char ,)void  size(2) Largest target is 0
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _measure_inductance->___fltol
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _format_xint32->_format_number
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
;!    _lcd_begin->_lcd_command
;!    _indicator->_lcd_gotoxy
;!    _lcd_puts->_lcd_putch
;!    _calibrate->___lwtofl
;!    _ser_puts->_ser_putch
;!    _measure_freq->_format_number
;!    _put_str->_output_putch
;!    _lcd_gotoxy->_lcd_command
;!    _format_number->___lwdiv
;!    _output_putch->_lcd_putch
;!    _lcd_putch->_lcd_send
;!    _lcd_clear->_lcd_command
;!    _lcd_command->_lcd_send
;!    _lcd_send->_lcd_write4bits
;!    ___lwtofl->_measure_freq
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_measure_capacitance
;!    _measure_inductance->___fltol
;!    _measure_capacitance->_format_double
;!    _format_double->_pow
;!    _pow->_exp
;!    _exp->_floor
;!    _floor->___altofl
;!    ___fltol->_log10
;!    ___altofl->___fltol
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
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
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
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
;! (0) _main                                                 0     0      0  399347
;!                          _calibrate
;!                          _delay10ms
;!                      _format_double
;!                          _indicator
;!                          _lcd_begin
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                           _lcd_init
;!                           _lcd_puts
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
;! (1) _measure_inductance                                  55    55      0   37569
;!                                             12 BANK0     43    43      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___lwtofl
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (1) _measure_capacitance                                 19    19      0  193031
;!                                             78 BANK0     19    19      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___lwtofl
;!                      _format_double
;!                      _format_xint32
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;!                          _ser_putch
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _print_unit                                           3     3      0    1759
;!                                             12 COMRAM     2     2      0
;!                         _lcd_gotoxy
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        6     4      2    6204
;!                                             52 COMRAM     6     4      2
;!                            ___lwdiv
;!                            ___lwmod
;!                      _format_number
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (2) _format_xint32                                        4     0      4    4192
;!                                             52 COMRAM     4     0      4
;!                      _format_number
;!                     _format_putchar *
;!                          _lcd_putch *
;!                       _output_putch *
;!                          _ser_putch *
;! ---------------------------------------------------------------------------------
;! (2) _format_double                                       20    16      4  151247
;!                                             58 BANK0     20    16      4
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                              _floor
;!                     _format_putchar *
;!                          _lcd_putch *
;!                              _log10
;!                       _output_putch *
;!                                _pow
;!                          _ser_putch *
;! ---------------------------------------------------------------------------------
;! (3) _pow                                                 21    13      8   84209
;!                                             37 BANK0     21    13      8
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___fltol
;!                           ___lltofl
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _exp                                                 11     7      4   44736
;!                                             26 BANK0     11     7      4
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
;! (5) _ldexp                                                8     2      6     354
;!                                             78 COMRAM     8     2      6
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _floor                                               10     6      4   10260
;!                                             16 BANK0     10     6      4
;!                           ___altofl
;!                            ___fladd
;!                            ___fldiv (ARG)
;!                             ___flge
;!                            ___fltol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4     882
;!                                             88 COMRAM     2     2      0
;!                                              4 BANK0      8     4      4
;!                            ___fldiv (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                               8     0      8    1594
;!                                              2 COMRAM     8     0      8
;! ---------------------------------------------------------------------------------
;! (6) ___altofl                                             5     1      4    2446
;!                                             90 COMRAM     1     1      0
;!                                             12 BANK0      4     0      4
;!                           ___flpack
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    5269
;!                                             66 COMRAM     8     0      8
;!                           ___awtofl (ARG)
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___flneg                                              4     0      4     204
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
;! (3) _log10                                                8     4      4   33887
;!                                             84 COMRAM     4     0      4
;!                                              0 BANK0      4     4      0
;!                            ___flmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _log                                                  6     2      4   26714
;!                                             78 COMRAM     6     2      4
;!                           ___awtofl
;!                            ___fladd
;!                            ___flmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) _frexp                                                7     2      5     582
;!                                              2 COMRAM     7     2      5
;! ---------------------------------------------------------------------------------
;! (5) _eval_poly                                           12     5      7   11855
;!                                             66 COMRAM    12     5      7
;!                            ___fladd
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             28    20      8    6998
;!                                             27 COMRAM    27    19      8
;!                           ___awtofl (ARG)
;!                            ___fldiv (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             12     4      8    4213
;!                                             54 COMRAM    12     4      8
;!                           ___awtofl (ARG)
;!                            ___flmul (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___awtofl                                             9     5      4    2686
;!                                             12 COMRAM     5     1      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             3     3      0      46
;!                                              2 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_begin                                            3     2      1     517
;!                                              6 COMRAM     3     2      1
;!                        _lcd_command
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (1) _indicator                                            1     1      0    1954
;!                                             12 COMRAM     1     1      0
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (3) _lcd_puts                                             3     3      0     591
;!                                              6 COMRAM     3     3      0
;!                          _lcd_putch
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0   11552
;!                                             64 COMRAM     1     1      0
;!                           ___lwtofl
;!                          _delay10ms
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                          _lcd_putch
;!                       _measure_freq
;!                            _put_str
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (1) _ser_puts                                             1     1      0     418
;!                                              3 COMRAM     1     1      0
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         8     6      2    5270
;!                                             52 COMRAM     8     6      2
;!                      _format_number
;!                         _lcd_gotoxy
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (2) _put_str                                              3     3      0     576
;!                                              7 COMRAM     3     3      0
;!                       _output_putch
;! ---------------------------------------------------------------------------------
;! (3) _lcd_gotoxy                                           6     5      1    1341
;!                                              6 COMRAM     6     5      1
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       43    39      4    3171
;!                                              9 COMRAM    43    39      4
;!                            ___lwdiv
;!                            ___lwmod
;!                     _format_putchar *
;!                          _lcd_putch *
;!                       _output_putch *
;!                          _ser_putch *
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     1      0     351
;!                                              6 COMRAM     1     1      0
;!                          _lcd_putch
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (2) _ser_putch                                            1     1      0      22
;!                                              2 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _lcd_putch                                            1     1      0     285
;!                                              5 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (4) _format_putchar                                       1     1      0       0
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     451
;!                                              2 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     454
;!                                              2 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            1     1      0     285
;!                                              6 COMRAM     1     1      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (4) _lcd_command                                          1     1      0     285
;!                                              5 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (5) _lcd_send                                             2     1      1     263
;!                                              3 COMRAM     2     1      1
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (6) _lcd_write4bits                                       1     1      0      91
;!                                              2 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            9     7      2     640
;!                                              2 COMRAM     9     7      2
;! ---------------------------------------------------------------------------------
;! (2) ___lwtofl                                             4     0      4    2669
;!                                             60 COMRAM     4     0      4
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
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _format_putchar *
;!           _lcd_putch *
;!             _lcd_send
;!               _lcd_write4bits
;!           _output_putch *
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!             _ser_putch
;!           _ser_putch *
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _put_str
;!           _output_putch
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!             _ser_putch
;!     _delay10ms
;!     _lcd_clear
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_putch
;!       _lcd_send
;!         _lcd_write4bits
;!     _measure_freq
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!         _ser_putch *
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _put_str
;!         _output_putch
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!         _ser_putch
;!     _ser_puts
;!       _ser_putch
;!   _delay10ms
;!   _format_double
;!     ___awtofl
;!       ___flpack
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
;!     _floor
;!       ___altofl
;!         ___flpack
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
;!       ___fladd
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
;!       ___fldiv (ARG)
;!         ___flpack
;!       ___flge (ARG)
;!       ___fltol (ARG)
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
;!       _frexp (ARG)
;!     _format_putchar *
;!     _lcd_putch *
;!       _lcd_send
;!         _lcd_write4bits
;!     _log10 *
;!       ___flmul
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       _log
;!         ___awtofl
;!           ___flpack
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
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
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
;!         _frexp
;!     _output_putch *
;!       _lcd_putch
;!         _lcd_send
;!           _lcd_write4bits
;!       _ser_putch
;!     _pow *
;!       ___flge
;!       ___flmul
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flneg
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
;!       ___lltofl
;!         ___flpack
;!       _exp
;!         ___awtofl
;!           ___flpack
;!         ___fldiv
;!           ___flpack
;!         ___flge
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flneg
;!         ___flsub
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fladd (ARG)
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
;!           ___flmul (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
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
;!         _eval_poly
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
;!         _floor
;!           ___altofl
;!             ___flpack
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
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flge (ARG)
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
;!           _frexp (ARG)
;!         _ldexp
;!           _eval_poly (ARG)
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
;!         _log (ARG)
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
;!       _log
;!         ___awtofl
;!           ___flpack
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
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
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
;!         _frexp
;!     _ser_putch *
;!   _indicator
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_puts
;!       _lcd_putch
;!         _lcd_send
;!           _lcd_write4bits
;!   _lcd_begin
;!     _lcd_command
;!       _lcd_send
;!         _lcd_write4bits
;!     _lcd_write4bits
;!   _lcd_clear
;!     _lcd_command
;!       _lcd_send
;!         _lcd_write4bits
;!   _lcd_gotoxy
;!     _lcd_command
;!       _lcd_send
;!         _lcd_write4bits
;!   _lcd_init
;!   _lcd_puts
;!     _lcd_putch
;!       _lcd_send
;!         _lcd_write4bits
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
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _format_putchar *
;!           _lcd_putch *
;!             _lcd_send
;!               _lcd_write4bits
;!           _output_putch *
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!             _ser_putch
;!           _ser_putch *
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _put_str
;!           _output_putch
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!             _ser_putch
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
;!       _lcd_putch *
;!         _lcd_send
;!           _lcd_write4bits
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
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
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
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!         _ser_putch *
;!       _format_putchar *
;!       _lcd_putch *
;!         _lcd_send
;!           _lcd_write4bits
;!       _output_putch *
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!         _ser_putch
;!       _ser_putch *
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!         _ser_putch *
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _put_str
;!         _output_putch
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!         _ser_putch *
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _lcd_puts
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _ser_puts
;!         _ser_putch
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!         _ser_putch
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
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _format_putchar *
;!           _lcd_putch *
;!             _lcd_send
;!               _lcd_write4bits
;!           _output_putch *
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!             _ser_putch
;!           _ser_putch *
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _put_str
;!           _output_putch
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!             _ser_putch
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!         _ser_putch *
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _put_str
;!         _output_putch
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!           _ser_putch
;!         _ser_putch *
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _lcd_puts
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _ser_puts
;!         _ser_putch
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!         _ser_putch
;!   _ser_init
;!   _ser_puts
;!     _ser_putch
;!   _timer2_init
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      23       7       13.7%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     61      A0       5      100.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     5B      5D       1       97.9%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     120      20        0.0%
;!DATA                 0      0     120       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 115 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_calibrate
;;		_delay10ms
;;		_format_double
;;		_indicator
;;		_lcd_begin
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_init
;;		_lcd_puts
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
	file	"../../../src/LC-meter.c"
	line	115
global __ptext0
__ptext0:
psect	text0
	file	"../../../src/LC-meter.c"
	line	115
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	line	116
	
l4205:
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
	
l4207:; BSR set to: 0

;LC-meter.c: 129: T0CS = 1;
	bsf	c:(32429/8),(32429)&7	;volatile
	line	130
	
l4209:; BSR set to: 0

;LC-meter.c: 130: T0SE = 1;
	bsf	c:(32428/8),(32428)&7	;volatile
	line	141
	
l4211:; BSR set to: 0

;LC-meter.c: 141: nRBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	144
	
l4213:; BSR set to: 0

;LC-meter.c: 144: TRISC3 = 0;
	bcf	c:(31907/8),(31907)&7	;volatile
	line	145
	
l4215:; BSR set to: 0

;LC-meter.c: 145: RC3 = ((1) == 0);
	bcf	c:(31763/8),(31763)&7	;volatile
	line	147
	
l4217:; BSR set to: 0

;LC-meter.c: 147: SSPEN = 0;
	bcf	c:(32309/8),(32309)&7	;volatile
	line	152
	
l4219:; BSR set to: 0

;LC-meter.c: 152: timer2_init(0b000 | 0x80);
	movlw	(080h)&0ffh
	
	call	_timer2_init
	line	157
	
l4221:
;LC-meter.c: 157: TRISC1 = 0;
	bcf	c:(31905/8),(31905)&7	;volatile
	line	160
	
l4223:
;LC-meter.c: 160: TRISC3 = 0;
	bcf	c:(31907/8),(31907)&7	;volatile
	line	162
	
l4225:
;LC-meter.c: 162: TRISC0 = 1;
	bsf	c:(31904/8),(31904)&7	;volatile
	line	163
	
l4227:
;LC-meter.c: 163: TRISC2 = 1;
	bsf	c:(31906/8),(31906)&7	;volatile
	line	169
	
l4229:
;LC-meter.c: 169: lcd_init(!0);
	movlw	(01h)&0ffh
	
	call	_lcd_init
	line	170
	
l4231:; BSR set to: 0

;LC-meter.c: 170: lcd_begin(2, 1);
	movlw	low(01h)
	movwf	((c:lcd_begin@dotsize)),c
	movlw	(02h)&0ffh
	
	call	_lcd_begin
	line	173
	
l4233:
;LC-meter.c: 173: TRISC |= (1 << 4);
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	174
	
l4235:
;LC-meter.c: 174: TRISC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	176
	
l4237:
;LC-meter.c: 176: PORTC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	177
	
l4239:
;LC-meter.c: 177: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	178
	
l4241:; BSR set to: 0

;LC-meter.c: 178: PORTC |= (1 << 5);
	bsf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	179
	
l4243:; BSR set to: 0

;LC-meter.c: 179: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	180
	
l4245:; BSR set to: 0

;LC-meter.c: 180: PORTC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	181
	
l4247:; BSR set to: 0

;LC-meter.c: 181: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	182
	
l4249:; BSR set to: 0

;LC-meter.c: 182: PORTC |= (1 << 5);
	bsf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	183
	
l4251:; BSR set to: 0

;LC-meter.c: 183: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	184
	
l4253:; BSR set to: 0

;LC-meter.c: 184: PORTC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	187
	
l4255:; BSR set to: 0

;LC-meter.c: 187: ser_init();
	call	_ser_init	;wreg free
	line	192
	
l4257:; BSR set to: 0

;LC-meter.c: 192: TRISC &= ~0b01000000;
	bcf	(0+(6/8)+(c:3988)),c,(6)&7	;volatile
	line	194
	
l4259:; BSR set to: 0

;LC-meter.c: 194: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	195
	
l4261:; BSR set to: 0

;LC-meter.c: 195: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	198
	
l4263:; BSR set to: 0

;LC-meter.c: 198: putchar_ptr = &lcd_putch;
		movlw	low(_lcd_putch)
	movwf	((_putchar_ptr))&0ffh
	movlw	high(_lcd_putch)
	movwf	((_putchar_ptr+1))&0ffh

	line	205
	
l4265:; BSR set to: 0

;LC-meter.c: 205: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	207
	
l4267:
;LC-meter.c: 207: lcd_puts("LC-meter ");
	movlw	(STR_13)&0ffh
	
	call	_lcd_puts
	line	208
	
l4269:
;LC-meter.c: 208: format_double( CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	movff	(_CCal+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	214
	
l4271:
;LC-meter.c: 214: delay10ms(200);
	movlw	high(0C8h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(0C8h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	217
	
l4273:; BSR set to: 0

;LC-meter.c: 217: calibrate();
	call	_calibrate	;wreg free
	line	219
	
l4275:
;LC-meter.c: 219: lcd_clear();
	call	_lcd_clear	;wreg free
	line	230
	
l4277:
;LC-meter.c: 230: ser_puts("...\r\n");
	movlw	(STR_14)&0ffh
	
	call	_ser_puts
	line	231
	
l4279:
;LC-meter.c: 231: if(RC4)
	btfss	c:(31764/8),(31764)&7	;volatile
	goto	u3581
	goto	u3580
u3581:
	goto	l4283
u3580:
	line	232
	
l4281:
;LC-meter.c: 232: measure_capacitance();
	call	_measure_capacitance	;wreg free
	goto	l4285
	line	234
	
l4283:
;LC-meter.c: 233: else
;LC-meter.c: 234: measure_inductance();
	call	_measure_inductance	;wreg free
	line	236
	
l4285:
;LC-meter.c: 236: indicator(1);
	movlw	(01h)&0ffh
	
	call	_indicator
	line	237
	
l4287:
;LC-meter.c: 237: delay10ms(30);
	movlw	high(01Eh)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(01Eh)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	238
	
l4289:; BSR set to: 0

;LC-meter.c: 238: indicator(0);
	movlw	(0)&0ffh
	
	call	_indicator
	line	239
	
l4291:
;LC-meter.c: 239: delay10ms(20);
	movlw	high(014h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(014h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	240
;LC-meter.c: 240: }
	goto	l4277
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
;;		line 81 in file "../../../lib/timer.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
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
	file	"../../../lib/timer.c"
	line	81
global __ptext1
__ptext1:
psect	text1
	file	"../../../lib/timer.c"
	line	81
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:; BSR set to: 0

;incstack = 0
	opt	stack 29
;timer2_init@ps_mode stored from wreg
	movwf	((c:timer2_init@ps_mode)),c
	line	82
	
l3167:; BSR set to: 0

;timer.c: 82: unsigned char ps = ps_mode & 0b1111;
	movf	((c:timer2_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer2_init@ps)),c
	line	83
	
l3169:; BSR set to: 0

	line	86
	
l3171:; BSR set to: 0

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
	bra	u2495
	bcf	c:(32336/8),(32336)&7	;volatile
	bra	u2496
	u2495:
	bsf	c:(32336/8),(32336)&7	;volatile
	u2496:

	line	91
;timer.c: 91: T2CKPS1 = (ps >> 2) & 1;
	movff	(c:timer2_init@ps),??_timer2_init+0+0
	bcf	status,0
	rrcf	(??_timer2_init+0+0),c
	bcf	status,0
	rrcf	(??_timer2_init+0+0),c

	rrcf	(??_timer2_init+0+0),c,w
	btfsc	status,0
	bra	u2505
	bcf	c:(32337/8),(32337)&7	;volatile
	bra	u2506
	u2505:
	bsf	c:(32337/8),(32337)&7	;volatile
	u2506:

	line	93
	
l3173:
;timer.c: 93: TMR2 = 0;
	clrf	((c:4044)),c	;volatile
	line	95
	
l3175:
;timer.c: 95: TMR2ON = 1;
	bsf	c:(32338/8),(32338)&7	;volatile
	line	97
	
l3177:
;timer.c: 97: TMR2IF = 0;
	bcf	c:(31985/8),(31985)&7	;volatile
	line	98
	
l3179:
;timer.c: 98: TMR2IE = !!(ps_mode & 0x80);
	
	btfsc	((c:timer2_init@ps_mode)),c,(7)&7
	goto	u2511
	goto	u2510
u2511:
	bsf	c:(31977/8),(31977)&7	;volatile
	goto	u2525
u2510:
	bcf	c:(31977/8),(31977)&7	;volatile
u2525:
	line	99
	
l167:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
	signat	_timer2_init,4216
	global	_ser_init

;; *************** function _ser_init *****************
;; Defined at:
;;		line 125 in file "../../../lib/ser.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
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
	file	"../../../lib/ser.c"
	line	125
global __ptext2
__ptext2:
psect	text2
	file	"../../../lib/ser.c"
	line	125
	global	__size_of_ser_init
	__size_of_ser_init	equ	__end_of_ser_init-_ser_init
	
_ser_init:
;incstack = 0
	opt	stack 29
	line	128
	
l3145:; BSR set to: 0

;ser.c: 128: TRISC6 = 1;
	bsf	c:(31910/8),(31910)&7	;volatile
	line	129
;ser.c: 129: RC7 = 1;
	bsf	c:(31767/8),(31767)&7	;volatile
	line	131
;ser.c: 131: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	136
	
l3147:; BSR set to: 0

;ser.c: 136: SPBRG = ser_brg;
	movlw	low(01Fh)
	movwf	((c:4015)),c	;volatile
	line	139
	
l3149:; BSR set to: 0

;ser.c: 139: TX9 = 0;
	bcf	c:(32102/8),(32102)&7	;volatile
	line	140
	
l3151:; BSR set to: 0

;ser.c: 140: RX9 = 0;
	bcf	c:(32094/8),(32094)&7	;volatile
	line	142
	
l3153:; BSR set to: 0

;ser.c: 142: SYNC = 0;
	bcf	c:(32100/8),(32100)&7	;volatile
	line	143
	
l3155:; BSR set to: 0

;ser.c: 143: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	144
	
l3157:; BSR set to: 0

;ser.c: 144: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	145
	
l3159:; BSR set to: 0

;ser.c: 145: TXIE = 0;
	bcf	c:(31980/8),(31980)&7	;volatile
	line	147
	
l3161:; BSR set to: 0

;ser.c: 147: TXEN = 1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	148
	
l3163:; BSR set to: 0

;ser.c: 148: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	150
	
l3165:; BSR set to: 0

;ser.c: 150: rxiptr = rxoptr = txiptr = txoptr = 0;
	clrf	((c:_txoptr)),c	;volatile
	clrf	((c:_txiptr)),c	;volatile
	clrf	((_rxoptr))&0ffh	;volatile
	clrf	((_rxiptr))&0ffh	;volatile
	line	151
	
l122:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ser_init
	__end_of_ser_init:
	signat	_ser_init,88
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 469 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   51[BANK0 ] unsigned char 
;;  denominator     4   16[BANK0 ] unsigned char 
;;  numerator       4   12[BANK0 ] unsigned char 
;;  var             2   49[BANK0 ] unsigned short 
;;  unit            1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0      43       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      43       0       0       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___lwtofl
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"../../../src/LC-meter.c"
	line	469
global __ptext3
__ptext3:
psect	text3
	file	"../../../src/LC-meter.c"
	line	469
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	476
	
l4141:
;LC-meter.c: 470: unsigned char unit;
;LC-meter.c: 471: unsigned short int var;
;LC-meter.c: 473: double Lin, numerator, denominator;
;LC-meter.c: 476: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	477
	
l4143:
;LC-meter.c: 477: put_str("Inductivity ");
	movlw	(STR_34)&0ffh
	
	call	_put_str
	line	479
	
l4145:
;LC-meter.c: 479: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_inductance@var)
	movff	1+?_measure_freq,(measure_inductance@var+1)
	line	481
	
l4147:
;LC-meter.c: 481: F3 = (double)var;
	movff	(measure_inductance@var),(c:___lwtofl@c)
	movff	(measure_inductance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	482
	
l4149:
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
	goto	u3541
	goto	u3540
u3541:
	goto	l4153
u3540:
	line	483
	
l4151:
;LC-meter.c: 483: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	485
	
l4153:
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
	movff	0+?___flsub,(_measure_inductance$1155)
	movff	1+?___flsub,(_measure_inductance$1155+1)
	movff	2+?___flsub,(_measure_inductance$1155+2)
	movff	3+?___flsub,(_measure_inductance$1155+3)
	
	
l4155:
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1155),(c:___flsub@f2)
	movff	(_measure_inductance$1155+1),(c:___flsub@f2+1)
	movff	(_measure_inductance$1155+2),(c:___flsub@f2+2)
	movff	(_measure_inductance$1155+3),(c:___flsub@f2+3)
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
	movff	0+?___flsub,(_measure_inductance$1156)
	movff	1+?___flsub,(_measure_inductance$1156+1)
	movff	2+?___flsub,(_measure_inductance$1156+2)
	movff	3+?___flsub,(_measure_inductance$1156+3)
	
	
l4157:
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
	movff	0+?___flsub,(_measure_inductance$1157)
	movff	1+?___flsub,(_measure_inductance$1157+1)
	movff	2+?___flsub,(_measure_inductance$1157+2)
	movff	3+?___flsub,(_measure_inductance$1157+3)
	
	
l4159:
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1156),(c:___flmul@f2)
	movff	(_measure_inductance$1156+1),(c:___flmul@f2+1)
	movff	(_measure_inductance$1156+2),(c:___flmul@f2+2)
	movff	(_measure_inductance$1156+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1157),(c:___flmul@f1)
	movff	(_measure_inductance$1157+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1157+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1157+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1158)
	movff	1+?___flmul,(_measure_inductance$1158+1)
	movff	2+?___flmul,(_measure_inductance$1158+2)
	movff	3+?___flmul,(_measure_inductance$1158+3)
	
	
l4161:
;LC-meter.c: 485: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1158),(c:___flmul@f1)
	movff	(_measure_inductance$1158+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1158+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1158+3),(c:___flmul@f1+3)
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
	
l4163:
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
	movff	0+?___flmul,(_measure_inductance$1159)
	movff	1+?___flmul,(_measure_inductance$1159+1)
	movff	2+?___flmul,(_measure_inductance$1159+2)
	movff	3+?___flmul,(_measure_inductance$1159+3)
	
	
l4165:
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1159),(c:___flmul@f1)
	movff	(_measure_inductance$1159+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1159+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1159+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1156)
	movff	1+?___flmul,(_measure_inductance$1156+1)
	movff	2+?___flmul,(_measure_inductance$1156+2)
	movff	3+?___flmul,(_measure_inductance$1156+3)
	
	
l4167:
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1156),(c:___flmul@f1)
	movff	(_measure_inductance$1156+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1156+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1156+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1157)
	movff	1+?___flmul,(_measure_inductance$1157+1)
	movff	2+?___flmul,(_measure_inductance$1157+2)
	movff	3+?___flmul,(_measure_inductance$1157+3)
	
	
l4169:
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1157),(c:___flmul@f1)
	movff	(_measure_inductance$1157+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1157+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1157+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1158)
	movff	1+?___flmul,(_measure_inductance$1158+1)
	movff	2+?___flmul,(_measure_inductance$1158+2)
	movff	3+?___flmul,(_measure_inductance$1158+3)
	
	
l4171:
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1158),(c:___flmul@f1)
	movff	(_measure_inductance$1158+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1158+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1158+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1160)
	movff	1+?___flmul,(_measure_inductance$1160+1)
	movff	2+?___flmul,(_measure_inductance$1160+2)
	movff	3+?___flmul,(_measure_inductance$1160+3)
	
	
l4173:
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_CCal),(c:___flmul@f2)
	movff	(_CCal+1),(c:___flmul@f2+1)
	movff	(_CCal+2),(c:___flmul@f2+2)
	movff	(_CCal+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1160),(c:___flmul@f1)
	movff	(_measure_inductance$1160+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1160+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1160+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1161)
	movff	1+?___flmul,(_measure_inductance$1161+1)
	movff	2+?___flmul,(_measure_inductance$1161+2)
	movff	3+?___flmul,(_measure_inductance$1161+3)
	
	
l4175:
;LC-meter.c: 487: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_measure_inductance$1161),(c:___flmul@f1)
	movff	(_measure_inductance$1161+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1161+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1161+3),(c:___flmul@f1+3)
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
	
l4177:
;LC-meter.c: 489: Lin = (numerator / denominator) * 1e+15l;
	movff	(measure_inductance@denominator),(c:___fldiv@f2)
	movff	(measure_inductance@denominator+1),(c:___fldiv@f2+1)
	movff	(measure_inductance@denominator+2),(c:___fldiv@f2+2)
	movff	(measure_inductance@denominator+3),(c:___fldiv@f2+3)
	movff	(measure_inductance@numerator),(c:___fldiv@f1)
	movff	(measure_inductance@numerator+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@numerator+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@numerator+3),(c:___fldiv@f1+3)
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
	goto	u3551
	goto	u3550
u3551:
	goto	l4195
u3550:
	line	492
	
l4179:
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
	goto	u3561
	goto	u3560
u3561:
	goto	l4191
u3560:
	line	493
	
l4181:
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
	goto	u3571
	goto	u3570
u3571:
	goto	l4187
u3570:
	line	494
	
l4183:
;LC-meter.c: 494: Lin = Lin / (1e+09l);
	movff	(measure_inductance@Lin),(c:___fldiv@f1)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f1+3)
	movlw	low(1000000000.0000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000000.0000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	495
	
l4185:
;LC-meter.c: 495: unit = 0;
	movlb	0	; () banked
	clrf	((measure_inductance@unit))&0ffh
	line	496
;LC-meter.c: 496: } else {
	goto	l4197
	line	497
	
l4187:
;LC-meter.c: 497: Lin = Lin / (1e+06l);
	movff	(measure_inductance@Lin),(c:___fldiv@f1)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f1+3)
	movlw	low(1000000.0000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000.0000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	498
	
l4189:
;LC-meter.c: 498: unit = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4197
	line	501
	
l4191:
;LC-meter.c: 501: Lin = Lin / 1e+03l;
	movff	(measure_inductance@Lin),(c:___fldiv@f1)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f1+3)
	movlw	low(1000.0000000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000.0000000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	502
	
l4193:
;LC-meter.c: 502: unit = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4197
	line	505
	
l4195:
;LC-meter.c: 505: unit = 3;
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	line	507
	
l4197:; BSR set to: 0

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
	
l4199:
;LC-meter.c: 508: var = (unsigned short int)Lin;
	movff	(measure_inductance@Lin),(___fltol@f1)
	movff	(measure_inductance@Lin+1),(___fltol@f1+1)
	movff	(measure_inductance@Lin+2),(___fltol@f1+2)
	movff	(measure_inductance@Lin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_inductance@var)
	movff	1+?___fltol,(measure_inductance@var+1)
	line	510
	
l4201:; BSR set to: 0

;LC-meter.c: 510: print_reading(var);
	movff	(measure_inductance@var),(c:print_reading@measurement)
	movff	(measure_inductance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	511
	
l4203:
;LC-meter.c: 511: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_inductance@unit))&0ffh,w
	
	call	_print_unit
	line	512
	
l547:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,88
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 391 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   93[BANK0 ] unsigned char 
;;  var             2   91[BANK0 ] unsigned short 
;;  unit            1   90[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0      19       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0       0       0
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
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
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
	file	"../../../src/LC-meter.c"
	line	391
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:
;incstack = 0
	opt	stack 23
	line	399
	
l4049:
;LC-meter.c: 392: unsigned char unit;
;LC-meter.c: 393: unsigned short int var;
;LC-meter.c: 395: double Cin;
;LC-meter.c: 399: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	400
	
l4051:
;LC-meter.c: 400: put_str("Capacity ");
	movlw	(STR_25)&0ffh
	
	call	_put_str
	line	402
	
l4053:
;LC-meter.c: 402: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_capacitance@var)
	movff	1+?_measure_freq,(measure_capacitance@var+1)
	line	404
	
l4055:
;LC-meter.c: 404: F3 = (double)var;
	movff	(measure_capacitance@var),(c:___lwtofl@c)
	movff	(measure_capacitance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	406
	
l4057:
;LC-meter.c: 406: putchar_ptr = &ser_putch;
		movlw	low(_ser_putch)
	movlb	0	; () banked
	movwf	((_putchar_ptr))&0ffh
	movlw	high(_ser_putch)
	movwf	((_putchar_ptr+1))&0ffh

	line	407
	
l4059:; BSR set to: 0

;LC-meter.c: 407: ser_puts("var=");
	movlw	(STR_26)&0ffh
	
	call	_ser_puts
	line	408
	
l4061:
;LC-meter.c: 408: format_xint32( var);
	movff	(measure_capacitance@var),(c:format_xint32@x)
	movff	(measure_capacitance@var+1),(c:format_xint32@x+1)
	clrf	((c:format_xint32@x+2)),c
	clrf	((c:format_xint32@x+3)),c

	call	_format_xint32	;wreg free
	line	409
	
l4063:
;LC-meter.c: 409: ser_puts("\r\nF1=");
	movlw	(STR_27)&0ffh
	
	call	_ser_puts
	line	410
	
l4065:
;LC-meter.c: 410: format_double( F1);
	movff	(_F1),(format_double@num)
	movff	(_F1+1),(format_double@num+1)
	movff	(_F1+2),(format_double@num+2)
	movff	(_F1+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	411
	
l4067:
;LC-meter.c: 411: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	412
	
l4069:
;LC-meter.c: 412: format_xint32( *(unsigned long int*)&F1);
	movff	(_F1),(c:format_xint32@x)
	movff	(_F1+1),(c:format_xint32@x+1)
	movff	(_F1+2),(c:format_xint32@x+2)
	movff	(_F1+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	413
	
l4071:
;LC-meter.c: 413: ser_puts("\r\nF2=");
	movlw	(STR_28)&0ffh
	
	call	_ser_puts
	line	414
	
l4073:
;LC-meter.c: 414: format_double( F2);
	movff	(_F2),(format_double@num)
	movff	(_F2+1),(format_double@num+1)
	movff	(_F2+2),(format_double@num+2)
	movff	(_F2+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	415
	
l4075:
;LC-meter.c: 415: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	416
	
l4077:
;LC-meter.c: 416: format_xint32( *(unsigned long int*)&F2);
	movff	(_F2),(c:format_xint32@x)
	movff	(_F2+1),(c:format_xint32@x+1)
	movff	(_F2+2),(c:format_xint32@x+2)
	movff	(_F2+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	417
	
l4079:
;LC-meter.c: 417: ser_puts("\r\nF3=");
	movlw	(STR_29)&0ffh
	
	call	_ser_puts
	line	418
	
l4081:
;LC-meter.c: 418: format_double( F3);
	movff	(_F3),(format_double@num)
	movff	(_F3+1),(format_double@num+1)
	movff	(_F3+2),(format_double@num+2)
	movff	(_F3+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	419
	
l4083:
;LC-meter.c: 419: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	420
	
l4085:
;LC-meter.c: 420: format_xint32( *(unsigned long int*)&F3);
	movff	(_F3),(c:format_xint32@x)
	movff	(_F3+1),(c:format_xint32@x+1)
	movff	(_F3+2),(c:format_xint32@x+2)
	movff	(_F3+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	421
	
l4087:
;LC-meter.c: 421: ser_puts("\r\nCCal=");
	movlw	(STR_30)&0ffh
	
	call	_ser_puts
	line	422
	
l4089:
;LC-meter.c: 422: format_double( CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	movff	(_CCal+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	423
	
l4091:
;LC-meter.c: 423: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	424
	
l4093:
;LC-meter.c: 424: format_xint32( *(unsigned long int*)&CCal);
	movff	(_CCal),(c:format_xint32@x)
	movff	(_CCal+1),(c:format_xint32@x+1)
	movff	(_CCal+2),(c:format_xint32@x+2)
	movff	(_CCal+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	425
	
l4095:
;LC-meter.c: 425: ser_puts("\r\n");
	movlw	(STR_31)&0ffh
	
	call	_ser_puts
	line	427
	
l4097:
;LC-meter.c: 427: putchar_ptr = &output_putch;
		movlw	low(_output_putch)
	movlb	0	; () banked
	movwf	((_putchar_ptr))&0ffh
	movlw	high(_output_putch)
	movwf	((_putchar_ptr+1))&0ffh

	line	429
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
	goto	u3501
	goto	u3500
u3501:
	goto	l4101
u3500:
	line	430
	
l4099:
;LC-meter.c: 430: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	432
	
l4101:
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
	movff	0+?___flsub,(_measure_capacitance$1152)
	movff	1+?___flsub,(_measure_capacitance$1152+1)
	movff	2+?___flsub,(_measure_capacitance$1152+2)
	movff	3+?___flsub,(_measure_capacitance$1152+3)
	
;LC-meter.c: 432: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$1152),(c:___flmul@f1)
	movff	(_measure_capacitance$1152+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1152+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1152+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1153)
	movff	1+?___flmul,(_measure_capacitance$1153+1)
	movff	2+?___flmul,(_measure_capacitance$1153+2)
	movff	3+?___flmul,(_measure_capacitance$1153+3)
	
;LC-meter.c: 432: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$1153),(c:___flmul@f1)
	movff	(_measure_capacitance$1153+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1153+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1153+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1154)
	movff	1+?___flmul,(_measure_capacitance$1154+1)
	movff	2+?___flmul,(_measure_capacitance$1154+2)
	movff	3+?___flmul,(_measure_capacitance$1154+3)
	
;LC-meter.c: 432: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_measure_capacitance$1154),(c:___flmul@f1)
	movff	(_measure_capacitance$1154+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1154+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1154+3),(c:___flmul@f1+3)
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
	
l4103:
;LC-meter.c: 436: ser_puts("Cin=");
	movlw	(STR_32)&0ffh
	
	call	_ser_puts
	line	437
	
l4105:
;LC-meter.c: 437: format_double( Cin);
	movff	(measure_capacitance@Cin),(format_double@num)
	movff	(measure_capacitance@Cin+1),(format_double@num+1)
	movff	(measure_capacitance@Cin+2),(format_double@num+2)
	movff	(measure_capacitance@Cin+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	438
	
l4107:
;LC-meter.c: 438: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	439
	
l4109:
;LC-meter.c: 439: format_xint32( *(unsigned long int*)&Cin);
	movff	(measure_capacitance@Cin),(c:format_xint32@x)
	movff	(measure_capacitance@Cin+1),(c:format_xint32@x+1)
	movff	(measure_capacitance@Cin+2),(c:format_xint32@x+2)
	movff	(measure_capacitance@Cin+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	440
	
l4111:
;LC-meter.c: 440: ser_puts("\r\n");
	movlw	(STR_33)&0ffh
	
	call	_ser_puts
	line	442
	
l4113:
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
	goto	u3511
	goto	u3510
u3511:
	goto	l4131
u3510:
	line	443
	
l4115:
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
	goto	u3521
	goto	u3520
u3521:
	goto	l4127
u3520:
	line	444
	
l4117:
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
	goto	u3531
	goto	u3530
u3531:
	goto	l4123
u3530:
	line	445
	
l4119:
;LC-meter.c: 445: Cin = Cin / (1e+09l);
	movff	(measure_capacitance@Cin),(c:___fldiv@f1)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f1+3)
	movlw	low(1000000000.0000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000000.0000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	446
	
l4121:
;LC-meter.c: 446: unit = 4;
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	447
;LC-meter.c: 447: } else {
	goto	l4133
	line	448
	
l4123:
;LC-meter.c: 448: Cin = Cin / (1e+06l);
	movff	(measure_capacitance@Cin),(c:___fldiv@f1)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f1+3)
	movlw	low(1000000.0000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000.0000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	449
	
l4125:
;LC-meter.c: 449: unit = 5;
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l4133
	line	452
	
l4127:
;LC-meter.c: 452: Cin = Cin / 1e+03l;
	movff	(measure_capacitance@Cin),(c:___fldiv@f1)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f1+3)
	movlw	low(1000.0000000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000.0000000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	453
	
l4129:
;LC-meter.c: 453: unit = 6;
	movlw	low(06h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l4133
	line	456
	
l4131:
;LC-meter.c: 456: unit = 7;
	movlw	low(07h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	458
	
l4133:; BSR set to: 0

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
	
l4135:
;LC-meter.c: 459: var = (unsigned short int)Cin;
	movff	(measure_capacitance@Cin),(___fltol@f1)
	movff	(measure_capacitance@Cin+1),(___fltol@f1+1)
	movff	(measure_capacitance@Cin+2),(___fltol@f1+2)
	movff	(measure_capacitance@Cin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_capacitance@var)
	movff	1+?___fltol,(measure_capacitance@var+1)
	line	461
	
l4137:; BSR set to: 0

;LC-meter.c: 461: print_reading(var);
	movff	(measure_capacitance@var),(c:print_reading@measurement)
	movff	(measure_capacitance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	462
	
l4139:
;LC-meter.c: 462: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_capacitance@unit))&0ffh,w
	
	call	_print_unit
	line	463
	
l537:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
	signat	_measure_capacitance,88
	global	_print_unit

;; *************** function _print_unit *****************
;; Defined at:
;;		line 408 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_gotoxy
;;		_ser_puts
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	408
global __ptext5
__ptext5:
psect	text5
	file	"../../../src/print.c"
	line	408
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:
;incstack = 0
	opt	stack 24
	line	417
	
l3019:; BSR set to: 0

;print.c: 416: static const char* units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
;print.c: 417: lcd_gotoxy(14, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Eh)&0ffh
	
	call	_lcd_gotoxy
	line	421
;print.c: 421: lcd_gotoxy(16 - (buffer.n - buffer.p), 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlb	1	; () banked
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_print_unit+0+0)&0ffh,c
	movf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_print_unit+1+0)&0ffh,c
	movf	((??_print_unit+0+0)),c,w
	subwf	((??_print_unit+1+0)),c,w
	addlw	low(010h)
	
	call	_lcd_gotoxy
	line	424
	
l3021:
;print.c: 424: ser_puts("\r\n");
	movlw	(STR_9)&0ffh
	
	call	_ser_puts
	line	426
	
l26:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4216
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 429 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2   52[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_format_number
;;		_lcd_gotoxy
;;		_lcd_puts
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
	file	"../../../src/print.c"
	line	429
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:
;incstack = 0
	opt	stack 23
	line	456
	
l3023:; BSR set to: 0

;print.c: 456: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	457
	
l3025:
;print.c: 457: lcd_puts("     ");
	movlw	(STR_10)&0ffh
	
	call	_lcd_puts
	line	458
	
l3027:
;print.c: 458: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	460
	
l3029:
;print.c: 460: format_number( measurement / 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwdiv@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:_print_reading$1146)
	movff	1+?___lwdiv,(c:_print_reading$1146+1)
	
l3031:
;print.c: 460: format_number( measurement / 100, 10, 0);
	movff	(c:_print_reading$1146),(c:format_number@n)
	movff	(c:_print_reading$1146+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	462
	
l3033:
;print.c: 462: format_number( measurement % 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwmod@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwmod@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:_print_reading$1147)
	movff	1+?___lwmod,(c:_print_reading$1147+1)
	
l3035:
;print.c: 462: format_number( measurement % 100, 10, 0);
	movff	(c:_print_reading$1147),(c:format_number@n)
	movff	(c:_print_reading$1147+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	465
	
l29:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_reading
	__end_of_print_reading:
	signat	_print_reading,4216
	global	_format_xint32

;; *************** function _format_xint32 *****************
;; Defined at:
;;		line 48 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  x               4   52[COMRAM] unsigned long 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_format_number
;;		_format_putchar
;;		_lcd_putch
;;		_output_putch
;;		_ser_putch
;; This function is called by:
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"../../../lib/format.c"
	line	48
global __ptext7
__ptext7:
psect	text7
	file	"../../../lib/format.c"
	line	48
	global	__size_of_format_xint32
	__size_of_format_xint32	equ	__end_of_format_xint32-_format_xint32
	
_format_xint32:
;incstack = 0
	opt	stack 23
	line	49
	
l3037:
;format.c: 49: putchar_ptr('0');
	call	u2378
	goto	u2379
u2378:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((_putchar_ptr))&0ffh,w
	movwf	tosl
	movf	((_putchar_ptr+1))&0ffh,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlw	(030h)&0ffh
	
	return	;indir
	u2379:
	line	50
;format.c: 50: putchar_ptr('x');
	call	u2388
	goto	u2389
u2388:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((_putchar_ptr))&0ffh,w
	movwf	tosl
	movf	((_putchar_ptr+1))&0ffh,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlw	(078h)&0ffh
	
	return	;indir
	u2389:
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
	
l196:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_format_xint32
	__end_of_format_xint32:
	signat	_format_xint32,4216
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 74 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  num             4   58[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  weight          4   70[BANK0 ] unsigned long 
;;  m               2   76[BANK0 ] short 
;;  digit           2   74[BANK0 ] short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0      16       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      20       0       0       0       0       0       0       0
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
;;		_lcd_putch
;;		_log10
;;		_output_putch
;;		_pow
;;		_ser_putch
;; This function is called by:
;;		_main
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	74
global __ptext8
__ptext8:
psect	text8
	file	"../../../lib/format.c"
	line	74
	global	__size_of_format_double
	__size_of_format_double	equ	__end_of_format_double-_format_double
	
_format_double:
;incstack = 0
	opt	stack 23
	line	75
	
l3975:
;format.c: 75: short m = (short)log10(num);
	movff	(format_double@num),(c:log10@x)
	movff	(format_double@num+1),(c:log10@x+1)
	movff	(format_double@num+2),(c:log10@x+2)
	movff	(format_double@num+3),(c:log10@x+3)
	call	_log10	;wreg free
	movff	0+?_log10,(___fltol@f1)
	movff	1+?_log10,(___fltol@f1+1)
	movff	2+?_log10,(___fltol@f1+2)
	movff	3+?_log10,(___fltol@f1+3)
	
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@m)
	movff	1+?___fltol,(format_double@m+1)
	line	79
;format.c: 76: short digit;
;format.c: 79: while(num > 0 + 1.19209290e-07) {
	goto	l3995
	line	80
	
l3977:
;format.c: 80: double weight = pow(10.0l, m);
	movff	(format_double@m),(c:___awtofl@c)
	movff	(format_double@m+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(_format_double$1150)
	movff	1+?___awtofl,(_format_double$1150+1)
	movff	2+?___awtofl,(_format_double$1150+2)
	movff	3+?___awtofl,(_format_double$1150+3)
	
	
l3979:
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
	movff	(_format_double$1150),(pow@y)
	movff	(_format_double$1150+1),(pow@y+1)
	movff	(_format_double$1150+2),(pow@y+2)
	movff	(_format_double$1150+3),(pow@y+3)
	call	_pow	;wreg free
	movff	0+?_pow,(format_double@weight)
	movff	1+?_pow,(format_double@weight+1)
	movff	2+?_pow,(format_double@weight+2)
	movff	3+?_pow,(format_double@weight+3)
	
	line	81
	
l3981:; BSR set to: 0

;format.c: 81: digit = (short)floor(num / weight);
	movff	(format_double@weight),(c:___fldiv@f2)
	movff	(format_double@weight+1),(c:___fldiv@f2+1)
	movff	(format_double@weight+2),(c:___fldiv@f2+2)
	movff	(format_double@weight+3),(c:___fldiv@f2+3)
	movff	(format_double@num),(c:___fldiv@f1)
	movff	(format_double@num+1),(c:___fldiv@f1+1)
	movff	(format_double@num+2),(c:___fldiv@f1+2)
	movff	(format_double@num+3),(c:___fldiv@f1+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(floor@x)
	movff	1+?___fldiv,(floor@x+1)
	movff	2+?___fldiv,(floor@x+2)
	movff	3+?___fldiv,(floor@x+3)
	
	call	_floor	;wreg free
	movff	0+?_floor,(_format_double$1151)
	movff	1+?_floor,(_format_double$1151+1)
	movff	2+?_floor,(_format_double$1151+2)
	movff	3+?_floor,(_format_double$1151+3)
	
	
l3983:
;format.c: 81: digit = (short)floor(num / weight);
	movff	(_format_double$1151),(___fltol@f1)
	movff	(_format_double$1151+1),(___fltol@f1+1)
	movff	(_format_double$1151+2),(___fltol@f1+2)
	movff	(_format_double$1151+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@digit)
	movff	1+?___fltol,(format_double@digit+1)
	line	82
	
l3985:; BSR set to: 0

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
	
l3987:
;format.c: 83: putchar_ptr((char)('0' + digit));
	call	u3458
	goto	u3459
u3458:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((_putchar_ptr))&0ffh,w
	movwf	tosl
	movf	((_putchar_ptr+1))&0ffh,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movf	((format_double@digit))&0ffh,w
	addlw	low(030h)
	
	return	;indir
	u3459:
	line	84
	
l3989:
;format.c: 84: if(m == 0)
	movlb	0	; () banked
	movf	((format_double@m))&0ffh,w
iorwf	((format_double@m+1))&0ffh,w
	btfss	status,2
	goto	u3461
	goto	u3460

u3461:
	goto	l3993
u3460:
	line	85
	
l3991:; BSR set to: 0

;format.c: 85: putchar_ptr('.');
	call	u3478
	goto	u3479
u3478:
	push
	
	movwf	pclath
	movf	((_putchar_ptr))&0ffh,w
	movwf	tosl
	movf	((_putchar_ptr+1))&0ffh,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movlw	(02Eh)&0ffh
	
	return	;indir
	u3479:
	line	86
	
l3993:
;format.c: 86: m--;
	movlb	0	; () banked
	decf	((format_double@m))&0ffh
	btfss	status,0
	decf	((format_double@m+1))&0ffh
	line	79
	
l3995:; BSR set to: 0

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
	goto	u3481
	goto	u3480
u3481:
	goto	l3977
u3480:
	line	88
	
l210:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_format_double
	__end_of_format_double:
	signat	_format_double,4216
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               4   37[BANK0 ] short 
;;  y               4   41[BANK0 ] short 
;; Auto vars:     Size  Location     Type
;;  yi              4   54[BANK0 ] unsigned long 
;;  sign            1   53[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   37[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       8       0       0       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      21       0       0       0       0       0       0       0
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
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 23
	line	7
	
l3941:; BSR set to: 0

	clrf	((pow@sign))&0ffh
	line	10
	
l3943:; BSR set to: 0

	movf	((pow@x))&0ffh,w
iorwf	((pow@x+1))&0ffh,w
iorwf	((pow@x+2))&0ffh,w
iorwf	((pow@x+3))&0ffh,w
	btfss	status,2
	goto	u3401
	goto	u3400

u3401:
	goto	l3947
u3400:
	line	11
	
l3945:; BSR set to: 0

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
	
l1153:
	line	14
	movlb	0	; () banked
	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l1154
	line	16
	
l3947:; BSR set to: 0

	movf	((pow@y))&0ffh,w
iorwf	((pow@y+1))&0ffh,w
iorwf	((pow@y+2))&0ffh,w
iorwf	((pow@y+3))&0ffh,w
	btfss	status,2
	goto	u3411
	goto	u3410

u3411:
	goto	l3953
u3410:
	line	17
	
l3949:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((?_pow))&0ffh
	movlw	high(1.0000000000000000)
	movwf	((?_pow+1))&0ffh
	movlw	low highword(1.0000000000000000)
	movwf	((?_pow+2))&0ffh
	movlw	high highword(1.0000000000000000)
	movwf	((?_pow+3))&0ffh
	goto	l1154
	line	18
	
l3953:; BSR set to: 0

	btfsc	((pow@x+3))&0ffh,7
	goto	u3420
	goto	u3421

u3421:
	goto	l3963
u3420:
	line	19
	
l3955:; BSR set to: 0

	movff	(pow@y),(___fltol@f1)
	movff	(pow@y+1),(___fltol@f1+1)
	movff	(pow@y+2),(___fltol@f1+2)
	movff	(pow@y+3),(___fltol@f1+3)
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
	bnz	u3430
movf	((pow@y+1))&0ffh,w
xorwf	(1+?___lltofl),c,w
	bnz	u3430
movf	((pow@y+2))&0ffh,w
xorwf	(2+?___lltofl),c,w
	bnz	u3430
movf	((pow@y+3))&0ffh,w
xorwf	(3+?___lltofl),c,w
	btfsc	status,2
	goto	u3431
	goto	u3430

u3431:
	goto	l3959
u3430:
	line	22
	
l3957:; BSR set to: 0

	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l1154
	line	24
	
l3959:; BSR set to: 0

	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movwf	((pow@sign))&0ffh
	line	25
	
l3961:; BSR set to: 0

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
	
l3963:; BSR set to: 0

	movff	(pow@x),(c:log@x)
	movff	(pow@x+1),(c:log@x+1)
	movff	(pow@x+2),(c:log@x+2)
	movff	(pow@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_pow$1163)
	movff	1+?_log,(_pow$1163+1)
	movff	2+?_log,(_pow$1163+2)
	movff	3+?_log,(_pow$1163+3)
	
	
l3965:
	movff	(_pow$1163),(c:___flmul@f1)
	movff	(_pow$1163+1),(c:___flmul@f1+1)
	movff	(_pow$1163+2),(c:___flmul@f1+2)
	movff	(_pow$1163+3),(c:___flmul@f1+3)
	movff	(pow@y),(c:___flmul@f2)
	movff	(pow@y+1),(c:___flmul@f2+1)
	movff	(pow@y+2),(c:___flmul@f2+2)
	movff	(pow@y+3),(c:___flmul@f2+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pow$1164)
	movff	1+?___flmul,(_pow$1164+1)
	movff	2+?___flmul,(_pow$1164+2)
	movff	3+?___flmul,(_pow$1164+3)
	
	
l3967:
	movff	(_pow$1164),(exp@x)
	movff	(_pow$1164+1),(exp@x+1)
	movff	(_pow$1164+2),(exp@x+2)
	movff	(_pow$1164+3),(exp@x+3)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	movff	3+?_exp,(pow@x+3)
	
	line	28
	
l3969:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l1158
u3440:
	line	29
	
l3971:; BSR set to: 0

	movff	(pow@x),(c:___flneg@f1)
	movff	(pow@x+1),(c:___flneg@f1+1)
	movff	(pow@x+2),(c:___flneg@f1+2)
	movff	(pow@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(?_pow)
	movff	1+?___flneg,(?_pow+1)
	movff	2+?___flneg,(?_pow+2)
	movff	3+?___flneg,(?_pow+3)
	
	goto	l1154
	
l1158:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	movff	(pow@x+3),(?_pow+3)
	line	31
	
l1154:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8316
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               4   26[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   34[BANK0 ] int 
;;  sign            1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      11       0       0       0       0       0       0       0
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
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	31
	
l3893:
	movlb	0	; () banked
	movf	((exp@x))&0ffh,w
iorwf	((exp@x+1))&0ffh,w
iorwf	((exp@x+2))&0ffh,w
iorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u3321
	goto	u3320

u3321:
	goto	l3899
u3320:
	line	32
	
l3895:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((?_exp))&0ffh
	movlw	high(1.0000000000000000)
	movwf	((?_exp+1))&0ffh
	movlw	low highword(1.0000000000000000)
	movwf	((?_exp+2))&0ffh
	movlw	high highword(1.0000000000000000)
	movwf	((?_exp+3))&0ffh
	goto	l1180
	line	34
	
l3899:; BSR set to: 0

	movlw	low(709.78271289338397)
	movwf	((c:___flge@ff1)),c
	movlw	high(709.78271289338397)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(709.78271289338397)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(709.78271289338397)
	movwf	((c:___flge@ff1+3)),c
	movff	(exp@x),(c:___flge@ff2)
	movff	(exp@x+1),(c:___flge@ff2+1)
	movff	(exp@x+2),(c:___flge@ff2+2)
	movff	(exp@x+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3331
	goto	u3330
u3331:
	goto	l3905
u3330:
	line	36
	
l3901:
	movlw	low(3.4028234699999998e+038)
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(3.4028234699999998e+038)
	movwf	((?_exp+1))&0ffh
	movlw	low highword(3.4028234699999998e+038)
	movwf	((?_exp+2))&0ffh
	movlw	high highword(3.4028234699999998e+038)
	movwf	((?_exp+3))&0ffh
	goto	l1180
	line	38
	
l3905:
	movff	(exp@x),(c:___flge@ff1)
	movff	(exp@x+1),(c:___flge@ff1+1)
	movff	(exp@x+2),(c:___flge@ff1+2)
	movff	(exp@x+3),(c:___flge@ff1+3)
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
	goto	u3341
	goto	u3340
u3341:
	goto	l3909
u3340:
	line	40
	
l3907:
	movlb	0	; () banked
	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1180
	line	43
	
l3909:
	movlb	0	; () banked
	btfsc	((exp@x+3))&0ffh,7
	goto	u3351
	goto	u3350

u3351:
	movlw	1
	goto	u3360
u3350:
	movlw	0
u3360:
	movwf	((exp@sign))&0ffh
	line	44
	
l3911:; BSR set to: 0

	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3915
u3370:
	line	45
	
l3913:; BSR set to: 0

	movff	(exp@x),(c:___flneg@f1)
	movff	(exp@x+1),(c:___flneg@f1+1)
	movff	(exp@x+2),(c:___flneg@f1+2)
	movff	(exp@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(exp@x)
	movff	1+?___flneg,(exp@x+1)
	movff	2+?___flneg,(exp@x+2)
	movff	3+?___flneg,(exp@x+3)
	
	line	46
	
l3915:; BSR set to: 0

	movff	(exp@x),(c:___flmul@f1)
	movff	(exp@x+1),(c:___flmul@f1+1)
	movff	(exp@x+2),(c:___flmul@f1+2)
	movff	(exp@x+3),(c:___flmul@f1+3)
	movlw	low(1.4426950408999999)
	movwf	((c:___flmul@f2)),c
	movlw	high(1.4426950408999999)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(1.4426950408999999)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(1.4426950408999999)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(exp@x)
	movff	1+?___flmul,(exp@x+1)
	movff	2+?___flmul,(exp@x+2)
	movff	3+?___flmul,(exp@x+3)
	
	line	47
	
l3917:
	movff	(exp@x),(floor@x)
	movff	(exp@x+1),(floor@x+1)
	movff	(exp@x+2),(floor@x+2)
	movff	(exp@x+3),(floor@x+3)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$1165)
	movff	1+?_floor,(_exp$1165+1)
	movff	2+?_floor,(_exp$1165+2)
	movff	3+?_floor,(_exp$1165+3)
	
	
l3919:
	movff	(_exp$1165),(___fltol@f1)
	movff	(_exp$1165+1),(___fltol@f1+1)
	movff	(_exp$1165+2),(___fltol@f1+2)
	movff	(_exp$1165+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(exp@exponent)
	movff	1+?___fltol,(exp@exponent+1)
	line	48
	
l3921:; BSR set to: 0

	movff	(exp@x),(c:___flsub@f1)
	movff	(exp@x+1),(c:___flsub@f1+1)
	movff	(exp@x+2),(c:___flsub@f1+2)
	movff	(exp@x+3),(c:___flsub@f1+3)
	movff	(exp@exponent),(c:___awtofl@c)
	movff	(exp@exponent+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(c:___flsub@f2)
	movff	1+?___awtofl,(c:___flsub@f2+1)
	movff	2+?___awtofl,(c:___flsub@f2+2)
	movff	3+?___awtofl,(c:___flsub@f2+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(exp@x)
	movff	1+?___flsub,(exp@x+1)
	movff	2+?___flsub,(exp@x+2)
	movff	3+?___flsub,(exp@x+3)
	
	line	49
	
l3923:
	movff	(exp@x),(c:eval_poly@x)
	movff	(exp@x+1),(c:eval_poly@x+1)
	movff	(exp@x+2),(c:eval_poly@x+2)
	movff	(exp@x+3),(c:eval_poly@x+3)
		movlw	low(exp@coeff)
	movwf	((c:eval_poly@d)),c

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
	movff	0+?_ldexp,(exp@x)
	movff	1+?_ldexp,(exp@x+1)
	movff	2+?_ldexp,(exp@x+2)
	movff	3+?_ldexp,(exp@x+3)
	
	line	50
	
l3925:
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l1184
u3380:
	line	52
	
l3927:; BSR set to: 0

		incf	((exp@x))&0ffh,w
	bnz	u3391
	incf	((exp@x+1))&0ffh,w
	bnz	u3391
	movlw	127
	xorwf	((exp@x+2))&0ffh,w
	bnz	u3391
	movlw	127
	xorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u3391
	goto	u3390

u3391:
	goto	l3931
u3390:
	line	53
	
l3929:; BSR set to: 0

	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1180
	line	54
	
l3931:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1.0000000000000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1.0000000000000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1.0000000000000000)
	movwf	((c:___fldiv@f1+3)),c
	movff	(exp@x),(c:___fldiv@f2)
	movff	(exp@x+1),(c:___fldiv@f2+1)
	movff	(exp@x+2),(c:___fldiv@f2+2)
	movff	(exp@x+3),(c:___fldiv@f2+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(?_exp)
	movff	1+?___fldiv,(?_exp+1)
	movff	2+?___fldiv,(?_exp+2)
	movff	3+?___fldiv,(?_exp+3)
	
	goto	l1180
	line	55
	
l1184:; BSR set to: 0

	line	56
	movff	(exp@x),(?_exp)
	movff	(exp@x+1),(?_exp+1)
	movff	(exp@x+2),(?_exp+2)
	movff	(exp@x+3),(?_exp+3)
	line	57
	
l1180:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4220
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4   78[COMRAM] unsigned char 
;;  newexp          2   82[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   78[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 25
	line	279
	
l2761:
	movf	((c:ldexp@value)),c,w
iorwf	((c:ldexp@value+1)),c,w
iorwf	((c:ldexp@value+2)),c,w
iorwf	((c:ldexp@value+3)),c,w
	btfss	status,2
	goto	u1991
	goto	u1990

u1991:
	goto	l2765
u1990:
	line	280
	
l2763:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l916
	line	282
	
l2765:
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
	goto	u2001
	goto	u2000
u2001:
	movlw	1
	goto	u2006
u2000:
	movlw	0
u2006:
	addwf	((c:ldexp@newexp)),c
	movlw	0
	addwfc	((c:ldexp@newexp+1)),c
	line	287
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u2010
	goto	u2011

u2011:
	goto	l2771
u2010:
	line	289
	
l2767:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l916
	line	291
	
l2771:
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u2021
	decf	((c:ldexp@newexp+1)),c,w
	btfss	status,0
	goto	u2021
	goto	u2020

u2021:
	goto	l2785
u2020:
	line	293
	
l2773:
	btfsc	((c:ldexp@value+3)),c,7
	goto	u2030
	goto	u2031

u2031:
	goto	l2781
u2030:
	line	294
	
l2775:
	movlw	low(-3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l916
	line	296
	
l2781:
	movlw	low(3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l916
	line	300
	
l2785:
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
	
l2787:
	movff	(c:ldexp@value),(c:?_ldexp)
	movff	(c:ldexp@value+1),(c:?_ldexp+1)
	movff	(c:ldexp@value+2),(c:?_ldexp+2)
	movff	(c:ldexp@value+3),(c:?_ldexp+3)
	line	307
	
l916:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8316
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               4   16[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               4   20[BANK0 ] int 
;;  expon           2   24[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   16[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0       0       0
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
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:
;incstack = 0
	opt	stack 23
	line	18
	
l3791:
	movff	(floor@x),(c:frexp@value)
	movff	(floor@x+1),(c:frexp@value+1)
	movff	(floor@x+2),(c:frexp@value+2)
	movff	(floor@x+3),(c:frexp@value+3)
		movlw	low(floor@expon)
	movwf	((c:frexp@eptr)),c

	call	_frexp	;wreg free
	line	19
	
l3793:
	movlb	0	; () banked
	btfsc	((floor@expon+1))&0ffh,7
	goto	u3200
	goto	u3201

u3201:
	goto	l3801
u3200:
	line	20
	
l3795:; BSR set to: 0

	btfsc	((floor@x+3))&0ffh,7
	goto	u3210
	goto	u3211

u3211:
	goto	l883
u3210:
	line	21
	
l3797:; BSR set to: 0

	movlw	low(-1.0000000000000000)
	movwf	((?_floor))&0ffh
	movlw	high(-1.0000000000000000)
	movwf	((?_floor+1))&0ffh
	movlw	low highword(-1.0000000000000000)
	movwf	((?_floor+2))&0ffh
	movlw	high highword(-1.0000000000000000)
	movwf	((?_floor+3))&0ffh
	goto	l884
	
l883:; BSR set to: 0

	line	22
	clrf	((?_floor))&0ffh
	clrf	((?_floor+1))&0ffh
	clrf	((?_floor+2))&0ffh
	clrf	((?_floor+3))&0ffh

	goto	l884
	line	24
	
l3801:; BSR set to: 0

		movf	((floor@expon+1))&0ffh,w
	bnz	u3220
	movlw	29
	subwf	 ((floor@expon))&0ffh,w
	btfss	status,0
	goto	u3221
	goto	u3220

u3221:
	goto	l3805
u3220:
	line	25
	
l3803:; BSR set to: 0

	movff	(floor@x),(?_floor)
	movff	(floor@x+1),(?_floor+1)
	movff	(floor@x+2),(?_floor+2)
	movff	(floor@x+3),(?_floor+3)
	goto	l884
	line	26
	
l3805:; BSR set to: 0

	movff	(floor@x),(___fltol@f1)
	movff	(floor@x+1),(___fltol@f1+1)
	movff	(floor@x+2),(___fltol@f1+2)
	movff	(floor@x+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(___altofl@c)
	movff	1+?___fltol,(___altofl@c+1)
	movff	2+?___fltol,(___altofl@c+2)
	movff	3+?___fltol,(___altofl@c+3)
	
	call	___altofl	;wreg free
	movff	0+?___altofl,(floor@i)
	movff	1+?___altofl,(floor@i+1)
	movff	2+?___altofl,(floor@i+2)
	movff	3+?___altofl,(floor@i+3)
	
	line	27
	movff	(floor@x),(c:___flge@ff1)
	movff	(floor@x+1),(c:___flge@ff1+1)
	movff	(floor@x+2),(c:___flge@ff1+2)
	movff	(floor@x+3),(c:___flge@ff1+3)
	movff	(floor@i),(c:___flge@ff2)
	movff	(floor@i+1),(c:___flge@ff2+1)
	movff	(floor@i+2),(c:___flge@ff2+2)
	movff	(floor@i+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3231
	goto	u3230
u3231:
	goto	l886
u3230:
	line	28
	
l3807:
	movff	(floor@i),(c:___fladd@f1)
	movff	(floor@i+1),(c:___fladd@f1+1)
	movff	(floor@i+2),(c:___fladd@f1+2)
	movff	(floor@i+3),(c:___fladd@f1+3)
	movlw	low(-1.0000000000000000)
	movwf	((c:___fladd@f2)),c
	movlw	high(-1.0000000000000000)
	movwf	((c:___fladd@f2+1)),c
	movlw	low highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+2)),c
	movlw	high highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+3)),c
	call	___fladd	;wreg free
	movff	0+?___fladd,(?_floor)
	movff	1+?___fladd,(?_floor+1)
	movff	2+?___fladd,(?_floor+2)
	movff	3+?___fladd,(?_floor+3)
	
	goto	l884
	
l886:
	line	29
	movff	(floor@i),(?_floor)
	movff	(floor@i+1),(?_floor+1)
	movff	(floor@i+2),(?_floor+2)
	movff	(floor@i+3),(?_floor+3)
	line	30
	
l884:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4220
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   89[COMRAM] unsigned char 
;;  sign1           1   88[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0
;;      Totals:         2       8       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_floor
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:
;incstack = 0
	opt	stack 28
	line	47
	
l3753:
	movlb	0	; () banked
	rlcf	((___fltol@f1+2))&0ffh,w
	rlcf	((___fltol@f1+3))&0ffh,w
	movwf	((c:___fltol@exp1)),c
	movf	((c:___fltol@exp1)),c,w
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3757
u3130:
	line	48
	
l3755:; BSR set to: 0

	clrf	((?___fltol))&0ffh
	clrf	((?___fltol+1))&0ffh
	clrf	((?___fltol+2))&0ffh
	clrf	((?___fltol+3))&0ffh

	goto	l896
	line	49
	
l3757:; BSR set to: 0

	movff	(___fltol@f1),??___fltol+0+0
	movff	(___fltol@f1+1),??___fltol+0+0+1
	movff	(___fltol@f1+2),??___fltol+0+0+2
	movff	(___fltol@f1+3),??___fltol+0+0+3
	movlw	01Fh+1
	goto	u3140
u3145:
	bcf	status,0
	rrcf	(??___fltol+0+3)&0ffh
	rrcf	(??___fltol+0+2)&0ffh
	rrcf	(??___fltol+0+1)&0ffh
	rrcf	(??___fltol+0+0)&0ffh
u3140:
	decfsz	wreg
	goto	u3145
	movf	(??___fltol+0+0)&0ffh,w
	movwf	((c:___fltol@sign1)),c
	line	50
	
l3759:; BSR set to: 0

	bsf	(0+(23/8)+(___fltol@f1))&0ffh,(23)&7
	line	51
	
l3761:; BSR set to: 0

	movlw	0FFh
	andwf	((___fltol@f1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+2))&0ffh
	movlw	0
	andwf	((___fltol@f1+3))&0ffh
	line	52
	
l3763:; BSR set to: 0

	movlw	(096h)&0ffh
	subwf	((c:___fltol@exp1)),c
	line	53
	
l3765:; BSR set to: 0

	btfsc	((c:___fltol@exp1)),c,7
	goto	u3150
	goto	u3151

u3151:
	goto	l3775
u3150:
	line	54
	
l3767:; BSR set to: 0

		movf	((c:___fltol@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u3161
	goto	u3160

u3161:
	goto	l3771
u3160:
	goto	l3755
	line	57
	
l3771:; BSR set to: 0

	bcf	status,0
	rrcf	((___fltol@f1+3))&0ffh
	rrcf	((___fltol@f1+2))&0ffh
	rrcf	((___fltol@f1+1))&0ffh
	rrcf	((___fltol@f1))&0ffh
	line	58
	
l3773:; BSR set to: 0

	incfsz	((c:___fltol@exp1)),c
	
	goto	l3771
	goto	l3783
	line	60
	
l3775:; BSR set to: 0

		movlw	020h-1
	cpfsgt	((c:___fltol@exp1)),c
	goto	u3171
	goto	u3170

u3171:
	goto	l3781
u3170:
	goto	l3755
	line	63
	
l3779:; BSR set to: 0

	bcf	status,0
	rlcf	((___fltol@f1))&0ffh
	rlcf	((___fltol@f1+1))&0ffh
	rlcf	((___fltol@f1+2))&0ffh
	rlcf	((___fltol@f1+3))&0ffh
	line	64
	decf	((c:___fltol@exp1)),c
	line	62
	
l3781:; BSR set to: 0

	movf	((c:___fltol@exp1)),c,w
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3779
u3180:
	line	67
	
l3783:; BSR set to: 0

	movf	((c:___fltol@sign1)),c,w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l3787
u3190:
	line	68
	
l3785:; BSR set to: 0

	comf	((___fltol@f1+3))&0ffh
	comf	((___fltol@f1+2))&0ffh
	comf	((___fltol@f1+1))&0ffh
	negf	((___fltol@f1))&0ffh
	movlw	0
	addwfc	((___fltol@f1+1))&0ffh
	addwfc	((___fltol@f1+2))&0ffh
	addwfc	((___fltol@f1+3))&0ffh
	line	69
	
l3787:; BSR set to: 0

	movff	(___fltol@f1),(?___fltol)
	movff	(___fltol@f1+1),(?___fltol+1)
	movff	(___fltol@f1+2),(?___fltol+2)
	movff	(___fltol@f1+3),(?___fltol+3)
	line	70
	
l896:; BSR set to: 0

	return	;funcret
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_floor
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	6
	
l2593:
	
	btfss	((c:___flge@ff1+3)),c,(31)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l2597
u1760:
	line	7
	
l2595:
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
	
l2597:
	
	btfss	((c:___flge@ff2+3)),c,(31)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l845
u1770:
	line	9
	
l2599:
	negf	((c:___flge@ff2)),c
	comf	((c:___flge@ff2+1)),c
	btfsc	status,0
	incf	((c:___flge@ff2+1)),c
	comf	((c:___flge@ff2+2)),c
	btfsc	status,0
	incf	((c:___flge@ff2+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff2+3)),c
	
l845:
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
	goto	u1781
	goto	u1780

u1781:
	goto	l2603
u1780:
	
l2601:
	bcf	status,0
	goto	l846
	
l2603:
	bsf	status,0
	line	13
	
l846:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___altofl

;; *************** function ___altofl *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
;; Parameters:    Size  Location     Type
;;  c               4   12[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   90[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       4       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
	global	__size_of___altofl
	__size_of___altofl	equ	__end_of___altofl-___altofl
	
___altofl:
;incstack = 0
	opt	stack 23
	line	40
	
l3615:; BSR set to: 0

	clrf	((c:___altofl@sign)),c
	line	41
	
l3617:; BSR set to: 0

	btfsc	((___altofl@c+3))&0ffh,7
	goto	u2880
	goto	u2881

u2881:
	goto	l3623
u2880:
	line	42
	
l3619:; BSR set to: 0

	comf	((___altofl@c+3))&0ffh
	comf	((___altofl@c+2))&0ffh
	comf	((___altofl@c+1))&0ffh
	negf	((___altofl@c))&0ffh
	movlw	0
	addwfc	((___altofl@c+1))&0ffh
	addwfc	((___altofl@c+2))&0ffh
	addwfc	((___altofl@c+3))&0ffh
	line	43
	
l3621:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:___altofl@sign)),c
	line	45
	
l3623:; BSR set to: 0

	movff	(___altofl@c),(c:___flpack@arg)
	movff	(___altofl@c+1),(c:___flpack@arg+1)
	movff	(___altofl@c+2),(c:___flpack@arg+2)
	movff	(___altofl@c+3),(c:___flpack@arg+3)
	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movff	(c:___altofl@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(?___altofl)
	movff	1+?___flpack,(?___altofl+1)
	movff	2+?___flpack,(?___altofl+2)
	movff	3+?___flpack,(?___altofl+3)
	
	line	46
	
l649:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___altofl
	__end_of___altofl:
	signat	___altofl,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
;; Parameters:    Size  Location     Type
;;  f1              4   66[COMRAM] unsigned char 
;;  f2              4   70[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   66[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	20
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	20
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:
;incstack = 0
	opt	stack 26
	line	23
	
l3847:
	movf	((c:___flsub@f2)),c,w
iorwf	((c:___flsub@f2+1)),c,w
iorwf	((c:___flsub@f2+2)),c,w
iorwf	((c:___flsub@f2+3)),c,w
	btfsc	status,2
	goto	u3271
	goto	u3270

u3271:
	goto	l3851
u3270:
	line	24
	
l3849:
	movlw	0
	xorwf	((c:___flsub@f2)),c
	movlw	0
	xorwf	((c:___flsub@f2+1)),c
	movlw	0
	xorwf	((c:___flsub@f2+2)),c
	movlw	080h
	xorwf	((c:___flsub@f2+3)),c
	line	30
	
l3851:
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
	
l892:
	return	;funcret
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
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
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
	global	__size_of___flneg
	__size_of___flneg	equ	__end_of___flneg-___flneg
	
___flneg:
;incstack = 0
	opt	stack 25
	line	17
	
l2753:; BSR set to: 0

	movf	((c:___flneg@f1)),c,w
iorwf	((c:___flneg@f1+1)),c,w
iorwf	((c:___flneg@f1+2)),c,w
iorwf	((c:___flneg@f1+3)),c,w
	btfsc	status,2
	goto	u1981
	goto	u1980

u1981:
	goto	l2757
u1980:
	line	18
	
l2755:; BSR set to: 0

	movlw	0
	xorwf	((c:___flneg@f1)),c
	movlw	0
	xorwf	((c:___flneg@f1+1)),c
	movlw	0
	xorwf	((c:___flneg@f1+2)),c
	movlw	080h
	xorwf	((c:___flneg@f1+3)),c
	line	19
	
l2757:; BSR set to: 0

	movff	(c:___flneg@f1),(c:?___flneg)
	movff	(c:___flneg@f1+1),(c:?___flneg+1)
	movff	(c:___flneg@f1+2),(c:?___flneg+2)
	movff	(c:___flneg@f1+3),(c:?___flneg+3)
	line	20
	
l858:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
;; Parameters:    Size  Location     Type
;;  f1              4   12[COMRAM] unsigned char 
;;  f2              4   16[COMRAM] unsigned char 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	54
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	54
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	63
	
l3811:
	rlcf	((c:___fldiv@f1+2)),c,w
	rlcf	((c:___fldiv@f1+3)),c,w
	movwf	((c:___fldiv@exp)),c
	movf	((c:___fldiv@exp)),c,w
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3815
u3240:
	line	64
	
l3813:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l837
	line	65
	
l3815:
	rlcf	((c:___fldiv@f2+2)),c,w
	rlcf	((c:___fldiv@f2+3)),c,w
	movwf	((c:___fldiv@sign)),c
	movf	((c:___fldiv@sign)),c,w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3819
u3250:
	line	66
	
l3817:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l837
	line	67
	
l3819:
	movf	((c:___fldiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___fldiv@exp)),c
	line	68
	
l3821:
	movff	0+((c:___fldiv@f1)+03h),(c:___fldiv@sign)
	line	69
	movf	(0+((c:___fldiv@f2)+03h)),c,w
	xorwf	((c:___fldiv@sign)),c
	line	70
	movlw	(080h)&0ffh
	andwf	((c:___fldiv@sign)),c
	line	71
	
l3823:
	bsf	(0+(23/8)+(c:___fldiv@f1)),c,(23)&7
	line	72
	
l3825:
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
	
l3827:
	movlw	0FFh
	andwf	((c:___fldiv@f2)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+2)),c
	movlw	0
	andwf	((c:___fldiv@f2+3)),c
	line	75
	
l3829:
	movlw	low(020h)
	movwf	((c:___fldiv@cntr)),c
	line	77
	
l3831:
	bcf	status,0
	rlcf	((c:___fldiv@f3)),c
	rlcf	((c:___fldiv@f3+1)),c
	rlcf	((c:___fldiv@f3+2)),c
	rlcf	((c:___fldiv@f3+3)),c
	line	78
	
l3833:
		movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c,w
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c,w
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c,w
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c,w
	btfss	status,0
	goto	u3261
	goto	u3260

u3261:
	goto	l3839
u3260:
	line	79
	
l3835:
	movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c
	line	80
	
l3837:
	bsf	(0+(0/8)+(c:___fldiv@f3)),c,(0)&7
	line	82
	
l3839:
	bcf	status,0
	rlcf	((c:___fldiv@f1)),c
	rlcf	((c:___fldiv@f1+1)),c
	rlcf	((c:___fldiv@f1+2)),c
	rlcf	((c:___fldiv@f1+3)),c
	line	83
	
l3841:
	decfsz	((c:___fldiv@cntr)),c
	
	goto	l3831
	line	84
	
l3843:
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
	
l837:
	return	;funcret
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
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
	global	__size_of___lltofl
	__size_of___lltofl	equ	__end_of___lltofl-___lltofl
	
___lltofl:
;incstack = 0
	opt	stack 25
	line	32
	
l3871:; BSR set to: 0

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
	
l1053:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lltofl
	__end_of___lltofl:
	signat	___lltofl,4220
	global	_log10

;; *************** function _log10 *****************
;; Defined at:
;;		line 39 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4   84[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   84[COMRAM] unsigned long 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       4       0       0       0       0       0       0       0
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
psect	text20,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
global __ptext20
__ptext20:
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
	global	__size_of_log10
	__size_of_log10	equ	__end_of_log10-_log10
	
_log10:
;incstack = 0
	opt	stack 23
	line	41
	
l3935:
	movff	(c:log10@x),(c:log@x)
	movff	(c:log10@x+1),(c:log@x+1)
	movff	(c:log10@x+2),(c:log@x+2)
	movff	(c:log10@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_log10$1162)
	movff	1+?_log,(_log10$1162+1)
	movff	2+?_log,(_log10$1162+2)
	movff	3+?_log,(_log10$1162+3)
	
	
l3937:
	movff	(_log10$1162),(c:___flmul@f1)
	movff	(_log10$1162+1),(c:___flmul@f1+1)
	movff	(_log10$1162+2),(c:___flmul@f1+2)
	movff	(_log10$1162+3),(c:___flmul@f1+3)
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
	
l1077:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_log10
	__end_of_log10:
	signat	_log10,4220
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4   78[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exponent        2   82[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   78[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
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
psect	text21,class=CODE,space=0,reloc=2
	line	5
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:
;incstack = 0
	opt	stack 23
	line	24
	
l3875:
	btfsc	((c:log@x+3)),c,7
	goto	u3300
	goto	u3301

u3301:
	goto	l3879
u3300:
	line	26
	
l3877:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l1073
	line	28
	
l3879:
	movf	((c:log@x)),c,w
iorwf	((c:log@x+1)),c,w
iorwf	((c:log@x+2)),c,w
iorwf	((c:log@x+3)),c,w
	btfss	status,2
	goto	u3311
	goto	u3310

u3311:
	goto	l3883
u3310:
	line	30
	
l3881:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l1073
	line	32
	
l3883:
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
	
l3885:
	decf	((c:log@exponent)),c
	btfss	status,0
	decf	((c:log@exponent+1)),c
	line	34
	
l3887:
	movff	(c:log@x),(c:eval_poly@x)
	movff	(c:log@x+1),(c:eval_poly@x+1)
	movff	(c:log@x+2),(c:eval_poly@x+2)
	movff	(c:log@x+3),(c:eval_poly@x+3)
		movlw	low(log@coeff)
	movwf	((c:eval_poly@d)),c

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
	
l3889:
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
	
l1073:
	return	;funcret
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
;;  eptr            1    6[COMRAM] PTR int 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         5       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 25
	line	256
	
l3733:
	movf	((c:frexp@value)),c,w
iorwf	((c:frexp@value+1)),c,w
iorwf	((c:frexp@value+2)),c,w
iorwf	((c:frexp@value+3)),c,w
	btfss	status,2
	goto	u3111
	goto	u3110

u3111:
	goto	l3741
u3110:
	line	257
	
l3735:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l3737:
	clrf	((c:?_frexp)),c
	clrf	((c:?_frexp+1)),c
	clrf	((c:?_frexp+2)),c
	clrf	((c:?_frexp+3)),c

	goto	l912
	line	261
	
l3741:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0+0)&0ffh,c
	clrf	(??_frexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_frexp+0+0),c,f
	rlcf	(??_frexp+0+1),c,f
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	??_frexp+0+0,postinc2
	movff	??_frexp+0+1,postdec2

	line	262
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	btfsc	(0+((c:frexp@value)+02h)),c,7
	goto	u3121
	goto	u3120
u3121:
	movlw	1
	goto	u3126
u3120:
	movlw	0
u3126:
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l3743:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l3745:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	(0+((c:frexp@value)+03h)),c
	line	269
	
l3747:
	bcf	(0+((c:frexp@value)+02h)),c,7
	line	273
	
l3749:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	movff	(c:frexp@value+3),(c:?_frexp+3)
	line	274
	
l912:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8316
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               4   66[COMRAM] PTR int 
;;  d               1   70[COMRAM] PTR const 
;;		 -> exp@coeff(40), log@coeff(36), 
;;  n               2   71[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  res             4   74[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   66[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         7       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
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
psect	text23,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 23
	line	8
	
l3865:
	movf	((c:eval_poly@n)),c,w
	mullw	04h
	movf	((c:eval_poly@d)),c,w
	addwf	(prodl),c,w
	movwf	(??_eval_poly+0+0)&0ffh,c
	movff	(??_eval_poly+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:eval_poly@res)
	tblrd*+
	
	movff	tablat,(c:eval_poly@res+1)
	tblrd*+
	
	movff	tablat,(c:eval_poly@res+2)
	tblrd*-
	
	movff	tablat,(c:eval_poly@res+3)
	line	9
	goto	l3869
	line	10
	
l3867:
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
	movf	((c:eval_poly@n)),c,w
	mullw	04h
	movf	((c:eval_poly@d)),c,w
	addwf	(prodl),c,w
	movwf	(??_eval_poly+0+0)&0ffh,c
	movff	(??_eval_poly+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:___fladd@f2)
	tblrd*+
	
	movff	tablat,(c:___fladd@f2+1)
	tblrd*+
	
	movff	tablat,(c:___fladd@f2+2)
	tblrd*-
	
	movff	tablat,(c:___fladd@f2+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:eval_poly@res)
	movff	1+?___fladd,(c:eval_poly@res+1)
	movff	2+?___fladd,(c:eval_poly@res+2)
	movff	3+?___fladd,(c:eval_poly@res+3)
	
	line	9
	
l3869:
	movf	((c:eval_poly@n)),c,w
iorwf	((c:eval_poly@n+1)),c,w
	btfss	status,2
	goto	u3291
	goto	u3290

u3291:
	goto	l3867
u3290:
	
l1165:
	line	11
	movff	(c:eval_poly@res),(c:?_eval_poly)
	movff	(c:eval_poly@res+1),(c:?_eval_poly+1)
	movff	(c:eval_poly@res+2),(c:?_eval_poly+2)
	movff	(c:eval_poly@res+3),(c:?_eval_poly+3)
	line	12
	
l1166:
	return	;funcret
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
;;  f3_as_produc    4   50[COMRAM] unsigned long 
;;  sign            1   49[COMRAM] unsigned char 
;;  exp             1   48[COMRAM] unsigned char 
;;  cntr            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  4   27[COMRAM] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:         13       0       0       0       0       0       0       0       0
;;      Totals:        27       0       0       0       0       0       0       0       0
;;Total ram usage:       27 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_log
;;		_log10
;;		_pow
;;		_eval_poly
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:
;incstack = 0
	opt	stack 27
	line	67
	
l3693:
	rlcf	((c:___flmul@f1+2)),c,w
	rlcf	((c:___flmul@f1+3)),c,w
	movwf	((c:___flmul@exp)),c
	movf	((c:___flmul@exp)),c,w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l3697
u3080:
	line	68
	
l3695:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l852
	line	69
	
l3697:
	rlcf	((c:___flmul@f2+2)),c,w
	rlcf	((c:___flmul@f2+3)),c,w
	movwf	((c:___flmul@sign)),c
	movf	((c:___flmul@sign)),c,w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l3701
u3090:
	line	70
	
l3699:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l852
	line	71
	
l3701:
	movf	((c:___flmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___flmul@exp)),c
	line	72
	
l3703:
	movff	0+((c:___flmul@f1)+03h),(c:___flmul@sign)
	line	73
	movf	(0+((c:___flmul@f2)+03h)),c,w
	xorwf	((c:___flmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___flmul@sign)),c
	line	75
	
l3705:
	bsf	(0+(23/8)+(c:___flmul@f1)),c,(23)&7
	line	77
	
l3707:
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
	
l3709:
	line	142
	movlw	0FFh
	andwf	((c:___flmul@f1)),c
	movlw	0FFh
	andwf	((c:___flmul@f1+1)),c
	movlw	0FFh
	andwf	((c:___flmul@f1+2)),c
	movlw	0
	andwf	((c:___flmul@f1+3)),c
	line	144
	
l3711:
	movf	((c:___flmul@f1)),c,w
	mulwf	((c:___flmul@f2)),c
	movff	prodh,prodl
	clrf	(prodh),c
	movff	prodl,(c:___flmul@f3_as_product)
	movff	prodh,(c:___flmul@f3_as_product+1)
	clrf	((c:___flmul@f3_as_product+2)),c
	clrf	((c:___flmul@f3_as_product+3)),c

	line	148
	
l3713:
	movf	((c:___flmul@f1)),c,w
	mulwf	(0+((c:___flmul@f2)+01h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movf	(0+((c:___flmul@f1)+01h)),c,w
	mulwf	((c:___flmul@f2)),c
	movf	(prodl),c,w
	addwf	(??___flmul+0+0),c,w
	movwf	(??___flmul+3+0)&0ffh,c
	movf	(prodh),c,w
	addwfc	(??___flmul+0+1),c,w
	movwf	1+(??___flmul+3+0)&0ffh,c
	
	movlw	0
	addwfc	(??___flmul+0+2),c,w
	movwf	2+(??___flmul+3+0)&0ffh,c

	movf	(??___flmul+3+0),c,w
	movwf	(??___flmul+6+0)&0ffh,c
	movf	(??___flmul+3+1),c,w
	movwf	1+(??___flmul+6+0)&0ffh,c
	
	movf	(??___flmul+3+2),c,w
	movwf	2+(??___flmul+6+0)&0ffh,c
	
	clrf	3+(??___flmul+6+0)&0ffh,c
	movf	(??___flmul+6+0),c,w
	addwf	((c:___flmul@f3_as_product)),c
	movf	(??___flmul+6+1),c,w
	addwfc	((c:___flmul@f3_as_product+1)),c
	movf	(??___flmul+6+2),c,w
	addwfc	((c:___flmul@f3_as_product+2)),c
	movf	(??___flmul+6+3),c,w
	addwfc	((c:___flmul@f3_as_product+3)),c

	line	149
	
l3715:
	movf	(0+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	((c:___flmul@f3_as_product)),c
	movf	(1+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	1+((c:___flmul@f3_as_product)),c
	
	movf	(2+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	2+((c:___flmul@f3_as_product)),c
	
	clrf	3+((c:___flmul@f3_as_product)),c
	line	156
	
l3717:
	movf	((c:___flmul@f1)),c,w
	mulwf	(0+((c:___flmul@f2)+02h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movf	(0+((c:___flmul@f1)+01h)),c,w
	mulwf	(0+((c:___flmul@f2)+01h)),c
	movf	(prodl),c,w
	addwf	(??___flmul+0+0),c,w
	movwf	(??___flmul+3+0)&0ffh,c
	movf	(prodh),c,w
	addwfc	(??___flmul+0+1),c,w
	movwf	1+(??___flmul+3+0)&0ffh,c
	
	movlw	0
	addwfc	(??___flmul+0+2),c,w
	movwf	2+(??___flmul+3+0)&0ffh,c

	movf	(0+((c:___flmul@f1)+02h)),c,w
	mulwf	((c:___flmul@f2)),c
	movf	(prodl),c,w
	addwf	(??___flmul+3+0),c,w
	movwf	(??___flmul+6+0)&0ffh,c
	movf	(prodh),c,w
	addwfc	(??___flmul+3+1),c,w
	movwf	1+(??___flmul+6+0)&0ffh,c
	
	movlw	0
	addwfc	(??___flmul+3+2),c,w
	movwf	2+(??___flmul+6+0)&0ffh,c

	movf	(??___flmul+6+0),c,w
	movwf	(??___flmul+9+0)&0ffh,c
	movf	(??___flmul+6+1),c,w
	movwf	1+(??___flmul+9+0)&0ffh,c
	
	movf	(??___flmul+6+2),c,w
	movwf	2+(??___flmul+9+0)&0ffh,c
	
	clrf	3+(??___flmul+9+0)&0ffh,c
	movf	(??___flmul+9+0),c,w
	addwf	((c:___flmul@f3_as_product)),c
	movf	(??___flmul+9+1),c,w
	addwfc	((c:___flmul@f3_as_product+1)),c
	movf	(??___flmul+9+2),c,w
	addwfc	((c:___flmul@f3_as_product+2)),c
	movf	(??___flmul+9+3),c,w
	addwfc	((c:___flmul@f3_as_product+3)),c

	line	171
	
l3719:
	movf	(0+((c:___flmul@f1)+02h)),c,w
	mulwf	(0+((c:___flmul@f2)+01h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movlw	(___flmul@f3_as_product)&0ffh
	movwf	(??___flmul+3+0)&0ffh,c
	clrf	(??___flmul+3+0+1)&0ffh,c

	movlw	low(01h)
	addwf	(??___flmul+3+0),c,w
	movwf	c:fsr2l
	movlw	high(01h)
	addwfc	(??___flmul+3+1),c,w
	movwf	1+c:fsr2l
	movf	(??___flmul+0+0),c,w
	addwf	postinc2
	movf	(??___flmul+0+1),c,w
	addwfc	postinc2
	movf	(??___flmul+0+2),c,w
	addwfc	postinc2

	line	173
	
l3721:
	movf	(0+((c:___flmul@f1)+01h)),c,w
	mulwf	(0+((c:___flmul@f2)+02h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movlw	(___flmul@f3_as_product)&0ffh
	movwf	(??___flmul+3+0)&0ffh,c
	clrf	(??___flmul+3+0+1)&0ffh,c

	movlw	low(01h)
	addwf	(??___flmul+3+0),c,w
	movwf	c:fsr2l
	movlw	high(01h)
	addwfc	(??___flmul+3+1),c,w
	movwf	1+c:fsr2l
	movf	(??___flmul+0+0),c,w
	addwf	postinc2
	movf	(??___flmul+0+1),c,w
	addwfc	postinc2
	movf	(??___flmul+0+2),c,w
	addwfc	postinc2

	line	176
	
l3723:
	movf	(0+((c:___flmul@f1)+02h)),c,w
	mulwf	(0+((c:___flmul@f2)+02h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movlw	(___flmul@f3_as_product)&0ffh
	movwf	(??___flmul+3+0)&0ffh,c
	clrf	(??___flmul+3+0+1)&0ffh,c

	movlw	low(02h)
	addwf	(??___flmul+3+0),c,w
	movwf	c:fsr2l
	movlw	high(02h)
	addwfc	(??___flmul+3+1),c,w
	movwf	1+c:fsr2l
	movf	(??___flmul+0+0),c,w
	addwf	postinc2
	movf	(??___flmul+0+1),c,w
	addwfc	postinc2
	movf	(??___flmul+0+2),c,w
	addwfc	postinc2

	line	188
	
l3725:
	
	btfss	((c:___flmul@f3_as_product+3)),c,(31)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l854
u3100:
	line	189
	
l3727:
	bcf	status,0
	rrcf	((c:___flmul@f3_as_product+3)),c
	rrcf	((c:___flmul@f3_as_product+2)),c
	rrcf	((c:___flmul@f3_as_product+1)),c
	rrcf	((c:___flmul@f3_as_product)),c
	line	190
	incf	((c:___flmul@exp)),c
	line	191
	
l854:
	line	192
	bcf	status,0
	rrcf	((c:___flmul@f3_as_product+3)),c
	rrcf	((c:___flmul@f3_as_product+2)),c
	rrcf	((c:___flmul@f3_as_product+1)),c
	rrcf	((c:___flmul@f3_as_product)),c
	line	219
	
l3729:
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
	
l852:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 88 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
;; Parameters:    Size  Location     Type
;;  f1              4   54[COMRAM] unsigned char 
;;  f2              4   58[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   65[COMRAM] unsigned char 
;;  exp2            1   64[COMRAM] unsigned char 
;;  sign            1   63[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   54[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
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
psect	text25,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:
;incstack = 0
	opt	stack 26
	line	92
	
l3627:
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
	goto	u2891
	goto	u2890
u2891:
	goto	l805
u2890:
	
l3629:
		movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	btfsc	status,0
	goto	u2901
	goto	u2900

u2901:
	goto	l3633
u2900:
	
l3631:
	movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2911
	goto	u2910

u2911:
	goto	l3633
u2910:
	
l805:
	line	95
	movff	(c:___fladd@f2),(c:?___fladd)
	movff	(c:___fladd@f2+1),(c:?___fladd+1)
	movff	(c:___fladd@f2+2),(c:?___fladd+2)
	movff	(c:___fladd@f2+3),(c:?___fladd+3)
	goto	l806
	line	96
	
l3633:
	movf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l809
u2920:
	
l3635:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u2931
	goto	u2930

u2931:
	goto	l3639
u2930:
	
l3637:
	movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2941
	goto	u2940

u2941:
	goto	l3639
u2940:
	
l809:
	line	97
	movff	(c:___fladd@f1),(c:?___fladd)
	movff	(c:___fladd@f1+1),(c:?___fladd+1)
	movff	(c:___fladd@f1+2),(c:?___fladd+2)
	movff	(c:___fladd@f1+3),(c:?___fladd+3)
	goto	l806
	line	98
	
l3639:
	movlw	low(06h)
	movwf	((c:___fladd@sign)),c
	line	99
	
l3641:
	
	btfss	((c:___fladd@f1+3)),c,(31)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l3645
u2950:
	line	100
	
l3643:
	bsf	(0+(7/8)+(c:___fladd@sign)),c,(7)&7
	line	101
	
l3645:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l811
u2960:
	line	102
	
l3647:
	bsf	(0+(6/8)+(c:___fladd@sign)),c,(6)&7
	
l811:
	line	103
	bsf	(0+(23/8)+(c:___fladd@f1)),c,(23)&7
	line	104
	
l3649:
	movlw	0FFh
	andwf	((c:___fladd@f1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+2)),c
	movlw	0
	andwf	((c:___fladd@f1+3)),c
	line	105
	
l3651:
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
	goto	u2971
	goto	u2970

u2971:
	goto	l3663
u2970:
	line	112
	
l3653:
	bcf	status,0
	rlcf	((c:___fladd@f2)),c
	rlcf	((c:___fladd@f2+1)),c
	rlcf	((c:___fladd@f2+2)),c
	rlcf	((c:___fladd@f2+3)),c
	line	113
	decf	((c:___fladd@exp2)),c
	line	114
	
l3655:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2981
	goto	u2980

u2981:
	goto	l3661
u2980:
	
l3657:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l3653
u2990:
	goto	l3661
	line	116
	
l3659:
	bcf	status,0
	rrcf	((c:___fladd@f1+3)),c
	rrcf	((c:___fladd@f1+2)),c
	rrcf	((c:___fladd@f1+1)),c
	rrcf	((c:___fladd@f1)),c
	line	117
	incf	((c:___fladd@exp1)),c
	line	115
	
l3661:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u3001
	goto	u3000

u3001:
	goto	l3659
u3000:
	goto	l820
	line	119
	
l3663:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u3011
	goto	u3010

u3011:
	goto	l820
u3010:
	line	123
	
l3665:
	bcf	status,0
	rlcf	((c:___fladd@f1)),c
	rlcf	((c:___fladd@f1+1)),c
	rlcf	((c:___fladd@f1+2)),c
	rlcf	((c:___fladd@f1+3)),c
	line	124
	decf	((c:___fladd@exp1)),c
	line	125
	
l3667:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u3021
	goto	u3020

u3021:
	goto	l3673
u3020:
	
l3669:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3665
u3030:
	goto	l3673
	line	127
	
l3671:
	bcf	status,0
	rrcf	((c:___fladd@f2+3)),c
	rrcf	((c:___fladd@f2+2)),c
	rrcf	((c:___fladd@f2+1)),c
	rrcf	((c:___fladd@f2)),c
	line	128
	incf	((c:___fladd@exp2)),c
	line	126
	
l3673:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u3041
	goto	u3040

u3041:
	goto	l3671
u3040:
	line	131
	
l820:
	
	btfss	((c:___fladd@sign)),c,(7)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l3677
u3050:
	line	133
	
l3675:
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
	
l3677:
	
	btfss	((c:___fladd@sign)),c,(6)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l3681
u3060:
	line	138
	
l3679:
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
	
l3681:
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
	
l3683:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l3689
u3070:
	line	144
	
l3685:
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
	
l3687:
	movlw	low(01h)
	movwf	((c:___fladd@sign)),c
	line	148
	
l3689:
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
	
l806:
	return	;funcret
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
;;  sign            1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
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
psect	text26,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
	global	__size_of___awtofl
	__size_of___awtofl	equ	__end_of___awtofl-___awtofl
	
___awtofl:
;incstack = 0
	opt	stack 24
	line	36
	
l3855:
	clrf	((c:___awtofl@sign)),c
	line	37
	
l3857:
	btfsc	((c:___awtofl@c+1)),c,7
	goto	u3280
	goto	u3281

u3281:
	goto	l3861
u3280:
	line	38
	
l3859:
	negf	((c:___awtofl@c)),c
	comf	((c:___awtofl@c+1)),c
	btfsc	status,0
	incf	((c:___awtofl@c+1)),c
	line	39
	incf	((c:___awtofl@sign)),c
	line	41
	
l3861:
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
	
l773:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtofl
	__end_of___awtofl:
	signat	___awtofl,4220
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 503 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	503
global __ptext27
__ptext27:
psect	text27
	file	"../../../lib/lcd44780.c"
	line	503
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:
;incstack = 0
	opt	stack 29
;lcd_init@fourbitmode stored from wreg
	movwf	((c:lcd_init@fourbitmode)),c
	line	505
	
l3231:
;lcd44780.c: 505: LCD_ctrl = 0;
	movlb	0	; () banked
	clrf	((_LCD_ctrl))&0ffh
	line	506
	
l3233:; BSR set to: 0

;lcd44780.c: 506: LCD_function = (fourbitmode ? 0x00 : 0x10);
	movf	((c:lcd_init@fourbitmode)),c,w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l318
u2570:
	
l3235:; BSR set to: 0

	movlw	high(010h)
	movwf	((c:_lcd_init$265+1)),c
	movlw	low(010h)
	movwf	((c:_lcd_init$265)),c
	goto	l320
	
l318:; BSR set to: 0

	clrf	((c:_lcd_init$265)),c
	clrf	((c:_lcd_init$265+1)),c
	
l320:; BSR set to: 0

	movff	(c:_lcd_init$265),(_LCD_function)
	line	508
;lcd44780.c: 508: LCD_lines = 0;
	clrf	((_LCD_lines))&0ffh
	line	510
;lcd44780.c: 510: LCD_mode = 0;
	clrf	((_LCD_mode))&0ffh
	line	512
;lcd44780.c: 512: TRISB2 = 0;
	bcf	c:(31898/8),(31898)&7	;volatile
	line	513
;lcd44780.c: 513: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	518
;lcd44780.c: 518: TRISB3 = 0;
	bcf	c:(31899/8),(31899)&7	;volatile
	line	519
;lcd44780.c: 519: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	521
;lcd44780.c: 521: TRISB4 = 0;
	bcf	c:(31900/8),(31900)&7	;volatile
	line	522
;lcd44780.c: 522: TRISB5 = 0;
	bcf	c:(31901/8),(31901)&7	;volatile
	line	523
;lcd44780.c: 523: TRISB6 = 0;
	bcf	c:(31902/8),(31902)&7	;volatile
	line	524
;lcd44780.c: 524: TRISB7 = 0;
	bcf	c:(31903/8),(31903)&7	;volatile
	line	534
	
l321:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,4216
	global	_lcd_begin

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 430 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1    6[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;;		_lcd_write4bits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	430
global __ptext28
__ptext28:
psect	text28
	file	"../../../lib/lcd44780.c"
	line	430
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:; BSR set to: 0

;incstack = 0
	opt	stack 26
;lcd_begin@lines stored from wreg
	movwf	((c:lcd_begin@lines)),c
	line	431
	
l3181:; BSR set to: 0

;lcd44780.c: 431: if(lines > 1)
		movlw	02h-1
	cpfsgt	((c:lcd_begin@lines)),c
	goto	u2531
	goto	u2530

u2531:
	goto	l3185
u2530:
	line	432
	
l3183:; BSR set to: 0

;lcd44780.c: 432: LCD_function |= 0x08;
	bsf	(0+(3/8)+(_LCD_function))&0ffh,(3)&7
	line	435
	
l3185:; BSR set to: 0

;lcd44780.c: 435: LCD_lines = lines;
	movff	(c:lcd_begin@lines),(_LCD_lines)
	line	439
	
l3187:; BSR set to: 0

;lcd44780.c: 439: if((dotsize != 0) && (lines == 1))
	movf	((c:lcd_begin@dotsize)),c,w
	btfsc	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l3193
u2540:
	
l3189:; BSR set to: 0

		decf	((c:lcd_begin@lines)),c,w
	btfss	status,2
	goto	u2551
	goto	u2550

u2551:
	goto	l3193
u2550:
	line	440
	
l3191:; BSR set to: 0

;lcd44780.c: 440: LCD_function |= 0x04;
	bsf	(0+(2/8)+(_LCD_function))&0ffh,(2)&7
	line	442
	
l3193:; BSR set to: 0

;lcd44780.c: 442: _delay((unsigned long)((15)*(20000000/4000.0)));
	movlw	98
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	102
u3597:
decfsz	wreg,f
	goto	u3597
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3597

	line	445
	
l3195:
;lcd44780.c: 445: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	446
	
l3197:
;lcd44780.c: 446: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	449
	
l3199:
;lcd44780.c: 449: if(!(LCD_function & 0x10)) {
	movlb	0	; () banked
	
	btfsc	((_LCD_function))&0ffh,(4)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3211
u2560:
	line	453
	
l3201:; BSR set to: 0

;lcd44780.c: 453: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	454
	
l3203:
;lcd44780.c: 454: _delay((unsigned long)((5)*(20000000/4000.0)));
	movlw	33
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	118
u3607:
decfsz	wreg,f
	goto	u3607
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3607
	nop2

	line	456
	
l3205:
;lcd44780.c: 456: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	457
;lcd44780.c: 457: _delay((unsigned long)((150)*(20000000/4000000.0)));
	movlw	250
u3617:
decfsz	wreg,f
	goto	u3617

	line	459
	
l3207:
;lcd44780.c: 459: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	460
	
l3209:
;lcd44780.c: 460: _delay((unsigned long)((150)*(20000000/4000000.0)));
	movlw	250
u3627:
decfsz	wreg,f
	goto	u3627

	line	462
;lcd44780.c: 462: lcd_write4bits(0x02);
	movlw	(02h)&0ffh
	
	call	_lcd_write4bits
	line	463
;lcd44780.c: 463: }
	goto	l3219
	line	469
	
l3211:; BSR set to: 0

;lcd44780.c: 465: else {
;lcd44780.c: 469: lcd_command(0x20 | LCD_function);
	movf	((_LCD_function))&0ffh,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	470
	
l3213:
;lcd44780.c: 470: _delay((unsigned long)((5)*(20000000/4000.0)));
	movlw	33
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	118
u3637:
decfsz	wreg,f
	goto	u3637
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3637
	nop2

	line	473
	
l3215:
;lcd44780.c: 473: lcd_command(0x20 | LCD_function);
	movlb	0	; () banked
	movf	((_LCD_function))&0ffh,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	474
;lcd44780.c: 474: _delay((unsigned long)((5)*(20000000/4000.0)));
	movlw	33
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	118
u3647:
decfsz	wreg,f
	goto	u3647
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3647
	nop2

	line	478
	
l3217:
;lcd44780.c: 478: lcd_command(0x20 | LCD_function);
	movlb	0	; () banked
	movf	((_LCD_function))&0ffh,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	482
	
l3219:
;lcd44780.c: 479: }
;lcd44780.c: 482: lcd_command(0x20 | LCD_function);
	movlb	0	; () banked
	movf	((_LCD_function))&0ffh,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	485
	
l3221:
;lcd44780.c: 485: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((_LCD_ctrl))&0ffh
	line	486
	
l3223:; BSR set to: 0

;lcd44780.c: 486: lcd_command(0x08 | LCD_ctrl);
	movf	((_LCD_ctrl))&0ffh,w
	iorlw	low(08h)
	
	call	_lcd_command
	line	489
	
l3225:
;lcd44780.c: 489: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	490
	
l3227:
;lcd44780.c: 490: _delay((unsigned long)((2)*(20000000/4000.0)));
	movlw	13
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	252
u3657:
decfsz	wreg,f
	goto	u3657
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3657

	line	493
;lcd44780.c: 493: LCD_mode = 0x02 | 0x00;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_LCD_mode))&0ffh
	line	495
	
l3229:; BSR set to: 0

;lcd44780.c: 495: lcd_command(0x04 | LCD_mode);
	movf	((_LCD_mode))&0ffh,w
	iorlw	low(04h)
	
	call	_lcd_command
	line	496
	
l314:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
	signat	_lcd_begin,8312
	global	_indicator

;; *************** function _indicator *****************
;; Defined at:
;;		line 469 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	469
global __ptext29
__ptext29:
psect	text29
	file	"../../../src/print.c"
	line	469
	global	__size_of_indicator
	__size_of_indicator	equ	__end_of_indicator-_indicator
	
_indicator:
;incstack = 0
	opt	stack 25
;indicator@indicate stored from wreg
	movwf	((c:indicator@indicate)),c
	line	483
	
l3137:
;print.c: 483: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	484
	
l3139:
;print.c: 484: if(indicate) {
	movf	((c:indicator@indicate)),c,w
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l3143
u2480:
	line	485
	
l3141:
;print.c: 485: lcd_puts("-*-");
	movlw	(STR_11)&0ffh
	
	call	_lcd_puts
	line	486
;print.c: 486: } else {
	goto	l34
	line	487
	
l3143:
;print.c: 487: lcd_puts("   ");
	movlw	(STR_12)&0ffh
	
	call	_lcd_puts
	line	490
	
l34:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_indicator
	__end_of_indicator:
	signat	_indicator,4216
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 182 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_18(5), STR_17(6), STR_16(7), STR_15(7), 
;;		 -> STR_13(10), STR_12(4), STR_11(4), STR_10(6), 
;; Auto vars:     Size  Location     Type
;;  string          1    8[COMRAM] PTR const unsigned char 
;;		 -> STR_18(5), STR_17(6), STR_16(7), STR_15(7), 
;;		 -> STR_13(10), STR_12(4), STR_11(4), STR_10(6), 
;;  i               1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_print_reading
;;		_indicator
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	182
global __ptext30
__ptext30:
psect	text30
	file	"../../../lib/lcd44780.c"
	line	182
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:
;incstack = 0
	opt	stack 24
;lcd_puts@string stored from wreg
	movwf	((c:lcd_puts@string)),c
	line	184
	
l2923:
;lcd44780.c: 183: unsigned char i;
;lcd44780.c: 184: for(i = 0; string[i]; i++) lcd_putch(string[i]);
	clrf	((c:lcd_puts@i)),c
	goto	l2929
	
l2925:
	movf	((c:lcd_puts@string)),c,w
	addwf	((c:lcd_puts@i)),c,w
	movwf	(??_lcd_puts+0+0)&0ffh,c
	movff	(??_lcd_puts+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_lcd_putch
	
l2927:
	incf	((c:lcd_puts@i)),c
	
l2929:
	movf	((c:lcd_puts@string)),c,w
	addwf	((c:lcd_puts@i)),c,w
	movwf	(??_lcd_puts+0+0)&0ffh,c
	movff	(??_lcd_puts+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l2925
u2230:
	line	185
	
l268:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4216
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 346 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   64[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___lwtofl
;;		_delay10ms
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_putch
;;		_measure_freq
;;		_put_str
;;		_ser_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"../../../src/LC-meter.c"
	line	346
global __ptext31
__ptext31:
psect	text31
	file	"../../../src/LC-meter.c"
	line	346
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:
;incstack = 0
	opt	stack 23
	line	350
	
l4001:; BSR set to: 0

;LC-meter.c: 347: unsigned char i;
;LC-meter.c: 350: lcd_clear();
	call	_lcd_clear	;wreg free
	line	352
	
l4003:
;LC-meter.c: 352: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	353
	
l4005:
;LC-meter.c: 353: put_str("Calibrating");
	movlw	(STR_21)&0ffh
	
	call	_put_str
	line	355
	
l4007:
;LC-meter.c: 355: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	356
	
l4009:
;LC-meter.c: 356: ser_puts("\r\n");
	movlw	(STR_22)&0ffh
	
	call	_ser_puts
	line	357
	
l4011:
;LC-meter.c: 357: put_str("please wait...");
	movlw	(STR_23)&0ffh
	
	call	_put_str
	line	360
	
l4013:
;LC-meter.c: 360: PORTC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	362
	
l4015:
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
	
l4017:
;LC-meter.c: 363: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	365
	
l4019:; BSR set to: 0

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
	
l4021:
;LC-meter.c: 366: PORTC |= (1 << 5);
	bsf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	368
	
l4023:
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
	
l4025:
;LC-meter.c: 369: delay10ms(50);
	movlw	high(032h)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(032h)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	371
	
l4027:; BSR set to: 0

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
	
l4029:
;LC-meter.c: 372: PORTC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3970)),c,(5)&7	;volatile
	line	376
	
l4031:
;LC-meter.c: 376: lcd_gotoxy(11, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Bh)&0ffh
	
	call	_lcd_gotoxy
	line	378
	
l4033:
;LC-meter.c: 378: for(i = 0; i < 6; i++) {
	clrf	((c:calibrate@i)),c
	line	379
	
l4039:
;LC-meter.c: 379: lcd_putch('=');
	movlw	(03Dh)&0ffh
	
	call	_lcd_putch
	line	381
	
l4041:
;LC-meter.c: 381: delay10ms(28);
	movlw	high(01Ch)
	movwf	((c:delay10ms@period_10ms+1)),c
	movlw	low(01Ch)
	movwf	((c:delay10ms@period_10ms)),c
	call	_delay10ms	;wreg free
	line	378
	
l4043:; BSR set to: 0

	incf	((c:calibrate@i)),c
	
l4045:; BSR set to: 0

		movlw	06h-1
	cpfsgt	((c:calibrate@i)),c
	goto	u3491
	goto	u3490

u3491:
	goto	l4039
u3490:
	line	384
	
l4047:; BSR set to: 0

;LC-meter.c: 382: }
;LC-meter.c: 384: ser_puts("\r\n");
	movlw	(STR_24)&0ffh
	
	call	_ser_puts
	line	385
	
l527:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,88
	global	_ser_puts

;; *************** function _ser_puts *****************
;; Defined at:
;;		line 92 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_33(3), STR_32(5), STR_31(3), STR_30(8), 
;;		 -> STR_29(6), STR_28(6), STR_27(6), STR_26(5), 
;;		 -> STR_24(3), STR_22(3), STR_19(3), STR_14(6), 
;;		 -> STR_9(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMRAM] PTR const unsigned char 
;;		 -> STR_33(3), STR_32(5), STR_31(3), STR_30(8), 
;;		 -> STR_29(6), STR_28(6), STR_27(6), STR_26(5), 
;;		 -> STR_24(3), STR_22(3), STR_19(3), STR_14(6), 
;;		 -> STR_9(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_print_unit
;;		_main
;;		_calibrate
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"../../../lib/ser.c"
	line	92
global __ptext32
__ptext32:
psect	text32
	file	"../../../lib/ser.c"
	line	92
	global	__size_of_ser_puts
	__size_of_ser_puts	equ	__end_of_ser_puts-_ser_puts
	
_ser_puts:
;incstack = 0
	opt	stack 28
;ser_puts@s stored from wreg
	movwf	((c:ser_puts@s)),c
	line	93
	
l2915:
;ser.c: 93: while(*s) ser_putch(*s++);
	goto	l2921
	
l2917:
	movff	(c:ser_puts@s),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_ser_putch
	
l2919:
	incf	((c:ser_puts@s)),c
	
l2921:
	movff	(c:ser_puts@s),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l2917
u2220:
	line	94
	
l100:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ser_puts
	__end_of_ser_puts:
	signat	_ser_puts,4216
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 299 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   57[COMRAM] unsigned char 
;;  count           2   58[COMRAM] unsigned short 
;;  prev            1   56[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   52[COMRAM] unsigned short 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_format_number
;;		_lcd_gotoxy
;;		_put_str
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"../../../src/LC-meter.c"
	line	299
global __ptext33
__ptext33:
psect	text33
	file	"../../../src/LC-meter.c"
	line	299
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:
;incstack = 0
	opt	stack 23
	line	303
	
l3083:
;LC-meter.c: 300: unsigned char prev;
;LC-meter.c: 301: unsigned short int count;
;LC-meter.c: 303: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	305
	
l3085:
;LC-meter.c: 305: TRISA &= ~0b00010000;
	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	308
	
l3087:
;LC-meter.c: 308: _delay((unsigned long)((20)*(20000000/4000.0)));
	movlw	130
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	222
u3667:
decfsz	wreg,f
	goto	u3667
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3667

	line	310
	
l3089:
;LC-meter.c: 310: TMR0 = 0x00;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	312
	
l3091:
;LC-meter.c: 312: for(char i = 0; i < 10; i++) _delay((unsigned long)((10)*(20000000/4000.0)));
	clrf	((c:measure_freq@i)),c
	
l3095:
	movlw	65
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	238
u3677:
decfsz	wreg,f
	goto	u3677
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3677
	nop2

	
l3097:
	incf	((c:measure_freq@i)),c
		movlw	0Ah-1
	cpfsgt	((c:measure_freq@i)),c
	goto	u2451
	goto	u2450

u2451:
	goto	l3095
u2450:
	line	314
	
l3099:
;LC-meter.c: 314: TRISA |= 0b00010000;
	bsf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	316
	
l3101:
;LC-meter.c: 316: prev = TMR0;
	movff	(c:4054),(c:measure_freq@prev)	;volatile
	line	317
	
l3103:
;LC-meter.c: 317: count = 0;
	clrf	((c:measure_freq@count)),c
	clrf	((c:measure_freq@count+1)),c
	line	321
	
l3105:
;LC-meter.c: 321: T0SE = 1;
	bsf	c:(32428/8),(32428)&7	;volatile
	line	322
	
l3107:
;LC-meter.c: 322: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	323
	
l3109:
;LC-meter.c: 323: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	325
	
l3111:
;LC-meter.c: 325: T0SE = 0;
	bcf	c:(32428/8),(32428)&7	;volatile
	line	326
	
l3113:
;LC-meter.c: 326: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	327
	
l3115:
;LC-meter.c: 327: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	328
;LC-meter.c: 328: count++;
	infsnz	((c:measure_freq@count)),c
	incf	((c:measure_freq@count+1)),c
	line	329
	
l3117:
;LC-meter.c: 329: } while(prev == TMR0 && count <= 255);
	movf	((c:measure_freq@prev)),c,w
	xorwf	((c:4054)),c,w	;volatile
	iorwf	((c:4054+1)),c,w	;volatile

	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l3121
u2460:
	
l3119:
		decf	((c:measure_freq@count+1)),c,w
	btfss	status,0
	goto	u2471
	goto	u2470

u2471:
	goto	l3105
u2470:
	line	332
	
l3121:
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
	line	335
	
l3123:
;LC-meter.c: 335: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	336
	
l3125:
;LC-meter.c: 336: put_str("Freq=");
	movlw	(STR_20)&0ffh
	
	call	_put_str
	line	337
	
l3127:
;LC-meter.c: 337: format_number( count, 10, 5);
	movff	(c:measure_freq@count),(c:format_number@n)
	movff	(c:measure_freq@count+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(05h)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	339
	
l3129:
;LC-meter.c: 339: return count;
	movff	(c:measure_freq@count),(c:?_measure_freq)
	movff	(c:measure_freq@count+1),(c:?_measure_freq+1)
	line	340
	
l522:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
	signat	_measure_freq,90
	global	_put_str

;; *************** function _put_str *****************
;; Defined at:
;;		line 559 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_34(13), STR_25(10), STR_23(15), STR_21(12), 
;;		 -> STR_20(6), 
;; Auto vars:     Size  Location     Type
;;  s               1    9[COMRAM] PTR const unsigned char 
;;		 -> STR_34(13), STR_25(10), STR_23(15), STR_21(12), 
;;		 -> STR_20(6), 
;;  i               1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_output_putch
;; This function is called by:
;;		_measure_freq
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	559
global __ptext34
__ptext34:
psect	text34
	file	"../../../src/LC-meter.c"
	line	559
	global	__size_of_put_str
	__size_of_put_str	equ	__end_of_put_str-_put_str
	
_put_str:
;incstack = 0
	opt	stack 24
;put_str@s stored from wreg
	movwf	((c:put_str@s)),c
	line	562
	
l3011:
;LC-meter.c: 560: unsigned char i;
;LC-meter.c: 562: for(i = 0; s[i]; i++) {
	clrf	((c:put_str@i)),c
	goto	l3017
	line	563
	
l3013:
;LC-meter.c: 563: output_putch(s[i]);
	movf	((c:put_str@s)),c,w
	addwf	((c:put_str@i)),c,w
	movwf	(??_put_str+0+0)&0ffh,c
	movff	(??_put_str+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_output_putch
	line	562
	
l3015:
	incf	((c:put_str@i)),c
	
l3017:
	movf	((c:put_str@s)),c,w
	addwf	((c:put_str@i)),c,w
	movwf	(??_put_str+0+0)&0ffh,c
	movff	(??_put_str+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l3013
u2360:
	line	573
	
l559:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_put_str
	__end_of_put_str:
	signat	_put_str,4216
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 154 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    6[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    7[COMRAM] unsigned char 
;;  row_offsets     4    8[COMRAM] unsigned char [4]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_print_unit
;;		_print_reading
;;		_indicator
;;		_main
;;		_measure_freq
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	154
global __ptext35
__ptext35:
psect	text35
	file	"../../../lib/lcd44780.c"
	line	154
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:
;incstack = 0
	opt	stack 24
;lcd_gotoxy@col stored from wreg
	movwf	((c:lcd_gotoxy@col)),c
	line	156
	
l2907:
;lcd44780.c: 156: unsigned char row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	movff	(lcd_gotoxy@F4094),(c:lcd_gotoxy@row_offsets)
	movff	(lcd_gotoxy@F4094+1),(c:lcd_gotoxy@row_offsets+1)
	movff	(lcd_gotoxy@F4094+2),(c:lcd_gotoxy@row_offsets+2)
	movff	(lcd_gotoxy@F4094+3),(c:lcd_gotoxy@row_offsets+3)
	line	165
	
l2909:
;lcd44780.c: 165: if(LCD_lines == 1) {
	movlb	0	; () banked
		decf	((_LCD_lines))&0ffh,w
	btfss	status,2
	goto	u2211
	goto	u2210

u2211:
	goto	l2913
u2210:
	line	166
	
l2911:; BSR set to: 0

;lcd44780.c: 166: row_offsets[1] = 0x14;
	movlw	low(014h)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+01h)),c
	line	167
;lcd44780.c: 167: row_offsets[2] = 0x28;
	movlw	low(028h)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+02h)),c
	line	168
;lcd44780.c: 168: row_offsets[3] = 0x3C;
	movlw	low(03Ch)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+03h)),c
	line	175
	
l2913:; BSR set to: 0

;lcd44780.c: 169: }
;lcd44780.c: 175: lcd_command(0x80 | (col + row_offsets[row]));
	movf	((c:lcd_gotoxy@row)),c,w
	addlw	low(lcd_gotoxy@row_offsets)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	addwf	((c:lcd_gotoxy@col)),c,w
	iorlw	low(080h)
	
	call	_lcd_command
	line	176
	
l262:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
	signat	_lcd_gotoxy,8312
	global	_format_number

;; *************** function _format_number *****************
;; Defined at:
;;		line 14 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  n               2    9[COMRAM] unsigned short 
;;  base            1   11[COMRAM] unsigned char 
;;  pad             1   12[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   15[COMRAM] unsigned char [32]
;;  i               1   51[COMRAM] char 
;;  di              1   50[COMRAM] unsigned char 
;;  padchar         1   49[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:        37       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:        43       0       0       0       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_format_putchar
;;		_lcd_putch
;;		_output_putch
;;		_ser_putch
;; This function is called by:
;;		_print_reading
;;		_format_xint32
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"../../../lib/format.c"
	line	14
global __ptext36
__ptext36:
psect	text36
	file	"../../../lib/format.c"
	line	14
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:
;incstack = 0
	opt	stack 23
	line	17
	
l2931:
;format.c: 15: char buf[8 * sizeof(long)];
;format.c: 16: unsigned char di;
;format.c: 17: signed char i = 0;
	clrf	((c:format_number@i)),c
	line	18
	
l2933:
;format.c: 18: char padchar = ' ';
	movlw	low(020h)
	movwf	((c:format_number@padchar)),c
	line	20
	
l2935:
;format.c: 20: if(pad < 0) {
	btfsc	((c:format_number@pad)),c,7
	goto	u2240
	goto	u2241

u2241:
	goto	l2941
u2240:
	line	21
	
l2937:
;format.c: 21: pad = -pad;
	negf	((c:format_number@pad)),c
	line	22
	
l2939:
;format.c: 22: padchar = '0';
	movlw	low(030h)
	movwf	((c:format_number@padchar)),c
	line	34
	
l2941:
;format.c: 34: di = n % base;
	movff	(c:format_number@n),(c:___lwmod@dividend)
	movff	(c:format_number@n+1),(c:___lwmod@dividend+1)
	movff	(c:format_number@base),(c:___lwmod@divisor)
	clrf	((c:___lwmod@divisor+1)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	movwf	((c:format_number@di)),c
	line	35
	
l2943:
;format.c: 35: buf[i++] = (di < 10 ? (unsigned char)'0' + di : (unsigned char)'A' + di - 10);
		movlw	0Ah-1
	cpfsgt	((c:format_number@di)),c
	goto	u2251
	goto	u2250

u2251:
	goto	l2947
u2250:
	
l2945:
	movlw	low(037h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$188)),c
	clrf	1+((c:_format_number$188)),c
	movlw	high(037h)
	addwfc	1+((c:_format_number$188)),c
	goto	l2949
	
l2947:
	movlw	low(030h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$188)),c
	clrf	1+((c:_format_number$188)),c
	movlw	high(030h)
	addwfc	1+((c:_format_number$188)),c
	
l2949:
	movf	((c:format_number@i)),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_format_number$188),indf2

	
l2951:
	incf	((c:format_number@i)),c
	line	37
	
l2953:
;format.c: 37: n /= base;
	movff	(c:format_number@n),(c:___lwdiv@dividend)
	movff	(c:format_number@n+1),(c:___lwdiv@dividend+1)
	movff	(c:format_number@base),(c:___lwdiv@divisor)
	clrf	((c:___lwdiv@divisor+1)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:format_number@n)
	movff	1+?___lwdiv,(c:format_number@n+1)
	line	38
	
l2955:
;format.c: 38: } while(n > 0);
	movf	((c:format_number@n)),c,w
iorwf	((c:format_number@n+1)),c,w
	btfss	status,2
	goto	u2261
	goto	u2260

u2261:
	goto	l2941
u2260:
	goto	l2959
	line	40
	
l2957:
	call	u2278
	goto	u2279
u2278:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((_putchar_ptr))&0ffh,w
	movwf	tosl
	movf	((_putchar_ptr+1))&0ffh,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movf	((c:format_number@padchar)),c,w
	
	return	;indir
	u2279:
	
l2959:
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
	goto	u2281
	goto	u2280

u2281:
	goto	l2957
u2280:
	line	42
	
l2961:
;format.c: 42: for(; i > 0; i--) putchar_ptr((char)buf[(signed short int)i - 1]);
		movf	((c:format_number@i)),c,w
	xorlw	80h
	addlw	-(80h^01h)
	btfsc	status,0
	goto	u2291
	goto	u2290

u2291:
	goto	l2965
u2290:
	goto	l193
	
l2965:
	call	u2308
	goto	u2309
u2308:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((_putchar_ptr))&0ffh,w
	movwf	tosl
	movf	((_putchar_ptr+1))&0ffh,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movff	(c:format_number@i),??_format_number+0+0
	movlw	0FFh
	addwf	(??_format_number+0+0),c
	movf	(??_format_number+0+0),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	return	;indir
	u2309:
	
l2967:
	decf	((c:format_number@i)),c
	goto	l2961
	line	44
	
l193:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
	signat	_format_number,12408
	global	_output_putch
	global	_lcd_putch
	global	_ser_putch
	global	_format_putchar

;; *************** function _format_putchar *****************
;; Defined at:
;;		line 6 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
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
psect	text37,class=CODE,space=0,reloc=2
	line	6
global __ptext37
__ptext37:
psect	text37
	file	"../../../lib/format.c"
	line	6
	global	__size_of_format_putchar
	__size_of_format_putchar	equ	__end_of_format_putchar-_format_putchar
	
_format_putchar:
;incstack = 0
	opt	stack 26
	line	7
	
l2797:; BSR set to: 0

	line	8
;format.c: 7: return;
	
l176:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_format_putchar
	__end_of_format_putchar:
	signat	_format_putchar,4216

;; *************** function _ser_putch *****************
;; Defined at:
;;		line 82 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ser_puts
;;		_output_putch
;;		_measure_capacitance
;;		_format_number
;;		_format_xint32
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"../../../lib/ser.c"
	line	82
global __ptext38
__ptext38:
psect	text38
	file	"../../../lib/ser.c"
	line	82
	global	__size_of_ser_putch
	__size_of_ser_putch	equ	__end_of_ser_putch-_ser_putch
	
_ser_putch:; BSR set to: 0

;incstack = 0
	opt	stack 28
;ser_putch@c stored from wreg
	movwf	((c:ser_putch@c)),c
	line	83
	
l2667:
;ser.c: 83: while(((txiptr + 1) & ((unsigned char)16 - 1)) == txoptr) continue;
	
l2669:
	incf	((c:_txiptr)),c,w	;volatile
	andlw	low(0Fh)
	xorwf	((c:_txoptr)),c,w	;volatile
	btfsc	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l2669
u1880:
	
l93:
	line	84
;ser.c: 84: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	85
	
l2671:
;ser.c: 85: txfifo[txiptr] = c;
	movf	((c:_txiptr)),c,w
	addlw	low(_txfifo)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:ser_putch@c),indf2

	line	86
	
l2673:
;ser.c: 86: txiptr = (txiptr + 1) & ((unsigned char)16 - 1);
	incf	((c:_txiptr)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:_txiptr)),c	;volatile
	line	87
	
l2675:
;ser.c: 87: TXIE = 1;
	bsf	c:(31980/8),(31980)&7	;volatile
	line	88
	
l2677:
;ser.c: 88: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	89
	
l94:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ser_putch
	__end_of_ser_putch:
	signat	_ser_putch,4216

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 139 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_puts
;;		_output_putch
;;		_main
;;		_calibrate
;;		_format_number
;;		_format_xint32
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	139
global __ptext39
__ptext39:
psect	text39
	file	"../../../lib/lcd44780.c"
	line	139
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:
;incstack = 0
	opt	stack 24
;lcd_putch@value stored from wreg
	movwf	((c:lcd_putch@value)),c
	line	140
	
l2665:
;lcd44780.c: 140: lcd_send((unsigned)value, 1);
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_putch@value)),c,w
	
	call	_lcd_send
	line	141
	
l253:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
	signat	_lcd_putch,4216

;; *************** function _output_putch *****************
;; Defined at:
;;		line 48 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putch
;;		_ser_putch
;; This function is called by:
;;		_measure_capacitance
;;		_put_str
;;		_format_number
;;		_format_xint32
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"../../../src/LC-meter.c"
	line	48
global __ptext40
__ptext40:
psect	text40
	file	"../../../src/LC-meter.c"
	line	48
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:
;incstack = 0
	opt	stack 24
;output_putch@c stored from wreg
	movwf	((c:output_putch@c)),c
	line	51
	
l2801:
;LC-meter.c: 51: lcd_putch(c);
	movf	((c:output_putch@c)),c,w
	
	call	_lcd_putch
	line	54
	
l2803:
;LC-meter.c: 54: ser_putch(c);
	movf	((c:output_putch@c)),c,w
	
	call	_ser_putch
	line	56
	
l473:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4216
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_reading
;;		_format_number
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
global __ptext41
__ptext41:
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 26
	line	13
	
l2849:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u2101
	goto	u2100

u2101:
	goto	l1120
u2100:
	line	14
	
l2851:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l2855
	line	16
	
l2853:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	line	15
	
l2855:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u2111
	goto	u2110
u2111:
	goto	l2853
u2110:
	line	20
	
l2857:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u2121
	goto	u2120

u2121:
	goto	l2861
u2120:
	line	21
	
l2859:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	line	22
	
l2861:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l2863:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l2857
	line	24
	
l1120:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1127:
	return	;funcret
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
;;  quotient        2    6[COMRAM] unsigned int 
;;  counter         1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_reading
;;		_format_number
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 26
	line	14
	
l2827:
	clrf	((c:___lwdiv@quotient)),c
	clrf	((c:___lwdiv@quotient+1)),c
	line	15
	
l2829:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u2071
	goto	u2070

u2071:
	goto	l1110
u2070:
	line	16
	
l2831:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l2835
	line	18
	
l2833:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	line	17
	
l2835:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u2081
	goto	u2080
u2081:
	goto	l2833
u2080:
	line	22
	
l2837:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l2839:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u2091
	goto	u2090

u2091:
	goto	l2845
u2090:
	line	24
	
l2841:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l2843:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	line	27
	
l2845:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l2847:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l2837
	line	29
	
l1110:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1117:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 306 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	306
global __ptext43
__ptext43:
psect	text43
	file	"../../../lib/lcd44780.c"
	line	306
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:
;incstack = 0
	opt	stack 26
	line	307
	
l3061:
;lcd44780.c: 307: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	308
	
l3063:
;lcd44780.c: 308: _delay((unsigned long)((2)*(20000000/4000.0)));
	movlw	13
movwf	(??_lcd_clear+0+0)&0ffh,c,f
	movlw	252
u3687:
decfsz	wreg,f
	goto	u3687
	decfsz	(??_lcd_clear+0+0)&0ffh,c,f
	goto	u3687

	line	310
	
l289:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,88
	global	_lcd_command

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 146 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_gotoxy
;;		_lcd_clear
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	line	146
global __ptext44
__ptext44:
psect	text44
	file	"../../../lib/lcd44780.c"
	line	146
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:
;incstack = 0
	opt	stack 24
;lcd_command@value stored from wreg
	movwf	((c:lcd_command@value)),c
	line	147
	
l2799:
;lcd44780.c: 147: lcd_send(value, 0);
	movlw	low(0)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_command@value)),c,w
	
	call	_lcd_send
	line	148
	
l256:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
	signat	_lcd_command,4216
	global	_lcd_send

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 122 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write4bits
;; This function is called by:
;;		_lcd_putch
;;		_lcd_command
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	line	122
global __ptext45
__ptext45:
psect	text45
	file	"../../../lib/lcd44780.c"
	line	122
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:
;incstack = 0
	opt	stack 24
;lcd_send@value stored from wreg
	movwf	((c:lcd_send@value)),c
	line	123
	
l2471:
;lcd44780.c: 123: RB2 = mode;
	btfsc	((c:lcd_send@mode)),c,0
	bra	u1525
	bcf	c:(31754/8),(31754)&7	;volatile
	bra	u1526
	u1525:
	bsf	c:(31754/8),(31754)&7	;volatile
	u1526:

	line	131
	
l2473:
;lcd44780.c: 130: {
;lcd44780.c: 131: lcd_write4bits(value >> 4);
	swapf	((c:lcd_send@value)),c,w
	andlw	(0ffh shr 4) & 0ffh
	
	call	_lcd_write4bits
	line	132
;lcd44780.c: 132: lcd_write4bits(value);
	movf	((c:lcd_send@value)),c,w
	
	call	_lcd_write4bits
	line	134
	
l250:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
	signat	_lcd_send,8312
	global	_lcd_write4bits

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 57 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	line	57
global __ptext46
__ptext46:
psect	text46
	file	"../../../lib/lcd44780.c"
	line	57
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:
;incstack = 0
	opt	stack 24
;lcd_write4bits@value stored from wreg
	movwf	((c:lcd_write4bits@value)),c
	line	62
	
l2419:
;lcd44780.c: 62: RB4 = value & 1;
	btfsc	((c:lcd_write4bits@value)),c,0
	bra	u1405
	bcf	c:(31756/8),(31756)&7	;volatile
	bra	u1406
	u1405:
	bsf	c:(31756/8),(31756)&7	;volatile
	u1406:

	line	63
	
l2421:
;lcd44780.c: 63: value >>= 1;
	bcf status,0
	rrcf	((c:lcd_write4bits@value)),c

	line	64
	
l2423:
;lcd44780.c: 64: RB5 = value & 1;
	btfsc	((c:lcd_write4bits@value)),c,0
	bra	u1415
	bcf	c:(31757/8),(31757)&7	;volatile
	bra	u1416
	u1415:
	bsf	c:(31757/8),(31757)&7	;volatile
	u1416:

	line	65
	
l2425:
;lcd44780.c: 65: value >>= 1;
	bcf status,0
	rrcf	((c:lcd_write4bits@value)),c

	line	66
	
l2427:
;lcd44780.c: 66: RB6 = value & 1;
	btfsc	((c:lcd_write4bits@value)),c,0
	bra	u1425
	bcf	c:(31758/8),(31758)&7	;volatile
	bra	u1426
	u1425:
	bsf	c:(31758/8),(31758)&7	;volatile
	u1426:

	line	67
	
l2429:
;lcd44780.c: 67: value >>= 1;
	bcf status,0
	rrcf	((c:lcd_write4bits@value)),c

	line	68
	
l2431:
;lcd44780.c: 68: RB7 = value & 1;
	btfsc	((c:lcd_write4bits@value)),c,0
	bra	u1435
	bcf	c:(31759/8),(31759)&7	;volatile
	bra	u1436
	u1435:
	bsf	c:(31759/8),(31759)&7	;volatile
	u1436:

	line	74
	
l2433:
;lcd44780.c: 74: RB3 = 1; _delay((unsigned long)((4)*(20000000/4000000.0))); RB3 = 0; _delay((unsigned long)((100)*(20000000/4000000.0)));;
	bsf	c:(31755/8),(31755)&7	;volatile
	
l2435:
	movlw	6
u3697:
decfsz	wreg,f
	goto	u3697
	nop2	;nop

	
l2437:
	bcf	c:(31755/8),(31755)&7	;volatile
	
l2439:
	movlw	166
u3707:
decfsz	wreg,f
	goto	u3707
	nop2	;nop

	line	79
	
l247:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
	signat	_lcd_write4bits,4216
	global	_delay10ms

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 532 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     2    2[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  ms              4    6[COMRAM] unsigned long 
;;  run             1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
	file	"../../../src/LC-meter.c"
	line	532
global __ptext47
__ptext47:
psect	text47
	file	"../../../src/LC-meter.c"
	line	532
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:
;incstack = 0
	opt	stack 29
	line	537
	
l3065:
;LC-meter.c: 536: unsigned long int ms;
;LC-meter.c: 537: char run = 1;
	movlw	low(01h)
	movwf	((c:delay10ms@run)),c
	line	539
	
l3067:
;LC-meter.c: 539: GIE = 0, ms = msecs, GIE = 1;
	bcf	c:(32663/8),(32663)&7	;volatile
	
l3069:
	movff	(_msecs),(c:delay10ms@ms)	;volatile
	movff	(_msecs+1),(c:delay10ms@ms+1)	;volatile
	movff	(_msecs+2),(c:delay10ms@ms+2)	;volatile
	movff	(_msecs+3),(c:delay10ms@ms+3)	;volatile
	
l3071:
	bsf	c:(32663/8),(32663)&7	;volatile
	line	544
	
l3073:
;LC-meter.c: 544: ms += period_10ms * 10;
	movlw	low(0Ah)
	mulwf	((c:delay10ms@period_10ms)),c
	movff	prodl,??_delay10ms+0+0
	movff	prodh,??_delay10ms+0+0+1
	mulwf	((c:delay10ms@period_10ms+1)),c
	movf	(prodl),c,w
	addwf	(??_delay10ms+0+0+1)&0ffh,c,f
	movf	(??_delay10ms+0+0),c,w
	addwf	((c:delay10ms@ms)),c
	movf	(??_delay10ms+0+1),c,w
	addwfc	((c:delay10ms@ms+1)),c
	movlw	0
	addwfc	((c:delay10ms@ms+2)),c
	movlw	0
	addwfc	((c:delay10ms@ms+3)),c

	line	548
	
l3075:
;LC-meter.c: 548: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	549
	
l3077:
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
	goto	u2431
	goto	u2430

u2431:
	goto	l551
u2430:
	line	550
	
l3079:; BSR set to: 0

;LC-meter.c: 550: run = 0;
	clrf	((c:delay10ms@run)),c
	
l551:; BSR set to: 0

	line	551
;LC-meter.c: 551: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	552
	
l3081:; BSR set to: 0

;LC-meter.c: 552: } while(run);
	movf	((c:delay10ms@run)),c,w
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l3075
u2440:
	line	553
	
l553:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
	signat	_delay10ms,4216
	global	___lwtofl

;; *************** function ___lwtofl *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   60[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   60[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
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
psect	text48,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
global __ptext48
__ptext48:
psect	text48
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	30
	
l3997:
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
	
l1132:
	return	;funcret
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
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
psect	text49,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
global __ptext49
__ptext49:
psect	text49
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:
;incstack = 0
	opt	stack 27
	line	65
	
l3585:
	movf	((c:___flpack@exp)),c,w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l784
u2800:
	
l3587:
	movf	((c:___flpack@arg)),c,w
iorwf	((c:___flpack@arg+1)),c,w
iorwf	((c:___flpack@arg+2)),c,w
iorwf	((c:___flpack@arg+3)),c,w
	btfss	status,2
	goto	u2811
	goto	u2810

u2811:
	goto	l3591
u2810:
	
l784:
	line	66
	clrf	((c:?___flpack)),c
	clrf	((c:?___flpack+1)),c
	clrf	((c:?___flpack+2)),c
	clrf	((c:?___flpack+3)),c

	goto	l785
	line	68
	
l3589:
	incf	((c:___flpack@exp)),c
	line	69
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	67
	
l3591:
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
	goto	u2821
	goto	u2820

u2821:
	goto	l3589
u2820:
	goto	l789
	line	72
	
l3593:
	incf	((c:___flpack@exp)),c
	line	73
	
l3595:
	movlw	low(01h)
	addwf	((c:___flpack@arg)),c
	movlw	0
	addwfc	((c:___flpack@arg+1)),c
	addwfc	((c:___flpack@arg+2)),c
	addwfc	((c:___flpack@arg+3)),c
	line	74
	
l3597:
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	75
	
l789:
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
	goto	u2831
	goto	u2830

u2831:
	goto	l3593
u2830:
	goto	l3601
	line	77
	
l3599:
	decf	((c:___flpack@exp)),c
	line	78
	bcf	status,0
	rlcf	((c:___flpack@arg)),c
	rlcf	((c:___flpack@arg+1)),c
	rlcf	((c:___flpack@arg+2)),c
	rlcf	((c:___flpack@arg+3)),c
	line	76
	
l3601:
	
	btfsc	((c:___flpack@arg+2)),c,(23)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l796
u2840:
	
l3603:
		movlw	02h-0
	cpfslt	((c:___flpack@exp)),c
	goto	u2851
	goto	u2850

u2851:
	goto	l3599
u2850:
	
l796:
	line	80
	
	btfsc	((c:___flpack@exp)),c,(0)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l797
u2860:
	line	81
	
l3605:
	movlw	0FFh
	andwf	((c:___flpack@arg)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+1)),c
	movlw	07Fh
	andwf	((c:___flpack@arg+2)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+3)),c
	
l797:
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
	
l3607:
	movf	((c:___flpack@sign)),c,w
	btfsc	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l3611
u2870:
	line	85
	
l3609:
	bsf	(0+(31/8)+(c:___flpack@arg)),c,(31)&7
	line	86
	
l3611:
	movff	(c:___flpack@arg),(c:?___flpack)
	movff	(c:___flpack@arg+1),(c:?___flpack+1)
	movff	(c:___flpack@arg+2),(c:?___flpack+2)
	movff	(c:___flpack@arg+3),(c:?___flpack+3)
	line	87
	
l785:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___flpack
	__end_of___flpack:
	signat	___flpack,12412
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 79 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  485[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"../../../src/LC-meter.c"
	line	79
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
;incstack = 0
	opt	stack 23
	movff	fsr2l+0,??_isr+0
	movff	fsr2h+0,??_isr+1
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	line	81
	
i2l3451:
;LC-meter.c: 81: if(TMR2IF) {
	btfss	c:(31985/8),(31985)&7	;volatile
	goto	i2u268_41
	goto	i2u268_40
i2u268_41:
	goto	i2l3475
i2u268_40:
	line	83
	
i2l3453:
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
	goto	i2u269_41
	goto	i2u269_40

i2u269_41:
	goto	i2l3473
i2u269_40:
	line	86
	
i2l3455:; BSR set to: 0

;LC-meter.c: 86: bres -= 5000;
	movlw	low(01388h)
	subwf	((_bres))&0ffh	;volatile
	movlw	high(01388h)
	subwfb	((_bres+1))&0ffh	;volatile
	line	87
	
i2l3457:; BSR set to: 0

;LC-meter.c: 87: msecpart++;
	infsnz	((_msecpart))&0ffh	;volatile
	incf	((_msecpart+1))&0ffh	;volatile
	line	88
	
i2l3459:; BSR set to: 0

;LC-meter.c: 88: msecs++;
	movlw	low(01h)
	addwf	((_msecs))&0ffh	;volatile
	movlw	0
	addwfc	((_msecs+1))&0ffh	;volatile
	addwfc	((_msecs+2))&0ffh	;volatile
	addwfc	((_msecs+3))&0ffh	;volatile
	line	90
	
i2l3461:; BSR set to: 0

;LC-meter.c: 90: RC3 = (((blink > 200)) == 0);
		movf	((_blink+1))&0ffh,w
	bnz	i2u270_40
	movlw	201
	subwf	 ((_blink))&0ffh,w
	btfss	status,0
	goto	i2u270_41
	goto	i2u270_40

i2u270_41:
	bsf	c:(31763/8),(31763)&7	;volatile
	goto	i2u271_45
i2u270_40:
	bcf	c:(31763/8),(31763)&7	;volatile
i2u271_45:
	line	91
	
i2l3463:
;LC-meter.c: 91: if(blink >= 400)
		movlw	144
	movlb	0	; () banked
	subwf	 ((_blink))&0ffh,w
	movlw	1
	subwfb	((_blink+1))&0ffh,w
	btfss	status,0
	goto	i2u272_41
	goto	i2u272_40

i2u272_41:
	goto	i2l3467
i2u272_40:
	line	92
	
i2l3465:; BSR set to: 0

;LC-meter.c: 92: blink -= 400;
	movlw	low(0190h)
	subwf	((_blink))&0ffh
	movlw	high(0190h)
	subwfb	((_blink+1))&0ffh
	line	93
	
i2l3467:; BSR set to: 0

;LC-meter.c: 93: ++blink;
	infsnz	((_blink))&0ffh
	incf	((_blink+1))&0ffh
	line	96
	
i2l3469:; BSR set to: 0

;LC-meter.c: 96: if(msecpart >= 1000) {
		movlw	232
	subwf	 ((_msecpart))&0ffh,w	;volatile
	movlw	3
	subwfb	((_msecpart+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u273_41
	goto	i2u273_40

i2u273_41:
	goto	i2l3473
i2u273_40:
	line	98
	
i2l3471:; BSR set to: 0

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
	
i2l3473:; BSR set to: 0

;LC-meter.c: 100: }
;LC-meter.c: 101: }
;LC-meter.c: 103: TMR2IF = 0;
	bcf	c:(31985/8),(31985)&7	;volatile
	line	106
	
i2l3475:
;LC-meter.c: 104: }
;LC-meter.c: 106: if(RCIF) { rxfifo[rxiptr] = RCREG; ser_tmp = (rxiptr + 1) & ((unsigned char)16 - 1); if(ser_tmp != rxoptr) rxiptr = ser_tmp; }; if(TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= ((unsigned char)16 - 1); if(txoptr == txiptr) { TXIE = 0; }
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u274_41
	goto	i2u274_40
i2u274_41:
	goto	i2l490
i2u274_40:
	
i2l3477:
	movlw	low(_rxfifo)
	movlb	0	; () banked
	addwf	((_rxiptr))&0ffh,w	;volatile
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_rxfifo)
	addwfc	1+c:fsr2l
	movff	(c:4014),indf2	;volatile

	
i2l3479:; BSR set to: 0

	incf	((_rxiptr))&0ffh,w	;volatile
	andlw	low(0Fh)
	movwf	((_ser_tmp))&0ffh
	
i2l3481:; BSR set to: 0

	movf	((_rxoptr))&0ffh,w	;volatile
xorwf	((_ser_tmp))&0ffh,w
	btfsc	status,2
	goto	i2u275_41
	goto	i2u275_40

i2u275_41:
	goto	i2l490
i2u275_40:
	
i2l3483:; BSR set to: 0

	movff	(_ser_tmp),(_rxiptr)	;volatile
	
i2l490:
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	i2u276_41
	goto	i2u276_40
i2u276_41:
	goto	i2l494
i2u276_40:
	
i2l3485:
	btfss	c:(31980/8),(31980)&7	;volatile
	goto	i2u277_41
	goto	i2u277_40
i2u277_41:
	goto	i2l494
i2u277_40:
	
i2l3487:
	movf	((c:_txoptr)),c,w
	addlw	low(_txfifo)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:4013)),c	;volatile
	
i2l3489:
	incf	((c:_txoptr)),c	;volatile
	
i2l3491:
	movlw	(0Fh)&0ffh
	andwf	((c:_txoptr)),c	;volatile
	
i2l3493:
	movf	((c:_txiptr)),c,w	;volatile
xorwf	((c:_txoptr)),c,w	;volatile
	btfss	status,2
	goto	i2u278_41
	goto	i2u278_40

i2u278_41:
	goto	i2l493
i2u278_40:
	
i2l3495:
	bcf	c:(31980/8),(31980)&7	;volatile
	
i2l493:
	bcf	c:(31988/8),(31988)&7	;volatile
	line	111
	
i2l494:
	movff	??_isr+1,fsr2h+0
	movff	??_isr+0,fsr2l+0
	retfie f
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
fp__lcd_putch:
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
	end
