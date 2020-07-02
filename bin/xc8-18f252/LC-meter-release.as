opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	18F252
opt include "/opt/microchip/xc8/v1.45/include/18f252.cgen.inc"
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
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_calibrate
	FNCALL	_main,_delay10ms
	FNCALL	_main,_format_double
	FNCALL	_main,_lcd_begin
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_measure_capacitance
	FNCALL	_main,_measure_inductance
	FNCALL	_main,_print_indicator
	FNCALL	_main,_timer0_init
	FNCALL	_main,_timer2_init
	FNCALL	_print_indicator,_lcd_gotoxy
	FNCALL	_print_indicator,_lcd_puts
	FNCALL	_measure_inductance,___fldiv
	FNCALL	_measure_inductance,___flge
	FNCALL	_measure_inductance,___flmul
	FNCALL	_measure_inductance,___flsub
	FNCALL	_measure_inductance,___fltol
	FNCALL	_measure_inductance,___xxtofl
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
	FNCALL	_measure_capacitance,___xxtofl
	FNCALL	_measure_capacitance,_lcd_gotoxy
	FNCALL	_measure_capacitance,_measure_freq
	FNCALL	_measure_capacitance,_print_reading
	FNCALL	_measure_capacitance,_print_unit
	FNCALL	_measure_capacitance,_put_str
	FNCALL	_print_unit,_lcd_gotoxy
	FNCALL	_print_reading,___lwdiv
	FNCALL	_print_reading,___lwmod
	FNCALL	_print_reading,_format_number
	FNCALL	_print_reading,_lcd_gotoxy
	FNCALL	_print_reading,_lcd_puts
	FNCALL	_lcd_puts,_lcd_putch
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_format_double,___fldiv
	FNCALL	_format_double,___flge
	FNCALL	_format_double,___flmul
	FNCALL	_format_double,___flsub
	FNCALL	_format_double,___fltol
	FNCALL	_format_double,___xxtofl
	FNCALL	_format_double,_buffer_putch
	FNCALL	_format_double,_floor
	FNCALL	_format_double,_log10
	FNCALL	_format_double,_pow
	FNCALL	_pow,___flge
	FNCALL	_pow,___flmul
	FNCALL	_pow,___flneg
	FNCALL	_pow,___fltol
	FNCALL	_pow,___xxtofl
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_exp,___fldiv
	FNCALL	_exp,___flge
	FNCALL	_exp,___flmul
	FNCALL	_exp,___flneg
	FNCALL	_exp,___flsub
	FNCALL	_exp,___fltol
	FNCALL	_exp,___xxtofl
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_floor,___fladd
	FNCALL	_floor,___flge
	FNCALL	_floor,___fltol
	FNCALL	_floor,___xxtofl
	FNCALL	_floor,_frexp
	FNCALL	___flsub,___fladd
	FNCALL	_log10,___flmul
	FNCALL	_log10,_log
	FNCALL	_log,___fladd
	FNCALL	_log,___flmul
	FNCALL	_log,___xxtofl
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_eval_poly,___fladd
	FNCALL	_eval_poly,___flmul
	FNCALL	_calibrate,___xxtofl
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_lcd_clear
	FNCALL	_calibrate,_lcd_gotoxy
	FNCALL	_calibrate,_lcd_putch
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_put_str
	FNCALL	_put_str,_output_putch
	FNCALL	_output_putch,_lcd_putch
	FNCALL	_lcd_putch,_lcd_send
	FNCALL	_measure_freq,_buffer_init
	FNCALL	_measure_freq,_buffer_puts
	FNCALL	_measure_freq,_format_number
	FNCALL	_measure_freq,_lcd_gotoxy
	FNCALL	_measure_freq,_print_buffer
	FNCALL	_measure_freq,_timer0_read_ps
	FNCALL	_lcd_gotoxy,_lcd_command
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,_buffer_putch
	FNCALL	_buffer_puts,_buffer_putch
	FNCALL	_lcd_clear,_lcd_command
	FNCALL	_lcd_command,_lcd_send
	FNCALL	_lcd_send,_lcd_write4bits
	FNROOT	_main
	FNCALL	_isr,i2___lwdiv
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	lcd_gotoxy@F2308
	global	_mode
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"lib/lcd44780.c"
	line	135

;initializer for lcd_gotoxy@F2308
	db	low(0)
	db	low(040h)
	db	low(014h)
	db	low(054h)
	file	"LC-meter.c"
	line	54

;initializer for _mode
	db	low(0FFh)
	global	exp@coeff
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"/opt/microchip/xc8/v1.45/sources/common/exp.c"
	line	17
exp@coeff:
	dw	(normalize32(1.0000000000000000) & 0ffffh)
	dw	highword (normalize32(1.0000000000000000))
	dw	(normalize32(0.69314718056000002) & 0ffffh)
	dw	highword (normalize32(0.69314718056000002))
	dw	(normalize32(0.24022650695000000) & 0ffffh)
	dw	highword (normalize32(0.24022650695000000))
	dw	(normalize32(0.055504108944999998) & 0ffffh)
	dw	highword (normalize32(0.055504108944999998))
	dw	(normalize32(0.0096181261778999997) & 0ffffh)
	dw	highword (normalize32(0.0096181261778999997))
	dw	(normalize32(0.0013333710529000000) & 0ffffh)
	dw	highword (normalize32(0.0013333710529000000))
	dw	(normalize32(0.00015399104432000000) & 0ffffh)
	dw	highword (normalize32(0.00015399104432000000))
	dw	(normalize32(1.5327675256999998e-05) & 0ffffh)
	dw	highword (normalize32(1.5327675256999998e-05))
	dw	(normalize32(1.2485143336000000e-06) & 0ffffh)
	dw	highword (normalize32(1.2485143336000000e-06))
	dw	(normalize32(1.3908092220999999e-07) & 0ffffh)
	dw	highword (normalize32(1.3908092220999999e-07))
	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	smallconst
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	9
log@coeff:
	dw	(normalize32(0.0000000000000000) & 0ffffh)
	dw	highword (normalize32(0.0000000000000000))
	dw	(normalize32(0.99999642389999999) & 0ffffh)
	dw	highword (normalize32(0.99999642389999999))
	dw	(normalize32(-0.49987412380000001) & 0ffffh)
	dw	highword (normalize32(-0.49987412380000001))
	dw	(normalize32(0.33179902579999998) & 0ffffh)
	dw	highword (normalize32(0.33179902579999998))
	dw	(normalize32(-0.24073380840000000) & 0ffffh)
	dw	highword (normalize32(-0.24073380840000000))
	dw	(normalize32(0.16765407110000000) & 0ffffh)
	dw	highword (normalize32(0.16765407110000000))
	dw	(normalize32(-0.095329389700000003) & 0ffffh)
	dw	highword (normalize32(-0.095329389700000003))
	dw	(normalize32(0.036088493700000002) & 0ffffh)
	dw	highword (normalize32(0.036088493700000002))
	dw	(normalize32(-0.0064535442000000004) & 0ffffh)
	dw	highword (normalize32(-0.0064535442000000004))
	global __end_oflog@coeff
__end_oflog@coeff:
	global	exp@coeff
	global	log@coeff
	global	_led_cycle
	global	_msecpart
	global	_LCD_lines
	global	_LCD_mode
	global	_LCD_ctrl
	global	_LCD_function
	global	_F3
	global	_F2
	global	_blink
	global	_F1
	global	_buffer
	global	_timer1of
	global	_msecs
	global	_seconds
	global	_CCal
psect	nvBANK0,class=BANK0,space=1,noexec,lowdata
global __pnvBANK0
__pnvBANK0:
	global	_CCal
_CCal:
       ds      4
	global	_bres
	global	_bres
_bres:
       ds      4
	global	_led_interval
	global	_led_interval
_led_interval:
       ds      2
	global	_TMR0
_TMR0	set	0xFD6
	global	_PIE1
_PIE1	set	0xF9D
	global	_PIR1
_PIR1	set	0xF9E
	global	_TMR2
_TMR2	set	0xFCC
	global	_T2CON
_T2CON	set	0xFCA
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_T0CON
_T0CON	set	0xFD5
	global	_LATB
_LATB	set	0xF8A
	global	_PORTC
_PORTC	set	0xF82
	global	_INTCON
_INTCON	set	0xFF2
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_TRISC
_TRISC	set	0xF94
	global	_INTCON2
_INTCON2	set	0xFF1
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISA
_TRISA	set	0xF92
	global	_LATC
_LATC	set	0xF8B
	global	_PIR1bits
_PIR1bits	set	0xF9E
psect	smallconst
	
STR_7:; BSR set to: 0

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
	
STR_10:; BSR set to: 0

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
	
STR_6:; BSR set to: 0

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
	
STR_9:; BSR set to: 0

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
	
STR_1:; BSR set to: 0

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
	
STR_2:; BSR set to: 0

	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_8:; BSR set to: 0

	db	70	;'F'
	db	114	;'r'
	db	101	;'e'
	db	113	;'q'
	db	61	;'='
	db	0
	
STR_5:; BSR set to: 0

	db	82	;'R'
	db	67	;'C'
	db	52	;'4'
	db	61	;'='
	db	0
	
STR_20:; BSR set to: 0

	db	45
	db	42
	db	45
	db	0
	
STR_15:; BSR set to: 0

	db	109	;'m'
	db	70	;'F'
	db	0
	
STR_17:; BSR set to: 0

	db	110	;'n'
	db	70	;'F'
	db	0
	
STR_18:; BSR set to: 0

	db	112	;'p'
	db	70	;'F'
	db	0
	
STR_16:; BSR set to: 0

	db	117	;'u'
	db	70	;'F'
	db	0
	
STR_12:; BSR set to: 0

	db	109	;'m'
	db	72	;'H'
	db	0
	
STR_14:; BSR set to: 0

	db	110	;'n'
	db	72	;'H'
	db	0
	
STR_13:; BSR set to: 0

	db	117	;'u'
	db	72	;'H'
	db	0
STR_11	equ	STR_12+1
STR_3	equ	STR_2+0
STR_4	equ	STR_2+1
STR_19	equ	STR_2+1
STR_21	equ	STR_2+3
; #config settings
global __CFG_OSC$HSPLL
__CFG_OSC$HSPLL equ 0x0
global __CFG_OSCS$OFF
__CFG_OSCS$OFF equ 0x0
global __CFG_PWRT$ON
__CFG_PWRT$ON equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_BORV$27
__CFG_BORV$27 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MUX$ON
__CFG_CCP2MUX$ON equ 0x0
global __CFG_STVR$OFF
__CFG_STVR$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"bin/xc8-18f252/LC-meter-release.as"
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
	global	_led_cycle
_led_cycle:
       ds      2
	global	_msecpart
_msecpart:
       ds      2
_LCD_lines:
       ds      1
_LCD_mode:
       ds      1
_LCD_ctrl:
       ds      1
_LCD_function:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_F3
_F3:
       ds      4
	global	_F2
_F2:
       ds      4
	global	_blink
	global	_blink
_blink:
       ds      2
	global	_F1
_F1:
       ds      4
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"lib/lcd44780.c"
	line	135
lcd_gotoxy@F2308:
       ds      4
psect	dataBANK0
	file	"LC-meter.c"
	line	54
_mode:
       ds      1
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
	global	_buffer
_buffer:
       ds      17
	global	_timer1of
	global	_timer1of
_timer1of:
       ds      4
	global	_msecs
_msecs:
       ds      4
	global	_seconds
_seconds:
       ds      4
	file	"bin/xc8-18f252/LC-meter-release.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (5 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,5
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to BANK1 (29 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	29
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (14 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	14
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (8 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	8
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_format_double$1300
_format_double$1300:	; 4 bytes @ 0x0
	ds   4
	global	_format_double$1301
_format_double$1301:	; 4 bytes @ 0x4
	ds   4
	global	format_double@weight
format_double@weight:	; 4 bytes @ 0x8
	ds   4
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0xC
	ds   2
	global	format_double@m
format_double@m:	; 2 bytes @ 0xE
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x0
	ds   1
	global	___flmul@aexp
___flmul@aexp:	; 1 bytes @ 0x1
	ds   1
	global	___flmul@bexp
___flmul@bexp:	; 1 bytes @ 0x2
	ds   1
	global	___flmul@grs
___flmul@grs:	; 4 bytes @ 0x3
	ds   4
	global	___flmul@prod
___flmul@prod:	; 4 bytes @ 0x7
	ds   4
	global	___flmul@temp
___flmul@temp:	; 2 bytes @ 0xB
	ds   2
	global	?___flsub
?___flsub:	; 4 bytes @ 0xD
	global	?_eval_poly
?_eval_poly:	; 4 bytes @ 0xD
	global	___flsub@b
___flsub@b:	; 4 bytes @ 0xD
	global	eval_poly@x
eval_poly@x:	; 4 bytes @ 0xD
	ds   4
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x11
	global	___flsub@a
___flsub@a:	; 4 bytes @ 0x11
	ds   1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x12
	ds   2
	global	?_ldexp
?_ldexp:	; 4 bytes @ 0x14
	global	?_log
?_log:	; 4 bytes @ 0x14
	global	ldexp@value
ldexp@value:	; 4 bytes @ 0x14
	global	log@x
log@x:	; 4 bytes @ 0x14
	ds   4
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x18
	global	log@exponent
log@exponent:	; 2 bytes @ 0x18
	ds   2
??_ldexp:	; 1 bytes @ 0x1A
	global	?_log10
?_log10:	; 4 bytes @ 0x1A
	global	log10@x
log10@x:	; 4 bytes @ 0x1A
	ds   4
	global	_log10$1314
_log10$1314:	; 4 bytes @ 0x1E
	ds   4
	global	?___fltol
?___fltol:	; 4 bytes @ 0x22
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x22
	ds   4
??___fltol:	; 1 bytes @ 0x26
	ds   4
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x2A
	ds   1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x2B
	ds   1
	global	?_floor
?_floor:	; 4 bytes @ 0x2C
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0x2C
	global	floor@x
floor@x:	; 4 bytes @ 0x2C
	global	_measure_capacitance$1302
_measure_capacitance$1302:	; 4 bytes @ 0x2C
	ds   4
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0x30
	global	floor@i
floor@i:	; 4 bytes @ 0x30
	global	_measure_capacitance$1303
_measure_capacitance$1303:	; 4 bytes @ 0x30
	ds   4
	global	floor@expon
floor@expon:	; 2 bytes @ 0x34
	global	_measure_capacitance$1304
_measure_capacitance$1304:	; 4 bytes @ 0x34
	global	_measure_inductance$1305
_measure_inductance$1305:	; 4 bytes @ 0x34
	ds   2
	global	?_exp
?_exp:	; 4 bytes @ 0x36
	global	exp@x
exp@x:	; 4 bytes @ 0x36
	ds   2
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0x38
	global	_measure_inductance$1309
_measure_inductance$1309:	; 4 bytes @ 0x38
	ds   1
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0x39
	ds   1
	global	_exp$1317
_exp$1317:	; 4 bytes @ 0x3A
	ds   1
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0x3B
	ds   1
	global	_measure_inductance$1310
_measure_inductance$1310:	; 4 bytes @ 0x3C
	ds   2
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x3E
	ds   2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x40
	global	_measure_inductance$1311
_measure_inductance$1311:	; 4 bytes @ 0x40
	ds   1
	global	?_pow
?_pow:	; 4 bytes @ 0x41
	global	pow@x
pow@x:	; 4 bytes @ 0x41
	ds   3
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x44
	ds   1
	global	pow@y
pow@y:	; 4 bytes @ 0x45
	global	_measure_inductance$1306
_measure_inductance$1306:	; 4 bytes @ 0x45
	ds   4
	global	_measure_inductance$1307
_measure_inductance$1307:	; 4 bytes @ 0x49
	global	_pow$1315
_pow$1315:	; 4 bytes @ 0x49
	ds   4
	global	_measure_inductance$1308
_measure_inductance$1308:	; 4 bytes @ 0x4D
	global	_pow$1316
_pow$1316:	; 4 bytes @ 0x4D
	ds   4
	global	pow@sign
pow@sign:	; 1 bytes @ 0x51
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x51
	ds   1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x52
	ds   1
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x53
	ds   3
?_format_double:	; 1 bytes @ 0x56
	global	format_double@num
format_double@num:	; 4 bytes @ 0x56
	ds   4
	global	main@new_mode
main@new_mode:	; 1 bytes @ 0x5A
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_timer0_init:	; 1 bytes @ 0x0
?_timer2_init:	; 1 bytes @ 0x0
?_lcd_init:	; 1 bytes @ 0x0
?_calibrate:	; 1 bytes @ 0x0
?_lcd_clear:	; 1 bytes @ 0x0
?_measure_capacitance:	; 1 bytes @ 0x0
?_measure_inductance:	; 1 bytes @ 0x0
?_print_indicator:	; 1 bytes @ 0x0
?_lcd_putch:	; 1 bytes @ 0x0
?_print_buffer:	; 1 bytes @ 0x0
?_print_unit:	; 1 bytes @ 0x0
?_delay10ms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_buffer_init:	; 1 bytes @ 0x0
?_buffer_putch:	; 1 bytes @ 0x0
?_lcd_write4bits:	; 1 bytes @ 0x0
?_lcd_command:	; 1 bytes @ 0x0
?_output_putch:	; 1 bytes @ 0x0
?_isr:	; 2 bytes @ 0x0
	global	?i2___lwdiv
?i2___lwdiv:	; 2 bytes @ 0x0
delay10ms@period_10ms:	; 1 bytes @ 0x0
print_unit@unit:	; 1 bytes @ 0x0
	global	i2___lwdiv@dividend
i2___lwdiv@dividend:	; 2 bytes @ 0x0
	ds   2
	global	i2___lwdiv@divisor
i2___lwdiv@divisor:	; 2 bytes @ 0x2
	ds   2
??i2___lwdiv:	; 1 bytes @ 0x4
	global	i2___lwdiv@quotient
i2___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   2
	global	i2___lwdiv@counter
i2___lwdiv@counter:	; 1 bytes @ 0x6
	ds   1
??_isr:	; 1 bytes @ 0x7
	ds   1
?___flge:	; 1 bit 
??_timer0_init:	; 1 bytes @ 0x8
??_timer2_init:	; 1 bytes @ 0x8
??_lcd_init:	; 1 bytes @ 0x8
??_print_buffer:	; 1 bytes @ 0x8
??_delay10ms:	; 1 bytes @ 0x8
??_buffer_init:	; 1 bytes @ 0x8
??_buffer_putch:	; 1 bytes @ 0x8
??_lcd_write4bits:	; 1 bytes @ 0x8
	global	?_timer0_read_ps
?_timer0_read_ps:	; 2 bytes @ 0x8
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x8
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x8
	global	?_frexp
?_frexp:	; 4 bytes @ 0x8
	global	?___flneg
?___flneg:	; 4 bytes @ 0x8
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x8
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x8
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x8
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x8
	global	frexp@value
frexp@value:	; 4 bytes @ 0x8
	global	___fldiv@b
___fldiv@b:	; 4 bytes @ 0x8
	ds   1
?_lcd_send:	; 1 bytes @ 0x9
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x9
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x9
	global	_lcd_init$361
_lcd_init$361:	; 2 bytes @ 0x9
	global	_timer0_init$450
_timer0_init$450:	; 2 bytes @ 0x9
	ds   1
??_lcd_send:	; 1 bytes @ 0xA
??_timer0_read_ps:	; 1 bytes @ 0xA
	global	buffer_putch@ch
buffer_putch@ch:	; 1 bytes @ 0xA
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0xA
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xA
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xA
	ds   1
??_lcd_putch:	; 1 bytes @ 0xB
?_buffer_puts:	; 1 bytes @ 0xB
??_lcd_command:	; 1 bytes @ 0xB
	global	buffer_puts@x
buffer_puts@x:	; 1 bytes @ 0xB
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0xB
	global	lcd_putch@value
lcd_putch@value:	; 1 bytes @ 0xB
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0xB
	global	_timer0_init$451
_timer0_init$451:	; 2 bytes @ 0xB
	ds   1
?_lcd_begin:	; 1 bytes @ 0xC
?_lcd_gotoxy:	; 1 bytes @ 0xC
?_lcd_puts:	; 1 bytes @ 0xC
??_lcd_clear:	; 1 bytes @ 0xC
??_buffer_puts:	; 1 bytes @ 0xC
??_output_putch:	; 1 bytes @ 0xC
??___flneg:	; 1 bytes @ 0xC
??___lwdiv:	; 1 bytes @ 0xC
??___lwmod:	; 1 bytes @ 0xC
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0xC
	global	lcd_puts@string
lcd_puts@string:	; 1 bytes @ 0xC
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0xC
	global	timer0_read_ps@prev
timer0_read_ps@prev:	; 1 bytes @ 0xC
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0xC
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0xC
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xC
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xC
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0xC
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0xC
	ds   1
??_lcd_begin:	; 1 bytes @ 0xD
??_lcd_gotoxy:	; 1 bytes @ 0xD
??_lcd_puts:	; 1 bytes @ 0xD
?_put_str:	; 1 bytes @ 0xD
??_frexp:	; 1 bytes @ 0xD
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0xD
	global	put_str@s
put_str@s:	; 1 bytes @ 0xD
	global	_timer0_init$452
_timer0_init$452:	; 2 bytes @ 0xD
	global	timer0_read_ps@count
timer0_read_ps@count:	; 2 bytes @ 0xD
	ds   1
??_put_str:	; 1 bytes @ 0xE
	global	lcd_puts@i
lcd_puts@i:	; 1 bytes @ 0xE
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0xE
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xE
	global	lcd_gotoxy@row_offsets
lcd_gotoxy@row_offsets:	; 4 bytes @ 0xE
	ds   1
?_format_number:	; 1 bytes @ 0xF
	global	format_number@n
format_number@n:	; 2 bytes @ 0xF
	global	_timer0_init$453
_timer0_init$453:	; 2 bytes @ 0xF
	global	put_str@i
put_str@i:	; 2 bytes @ 0xF
	ds   1
??___fldiv:	; 1 bytes @ 0x10
??___flge:	; 1 bytes @ 0x10
	ds   1
	global	format_number@base
format_number@base:	; 1 bytes @ 0x11
	global	timer0_init@prescaler
timer0_init@prescaler:	; 1 bytes @ 0x11
	ds   1
??_print_indicator:	; 1 bytes @ 0x12
??_print_unit:	; 1 bytes @ 0x12
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0x12
	global	timer0_init@ps_mode
timer0_init@ps_mode:	; 1 bytes @ 0x12
	global	print_indicator@indicate
print_indicator@indicate:	; 1 bytes @ 0x12
	ds   1
??_format_number:	; 1 bytes @ 0x13
	ds   1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x14
	ds   1
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0x15
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0x15
	ds   4
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x19
	ds   2
	global	___fldiv@grs
___fldiv@grs:	; 4 bytes @ 0x1B
	ds   4
	global	___fldiv@bexp
___fldiv@bexp:	; 1 bytes @ 0x1F
	ds   1
	global	___fldiv@aexp
___fldiv@aexp:	; 1 bytes @ 0x20
	ds   21
	global	_format_number$293
_format_number$293:	; 2 bytes @ 0x35
	ds   2
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x37
	ds   1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x38
	ds   1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x39
	ds   1
?_print_reading:	; 1 bytes @ 0x3A
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x3A
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x3A
	ds   2
??_measure_freq:	; 1 bytes @ 0x3C
??_print_reading:	; 1 bytes @ 0x3C
	global	_print_reading$1312
_print_reading$1312:	; 2 bytes @ 0x3C
	ds   1
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x3D
	ds   1
	global	_print_reading$1313
_print_reading$1313:	; 2 bytes @ 0x3E
	ds   1
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x3F
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x3F
	ds   4
??___xxtofl:	; 1 bytes @ 0x43
	ds   4
	global	___xxtofl@sign
___xxtofl@sign:	; 1 bytes @ 0x47
	ds   1
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0x48
	ds   1
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0x49
	ds   4
??_calibrate:	; 1 bytes @ 0x4D
	global	?___fladd
?___fladd:	; 4 bytes @ 0x4D
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x4D
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x4D
	ds   4
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x51
	ds   4
??___fladd:	; 1 bytes @ 0x55
	ds   4
	global	___fladd@signs
___fladd@signs:	; 1 bytes @ 0x59
	ds   1
	global	___fladd@aexp
___fladd@aexp:	; 1 bytes @ 0x5A
	ds   1
	global	___fladd@bexp
___fladd@bexp:	; 1 bytes @ 0x5B
	ds   1
	global	___fladd@grs
___fladd@grs:	; 1 bytes @ 0x5C
	ds   1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x5D
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0x5D
	ds   4
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0x61
	ds   4
??___flmul:	; 1 bytes @ 0x65
	ds   4
??___flsub:	; 1 bytes @ 0x69
??_eval_poly:	; 1 bytes @ 0x69
	ds   1
	global	eval_poly@res
eval_poly@res:	; 4 bytes @ 0x6A
	ds   4
??_format_double:	; 1 bytes @ 0x6E
??_measure_capacitance:	; 1 bytes @ 0x6E
??_measure_inductance:	; 1 bytes @ 0x6E
??_log10:	; 1 bytes @ 0x6E
??_pow:	; 1 bytes @ 0x6E
??_floor:	; 1 bytes @ 0x6E
??_exp:	; 1 bytes @ 0x6E
??_main:	; 1 bytes @ 0x6E
??_log:	; 1 bytes @ 0x6E
;!
;!Data Sizes:
;!    Strings     103
;!    Constant    76
;!    Data        5
;!    BSS         51
;!    Persistent  10
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          126    110     118
;!    BANK0           128     91     120
;!    BANK1           256     16      45
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 40
;!		 -> exp@coeff(CODE[40]), log@coeff(CODE[36]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK0[2]), 
;!
;!    put_str@s	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_10(CODE[13]), STR_9(CODE[10]), STR_7(CODE[15]), STR_6(CODE[12]), 
;!
;!    print_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;!		 -> STR_18(CODE[3]), STR_17(CODE[3]), STR_16(CODE[3]), STR_15(CODE[3]), 
;!		 -> STR_14(CODE[3]), STR_13(CODE[3]), STR_12(CODE[3]), STR_11(CODE[2]), 
;!
;!    lcd_puts@string	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_21(CODE[4]), STR_20(CODE[4]), STR_19(CODE[6]), STR_5(CODE[5]), 
;!		 -> STR_4(CODE[6]), STR_3(CODE[7]), STR_2(CODE[7]), STR_1(CODE[10]), 
;!
;!    buffer_puts@x	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_8(CODE[6]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _print_indicator->_lcd_gotoxy
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _lcd_puts->_lcd_putch
;!    _lcd_begin->_lcd_command
;!    _exp->_eval_poly
;!    _ldexp->_eval_poly
;!    ___flsub->___flmul
;!    _log->_eval_poly
;!    _eval_poly->___flmul
;!    ___flmul->___fladd
;!    ___fladd->___xxtofl
;!    _calibrate->___xxtofl
;!    _put_str->_output_putch
;!    _output_putch->_lcd_putch
;!    _lcd_putch->_lcd_send
;!    _measure_freq->_format_number
;!    _lcd_gotoxy->_lcd_command
;!    _format_number->___lwdiv
;!    _buffer_puts->_buffer_putch
;!    _lcd_clear->_lcd_command
;!    _lcd_command->_lcd_send
;!    _lcd_send->_lcd_write4bits
;!    ___xxtofl->_measure_freq
;!
;!Critical Paths under _isr in COMRAM
;!
;!    _isr->i2___lwdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_format_double
;!    _measure_inductance->___fltol
;!    _measure_capacitance->___fltol
;!    _format_double->_pow
;!    _pow->_exp
;!    _exp->_floor
;!    _ldexp->_eval_poly
;!    _floor->___fltol
;!    ___fltol->_log10
;!    ___flsub->___flmul
;!    _log10->_log
;!    _log->_eval_poly
;!    _eval_poly->___flmul
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_format_double
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
;! (0) _main                                                 1     1      0  249126
;!                                             90 BANK0      1     1      0
;!                          _calibrate
;!                          _delay10ms
;!                      _format_double
;!                          _lcd_begin
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                           _lcd_init
;!                           _lcd_puts
;!                _measure_capacitance
;!                 _measure_inductance
;!                    _print_indicator
;!                        _timer0_init
;!                        _timer2_init
;! ---------------------------------------------------------------------------------
;! (1) _timer2_init                                          4     4      0      90
;!                                              8 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                         11    11      0     273
;!                                              8 COMRAM    11    11      0
;! ---------------------------------------------------------------------------------
;! (1) _print_indicator                                      1     1      0    2685
;!                                             18 COMRAM     1     1      0
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (1) _measure_inductance                                  43    43      0   39880
;!                                             44 BANK0     43    43      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___xxtofl
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (1) _measure_capacitance                                 19    19      0   39574
;!                                             44 BANK0     19    19      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___xxtofl
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (2) _print_unit                                           3     3      0    1755
;!                                             18 COMRAM     2     2      0
;!                         _lcd_gotoxy
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        6     4      2    7665
;!                                             58 COMRAM     6     4      2
;!                            ___lwdiv
;!                            ___lwmod
;!                      _format_number
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (2) _lcd_puts                                             3     2      1     908
;!                                             12 COMRAM     3     2      1
;!                          _lcd_putch
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             3     3      0      46
;!                                              8 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_begin                                            3     2      1     448
;!                                             12 COMRAM     3     2      1
;!                        _lcd_command
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (1) _format_double                                       20    16      4  152888
;!                                             86 BANK0      4     0      4
;!                                              0 BANK1     16    16      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___xxtofl
;!                       _buffer_putch
;!                              _floor
;!                              _log10
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (2) _pow                                                 21    13      8   86216
;!                                             65 BANK0     21    13      8
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___fltol
;!                           ___xxtofl
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _exp                                                 11     7      4   46076
;!                                             54 BANK0     11     7      4
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                           ___xxtofl
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _ldexp                                                8     2      6     539
;!                                             20 BANK0      8     2      6
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _floor                                               10     6      4   10800
;!                                             44 BANK0     10     6      4
;!                            ___fladd
;!                            ___fldiv (ARG)
;!                             ___flge
;!                            ___fltol
;!                           ___xxtofl
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4    1107
;!                                             34 BANK0     10     6      4
;!                            ___fldiv (ARG)
;!                           ___xxtofl (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                              12     4      8    2746
;!                                              8 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    5376
;!                                             13 BANK0      8     0      8
;!                            ___fladd
;!                            ___flmul (ARG)
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___flneg                                              4     0      4     335
;!                                              8 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (2) ___fldiv                                             25    17      8    3484
;!                                              8 COMRAM    25    17      8
;! ---------------------------------------------------------------------------------
;! (2) _log10                                                8     4      4   33644
;!                                             26 BANK0      8     4      4
;!                            ___flmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _log                                                  6     2      4   26114
;!                                             20 BANK0      6     2      4
;!                            ___fladd
;!                            ___flmul
;!                           ___xxtofl
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) _frexp                                                7     2      5     682
;!                                              8 COMRAM     7     2      5
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           12     5      7   12050
;!                                            105 COMRAM     5     5      0
;!                                             13 BANK0      7     0      7
;!                            ___fladd
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             25    17      8    7305
;!                                             93 COMRAM    12     4      8
;!                                              0 BANK0     13    13      0
;!                            ___fladd (ARG)
;!                            ___fldiv (ARG)
;!                           ___xxtofl (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             16     8      8    3951
;!                                             77 COMRAM    16     8      8
;!                           ___xxtofl (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0   10252
;!                                             77 COMRAM     1     1      0
;!                           ___xxtofl
;!                          _delay10ms
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                          _lcd_putch
;!                       _measure_freq
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (2) _put_str                                              4     3      1     678
;!                                             13 COMRAM     4     3      1
;!                       _output_putch
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     1      0     284
;!                                             12 COMRAM     1     1      0
;!                          _lcd_putch
;! ---------------------------------------------------------------------------------
;! (3) _lcd_putch                                            1     1      0     262
;!                                             11 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         5     3      2    5531
;!                                             58 COMRAM     5     3      2
;!                        _buffer_init
;!                        _buffer_puts
;!                      _format_number
;!                         _lcd_gotoxy
;!                       _print_buffer
;!                     _timer0_read_ps
;! ---------------------------------------------------------------------------------
;! (3) _timer0_read_ps                                       7     5      2     114
;!                                              8 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _print_buffer                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _lcd_gotoxy                                           6     5      1    1755
;!                                             12 COMRAM     6     5      1
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       43    39      4    3411
;!                                             15 COMRAM    43    39      4
;!                            ___lwdiv
;!                            ___lwmod
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     589
;!                                              8 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     692
;!                                              8 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _buffer_puts                                          1     0      1     186
;!                                             11 COMRAM     1     0      1
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) _buffer_putch                                         3     3      0      31
;!                                              8 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _buffer_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            1     1      0     262
;!                                             12 COMRAM     1     1      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _lcd_command                                          1     1      0     262
;!                                             11 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (4) _lcd_send                                             2     1      1     240
;!                                              9 COMRAM     2     1      1
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (5) _lcd_write4bits                                       1     1      0      22
;!                                              8 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___xxtofl                                            14    10      4    1696
;!                                             63 COMRAM    14    10      4
;!                       _measure_freq (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                  1     1      0     214
;!                                              7 COMRAM     1     1      0
;!                          i2___lwdiv
;! ---------------------------------------------------------------------------------
;! (8) i2___lwdiv                                            7     3      4     214
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _calibrate
;!     ___xxtofl
;!       _measure_freq (ARG)
;!         _buffer_init
;!         _buffer_puts
;!           _buffer_putch
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _buffer_putch
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _print_buffer
;!         _timer0_read_ps
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
;!       _buffer_init
;!       _buffer_puts
;!         _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _print_buffer
;!       _timer0_read_ps
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!   _delay10ms
;!   _format_double
;!     ___fldiv
;!     ___flge
;!     ___flmul
;!       ___fladd (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___fldiv (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _frexp (ARG)
;!     ___flsub
;!       ___fladd
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___fladd (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!     ___fltol
;!       ___fldiv (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _log10 (ARG)
;!         ___flmul
;!           ___fladd (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         _log
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___xxtofl
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _eval_poly
;!             ___fladd
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!           _frexp
;!     ___xxtofl
;!       _measure_freq (ARG)
;!         _buffer_init
;!         _buffer_puts
;!           _buffer_putch
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _buffer_putch
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _print_buffer
;!         _timer0_read_ps
;!     _buffer_putch
;!     _floor
;!       ___fladd
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___fldiv (ARG)
;!       ___flge (ARG)
;!       ___fltol (ARG)
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _log10 (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           _log
;!             ___fladd
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___xxtofl
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _eval_poly
;!               ___fladd
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___fladd (ARG)
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!                 ___fldiv (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!             _frexp
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _frexp (ARG)
;!     _log10
;!       ___flmul
;!         ___fladd (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       _log
;!         ___fladd
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___flmul
;!           ___fladd (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___xxtofl
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _eval_poly
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!         _frexp
;!     _pow
;!       ___flge
;!       ___flmul
;!         ___fladd (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___flneg
;!       ___fltol
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _log10 (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           _log
;!             ___fladd
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___xxtofl
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _eval_poly
;!               ___fladd
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___fladd (ARG)
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!                 ___fldiv (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!             _frexp
;!       ___xxtofl
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _exp
;!         ___fldiv
;!         ___flge
;!         ___flmul
;!           ___fladd (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___flneg
;!         ___flsub
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul (ARG)
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!         ___fltol
;!           ___fldiv (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _log10 (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             _log
;!               ___fladd
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___fladd (ARG)
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!                 ___fldiv (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___xxtofl
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _eval_poly
;!                 ___fladd
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___fladd (ARG)
;!                     ___xxtofl (ARG)
;!                       _measure_freq (ARG)
;!                         _buffer_init
;!                         _buffer_puts
;!                           _buffer_putch
;!                         _format_number
;!                           ___lwdiv
;!                           ___lwmod
;!                           _buffer_putch
;!                         _lcd_gotoxy
;!                           _lcd_command
;!                             _lcd_send
;!                               _lcd_write4bits
;!                         _print_buffer
;!                         _timer0_read_ps
;!                     _frexp (ARG)
;!                   ___fldiv (ARG)
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!               _frexp
;!         ___xxtofl
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _eval_poly
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!         _floor
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!           ___flge (ARG)
;!           ___fltol (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _log10 (ARG)
;!               ___flmul
;!                 ___fladd (ARG)
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!                 ___fldiv (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               _log
;!                 ___fladd
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___fladd (ARG)
;!                     ___xxtofl (ARG)
;!                       _measure_freq (ARG)
;!                         _buffer_init
;!                         _buffer_puts
;!                           _buffer_putch
;!                         _format_number
;!                           ___lwdiv
;!                           ___lwmod
;!                           _buffer_putch
;!                         _lcd_gotoxy
;!                           _lcd_command
;!                             _lcd_send
;!                               _lcd_write4bits
;!                         _print_buffer
;!                         _timer0_read_ps
;!                     _frexp (ARG)
;!                   ___fldiv (ARG)
;!                   ___xxtofl (ARG)
;!                     _measure_freq (ARG)
;!                       _buffer_init
;!                       _buffer_puts
;!                         _buffer_putch
;!                       _format_number
;!                         ___lwdiv
;!                         ___lwmod
;!                         _buffer_putch
;!                       _lcd_gotoxy
;!                         _lcd_command
;!                           _lcd_send
;!                             _lcd_write4bits
;!                       _print_buffer
;!                       _timer0_read_ps
;!                   _frexp (ARG)
;!                 ___xxtofl
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _eval_poly
;!                   ___fladd
;!                     ___xxtofl (ARG)
;!                       _measure_freq (ARG)
;!                         _buffer_init
;!                         _buffer_puts
;!                           _buffer_putch
;!                         _format_number
;!                           ___lwdiv
;!                           ___lwmod
;!                           _buffer_putch
;!                         _lcd_gotoxy
;!                           _lcd_command
;!                             _lcd_send
;!                               _lcd_write4bits
;!                         _print_buffer
;!                         _timer0_read_ps
;!                     _frexp (ARG)
;!                   ___flmul
;!                     ___fladd (ARG)
;!                       ___xxtofl (ARG)
;!                         _measure_freq (ARG)
;!                           _buffer_init
;!                           _buffer_puts
;!                             _buffer_putch
;!                           _format_number
;!                             ___lwdiv
;!                             ___lwmod
;!                             _buffer_putch
;!                           _lcd_gotoxy
;!                             _lcd_command
;!                               _lcd_send
;!                                 _lcd_write4bits
;!                           _print_buffer
;!                           _timer0_read_ps
;!                       _frexp (ARG)
;!                     ___fldiv (ARG)
;!                     ___xxtofl (ARG)
;!                       _measure_freq (ARG)
;!                         _buffer_init
;!                         _buffer_puts
;!                           _buffer_putch
;!                         _format_number
;!                           ___lwdiv
;!                           ___lwmod
;!                           _buffer_putch
;!                         _lcd_gotoxy
;!                           _lcd_command
;!                             _lcd_send
;!                               _lcd_write4bits
;!                         _print_buffer
;!                         _timer0_read_ps
;!                     _frexp (ARG)
;!                 _frexp
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         _ldexp
;!           _eval_poly (ARG)
;!             ___fladd
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!         _log (ARG)
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___xxtofl
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _eval_poly
;!             ___fladd
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!           _frexp
;!       _log
;!         ___fladd
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___flmul
;!           ___fladd (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___xxtofl
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _eval_poly
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!         _frexp
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
;!     ___flge
;!     ___flmul
;!       ___fladd (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___fldiv (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _frexp (ARG)
;!     ___flsub
;!       ___fladd
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___fladd (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!     ___fltol
;!       ___fldiv (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _log10 (ARG)
;!         ___flmul
;!           ___fladd (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         _log
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___xxtofl
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _eval_poly
;!             ___fladd
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!           _frexp
;!     ___xxtofl
;!       _measure_freq (ARG)
;!         _buffer_init
;!         _buffer_puts
;!           _buffer_putch
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _buffer_putch
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _print_buffer
;!         _timer0_read_ps
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _buffer_init
;!       _buffer_puts
;!         _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _print_buffer
;!       _timer0_read_ps
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
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
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!   _measure_inductance
;!     ___fldiv
;!     ___flge
;!     ___flmul
;!       ___fladd (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___fldiv (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _frexp (ARG)
;!     ___flsub
;!       ___fladd
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___fladd (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!           _measure_freq (ARG)
;!             _buffer_init
;!             _buffer_puts
;!               _buffer_putch
;!             _format_number
;!               ___lwdiv
;!               ___lwmod
;!               _buffer_putch
;!             _lcd_gotoxy
;!               _lcd_command
;!                 _lcd_send
;!                   _lcd_write4bits
;!             _print_buffer
;!             _timer0_read_ps
;!         _frexp (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!     ___fltol
;!       ___fldiv (ARG)
;!       ___xxtofl (ARG)
;!         _measure_freq (ARG)
;!           _buffer_init
;!           _buffer_puts
;!             _buffer_putch
;!           _format_number
;!             ___lwdiv
;!             ___lwmod
;!             _buffer_putch
;!           _lcd_gotoxy
;!             _lcd_command
;!               _lcd_send
;!                 _lcd_write4bits
;!           _print_buffer
;!           _timer0_read_ps
;!       _log10 (ARG)
;!         ___flmul
;!           ___fladd (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!           ___xxtofl (ARG)
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _frexp (ARG)
;!         _log
;!           ___fladd
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___flmul
;!             ___fladd (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___fldiv (ARG)
;!             ___xxtofl (ARG)
;!               _measure_freq (ARG)
;!                 _buffer_init
;!                 _buffer_puts
;!                   _buffer_putch
;!                 _format_number
;!                   ___lwdiv
;!                   ___lwmod
;!                   _buffer_putch
;!                 _lcd_gotoxy
;!                   _lcd_command
;!                     _lcd_send
;!                       _lcd_write4bits
;!                 _print_buffer
;!                 _timer0_read_ps
;!             _frexp (ARG)
;!           ___xxtofl
;!             _measure_freq (ARG)
;!               _buffer_init
;!               _buffer_puts
;!                 _buffer_putch
;!               _format_number
;!                 ___lwdiv
;!                 ___lwmod
;!                 _buffer_putch
;!               _lcd_gotoxy
;!                 _lcd_command
;!                   _lcd_send
;!                     _lcd_write4bits
;!               _print_buffer
;!               _timer0_read_ps
;!           _eval_poly
;!             ___fladd
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!             ___flmul
;!               ___fladd (ARG)
;!                 ___xxtofl (ARG)
;!                   _measure_freq (ARG)
;!                     _buffer_init
;!                     _buffer_puts
;!                       _buffer_putch
;!                     _format_number
;!                       ___lwdiv
;!                       ___lwmod
;!                       _buffer_putch
;!                     _lcd_gotoxy
;!                       _lcd_command
;!                         _lcd_send
;!                           _lcd_write4bits
;!                     _print_buffer
;!                     _timer0_read_ps
;!                 _frexp (ARG)
;!               ___fldiv (ARG)
;!               ___xxtofl (ARG)
;!                 _measure_freq (ARG)
;!                   _buffer_init
;!                   _buffer_puts
;!                     _buffer_putch
;!                   _format_number
;!                     ___lwdiv
;!                     ___lwmod
;!                     _buffer_putch
;!                   _lcd_gotoxy
;!                     _lcd_command
;!                       _lcd_send
;!                         _lcd_write4bits
;!                   _print_buffer
;!                   _timer0_read_ps
;!               _frexp (ARG)
;!           _frexp
;!     ___xxtofl
;!       _measure_freq (ARG)
;!         _buffer_init
;!         _buffer_puts
;!           _buffer_putch
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _buffer_putch
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _print_buffer
;!         _timer0_read_ps
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _buffer_init
;!       _buffer_puts
;!         _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _print_buffer
;!       _timer0_read_ps
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
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
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!   _print_indicator
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_puts
;!       _lcd_putch
;!         _lcd_send
;!           _lcd_write4bits
;!   _timer0_init
;!   _timer2_init
;!
;! _isr (ROOT)
;!   i2___lwdiv
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
;!BANK1              100     10      2D       7       17.6%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     5B      78       5       93.8%
;!BITCOMRAM           7E      0       0       0        0.0%
;!COMRAM              7E     6E      76       1       93.7%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     11B      15        0.0%
;!DATA                 0      0     11B       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 117 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new_mode        1   90[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_calibrate
;;		_delay10ms
;;		_format_double
;;		_lcd_begin
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_init
;;		_lcd_puts
;;		_measure_capacitance
;;		_measure_inductance
;;		_print_indicator
;;		_timer0_init
;;		_timer2_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"LC-meter.c"
	line	117
global __ptext0
__ptext0:
psect	text0
	file	"LC-meter.c"
	line	117
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	line	118
	
l4842:
;LC-meter.c: 118: bres = msecpart = msecs = seconds = 0;
	movlw	low(0)
	movlb	1	; () banked
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
	movff	(_msecs),(c:_msecpart)	;volatile
	movff	(_msecs+1),(c:_msecpart+1)	;volatile
	movff	(c:_msecpart),(_bres)	;volatile
	movff	(c:_msecpart+1),(_bres+1)	;volatile
	movlb	0	; () banked
	clrf	((_bres+2))&0ffh	;volatile
	clrf	((_bres+3))&0ffh	;volatile

	line	119
	
l4844:; BSR set to: 0

;LC-meter.c: 119: mode = -1;
	setf	((_mode))&0ffh
	line	121
;LC-meter.c: 121: CCal = 1000;
	movlw	low(normalize32(1000.0000000000000))
	movwf	((_CCal))&0ffh
	movlw	high(normalize32(1000.0000000000000))
	movwf	((_CCal+1))&0ffh
	movlw	low highword(normalize32(1000.0000000000000))
	movwf	((_CCal+2))&0ffh
	movlw	high highword(normalize32(1000.0000000000000))
	movwf	((_CCal+3))&0ffh
	line	123
	
l4846:; BSR set to: 0

;LC-meter.c: 123: led_cycle = 0;
	clrf	((c:_led_cycle)),c	;volatile
	clrf	((c:_led_cycle+1)),c	;volatile
	line	124
;LC-meter.c: 124: led_interval = 500;
	movlw	high(01F4h)
	movwf	((_led_interval+1))&0ffh	;volatile
	movlw	low(01F4h)
	movwf	((_led_interval))&0ffh	;volatile
	line	134
;LC-meter.c: 134: TRISA = 0b11001111;
	movlw	low(0CFh)
	movwf	((c:3986)),c	;volatile
	line	136
	
l4848:; BSR set to: 0

;LC-meter.c: 136: TRISB &= 0b00001111;
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	139
	
l4850:; BSR set to: 0

;LC-meter.c: 139: timer0_init(0b1000 | 0x20 | 0x40);
	movlw	(068h)&0ffh
	
	call	_timer0_init
	line	140
	
l4852:
;LC-meter.c: 140: timer2_init(0b100 | 0x80);
	movlw	(084h)&0ffh
	
	call	_timer2_init
	line	147
	
l4854:
;LC-meter.c: 147: INTCON2 &= ~0b10000000;
	bcf	(0+(7/8)+(c:4081)),c,(7)&7	;volatile
	line	155
	
l4856:
;LC-meter.c: 155: TRISC = 0b10110011;
	movlw	low(0B3h)
	movwf	((c:3988)),c	;volatile
	line	159
	
l4858:
;LC-meter.c: 159: PORTCbits.RC3 = 1;
	bsf	((c:3970)),c,3	;volatile
	line	162
	
l4860:
;LC-meter.c: 162: TRISC &= ~(1 << 2);
	bcf	(0+(2/8)+(c:3988)),c,(2)&7	;volatile
	line	163
	
l4862:
;LC-meter.c: 163: LATC &= ~(1 << 2); LATC |= (!!(1)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	
l4864:
	bsf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	line	165
	
l4866:
;LC-meter.c: 165: timer2_init(0b000 | 0x80);
	movlw	(080h)&0ffh
	
	call	_timer2_init
	line	172
	
l4868:
;LC-meter.c: 172: lcd_init(1);
	movlw	(01h)&0ffh
	
	call	_lcd_init
	line	173
	
l4870:
;LC-meter.c: 173: lcd_begin(2, 1);
	movlw	low(01h)
	movwf	((c:lcd_begin@dotsize)),c
	movlw	(02h)&0ffh
	
	call	_lcd_begin
	line	176
	
l4872:
;LC-meter.c: 176: TRISC |= (1 << 4);
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	177
	
l4874:
;LC-meter.c: 177: TRISC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	179
	
l4876:
;LC-meter.c: 179: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	180
	
l4878:
;LC-meter.c: 180: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	181
	
l4880:
;LC-meter.c: 181: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	182
	
l4882:
;LC-meter.c: 182: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	183
	
l4884:
;LC-meter.c: 183: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	184
	
l4886:
;LC-meter.c: 184: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	185
	
l4888:
;LC-meter.c: 185: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	186
	
l4890:
;LC-meter.c: 186: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	187
	
l4892:
;LC-meter.c: 187: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	197
	
l4894:
;LC-meter.c: 197: INTCON |= 0xc0;
	movlw	(0C0h)&0ffh
	iorwf	((c:4082)),c	;volatile
	line	203
	
l4896:
;LC-meter.c: 203: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	205
	
l4898:
;LC-meter.c: 205: lcd_puts("LC-meter ");
		movlw	low(STR_1)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	206
	
l4900:
;LC-meter.c: 206: format_double( CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	movff	(_CCal+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	212
	
l4902:
;LC-meter.c: 212: delay10ms(200);
	movlw	(0C8h)&0ffh
	
	call	_delay10ms
	line	215
	
l4904:
;LC-meter.c: 215: calibrate();
	call	_calibrate	;wreg free
	line	218
	
l4906:
;LC-meter.c: 218: lcd_clear();
	call	_lcd_clear	;wreg free
	line	227
	
l4908:
;LC-meter.c: 227: char new_mode = (!!(PORTC & (1 << 4)));
	
	btfsc	((c:3970)),c,(4)&7	;volatile
	goto	u5251
	goto	u5250
u5251:
	movlw	1
	goto	u5260
u5250:
	movlw	0
u5260:
	movlb	0	; () banked
	movwf	((main@new_mode))&0ffh
	line	229
	
l4910:; BSR set to: 0

;LC-meter.c: 229: if(new_mode != mode) {
	movf	((_mode))&0ffh,w
xorwf	((main@new_mode))&0ffh,w
	btfsc	status,2
	goto	u5271
	goto	u5270

u5271:
	goto	l4914
u5270:
	line	234
	
l4912:; BSR set to: 0

;LC-meter.c: 234: mode = new_mode;
	movff	(main@new_mode),(_mode)
	line	237
	
l4914:; BSR set to: 0

;LC-meter.c: 235: }
;LC-meter.c: 237: if(led_cycle >= led_interval)
		movf	((_led_interval))&0ffh,w	;volatile
	subwf	((c:_led_cycle)),c,w	;volatile
	movf	((_led_interval+1))&0ffh,w	;volatile
	subwfb	((c:_led_cycle+1)),c,w	;volatile
	btfss	status,0
	goto	u5281
	goto	u5280

u5281:
	goto	l4918
u5280:
	line	238
	
l4916:; BSR set to: 0

;LC-meter.c: 238: led_cycle = 0;
	clrf	((c:_led_cycle)),c	;volatile
	clrf	((c:_led_cycle+1)),c	;volatile
	line	240
	
l4918:; BSR set to: 0

;LC-meter.c: 240: if(mode)
	movf	((_mode))&0ffh,w
	btfsc	status,2
	goto	u5291
	goto	u5290
u5291:
	goto	l4922
u5290:
	line	241
	
l4920:; BSR set to: 0

;LC-meter.c: 241: measure_capacitance();
	call	_measure_capacitance	;wreg free
	goto	l4924
	line	243
	
l4922:; BSR set to: 0

;LC-meter.c: 242: else
;LC-meter.c: 243: measure_inductance();
	call	_measure_inductance	;wreg free
	line	245
	
l4924:
;LC-meter.c: 245: print_indicator(1);
	movlw	(01h)&0ffh
	
	call	_print_indicator
	line	246
	
l4926:
;LC-meter.c: 246: delay10ms(30);
	movlw	(01Eh)&0ffh
	
	call	_delay10ms
	line	248
	
l4928:
;LC-meter.c: 248: print_indicator(0);
	movlw	(0)&0ffh
	
	call	_print_indicator
	line	249
	
l4930:
;LC-meter.c: 249: delay10ms(20);
	movlw	(014h)&0ffh
	
	call	_delay10ms
	line	250
;LC-meter.c: 250: }
	goto	l4908
	global	start
	goto	start
	opt stack 0
	line	251
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_timer2_init

;; *************** function _timer2_init *****************
;; Defined at:
;;		line 143 in file "lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1   11[COMRAM] unsigned char 
;;  postscaler      1    0        unsigned char 
;;  ps              1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"lib/timer.c"
	line	143
global __ptext1
__ptext1:
psect	text1
	file	"lib/timer.c"
	line	143
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:
;incstack = 0
	opt	stack 28
;timer2_init@ps_mode stored from wreg
	movwf	((c:timer2_init@ps_mode)),c
	line	144
	
l3480:
;timer.c: 144: uint8_t ps = ps_mode & 0b1111;
	movf	((c:timer2_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer2_init@ps)),c
	line	145
	
l3482:
	line	148
;timer.c: 148: T2CON &= ~0b01111111;
	movlw	(080h)&0ffh
	andwf	((c:4042)),c	;volatile
	line	150
;timer.c: 150: T2CON |= (postscaler & 0b1111) << 3;
	movf	((c:4042)),c,w	;volatile
	line	151
;timer.c: 151: T2CON |= (ps & 0b11);
	movf	((c:timer2_init@ps)),c,w
	andlw	low(03h)
	iorwf	((c:4042)),c	;volatile
	line	153
	
l3484:
;timer.c: 153: TMR2 = 0;
	clrf	((c:4044)),c	;volatile
	line	155
	
l3486:
;timer.c: 155: T2CON |= 0b100;
	bsf	(0+(2/8)+(c:4042)),c,(2)&7	;volatile
	line	158
	
l3488:
;timer.c: 158: PIR1 &= ~0b10;
	bcf	(0+(1/8)+(c:3998)),c,(1)&7	;volatile
	line	159
;timer.c: 159: PIE1 = (!!(ps_mode & 0x80)) << 1;
	
	btfsc	((c:timer2_init@ps_mode)),c,(7)&7
	goto	u3451
	goto	u3450
u3451:
	clrf	(??_timer2_init+0+0)&0ffh,c
	incf	(??_timer2_init+0+0)&0ffh,c
	goto	u3468
u3450:
	clrf	(??_timer2_init+0+0)&0ffh,c
u3468:
	bcf	status,0
	rlcf	(??_timer2_init+0+0),c,w
	movwf	((c:3997)),c	;volatile
	line	160
	
l317:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
	signat	_timer2_init,4217
	global	_timer0_init

;; *************** function _timer0_init *****************
;; Defined at:
;;		line 28 in file "lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1   18[COMRAM] unsigned char 
;;  prescaler       1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	28
global __ptext2
__ptext2:
psect	text2
	file	"lib/timer.c"
	line	28
	global	__size_of_timer0_init
	__size_of_timer0_init	equ	__end_of_timer0_init-_timer0_init
	
_timer0_init:
;incstack = 0
	opt	stack 28
;timer0_init@ps_mode stored from wreg
	movwf	((c:timer0_init@ps_mode)),c
	line	29
	
l3438:
;timer.c: 29: uint8_t prescaler = ps_mode & 0b1111;
	movf	((c:timer0_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer0_init@prescaler)),c
	line	31
	
l3440:
;timer.c: 31: TMR0 = 0;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	34
	
l3442:
;timer.c: 34: T0CON |= (!!(ps_mode & 0x40)) ? 0x40 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(6)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l3446
u3380:
	
l3444:
	clrf	((c:_timer0_init$450)),c
	clrf	((c:_timer0_init$450+1)),c
	goto	l3448
	
l3446:
	movlw	high(040h)
	movwf	((c:_timer0_init$450+1)),c
	movlw	low(040h)
	movwf	((c:_timer0_init$450)),c
	
l3448:
	movf	((c:_timer0_init$450)),c,w
	iorwf	((c:4053)),c	;volatile
	line	50
	
l3450:
;timer.c: 50: T0CON |= (!!(ps_mode & 0x20)) ? 0x20 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(5)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l3454
u3390:
	
l3452:
	clrf	((c:_timer0_init$451)),c
	clrf	((c:_timer0_init$451+1)),c
	goto	l3456
	
l3454:
	movlw	high(020h)
	movwf	((c:_timer0_init$451+1)),c
	movlw	low(020h)
	movwf	((c:_timer0_init$451)),c
	
l3456:
	movf	((c:_timer0_init$451)),c,w
	iorwf	((c:4053)),c	;volatile
	line	53
	
l3458:
;timer.c: 53: T0CON |= (!!(ps_mode & 0x10)) ? 0x10 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(4)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l3462
u3400:
	
l3460:
	clrf	((c:_timer0_init$452)),c
	clrf	((c:_timer0_init$452+1)),c
	goto	l3464
	
l3462:
	movlw	high(010h)
	movwf	((c:_timer0_init$452+1)),c
	movlw	low(010h)
	movwf	((c:_timer0_init$452)),c
	
l3464:
	movf	((c:_timer0_init$452)),c,w
	iorwf	((c:4053)),c	;volatile
	line	56
	
l3466:
;timer.c: 56: T0CON &= (!!prescaler) ? ~0x08 : ~0x00;
	movf	((c:timer0_init@prescaler)),c,w
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3470
u3410:
	
l3468:
	setf	((c:_timer0_init$453)),c
	setf	((c:_timer0_init$453+1)),c
	goto	l3472
	
l3470:
	movlw	high(-9)
	movwf	((c:_timer0_init$453+1)),c
	movlw	low(-9)
	movwf	((c:_timer0_init$453)),c
	
l3472:
	movf	((c:_timer0_init$453)),c,w
	andwf	((c:4053)),c	;volatile
	line	58
	
l3474:
;timer.c: 58: T0CON &= ~0b111;
	movlw	(0F8h)&0ffh
	andwf	((c:4053)),c	;volatile
	line	60
;timer.c: 60: if(prescaler > 0) {
	movf	((c:timer0_init@prescaler)),c,w
	btfsc	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3478
u3420:
	line	61
	
l3476:
;timer.c: 61: T0CON |= (prescaler - 1) & 0b111;
	decf	((c:timer0_init@prescaler)),c,w
	andlw	low(07h)
	iorwf	((c:4053)),c	;volatile
	line	72
	
l3478:
;timer.c: 67: }
;timer.c: 72: INTCONbits.TMR0IF = 0;
	bcf	((c:4082)),c,2	;volatile
	line	73
;timer.c: 73: INTCONbits.T0IE = (ps_mode & 0x80) ? 1 : 0;
	
	btfsc	((c:timer0_init@ps_mode)),c,(7)&7
	goto	u3431
	goto	u3430
u3431:
	clrf	(??_timer0_init+0+0)&0ffh,c
	incf	(??_timer0_init+0+0)&0ffh,c
	goto	u3448
u3430:
	clrf	(??_timer0_init+0+0)&0ffh,c
u3448:
	swapf	(??_timer0_init+0+0),c
	rlncf	(??_timer0_init+0+0),c
	movf	((c:4082)),c,w	;volatile
	xorwf	(??_timer0_init+0+0),c,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_timer0_init+0+0),c,w
	movwf	((c:4082)),c	;volatile
	line	74
	
l307:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,4217
	global	_print_indicator

;; *************** function _print_indicator *****************
;; Defined at:
;;		line 464 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	464
global __ptext3
__ptext3:
psect	text3
	file	"src/print.c"
	line	464
	global	__size_of_print_indicator
	__size_of_print_indicator	equ	__end_of_print_indicator-_print_indicator
	
_print_indicator:
;incstack = 0
	opt	stack 24
;print_indicator@indicate stored from wreg
	movwf	((c:print_indicator@indicate)),c
	line	478
	
l3710:
;print.c: 478: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	479
	
l3712:
;print.c: 479: if(indicate) {
	movf	((c:print_indicator@indicate)),c,w
	btfsc	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3716
u3630:
	line	480
	
l3714:
;print.c: 480: lcd_puts("-*-");
		movlw	low(STR_20)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	481
;print.c: 481: } else {
	goto	l421
	line	482
	
l3716:
;print.c: 482: lcd_puts("   ");
		movlw	low(STR_21)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	485
	
l421:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_indicator
	__end_of_print_indicator:
	signat	_print_indicator,4217
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 218 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   83[BANK0 ] void 
;;  denominator     4   48[BANK0 ] void 
;;  numerator       4   44[BANK0 ] void 
;;  var             2   81[BANK0 ] unsigned int 
;;  unit            1   68[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      43       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      43       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___xxtofl
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"src/measure.c"
	line	218
global __ptext4
__ptext4:
psect	text4
	file	"src/measure.c"
	line	218
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:
;incstack = 0
	opt	stack 23
	line	225
	
l4782:; BSR set to: 0

;measure.c: 219: uint8_t unit;
;measure.c: 220: uint16_t var;
;measure.c: 222: double Lin, numerator, denominator;
;measure.c: 225: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	226
	
l4784:
;measure.c: 226: put_str("Inductivity ");
		movlw	low(STR_10)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	228
	
l4786:
;measure.c: 228: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_inductance@var)
	movff	1+?_measure_freq,(measure_inductance@var+1)
	line	230
;measure.c: 230: F3 = (double)var;
	movff	(measure_inductance@var),(c:___xxtofl@val)
	movff	(measure_inductance@var+1),(c:___xxtofl@val+1)
	clrf	((c:___xxtofl@val+2)),c
	clrf	((c:___xxtofl@val+3)),c

	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(_F3)
	movff	1+?___xxtofl,(_F3+1)
	movff	2+?___xxtofl,(_F3+2)
	movff	3+?___xxtofl,(_F3+3)
	
	line	231
;measure.c: 231: if(F3 > F1)
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
	goto	u5211
	goto	u5210
u5211:
	goto	l4790
u5210:
	line	232
	
l4788:
;measure.c: 232: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	233
	
l4790:
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F2),(___flsub@a)
	movff	(_F2+1),(___flsub@a+1)
	movff	(_F2+2),(___flsub@a+2)
	movff	(_F2+3),(___flsub@a+3)
	movff	(_F2),(___flsub@b)
	movff	(_F2+1),(___flsub@b+1)
	movff	(_F2+2),(___flsub@b+2)
	movff	(_F2+3),(___flsub@b+3)
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$1305)
	movff	1+?___flsub,(_measure_inductance$1305+1)
	movff	2+?___flsub,(_measure_inductance$1305+2)
	movff	3+?___flsub,(_measure_inductance$1305+3)
	
	
l4792:
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1305),(___flsub@a)
	movff	(_measure_inductance$1305+1),(___flsub@a+1)
	movff	(_measure_inductance$1305+2),(___flsub@a+2)
	movff	(_measure_inductance$1305+3),(___flsub@a+3)
	movff	(_F1),(c:___flmul@a)
	movff	(_F1+1),(c:___flmul@a+1)
	movff	(_F1+2),(c:___flmul@a+2)
	movff	(_F1+3),(c:___flmul@a+3)
	movff	(_F1),(c:___flmul@b)
	movff	(_F1+1),(c:___flmul@b+1)
	movff	(_F1+2),(c:___flmul@b+2)
	movff	(_F1+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(___flsub@b)
	movff	1+?___flmul,(___flsub@b+1)
	movff	2+?___flmul,(___flsub@b+2)
	movff	3+?___flmul,(___flsub@b+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$1306)
	movff	1+?___flsub,(_measure_inductance$1306+1)
	movff	2+?___flsub,(_measure_inductance$1306+2)
	movff	3+?___flsub,(_measure_inductance$1306+3)
	
	
l4794:
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F3),(c:___flmul@a)
	movff	(_F3+1),(c:___flmul@a+1)
	movff	(_F3+2),(c:___flmul@a+2)
	movff	(_F3+3),(c:___flmul@a+3)
	movff	(_F3),(c:___flmul@b)
	movff	(_F3+1),(c:___flmul@b+1)
	movff	(_F3+2),(c:___flmul@b+2)
	movff	(_F3+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(___flsub@a)
	movff	1+?___flmul,(___flsub@a+1)
	movff	2+?___flmul,(___flsub@a+2)
	movff	3+?___flmul,(___flsub@a+3)
	
	movff	(_F1),(c:___flmul@a)
	movff	(_F1+1),(c:___flmul@a+1)
	movff	(_F1+2),(c:___flmul@a+2)
	movff	(_F1+3),(c:___flmul@a+3)
	movff	(_F1),(c:___flmul@b)
	movff	(_F1+1),(c:___flmul@b+1)
	movff	(_F1+2),(c:___flmul@b+2)
	movff	(_F1+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(___flsub@b)
	movff	1+?___flmul,(___flsub@b+1)
	movff	2+?___flmul,(___flsub@b+2)
	movff	3+?___flmul,(___flsub@b+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$1307)
	movff	1+?___flsub,(_measure_inductance$1307+1)
	movff	2+?___flsub,(_measure_inductance$1307+2)
	movff	3+?___flsub,(_measure_inductance$1307+3)
	
	
l4796:
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1306),(c:___flmul@a)
	movff	(_measure_inductance$1306+1),(c:___flmul@a+1)
	movff	(_measure_inductance$1306+2),(c:___flmul@a+2)
	movff	(_measure_inductance$1306+3),(c:___flmul@a+3)
	movff	(_measure_inductance$1307),(c:___flmul@b)
	movff	(_measure_inductance$1307+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1307+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1307+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1308)
	movff	1+?___flmul,(_measure_inductance$1308+1)
	movff	2+?___flmul,(_measure_inductance$1308+2)
	movff	3+?___flmul,(_measure_inductance$1308+3)
	
	
l4798:; BSR set to: 0

;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1308),(c:___flmul@b)
	movff	(_measure_inductance$1308+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1308+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1308+3),(c:___flmul@b+3)
	movlw	low(normalize32(10000.000000000000))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(10000.000000000000))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(10000.000000000000))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(10000.000000000000))
	movwf	((c:___flmul@a+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@numerator)
	movff	1+?___flmul,(measure_inductance@numerator+1)
	movff	2+?___flmul,(measure_inductance@numerator+2)
	movff	3+?___flmul,(measure_inductance@numerator+3)
	
	line	234
	
l4800:; BSR set to: 0

;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F1),(c:___flmul@a)
	movff	(_F1+1),(c:___flmul@a+1)
	movff	(_F1+2),(c:___flmul@a+2)
	movff	(_F1+3),(c:___flmul@a+3)
	movff	(_F1),(c:___flmul@b)
	movff	(_F1+1),(c:___flmul@b+1)
	movff	(_F1+2),(c:___flmul@b+2)
	movff	(_F1+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1309)
	movff	1+?___flmul,(_measure_inductance$1309+1)
	movff	2+?___flmul,(_measure_inductance$1309+2)
	movff	3+?___flmul,(_measure_inductance$1309+3)
	
	
l4802:; BSR set to: 0

;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@a)
	movff	(_F2+1),(c:___flmul@a+1)
	movff	(_F2+2),(c:___flmul@a+2)
	movff	(_F2+3),(c:___flmul@a+3)
	movff	(_measure_inductance$1309),(c:___flmul@b)
	movff	(_measure_inductance$1309+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1309+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1309+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1306)
	movff	1+?___flmul,(_measure_inductance$1306+1)
	movff	2+?___flmul,(_measure_inductance$1306+2)
	movff	3+?___flmul,(_measure_inductance$1306+3)
	
	
l4804:; BSR set to: 0

;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@a)
	movff	(_F2+1),(c:___flmul@a+1)
	movff	(_F2+2),(c:___flmul@a+2)
	movff	(_F2+3),(c:___flmul@a+3)
	movff	(_measure_inductance$1306),(c:___flmul@b)
	movff	(_measure_inductance$1306+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1306+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1306+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1307)
	movff	1+?___flmul,(_measure_inductance$1307+1)
	movff	2+?___flmul,(_measure_inductance$1307+2)
	movff	3+?___flmul,(_measure_inductance$1307+3)
	
	
l4806:; BSR set to: 0

;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@a)
	movff	(_F3+1),(c:___flmul@a+1)
	movff	(_F3+2),(c:___flmul@a+2)
	movff	(_F3+3),(c:___flmul@a+3)
	movff	(_measure_inductance$1307),(c:___flmul@b)
	movff	(_measure_inductance$1307+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1307+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1307+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1308)
	movff	1+?___flmul,(_measure_inductance$1308+1)
	movff	2+?___flmul,(_measure_inductance$1308+2)
	movff	3+?___flmul,(_measure_inductance$1308+3)
	
	
l4808:; BSR set to: 0

;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@a)
	movff	(_F3+1),(c:___flmul@a+1)
	movff	(_F3+2),(c:___flmul@a+2)
	movff	(_F3+3),(c:___flmul@a+3)
	movff	(_measure_inductance$1308),(c:___flmul@b)
	movff	(_measure_inductance$1308+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1308+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1308+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1310)
	movff	1+?___flmul,(_measure_inductance$1310+1)
	movff	2+?___flmul,(_measure_inductance$1310+2)
	movff	3+?___flmul,(_measure_inductance$1310+3)
	
	
l4810:; BSR set to: 0

;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_CCal),(c:___flmul@a)
	movff	(_CCal+1),(c:___flmul@a+1)
	movff	(_CCal+2),(c:___flmul@a+2)
	movff	(_CCal+3),(c:___flmul@a+3)
	movff	(_measure_inductance$1310),(c:___flmul@b)
	movff	(_measure_inductance$1310+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1310+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1310+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1311)
	movff	1+?___flmul,(_measure_inductance$1311+1)
	movff	2+?___flmul,(_measure_inductance$1311+2)
	movff	3+?___flmul,(_measure_inductance$1311+3)
	
	
l4812:; BSR set to: 0

;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_measure_inductance$1311),(c:___flmul@b)
	movff	(_measure_inductance$1311+1),(c:___flmul@b+1)
	movff	(_measure_inductance$1311+2),(c:___flmul@b+2)
	movff	(_measure_inductance$1311+3),(c:___flmul@b+3)
	movlw	low(normalize32(39.478417604357432))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(39.478417604357432))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(39.478417604357432))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(39.478417604357432))
	movwf	((c:___flmul@a+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@denominator)
	movff	1+?___flmul,(measure_inductance@denominator+1)
	movff	2+?___flmul,(measure_inductance@denominator+2)
	movff	3+?___flmul,(measure_inductance@denominator+3)
	
	line	235
	
l4814:; BSR set to: 0

;measure.c: 235: Lin = (numerator / denominator) * 1e+15l;
	movff	(measure_inductance@denominator),(c:___fldiv@a)
	movff	(measure_inductance@denominator+1),(c:___fldiv@a+1)
	movff	(measure_inductance@denominator+2),(c:___fldiv@a+2)
	movff	(measure_inductance@denominator+3),(c:___fldiv@a+3)
	movff	(measure_inductance@numerator),(c:___fldiv@b)
	movff	(measure_inductance@numerator+1),(c:___fldiv@b+1)
	movff	(measure_inductance@numerator+2),(c:___fldiv@b+2)
	movff	(measure_inductance@numerator+3),(c:___fldiv@b+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:___flmul@b)
	movff	1+?___fldiv,(c:___flmul@b+1)
	movff	2+?___fldiv,(c:___flmul@b+2)
	movff	3+?___fldiv,(c:___flmul@b+3)
	
	movlw	low(normalize32(1000000000000000.0))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(1000000000000000.0))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(1000000000000000.0))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(1000000000000000.0))
	movwf	((c:___flmul@a+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@Lin)
	movff	1+?___flmul,(measure_inductance@Lin+1)
	movff	2+?___flmul,(measure_inductance@Lin+2)
	movff	3+?___flmul,(measure_inductance@Lin+3)
	
	line	237
;measure.c: 237: if(Lin > 999) {
	movlw	low(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5221
	goto	u5220
u5221:
	goto	l4832
u5220:
	line	238
	
l4816:
;measure.c: 238: if(Lin > (999e+03l)) {
	movlw	low(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5231
	goto	u5230
u5231:
	goto	l4828
u5230:
	line	239
	
l4818:
;measure.c: 239: if(Lin > (999e+06l)) {
	movlw	low(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5241
	goto	u5240
u5241:
	goto	l4824
u5240:
	line	240
	
l4820:
;measure.c: 240: Lin = Lin / (1e+09l);
	movff	(measure_inductance@Lin),(c:___fldiv@b)
	movff	(measure_inductance@Lin+1),(c:___fldiv@b+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@b+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@b+3)
	movlw	low(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a)),c
	movlw	high(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a+1)),c
	movlw	low highword(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a+2)),c
	movlw	high highword(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	241
	
l4822:
;measure.c: 241: unit = 0;
	movlb	0	; () banked
	clrf	((measure_inductance@unit))&0ffh
	line	242
;measure.c: 242: } else {
	goto	l4834
	line	243
	
l4824:
;measure.c: 243: Lin = Lin / (1e+06l);
	movff	(measure_inductance@Lin),(c:___fldiv@b)
	movff	(measure_inductance@Lin+1),(c:___fldiv@b+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@b+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@b+3)
	movlw	low(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a)),c
	movlw	high(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a+1)),c
	movlw	low highword(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a+2)),c
	movlw	high highword(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	244
	
l4826:
;measure.c: 244: unit = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4834
	line	247
	
l4828:
;measure.c: 247: Lin = Lin / 1e+03l;
	movff	(measure_inductance@Lin),(c:___fldiv@b)
	movff	(measure_inductance@Lin+1),(c:___fldiv@b+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@b+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@b+3)
	movlw	low(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a)),c
	movlw	high(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a+1)),c
	movlw	low highword(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a+2)),c
	movlw	high highword(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	248
	
l4830:
;measure.c: 248: unit = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4834
	line	251
	
l4832:
;measure.c: 251: unit = 3;
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	line	253
	
l4834:; BSR set to: 0

;measure.c: 253: Lin = Lin * 100;
	movff	(measure_inductance@Lin),(c:___flmul@b)
	movff	(measure_inductance@Lin+1),(c:___flmul@b+1)
	movff	(measure_inductance@Lin+2),(c:___flmul@b+2)
	movff	(measure_inductance@Lin+3),(c:___flmul@b+3)
	movlw	low(normalize32(100.00000000000000))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(100.00000000000000))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(100.00000000000000))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(100.00000000000000))
	movwf	((c:___flmul@a+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@Lin)
	movff	1+?___flmul,(measure_inductance@Lin+1)
	movff	2+?___flmul,(measure_inductance@Lin+2)
	movff	3+?___flmul,(measure_inductance@Lin+3)
	
	line	254
	
l4836:; BSR set to: 0

;measure.c: 254: var = (uint16_t)Lin;
	movff	(measure_inductance@Lin),(___fltol@f1)
	movff	(measure_inductance@Lin+1),(___fltol@f1+1)
	movff	(measure_inductance@Lin+2),(___fltol@f1+2)
	movff	(measure_inductance@Lin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_inductance@var)
	movff	1+?___fltol,(measure_inductance@var+1)
	line	256
	
l4838:; BSR set to: 0

;measure.c: 256: print_reading(var);
	movff	(measure_inductance@var),(c:print_reading@measurement)
	movff	(measure_inductance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	257
	
l4840:
;measure.c: 257: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_inductance@unit))&0ffh,w
	
	call	_print_unit
	line	258
	
l389:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,89
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 131 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   59[BANK0 ] void 
;;  var             2   57[BANK0 ] unsigned int 
;;  unit            1   56[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      19       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___xxtofl
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	131
global __ptext5
__ptext5:
psect	text5
	file	"src/measure.c"
	line	131
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:
;incstack = 0
	opt	stack 23
	line	139
	
l4744:; BSR set to: 0

;measure.c: 132: uint8_t unit;
;measure.c: 133: uint16_t var;
;measure.c: 135: double Cin;
;measure.c: 139: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	140
	
l4746:
;measure.c: 140: put_str("Capacity ");
		movlw	low(STR_9)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	142
	
l4748:
;measure.c: 142: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_capacitance@var)
	movff	1+?_measure_freq,(measure_capacitance@var+1)
	line	144
;measure.c: 144: F3 = (double)var;
	movff	(measure_capacitance@var),(c:___xxtofl@val)
	movff	(measure_capacitance@var+1),(c:___xxtofl@val+1)
	clrf	((c:___xxtofl@val+2)),c
	clrf	((c:___xxtofl@val+3)),c

	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(_F3)
	movff	1+?___xxtofl,(_F3+1)
	movff	2+?___xxtofl,(_F3+2)
	movff	3+?___xxtofl,(_F3+3)
	
	line	178
;measure.c: 178: if(F3 > F1)
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
	goto	u5171
	goto	u5170
u5171:
	goto	l4752
u5170:
	line	179
	
l4750:
;measure.c: 179: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	181
	
l4752:
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F3),(c:___flmul@a)
	movff	(_F3+1),(c:___flmul@a+1)
	movff	(_F3+2),(c:___flmul@a+2)
	movff	(_F3+3),(c:___flmul@a+3)
	movff	(_F3),(c:___flmul@b)
	movff	(_F3+1),(c:___flmul@b+1)
	movff	(_F3+2),(c:___flmul@b+2)
	movff	(_F3+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(___flsub@a)
	movff	1+?___flmul,(___flsub@a+1)
	movff	2+?___flmul,(___flsub@a+2)
	movff	3+?___flmul,(___flsub@a+3)
	
	movff	(_F1),(c:___flmul@a)
	movff	(_F1+1),(c:___flmul@a+1)
	movff	(_F1+2),(c:___flmul@a+2)
	movff	(_F1+3),(c:___flmul@a+3)
	movff	(_F1),(c:___flmul@b)
	movff	(_F1+1),(c:___flmul@b+1)
	movff	(_F1+2),(c:___flmul@b+2)
	movff	(_F1+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(___flsub@b)
	movff	1+?___flmul,(___flsub@b+1)
	movff	2+?___flmul,(___flsub@b+2)
	movff	3+?___flmul,(___flsub@b+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_capacitance$1302)
	movff	1+?___flsub,(_measure_capacitance$1302+1)
	movff	2+?___flsub,(_measure_capacitance$1302+2)
	movff	3+?___flsub,(_measure_capacitance$1302+3)
	
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@a)
	movff	(_F2+1),(c:___flmul@a+1)
	movff	(_F2+2),(c:___flmul@a+2)
	movff	(_F2+3),(c:___flmul@a+3)
	movff	(_measure_capacitance$1302),(c:___flmul@b)
	movff	(_measure_capacitance$1302+1),(c:___flmul@b+1)
	movff	(_measure_capacitance$1302+2),(c:___flmul@b+2)
	movff	(_measure_capacitance$1302+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1303)
	movff	1+?___flmul,(_measure_capacitance$1303+1)
	movff	2+?___flmul,(_measure_capacitance$1303+2)
	movff	3+?___flmul,(_measure_capacitance$1303+3)
	
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@a)
	movff	(_F2+1),(c:___flmul@a+1)
	movff	(_F2+2),(c:___flmul@a+2)
	movff	(_F2+3),(c:___flmul@a+3)
	movff	(_measure_capacitance$1303),(c:___flmul@b)
	movff	(_measure_capacitance$1303+1),(c:___flmul@b+1)
	movff	(_measure_capacitance$1303+2),(c:___flmul@b+2)
	movff	(_measure_capacitance$1303+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1304)
	movff	1+?___flmul,(_measure_capacitance$1304+1)
	movff	2+?___flmul,(_measure_capacitance$1304+2)
	movff	3+?___flmul,(_measure_capacitance$1304+3)
	
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_measure_capacitance$1304),(c:___flmul@b)
	movff	(_measure_capacitance$1304+1),(c:___flmul@b+1)
	movff	(_measure_capacitance$1304+2),(c:___flmul@b+2)
	movff	(_measure_capacitance$1304+3),(c:___flmul@b+3)
	movff	(_CCal),(c:___flmul@a)
	movff	(_CCal+1),(c:___flmul@a+1)
	movff	(_CCal+2),(c:___flmul@a+2)
	movff	(_CCal+3),(c:___flmul@a+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_capacitance@Cin)
	movff	1+?___flmul,(measure_capacitance@Cin+1)
	movff	2+?___flmul,(measure_capacitance@Cin+2)
	movff	3+?___flmul,(measure_capacitance@Cin+3)
	
	line	191
	
l4754:; BSR set to: 0

;measure.c: 191: if(Cin > 999) {
	movlw	low(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(999.00000000000000))
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5181
	goto	u5180
u5181:
	goto	l4772
u5180:
	line	192
	
l4756:
;measure.c: 192: if(Cin > (999e+03l)) {
	movlw	low(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(999000.00000000000))
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5191
	goto	u5190
u5191:
	goto	l4768
u5190:
	line	193
	
l4758:
;measure.c: 193: if(Cin > (999e+06l)) {
	movlw	low(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(999000000.00000000))
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5201
	goto	u5200
u5201:
	goto	l4764
u5200:
	line	194
	
l4760:
;measure.c: 194: Cin = Cin / (1e+09);
	movff	(measure_capacitance@Cin),(c:___fldiv@b)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@b+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@b+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@b+3)
	movlw	low(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a)),c
	movlw	high(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a+1)),c
	movlw	low highword(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a+2)),c
	movlw	high highword(normalize32(1000000000.0000000))
	movwf	((c:___fldiv@a+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	195
	
l4762:
;measure.c: 195: unit = 4;
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	196
;measure.c: 196: } else {
	goto	l4774
	line	197
	
l4764:
;measure.c: 197: Cin = Cin / (1e+06);
	movff	(measure_capacitance@Cin),(c:___fldiv@b)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@b+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@b+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@b+3)
	movlw	low(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a)),c
	movlw	high(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a+1)),c
	movlw	low highword(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a+2)),c
	movlw	high highword(normalize32(1000000.0000000000))
	movwf	((c:___fldiv@a+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	198
	
l4766:
;measure.c: 198: unit = 5;
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l4774
	line	201
	
l4768:
;measure.c: 201: Cin = Cin / 1e+03;
	movff	(measure_capacitance@Cin),(c:___fldiv@b)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@b+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@b+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@b+3)
	movlw	low(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a)),c
	movlw	high(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a+1)),c
	movlw	low highword(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a+2)),c
	movlw	high highword(normalize32(1000.0000000000000))
	movwf	((c:___fldiv@a+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	202
	
l4770:
;measure.c: 202: unit = 6;
	movlw	low(06h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l4774
	line	205
	
l4772:
;measure.c: 205: unit = 7;
	movlw	low(07h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	207
	
l4774:; BSR set to: 0

;measure.c: 207: Cin = Cin * 100;
	movff	(measure_capacitance@Cin),(c:___flmul@b)
	movff	(measure_capacitance@Cin+1),(c:___flmul@b+1)
	movff	(measure_capacitance@Cin+2),(c:___flmul@b+2)
	movff	(measure_capacitance@Cin+3),(c:___flmul@b+3)
	movlw	low(normalize32(100.00000000000000))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(100.00000000000000))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(100.00000000000000))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(100.00000000000000))
	movwf	((c:___flmul@a+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_capacitance@Cin)
	movff	1+?___flmul,(measure_capacitance@Cin+1)
	movff	2+?___flmul,(measure_capacitance@Cin+2)
	movff	3+?___flmul,(measure_capacitance@Cin+3)
	
	line	208
	
l4776:; BSR set to: 0

;measure.c: 208: var = (uint16_t)Cin;
	movff	(measure_capacitance@Cin),(___fltol@f1)
	movff	(measure_capacitance@Cin+1),(___fltol@f1+1)
	movff	(measure_capacitance@Cin+2),(___fltol@f1+2)
	movff	(measure_capacitance@Cin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_capacitance@var)
	movff	1+?___fltol,(measure_capacitance@var+1)
	line	210
	
l4778:; BSR set to: 0

;measure.c: 210: print_reading(var);
	movff	(measure_capacitance@var),(c:print_reading@measurement)
	movff	(measure_capacitance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	211
	
l4780:
;measure.c: 211: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_capacitance@unit))&0ffh,w
	
	call	_print_unit
	line	212
	
l379:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
	signat	_measure_capacitance,89
	global	_print_unit

;; *************** function _print_unit *****************
;; Defined at:
;;		line 401 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_gotoxy
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	401
global __ptext6
__ptext6:
psect	text6
	file	"src/print.c"
	line	401
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:
;incstack = 0
	opt	stack 23
	line	410
	
l3436:; BSR set to: 0

;print.c: 409: static const char* units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
;print.c: 410: lcd_gotoxy(14, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Eh)&0ffh
	
	call	_lcd_gotoxy
	line	414
;print.c: 414: lcd_gotoxy(16 - (buffer.n - buffer.p), 0);
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
	line	421
	
l413:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4217
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 424 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2   58[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
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
psect	text7,class=CODE,space=0,reloc=2,group=0
	line	424
global __ptext7
__ptext7:
psect	text7
	file	"src/print.c"
	line	424
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:
;incstack = 0
	opt	stack 23
	line	451
	
l4668:; BSR set to: 0

;print.c: 451: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	452
	
l4670:
;print.c: 452: lcd_puts("     ");
		movlw	low(STR_19)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	453
	
l4672:
;print.c: 453: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	455
	
l4674:
;print.c: 455: format_number(measurement / 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwdiv@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:_print_reading$1312)
	movff	1+?___lwdiv,(c:_print_reading$1312+1)
	
l4676:
;print.c: 455: format_number(measurement / 100, 10, 0);
	movff	(c:_print_reading$1312),(c:format_number@n)
	movff	(c:_print_reading$1312+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	457
	
l4678:
;print.c: 457: format_number(measurement % 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwmod@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwmod@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:_print_reading$1313)
	movff	1+?___lwmod,(c:_print_reading$1313+1)
	
l4680:
;print.c: 457: format_number(measurement % 100, 10, 0);
	movff	(c:_print_reading$1313),(c:format_number@n)
	movff	(c:_print_reading$1313+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	460
	
l416:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_reading
	__end_of_print_reading:
	signat	_print_reading,4217
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 163 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          1   12[COMRAM] PTR const unsigned char 
;;		 -> STR_21(4), STR_20(4), STR_19(6), STR_5(5), 
;;		 -> STR_4(6), STR_3(7), STR_2(7), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  i               1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_main
;;		_print_reading
;;		_print_indicator
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	163
global __ptext8
__ptext8:
psect	text8
	file	"lib/lcd44780.c"
	line	163
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:
;incstack = 0
	opt	stack 24
	line	165
	
l3190:
;lcd44780.c: 164: uint8_t i;
;lcd44780.c: 165: for(i = 0; string[i]; i++) lcd_putch(string[i]);
	clrf	((c:lcd_puts@i)),c
	goto	l3196
	
l3192:
	movf	((c:lcd_puts@string)),c,w
	addwf	((c:lcd_puts@i)),c,w
	movwf	(??_lcd_puts+0+0)&0ffh,c
	movff	(??_lcd_puts+0+0),tblptrl
	if	0	;There is only one active tblptr byte
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	
	call	_lcd_putch
	
l3194:
	incf	((c:lcd_puts@i)),c
	
l3196:
	movf	((c:lcd_puts@string)),c,w
	addwf	((c:lcd_puts@i)),c,w
	movwf	(??_lcd_puts+0+0)&0ffh,c
	movff	(??_lcd_puts+0+0),tblptrl
	if	0	;There is only one active tblptr byte
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3192
u3130:
	line	166
	
l213:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4217
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 489 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	line	489
global __ptext9
__ptext9:
psect	text9
	file	"lib/lcd44780.c"
	line	489
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:
;incstack = 0
	opt	stack 28
;lcd_init@fourbitmode stored from wreg
	movwf	((c:lcd_init@fourbitmode)),c
	line	491
	
l3490:
;lcd44780.c: 491: LCD_ctrl = 0;
	clrf	((c:_LCD_ctrl)),c
	line	492
	
l3492:
;lcd44780.c: 492: LCD_function = (fourbitmode ? 0x00 : 0x10);
	movf	((c:lcd_init@fourbitmode)),c,w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l266
u3470:
	
l3494:
	movlw	high(010h)
	movwf	((c:_lcd_init$361+1)),c
	movlw	low(010h)
	movwf	((c:_lcd_init$361)),c
	goto	l268
	
l266:
	clrf	((c:_lcd_init$361)),c
	clrf	((c:_lcd_init$361+1)),c
	
l268:
	movff	(c:_lcd_init$361),(c:_LCD_function)
	line	494
;lcd44780.c: 494: LCD_lines = 0;
	clrf	((c:_LCD_lines)),c
	line	496
;lcd44780.c: 496: LCD_mode = 0;
	clrf	((c:_LCD_mode)),c
	line	498
	
l3496:
;lcd44780.c: 498: TRISB &= ~0b0100;
	bcf	(0+(2/8)+(c:3987)),c,(2)&7	;volatile
	line	499
;lcd44780.c: 499: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	504
;lcd44780.c: 504: TRISB &= ~0b1000;
	bcf	(0+(3/8)+(c:3987)),c,(3)&7	;volatile
	line	505
;lcd44780.c: 505: LATB &= ~0b1000;
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	line	507
	
l3498:
;lcd44780.c: 507: LATB &= ~0b11110000;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	517
	
l269:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,4217
	global	_lcd_begin

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 416 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;;		_lcd_write4bits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	416
global __ptext10
__ptext10:
psect	text10
	file	"lib/lcd44780.c"
	line	416
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:
;incstack = 0
	opt	stack 25
;lcd_begin@lines stored from wreg
	movwf	((c:lcd_begin@lines)),c
	line	417
	
l3500:
;lcd44780.c: 417: if(lines > 1)
		movlw	02h-1
	cpfsgt	((c:lcd_begin@lines)),c
	goto	u3481
	goto	u3480

u3481:
	goto	l3504
u3480:
	line	418
	
l3502:
;lcd44780.c: 418: LCD_function |= 0x08;
	bsf	(0+(3/8)+(c:_LCD_function)),c,(3)&7
	line	421
	
l3504:
;lcd44780.c: 421: LCD_lines = lines;
	movff	(c:lcd_begin@lines),(c:_LCD_lines)
	line	425
	
l3506:
;lcd44780.c: 425: if((dotsize != 0) && (lines == 1))
	movf	((c:lcd_begin@dotsize)),c,w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3512
u3490:
	
l3508:
		decf	((c:lcd_begin@lines)),c,w
	btfss	status,2
	goto	u3501
	goto	u3500

u3501:
	goto	l3512
u3500:
	line	426
	
l3510:
;lcd44780.c: 426: LCD_function |= 0x04;
	bsf	(0+(2/8)+(c:_LCD_function)),c,(2)&7
	line	428
	
l3512:
;lcd44780.c: 428: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	74
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	24
u5307:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5307
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u5307
	nop2
opt asmopt_pop

	line	431
	
l3514:
;lcd44780.c: 431: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	432
	
l3516:
;lcd44780.c: 432: LATB &= ~0b1000;
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	line	435
	
l3518:
;lcd44780.c: 435: if(!(LCD_function & 0x10)) {
	
	btfsc	((c:_LCD_function)),c,(4)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l3530
u3510:
	line	439
	
l3520:
;lcd44780.c: 439: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	440
	
l3522:
;lcd44780.c: 440: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	25
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	93
u5317:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5317
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u5317
opt asmopt_pop

	line	442
	
l3524:
;lcd44780.c: 442: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	443
;lcd44780.c: 443: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	187
u5327:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5327
	nop2
opt asmopt_pop

	line	445
	
l3526:
;lcd44780.c: 445: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	446
	
l3528:
;lcd44780.c: 446: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	187
u5337:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5337
	nop2
opt asmopt_pop

	line	448
;lcd44780.c: 448: lcd_write4bits(0x02);
	movlw	(02h)&0ffh
	
	call	_lcd_write4bits
	line	449
;lcd44780.c: 449: }
	goto	l3538
	line	455
	
l3530:
;lcd44780.c: 451: else {
;lcd44780.c: 455: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	456
	
l3532:
;lcd44780.c: 456: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	25
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	93
u5347:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5347
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u5347
opt asmopt_pop

	line	459
	
l3534:
;lcd44780.c: 459: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	460
;lcd44780.c: 460: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	25
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	93
u5357:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5357
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u5357
opt asmopt_pop

	line	464
	
l3536:
;lcd44780.c: 464: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	468
	
l3538:
;lcd44780.c: 465: }
;lcd44780.c: 468: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	471
	
l3540:
;lcd44780.c: 471: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	low(04h)
	movwf	((c:_LCD_ctrl)),c
	line	472
	
l3542:
;lcd44780.c: 472: lcd_command(0x08 | LCD_ctrl);
	movf	((c:_LCD_ctrl)),c,w
	iorlw	low(08h)
	
	call	_lcd_command
	line	475
	
l3544:
;lcd44780.c: 475: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	476
	
l3546:
;lcd44780.c: 476: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	10
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	190
u5367:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5367
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u5367
	nop2
opt asmopt_pop

	line	479
;lcd44780.c: 479: LCD_mode = 0x02 | 0x00;
	movlw	low(02h)
	movwf	((c:_LCD_mode)),c
	line	481
	
l3548:
;lcd44780.c: 481: lcd_command(0x04 | LCD_mode);
	movf	((c:_LCD_mode)),c,w
	iorlw	low(04h)
	
	call	_lcd_command
	line	482
	
l262:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
	signat	_lcd_begin,8313
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 81 in file "lib/format.c"
;; Parameters:    Size  Location     Type
;;  num             4   86[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;  weight          4    8[BANK1 ] void 
;;  m               2   14[BANK1 ] short 
;;  digit           2   12[BANK1 ] short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       0      16       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       4      16       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___xxtofl
;;		_buffer_putch
;;		_floor
;;		_log10
;;		_pow
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"lib/format.c"
	line	81
global __ptext11
__ptext11:
psect	text11
	file	"lib/format.c"
	line	81
	global	__size_of_format_double
	__size_of_format_double	equ	__end_of_format_double-_format_double
	
_format_double:
;incstack = 0
	opt	stack 24
	line	82
	
l4682:
;format.c: 82: short m = (short)log10(num);
	movff	(format_double@num),(log10@x)
	movff	(format_double@num+1),(log10@x+1)
	movff	(format_double@num+2),(log10@x+2)
	movff	(format_double@num+3),(log10@x+3)
	call	_log10	;wreg free
	movff	0+?_log10,(___fltol@f1)
	movff	1+?_log10,(___fltol@f1+1)
	movff	2+?_log10,(___fltol@f1+2)
	movff	3+?_log10,(___fltol@f1+3)
	
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@m)
	movff	1+?___fltol,(format_double@m+1)
	line	86
;format.c: 83: short digit;
;format.c: 86: while(num > 0 + (1.19209290e-07)) {
	goto	l4702
	line	87
	
l4684:
;format.c: 87: double weight = pow(10.0l, m);
	movff	(format_double@m),(c:___xxtofl@val)
	movff	(format_double@m+1),(c:___xxtofl@val+1)
	movlw	0
	btfsc	((c:___xxtofl@val+1)),c,7
	movlw	-1
	movwf	((c:___xxtofl@val+2)),c
	movwf	((c:___xxtofl@val+3)),c
	movlw	(01h)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(_format_double$1300)
	movff	1+?___xxtofl,(_format_double$1300+1)
	movff	2+?___xxtofl,(_format_double$1300+2)
	movff	3+?___xxtofl,(_format_double$1300+3)
	
	
l4686:
;format.c: 87: double weight = pow(10.0l, m);
	movlw	low(normalize32(10.000000000000000))
	movlb	0	; () banked
	movwf	((pow@x))&0ffh
	movlw	high(normalize32(10.000000000000000))
	movwf	((pow@x+1))&0ffh
	movlw	low highword(normalize32(10.000000000000000))
	movwf	((pow@x+2))&0ffh
	movlw	high highword(normalize32(10.000000000000000))
	movwf	((pow@x+3))&0ffh
	movff	(_format_double$1300),(pow@y)
	movff	(_format_double$1300+1),(pow@y+1)
	movff	(_format_double$1300+2),(pow@y+2)
	movff	(_format_double$1300+3),(pow@y+3)
	call	_pow	;wreg free
	movff	0+?_pow,(format_double@weight)
	movff	1+?_pow,(format_double@weight+1)
	movff	2+?_pow,(format_double@weight+2)
	movff	3+?_pow,(format_double@weight+3)
	
	line	88
	
l4688:; BSR set to: 0

;format.c: 88: digit = (short)floor(num / weight);
	movff	(format_double@weight),(c:___fldiv@a)
	movff	(format_double@weight+1),(c:___fldiv@a+1)
	movff	(format_double@weight+2),(c:___fldiv@a+2)
	movff	(format_double@weight+3),(c:___fldiv@a+3)
	movff	(format_double@num),(c:___fldiv@b)
	movff	(format_double@num+1),(c:___fldiv@b+1)
	movff	(format_double@num+2),(c:___fldiv@b+2)
	movff	(format_double@num+3),(c:___fldiv@b+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(floor@x)
	movff	1+?___fldiv,(floor@x+1)
	movff	2+?___fldiv,(floor@x+2)
	movff	3+?___fldiv,(floor@x+3)
	
	call	_floor	;wreg free
	movff	0+?_floor,(_format_double$1301)
	movff	1+?_floor,(_format_double$1301+1)
	movff	2+?_floor,(_format_double$1301+2)
	movff	3+?_floor,(_format_double$1301+3)
	
	
l4690:
;format.c: 88: digit = (short)floor(num / weight);
	movff	(_format_double$1301),(___fltol@f1)
	movff	(_format_double$1301+1),(___fltol@f1+1)
	movff	(_format_double$1301+2),(___fltol@f1+2)
	movff	(_format_double$1301+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@digit)
	movff	1+?___fltol,(format_double@digit+1)
	line	89
	
l4692:; BSR set to: 0

;format.c: 89: num -= (digit * weight);
	movff	(format_double@num),(___flsub@b)
	movff	(format_double@num+1),(___flsub@b+1)
	movff	(format_double@num+2),(___flsub@b+2)
	movff	(format_double@num+3),(___flsub@b+3)
	movff	(format_double@weight),(c:___flmul@a)
	movff	(format_double@weight+1),(c:___flmul@a+1)
	movff	(format_double@weight+2),(c:___flmul@a+2)
	movff	(format_double@weight+3),(c:___flmul@a+3)
	movff	(format_double@digit),(c:___xxtofl@val)
	movff	(format_double@digit+1),(c:___xxtofl@val+1)
	movlw	0
	btfsc	((c:___xxtofl@val+1)),c,7
	movlw	-1
	movwf	((c:___xxtofl@val+2)),c
	movwf	((c:___xxtofl@val+3)),c
	movlw	(01h)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(c:___flmul@b)
	movff	1+?___xxtofl,(c:___flmul@b+1)
	movff	2+?___xxtofl,(c:___flmul@b+2)
	movff	3+?___xxtofl,(c:___flmul@b+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(___flsub@a)
	movff	1+?___flmul,(___flsub@a+1)
	movff	2+?___flmul,(___flsub@a+2)
	movff	3+?___flmul,(___flsub@a+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(format_double@num)
	movff	1+?___flsub,(format_double@num+1)
	movff	2+?___flsub,(format_double@num+2)
	movff	3+?___flsub,(format_double@num+3)
	
	line	90
	
l4694:
;format.c: 90: buffer_putch((char)('0' + digit));
	movlb	1	; () banked
	movf	((format_double@digit))&0ffh,w
	addlw	low(030h)
	
	call	_buffer_putch
	line	91
	
l4696:; BSR set to: 1

;format.c: 91: if(m == 0)
	movf	((format_double@m))&0ffh,w
iorwf	((format_double@m+1))&0ffh,w
	btfss	status,2
	goto	u5141
	goto	u5140

u5141:
	goto	l4700
u5140:
	line	92
	
l4698:; BSR set to: 1

;format.c: 92: buffer_putch('.');
	movlw	(02Eh)&0ffh
	
	call	_buffer_putch
	line	93
	
l4700:; BSR set to: 1

;format.c: 93: m--;
	decf	((format_double@m))&0ffh
	btfss	status,0
	decf	((format_double@m+1))&0ffh
	line	86
	
l4702:
	movlw	low(normalize32(1.1920929000000001e-07))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(1.1920929000000001e-07))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(1.1920929000000001e-07))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(1.1920929000000001e-07))
	movwf	((c:___flge@ff1+3)),c
	movff	(format_double@num),(c:___flge@ff2)
	movff	(format_double@num+1),(c:___flge@ff2+1)
	movff	(format_double@num+2),(c:___flge@ff2+2)
	movff	(format_double@num+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfss	status,0
	goto	u5151
	goto	u5150
u5151:
	goto	l4684
u5150:
	line	95
	
l174:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_double
	__end_of_format_double:
	signat	_format_double,4217
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v1.45/sources/common/pow.c"
;; Parameters:    Size  Location     Type
;;  x               4   65[BANK0 ] void 
;;  y               4   69[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;  yi              4   82[BANK0 ] unsigned long 
;;  sign            1   81[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   65[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
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
;;		___xxtofl
;;		_exp
;;		_log
;; This function is called by:
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/pow.c"
	line	5
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.45/sources/common/pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 24
	line	7
	
l4588:; BSR set to: 0

	clrf	((pow@sign))&0ffh
	line	10
	
l4590:; BSR set to: 0

	movf	((pow@x))&0ffh,w
iorwf	((pow@x+1))&0ffh,w
iorwf	((pow@x+2))&0ffh,w
iorwf	((pow@x+3))&0ffh,w
	btfss	status,2
	goto	u5091
	goto	u5090

u5091:
	goto	l4594
u5090:
	line	11
	
l4592:; BSR set to: 0

	movlw	low(normalize32(0.0000000000000000))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(0.0000000000000000))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(0.0000000000000000))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(0.0000000000000000))
	movwf	((c:___flge@ff1+3)),c
	movff	(pow@y),(c:___flge@ff2)
	movff	(pow@y+1),(c:___flge@ff2+1)
	movff	(pow@y+2),(c:___flge@ff2+2)
	movff	(pow@y+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	line	13
	
l909:
	line	14
	movlb	0	; () banked
	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l910
	line	16
	
l4594:; BSR set to: 0

	movf	((pow@y))&0ffh,w
iorwf	((pow@y+1))&0ffh,w
iorwf	((pow@y+2))&0ffh,w
iorwf	((pow@y+3))&0ffh,w
	btfss	status,2
	goto	u5101
	goto	u5100

u5101:
	goto	l4600
u5100:
	line	17
	
l4596:; BSR set to: 0

	movlw	low(normalize32(1.0000000000000000))
	movwf	((?_pow))&0ffh
	movlw	high(normalize32(1.0000000000000000))
	movwf	((?_pow+1))&0ffh
	movlw	low highword(normalize32(1.0000000000000000))
	movwf	((?_pow+2))&0ffh
	movlw	high highword(normalize32(1.0000000000000000))
	movwf	((?_pow+3))&0ffh
	goto	l910
	line	18
	
l4600:; BSR set to: 0

	btfsc	((pow@x+3))&0ffh,7
	goto	u5110
	goto	u5111

u5111:
	goto	l4610
u5110:
	line	19
	
l4602:; BSR set to: 0

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
	movff	(pow@yi),(c:___xxtofl@val)
	movff	(pow@yi+1),(c:___xxtofl@val+1)
	movff	(pow@yi+2),(c:___xxtofl@val+2)
	movff	(pow@yi+3),(c:___xxtofl@val+3)
	movlw	(0)&0ffh
	
	call	___xxtofl
	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
xorwf	(0+?___xxtofl),c,w
	bnz	u5120
movf	((pow@y+1))&0ffh,w
xorwf	(1+?___xxtofl),c,w
	bnz	u5120
movf	((pow@y+2))&0ffh,w
xorwf	(2+?___xxtofl),c,w
	bnz	u5120
movf	((pow@y+3))&0ffh,w
xorwf	(3+?___xxtofl),c,w
	btfsc	status,2
	goto	u5121
	goto	u5120

u5121:
	goto	l4606
u5120:
	line	22
	
l4604:; BSR set to: 0

	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l910
	line	24
	
l4606:; BSR set to: 0

	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movwf	((pow@sign))&0ffh
	line	25
	
l4608:; BSR set to: 0

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
	
l4610:; BSR set to: 0

	movff	(pow@x),(log@x)
	movff	(pow@x+1),(log@x+1)
	movff	(pow@x+2),(log@x+2)
	movff	(pow@x+3),(log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_pow$1315)
	movff	1+?_log,(_pow$1315+1)
	movff	2+?_log,(_pow$1315+2)
	movff	3+?_log,(_pow$1315+3)
	
	
l4612:
	movff	(_pow$1315),(c:___flmul@b)
	movff	(_pow$1315+1),(c:___flmul@b+1)
	movff	(_pow$1315+2),(c:___flmul@b+2)
	movff	(_pow$1315+3),(c:___flmul@b+3)
	movff	(pow@y),(c:___flmul@a)
	movff	(pow@y+1),(c:___flmul@a+1)
	movff	(pow@y+2),(c:___flmul@a+2)
	movff	(pow@y+3),(c:___flmul@a+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pow$1316)
	movff	1+?___flmul,(_pow$1316+1)
	movff	2+?___flmul,(_pow$1316+2)
	movff	3+?___flmul,(_pow$1316+3)
	
	
l4614:; BSR set to: 0

	movff	(_pow$1316),(exp@x)
	movff	(_pow$1316+1),(exp@x+1)
	movff	(_pow$1316+2),(exp@x+2)
	movff	(_pow$1316+3),(exp@x+3)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	movff	3+?_exp,(pow@x+3)
	
	line	28
	
l4616:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	btfsc	status,2
	goto	u5131
	goto	u5130
u5131:
	goto	l914
u5130:
	line	29
	
l4618:; BSR set to: 0

	movff	(pow@x),(c:___flneg@f1)
	movff	(pow@x+1),(c:___flneg@f1+1)
	movff	(pow@x+2),(c:___flneg@f1+2)
	movff	(pow@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(?_pow)
	movff	1+?___flneg,(?_pow+1)
	movff	2+?___flneg,(?_pow+2)
	movff	3+?___flneg,(?_pow+3)
	
	goto	l910
	
l914:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	movff	(pow@x+3),(?_pow+3)
	line	31
	
l910:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8316
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "/opt/microchip/xc8/v1.45/sources/common/exp.c"
;; Parameters:    Size  Location     Type
;;  x               4   54[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   62[BANK0 ] int 
;;  sign            1   64[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   54[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      11       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
;;		___xxtofl
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/exp.c"
	line	12
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v1.45/sources/common/exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	31
	
l4540:; BSR set to: 0

	movf	((exp@x))&0ffh,w
iorwf	((exp@x+1))&0ffh,w
iorwf	((exp@x+2))&0ffh,w
iorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u5011
	goto	u5010

u5011:
	goto	l4546
u5010:
	line	32
	
l4542:; BSR set to: 0

	movlw	low(normalize32(1.0000000000000000))
	movwf	((?_exp))&0ffh
	movlw	high(normalize32(1.0000000000000000))
	movwf	((?_exp+1))&0ffh
	movlw	low highword(normalize32(1.0000000000000000))
	movwf	((?_exp+2))&0ffh
	movlw	high highword(normalize32(1.0000000000000000))
	movwf	((?_exp+3))&0ffh
	goto	l1075
	line	34
	
l4546:; BSR set to: 0

	movlw	low(normalize32(709.78271289338397))
	movwf	((c:___flge@ff1)),c
	movlw	high(normalize32(709.78271289338397))
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(normalize32(709.78271289338397))
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(normalize32(709.78271289338397))
	movwf	((c:___flge@ff1+3)),c
	movff	(exp@x),(c:___flge@ff2)
	movff	(exp@x+1),(c:___flge@ff2+1)
	movff	(exp@x+2),(c:___flge@ff2+2)
	movff	(exp@x+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5021
	goto	u5020
u5021:
	goto	l4552
u5020:
	line	36
	
l4548:
	movlw	low(normalize32(3.4028234699999998e+38))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(normalize32(3.4028234699999998e+38))
	movwf	((?_exp+1))&0ffh
	movlw	low highword(normalize32(3.4028234699999998e+38))
	movwf	((?_exp+2))&0ffh
	movlw	high highword(normalize32(3.4028234699999998e+38))
	movwf	((?_exp+3))&0ffh
	goto	l1075
	line	38
	
l4552:
	movff	(exp@x),(c:___flge@ff1)
	movff	(exp@x+1),(c:___flge@ff1+1)
	movff	(exp@x+2),(c:___flge@ff1+2)
	movff	(exp@x+3),(c:___flge@ff1+3)
	movlw	low(normalize32(-745.13321910194111))
	movwf	((c:___flge@ff2)),c
	movlw	high(normalize32(-745.13321910194111))
	movwf	((c:___flge@ff2+1)),c
	movlw	low highword(normalize32(-745.13321910194111))
	movwf	((c:___flge@ff2+2)),c
	movlw	high highword(normalize32(-745.13321910194111))
	movwf	((c:___flge@ff2+3)),c
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5031
	goto	u5030
u5031:
	goto	l4556
u5030:
	line	40
	
l4554:
	movlb	0	; () banked
	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1075
	line	43
	
l4556:
	movlb	0	; () banked
	btfsc	((exp@x+3))&0ffh,7
	goto	u5041
	goto	u5040

u5041:
	movlw	1
	goto	u5050
u5040:
	movlw	0
u5050:
	movwf	((exp@sign))&0ffh
	line	44
	
l4558:; BSR set to: 0

	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u5061
	goto	u5060
u5061:
	goto	l4562
u5060:
	line	45
	
l4560:; BSR set to: 0

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
	
l4562:; BSR set to: 0

	movff	(exp@x),(c:___flmul@b)
	movff	(exp@x+1),(c:___flmul@b+1)
	movff	(exp@x+2),(c:___flmul@b+2)
	movff	(exp@x+3),(c:___flmul@b+3)
	movlw	low(normalize32(1.4426950408999999))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(1.4426950408999999))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(1.4426950408999999))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(1.4426950408999999))
	movwf	((c:___flmul@a+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(exp@x)
	movff	1+?___flmul,(exp@x+1)
	movff	2+?___flmul,(exp@x+2)
	movff	3+?___flmul,(exp@x+3)
	
	line	47
	
l4564:; BSR set to: 0

	movff	(exp@x),(floor@x)
	movff	(exp@x+1),(floor@x+1)
	movff	(exp@x+2),(floor@x+2)
	movff	(exp@x+3),(floor@x+3)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$1317)
	movff	1+?_floor,(_exp$1317+1)
	movff	2+?_floor,(_exp$1317+2)
	movff	3+?_floor,(_exp$1317+3)
	
	
l4566:
	movff	(_exp$1317),(___fltol@f1)
	movff	(_exp$1317+1),(___fltol@f1+1)
	movff	(_exp$1317+2),(___fltol@f1+2)
	movff	(_exp$1317+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(exp@exponent)
	movff	1+?___fltol,(exp@exponent+1)
	line	48
	
l4568:; BSR set to: 0

	movff	(exp@x),(___flsub@b)
	movff	(exp@x+1),(___flsub@b+1)
	movff	(exp@x+2),(___flsub@b+2)
	movff	(exp@x+3),(___flsub@b+3)
	movff	(exp@exponent),(c:___xxtofl@val)
	movff	(exp@exponent+1),(c:___xxtofl@val+1)
	movlw	0
	btfsc	((c:___xxtofl@val+1)),c,7
	movlw	-1
	movwf	((c:___xxtofl@val+2)),c
	movwf	((c:___xxtofl@val+3)),c
	movlw	(01h)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(___flsub@a)
	movff	1+?___xxtofl,(___flsub@a+1)
	movff	2+?___xxtofl,(___flsub@a+2)
	movff	3+?___xxtofl,(___flsub@a+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(exp@x)
	movff	1+?___flsub,(exp@x+1)
	movff	2+?___flsub,(exp@x+2)
	movff	3+?___flsub,(exp@x+3)
	
	line	49
	
l4570:
	movff	(exp@x),(eval_poly@x)
	movff	(exp@x+1),(eval_poly@x+1)
	movff	(exp@x+2),(eval_poly@x+2)
	movff	(exp@x+3),(eval_poly@x+3)
		movlw	low(exp@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh

	movlw	high(09h)
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(09h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(ldexp@value)
	movff	1+?_eval_poly,(ldexp@value+1)
	movff	2+?_eval_poly,(ldexp@value+2)
	movff	3+?_eval_poly,(ldexp@value+3)
	
	movff	(exp@exponent),(ldexp@newexp)
	movff	(exp@exponent+1),(ldexp@newexp+1)
	call	_ldexp	;wreg free
	movff	0+?_ldexp,(exp@x)
	movff	1+?_ldexp,(exp@x+1)
	movff	2+?_ldexp,(exp@x+2)
	movff	3+?_ldexp,(exp@x+3)
	
	line	50
	
l4572:; BSR set to: 0

	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l1079
u5070:
	line	52
	
l4574:; BSR set to: 0

		incf	((exp@x))&0ffh,w
	bnz	u5081
	incf	((exp@x+1))&0ffh,w
	bnz	u5081
	movlw	127
	xorwf	((exp@x+2))&0ffh,w
	bnz	u5081
	movlw	127
	xorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u5081
	goto	u5080

u5081:
	goto	l4578
u5080:
	line	53
	
l4576:; BSR set to: 0

	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1075
	line	54
	
l4578:; BSR set to: 0

	movlw	low(normalize32(1.0000000000000000))
	movwf	((c:___fldiv@b)),c
	movlw	high(normalize32(1.0000000000000000))
	movwf	((c:___fldiv@b+1)),c
	movlw	low highword(normalize32(1.0000000000000000))
	movwf	((c:___fldiv@b+2)),c
	movlw	high highword(normalize32(1.0000000000000000))
	movwf	((c:___fldiv@b+3)),c
	movff	(exp@x),(c:___fldiv@a)
	movff	(exp@x+1),(c:___fldiv@a+1)
	movff	(exp@x+2),(c:___fldiv@a+2)
	movff	(exp@x+3),(c:___fldiv@a+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(?_exp)
	movff	1+?___fldiv,(?_exp+1)
	movff	2+?___fldiv,(?_exp+2)
	movff	3+?___fldiv,(?_exp+3)
	
	goto	l1075
	line	55
	
l1079:; BSR set to: 0

	line	56
	movff	(exp@x),(?_exp)
	movff	(exp@x+1),(?_exp+1)
	movff	(exp@x+2),(?_exp+2)
	movff	(exp@x+3),(?_exp+3)
	line	57
	
l1075:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4220
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "/opt/microchip/xc8/v1.45/sources/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4   20[BANK0 ] unsigned char 
;;  newexp          2   24[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   20[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	277
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 25
	line	279
	
l4438:; BSR set to: 0

	movf	((ldexp@value))&0ffh,w
iorwf	((ldexp@value+1))&0ffh,w
iorwf	((ldexp@value+2))&0ffh,w
iorwf	((ldexp@value+3))&0ffh,w
	btfss	status,2
	goto	u4871
	goto	u4870

u4871:
	goto	l4442
u4870:
	line	280
	
l4440:; BSR set to: 0

	clrf	((?_ldexp))&0ffh
	clrf	((?_ldexp+1))&0ffh
	clrf	((?_ldexp+2))&0ffh
	clrf	((?_ldexp+3))&0ffh

	goto	l693
	line	282
	
l4442:; BSR set to: 0

	movf	(0+(ldexp@value+03h))&0ffh,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0+0)&0ffh
	clrf	(??_ldexp+0+0+1)&0ffh

	bcf	status,0
	rlcf	(??_ldexp+0+0)&0ffh,f
	rlcf	(??_ldexp+0+1)&0ffh,f
	movf	(??_ldexp+0+0)&0ffh,w
	addwf	((ldexp@newexp))&0ffh
	movf	(??_ldexp+0+1)&0ffh,w
	addwfc	((ldexp@newexp+1))&0ffh

	line	283
	btfsc	(0+(ldexp@value+02h))&0ffh,7
	goto	u4881
	goto	u4880
u4881:
	movlw	1
	goto	u4886
u4880:
	movlw	0
u4886:
	addwf	((ldexp@newexp))&0ffh
	movlw	0
	addwfc	((ldexp@newexp+1))&0ffh
	line	287
	btfsc	((ldexp@newexp+1))&0ffh,7
	goto	u4890
	goto	u4891

u4891:
	goto	l4448
u4890:
	line	289
	
l4444:; BSR set to: 0

	clrf	((?_ldexp))&0ffh
	clrf	((?_ldexp+1))&0ffh
	clrf	((?_ldexp+2))&0ffh
	clrf	((?_ldexp+3))&0ffh

	goto	l693
	line	291
	
l4448:; BSR set to: 0

	btfsc	((ldexp@newexp+1))&0ffh,7
	goto	u4901
	decf	((ldexp@newexp+1))&0ffh,w
	btfss	status,0
	goto	u4901
	goto	u4900

u4901:
	goto	l4462
u4900:
	line	293
	
l4450:; BSR set to: 0

	btfsc	((ldexp@value+3))&0ffh,7
	goto	u4910
	goto	u4911

u4911:
	goto	l4458
u4910:
	line	294
	
l4452:; BSR set to: 0

	movlw	low(normalize32(-3.4028234699999998e+38))
	movwf	((?_ldexp))&0ffh
	movlw	high(normalize32(-3.4028234699999998e+38))
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(normalize32(-3.4028234699999998e+38))
	movwf	((?_ldexp+2))&0ffh
	movlw	high highword(normalize32(-3.4028234699999998e+38))
	movwf	((?_ldexp+3))&0ffh
	goto	l693
	line	296
	
l4458:; BSR set to: 0

	movlw	low(normalize32(3.4028234699999998e+38))
	movwf	((?_ldexp))&0ffh
	movlw	high(normalize32(3.4028234699999998e+38))
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(normalize32(3.4028234699999998e+38))
	movwf	((?_ldexp+2))&0ffh
	movlw	high highword(normalize32(3.4028234699999998e+38))
	movwf	((?_ldexp+3))&0ffh
	goto	l693
	line	300
	
l4462:; BSR set to: 0

	rlcf	((ldexp@newexp+1))&0ffh,w
	rrcf	((ldexp@newexp+1))&0ffh,w
	movwf	(??_ldexp+0+0+1)&0ffh
	rrcf	((ldexp@newexp))&0ffh,w
	movwf	(??_ldexp+0+0)&0ffh
	movf	(0+(ldexp@value+03h))&0ffh,w
	xorwf	(??_ldexp+0+0)&0ffh,w
	andlw	not ((1<<7)-1)
	xorwf	(??_ldexp+0+0)&0ffh,w
	movwf	(0+(ldexp@value+03h))&0ffh
	line	301
	movff	(ldexp@newexp),??_ldexp+0+0
	movlw	01h
	andwf	(??_ldexp+0+0)&0ffh
	rrcf	(??_ldexp+0+0)&0ffh
	rrcf	(??_ldexp+0+0)&0ffh
	movf	(0+(ldexp@value+02h))&0ffh,w
	xorwf	(??_ldexp+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0+0)&0ffh,w
	movwf	(0+(ldexp@value+02h))&0ffh
	line	306
	
l4464:; BSR set to: 0

	movff	(ldexp@value),(?_ldexp)
	movff	(ldexp@value+1),(?_ldexp+1)
	movff	(ldexp@value+2),(?_ldexp+2)
	movff	(ldexp@value+3),(?_ldexp+3)
	line	307
	
l693:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8316
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "/opt/microchip/xc8/v1.45/sources/common/floor.c"
;; Parameters:    Size  Location     Type
;;  x               4   44[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               4   48[BANK0 ] int 
;;  expon           2   52[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   44[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___fladd
;;		___flge
;;		___fltol
;;		___xxtofl
;;		_frexp
;; This function is called by:
;;		_format_double
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/floor.c"
	line	13
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.45/sources/common/floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	18
	
l4284:
	movff	(floor@x),(c:frexp@value)
	movff	(floor@x+1),(c:frexp@value+1)
	movff	(floor@x+2),(c:frexp@value+2)
	movff	(floor@x+3),(c:frexp@value+3)
		movlw	low(floor@expon)
	movwf	((c:frexp@eptr)),c

	call	_frexp	;wreg free
	line	19
	
l4286:
	movlb	0	; () banked
	btfsc	((floor@expon+1))&0ffh,7
	goto	u4590
	goto	u4591

u4591:
	goto	l4294
u4590:
	line	20
	
l4288:; BSR set to: 0

	btfsc	((floor@x+3))&0ffh,7
	goto	u4600
	goto	u4601

u4601:
	goto	l666
u4600:
	line	21
	
l4290:; BSR set to: 0

	movlw	low(normalize32(-1.0000000000000000))
	movwf	((?_floor))&0ffh
	movlw	high(normalize32(-1.0000000000000000))
	movwf	((?_floor+1))&0ffh
	movlw	low highword(normalize32(-1.0000000000000000))
	movwf	((?_floor+2))&0ffh
	movlw	high highword(normalize32(-1.0000000000000000))
	movwf	((?_floor+3))&0ffh
	goto	l667
	
l666:; BSR set to: 0

	line	22
	clrf	((?_floor))&0ffh
	clrf	((?_floor+1))&0ffh
	clrf	((?_floor+2))&0ffh
	clrf	((?_floor+3))&0ffh

	goto	l667
	line	24
	
l4294:; BSR set to: 0

		movf	((floor@expon+1))&0ffh,w
	bnz	u4610
	movlw	29
	subwf	 ((floor@expon))&0ffh,w
	btfss	status,0
	goto	u4611
	goto	u4610

u4611:
	goto	l4298
u4610:
	line	25
	
l4296:; BSR set to: 0

	movff	(floor@x),(?_floor)
	movff	(floor@x+1),(?_floor+1)
	movff	(floor@x+2),(?_floor+2)
	movff	(floor@x+3),(?_floor+3)
	goto	l667
	line	26
	
l4298:; BSR set to: 0

	movff	(floor@x),(___fltol@f1)
	movff	(floor@x+1),(___fltol@f1+1)
	movff	(floor@x+2),(___fltol@f1+2)
	movff	(floor@x+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(c:___xxtofl@val)
	movff	1+?___fltol,(c:___xxtofl@val+1)
	movff	2+?___fltol,(c:___xxtofl@val+2)
	movff	3+?___fltol,(c:___xxtofl@val+3)
	
	movlw	(01h)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(floor@i)
	movff	1+?___xxtofl,(floor@i+1)
	movff	2+?___xxtofl,(floor@i+2)
	movff	3+?___xxtofl,(floor@i+3)
	
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
	goto	u4621
	goto	u4620
u4621:
	goto	l669
u4620:
	line	28
	
l4300:
	movff	(floor@i),(c:___fladd@b)
	movff	(floor@i+1),(c:___fladd@b+1)
	movff	(floor@i+2),(c:___fladd@b+2)
	movff	(floor@i+3),(c:___fladd@b+3)
	movlw	low(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a)),c
	movlw	high(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a+1)),c
	movlw	low highword(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a+2)),c
	movlw	high highword(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a+3)),c
	call	___fladd	;wreg free
	movff	0+?___fladd,(?_floor)
	movff	1+?___fladd,(?_floor+1)
	movff	2+?___fladd,(?_floor+2)
	movff	3+?___fladd,(?_floor+3)
	
	goto	l667
	
l669:
	line	29
	movff	(floor@i),(?_floor)
	movff	(floor@i+1),(?_floor+1)
	movff	(floor@i+2),(?_floor+2)
	movff	(floor@i+3),(?_floor+3)
	line	30
	
l667:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4220
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "/opt/microchip/xc8/v1.45/sources/common/fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4   34[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK0 ] unsigned char 
;;  sign1           1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   34[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
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
psect	text16,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/fltol.c"
	line	43
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.45/sources/common/fltol.c"
	line	43
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:
;incstack = 0
	opt	stack 27
	line	47
	
l4196:
	movlb	0	; () banked
	rlcf	((___fltol@f1+2))&0ffh,w
	rlcf	((___fltol@f1+3))&0ffh,w
	movwf	((___fltol@exp1))&0ffh
	movf	((___fltol@exp1))&0ffh,w
	btfss	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l4200
u4410:
	line	48
	
l4198:; BSR set to: 0

	clrf	((?___fltol))&0ffh
	clrf	((?___fltol+1))&0ffh
	clrf	((?___fltol+2))&0ffh
	clrf	((?___fltol+3))&0ffh

	goto	l673
	line	49
	
l4200:; BSR set to: 0

	movff	(___fltol@f1),??___fltol+0+0
	movff	(___fltol@f1+1),??___fltol+0+0+1
	movff	(___fltol@f1+2),??___fltol+0+0+2
	movff	(___fltol@f1+3),??___fltol+0+0+3
	movlw	01Fh+1
	goto	u4420
u4425:
	bcf	status,0
	rrcf	(??___fltol+0+3)&0ffh
	rrcf	(??___fltol+0+2)&0ffh
	rrcf	(??___fltol+0+1)&0ffh
	rrcf	(??___fltol+0+0)&0ffh
u4420:
	decfsz	wreg
	goto	u4425
	movf	(??___fltol+0+0)&0ffh,w
	movwf	((___fltol@sign1))&0ffh
	line	50
	
l4202:; BSR set to: 0

	bsf	(0+(23/8)+(___fltol@f1))&0ffh,(23)&7
	line	51
	
l4204:; BSR set to: 0

	movlw	0FFh
	andwf	((___fltol@f1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+2))&0ffh
	movlw	0
	andwf	((___fltol@f1+3))&0ffh
	line	52
	
l4206:; BSR set to: 0

	movlw	(096h)&0ffh
	subwf	((___fltol@exp1))&0ffh
	line	53
	
l4208:; BSR set to: 0

	btfsc	((___fltol@exp1))&0ffh,7
	goto	u4430
	goto	u4431

u4431:
	goto	l4218
u4430:
	line	54
	
l4210:; BSR set to: 0

		movf	((___fltol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u4441
	goto	u4440

u4441:
	goto	l4214
u4440:
	goto	l4198
	line	57
	
l4214:; BSR set to: 0

	bcf	status,0
	rrcf	((___fltol@f1+3))&0ffh
	rrcf	((___fltol@f1+2))&0ffh
	rrcf	((___fltol@f1+1))&0ffh
	rrcf	((___fltol@f1))&0ffh
	line	58
	
l4216:; BSR set to: 0

	incfsz	((___fltol@exp1))&0ffh
	
	goto	l4214
	goto	l4226
	line	60
	
l4218:; BSR set to: 0

		movlw	020h-1
	cpfsgt	((___fltol@exp1))&0ffh
	goto	u4451
	goto	u4450

u4451:
	goto	l4224
u4450:
	goto	l4198
	line	63
	
l4222:; BSR set to: 0

	bcf	status,0
	rlcf	((___fltol@f1))&0ffh
	rlcf	((___fltol@f1+1))&0ffh
	rlcf	((___fltol@f1+2))&0ffh
	rlcf	((___fltol@f1+3))&0ffh
	line	64
	decf	((___fltol@exp1))&0ffh
	line	62
	
l4224:; BSR set to: 0

	movf	((___fltol@exp1))&0ffh,w
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l4222
u4460:
	line	67
	
l4226:; BSR set to: 0

	movf	((___fltol@sign1))&0ffh,w
	btfsc	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l4230
u4470:
	line	68
	
l4228:; BSR set to: 0

	comf	((___fltol@f1+3))&0ffh
	comf	((___fltol@f1+2))&0ffh
	comf	((___fltol@f1+1))&0ffh
	negf	((___fltol@f1))&0ffh
	movlw	0
	addwfc	((___fltol@f1+1))&0ffh
	addwfc	((___fltol@f1+2))&0ffh
	addwfc	((___fltol@f1+3))&0ffh
	line	69
	
l4230:; BSR set to: 0

	movff	(___fltol@f1),(?___fltol)
	movff	(___fltol@f1+1),(?___fltol+1)
	movff	(___fltol@f1+2),(?___fltol+2)
	movff	(___fltol@f1+3),(?___fltol+3)
	line	70
	
l673:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.45/sources/common/flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    8[COMRAM] long 
;;  ff2             4   12[COMRAM] long 
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
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
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
psect	text17,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/flge.c"
	line	4
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v1.45/sources/common/flge.c"
	line	4
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	7
	
l4156:
	movlw	0
	andwf	((c:___flge@ff1)),c,w
	movwf	(??___flge+0+0)&0ffh,c
	movlw	0
	andwf	((c:___flge@ff1+1)),c,w
	movwf	1+(??___flge+0+0)&0ffh,c
	
	movlw	080h
	andwf	((c:___flge@ff1+2)),c,w
	movwf	2+(??___flge+0+0)&0ffh,c
	
	movlw	07Fh
	andwf	((c:___flge@ff1+3)),c,w
	movwf	3+(??___flge+0+0)&0ffh,c
	movf	(??___flge+0+0),c,w
iorwf	(??___flge+0+1),c,w
iorwf	(??___flge+0+2),c,w
iorwf	(??___flge+0+3),c,w
	btfss	status,2
	goto	u4341
	goto	u4340

u4341:
	goto	l4160
u4340:
	line	8
	
l4158:
	clrf	((c:___flge@ff1)),c
	clrf	((c:___flge@ff1+1)),c
	clrf	((c:___flge@ff1+2)),c
	clrf	((c:___flge@ff1+3)),c

	line	9
	
l4160:
	movlw	0
	andwf	((c:___flge@ff2)),c,w
	movwf	(??___flge+0+0)&0ffh,c
	movlw	0
	andwf	((c:___flge@ff2+1)),c,w
	movwf	1+(??___flge+0+0)&0ffh,c
	
	movlw	080h
	andwf	((c:___flge@ff2+2)),c,w
	movwf	2+(??___flge+0+0)&0ffh,c
	
	movlw	07Fh
	andwf	((c:___flge@ff2+3)),c,w
	movwf	3+(??___flge+0+0)&0ffh,c
	movf	(??___flge+0+0),c,w
iorwf	(??___flge+0+1),c,w
iorwf	(??___flge+0+2),c,w
iorwf	(??___flge+0+3),c,w
	btfss	status,2
	goto	u4351
	goto	u4350

u4351:
	goto	l634
u4350:
	line	10
	
l4162:
	clrf	((c:___flge@ff2)),c
	clrf	((c:___flge@ff2+1)),c
	clrf	((c:___flge@ff2+2)),c
	clrf	((c:___flge@ff2+3)),c

	
l634:
	line	12
	
	btfss	((c:___flge@ff1+3)),c,(31)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l4166
u4360:
	line	13
	
l4164:
	negf	((c:___flge@ff1)),c
	comf	((c:___flge@ff1+1)),c
	btfsc	status,0
	incf	((c:___flge@ff1+1)),c
	comf	((c:___flge@ff1+2)),c
	btfsc	status,0
	incf	((c:___flge@ff1+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff1+3)),c
	line	14
	
l4166:
	
	btfss	((c:___flge@ff2+3)),c,(31)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l636
u4370:
	line	15
	
l4168:
	negf	((c:___flge@ff2)),c
	comf	((c:___flge@ff2+1)),c
	btfsc	status,0
	incf	((c:___flge@ff2+1)),c
	comf	((c:___flge@ff2+2)),c
	btfsc	status,0
	incf	((c:___flge@ff2+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff2+3)),c
	
l636:
	line	16
	movlw	0
	xorwf	((c:___flge@ff1)),c
	movlw	0
	xorwf	((c:___flge@ff1+1)),c
	movlw	0
	xorwf	((c:___flge@ff1+2)),c
	movlw	080h
	xorwf	((c:___flge@ff1+3)),c
	line	17
	movlw	0
	xorwf	((c:___flge@ff2)),c
	movlw	0
	xorwf	((c:___flge@ff2+1)),c
	movlw	0
	xorwf	((c:___flge@ff2+2)),c
	movlw	080h
	xorwf	((c:___flge@ff2+3)),c
	line	18
		movf	((c:___flge@ff2)),c,w
	subwf	((c:___flge@ff1)),c,w
	movf	((c:___flge@ff2+1)),c,w
	subwfb	((c:___flge@ff1+1)),c,w
	movf	((c:___flge@ff2+2)),c,w
	subwfb	((c:___flge@ff1+2)),c,w
	movf	((c:___flge@ff2+3)),c,w
	subwfb	((c:___flge@ff1+3)),c,w
	btfsc	status,0
	goto	u4381
	goto	u4380

u4381:
	goto	l4172
u4380:
	
l4170:
	bcf	status,0
	goto	l637
	
l4172:
	bsf	status,0
	line	19
	
l637:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 245 in file "/opt/microchip/xc8/v1.45/sources/common/sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   13[BANK0 ] long 
;;  a               4   17[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       8       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
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
psect	text18,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcadd.c"
	line	245
global __ptext18
__ptext18:
psect	text18
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcadd.c"
	line	245
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:
;incstack = 0
	opt	stack 26
	line	248
	
l4424:
	movlw	0
	movlb	0	; () banked
	xorwf	((___flsub@a))&0ffh
	movlw	0
	xorwf	((___flsub@a+1))&0ffh
	movlw	0
	xorwf	((___flsub@a+2))&0ffh
	movlw	080h
	xorwf	((___flsub@a+3))&0ffh
	line	249
	
l4426:; BSR set to: 0

	movff	(___flsub@b),(c:___fladd@b)
	movff	(___flsub@b+1),(c:___fladd@b+1)
	movff	(___flsub@b+2),(c:___fladd@b+2)
	movff	(___flsub@b+3),(c:___fladd@b+3)
	movff	(___flsub@a),(c:___fladd@a)
	movff	(___flsub@a+1),(c:___fladd@a+1)
	movff	(___flsub@a+2),(c:___fladd@a+2)
	movff	(___flsub@a+3),(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(?___flsub)
	movff	1+?___fladd,(?___flsub+1)
	movff	2+?___fladd,(?___flsub+2)
	movff	3+?___fladd,(?___flsub+3)
	
	line	250
	
l971:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.45/sources/common/flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    8[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    8[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/flneg.c"
	line	15
global __ptext19
__ptext19:
psect	text19
	file	"/opt/microchip/xc8/v1.45/sources/common/flneg.c"
	line	15
	global	__size_of___flneg
	__size_of___flneg	equ	__end_of___flneg-___flneg
	
___flneg:
;incstack = 0
	opt	stack 25
	line	17
	
l4430:; BSR set to: 0

	movf	((c:___flneg@f1)),c,w
iorwf	((c:___flneg@f1+1)),c,w
iorwf	((c:___flneg@f1+2)),c,w
iorwf	((c:___flneg@f1+3)),c,w
	btfsc	status,2
	goto	u4861
	goto	u4860

u4861:
	goto	l4434
u4860:
	line	18
	
l4432:; BSR set to: 0

	movlw	0
	xorwf	((c:___flneg@f1)),c
	movlw	0
	xorwf	((c:___flneg@f1+1)),c
	movlw	0
	xorwf	((c:___flneg@f1+2)),c
	movlw	080h
	xorwf	((c:___flneg@f1+3)),c
	line	19
	
l4434:; BSR set to: 0

	movff	(c:___flneg@f1),(c:?___flneg)
	movff	(c:___flneg@f1+1),(c:?___flneg+1)
	movff	(c:___flneg@f1+2),(c:?___flneg+2)
	movff	(c:___flneg@f1+3),(c:?___flneg+3)
	line	20
	
l641:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 11 in file "/opt/microchip/xc8/v1.45/sources/common/sprcdiv.c"
;; Parameters:    Size  Location     Type
;;  b               4    8[COMRAM] long 
;;  a               4   12[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  grs             4   27[COMRAM] unsigned long 
;;  rem             4   21[COMRAM] unsigned long 
;;  new_exp         2   25[COMRAM] int 
;;  aexp            1   32[COMRAM] unsigned char 
;;  bexp            1   31[COMRAM] unsigned char 
;;  sign            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcdiv.c"
	line	11
global __ptext20
__ptext20:
psect	text20
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcdiv.c"
	line	11
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	26
	
l4304:
	movf	(0+((c:___fldiv@b)+03h)),c,w
	andlw	low(080h)
	movwf	((c:___fldiv@sign)),c
	line	27
	movf	(0+((c:___fldiv@b)+03h)),c,w
	addwf	(0+((c:___fldiv@b)+03h)),c,w
	movwf	((c:___fldiv@bexp)),c
	line	28
	
l4306:
	
	btfss	(0+((c:___fldiv@b)+02h)),c,(7)&7
	goto	u4631
	goto	u4630
u4631:
	goto	l4310
u4630:
	line	29
	
l4308:
	bsf	(0+(0/8)+(c:___fldiv@bexp)),c,(0)&7
	line	33
	
l4310:
	movf	((c:___fldiv@bexp)),c,w
	btfsc	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l975
u4640:
	line	35
	
l4312:
		incf	((c:___fldiv@bexp)),c,w
	btfss	status,2
	goto	u4651
	goto	u4650

u4651:
	goto	l4316
u4650:
	line	37
	
l4314:
	clrf	((c:___fldiv@b)),c
	clrf	((c:___fldiv@b+1)),c
	clrf	((c:___fldiv@b+2)),c
	clrf	((c:___fldiv@b+3)),c

	line	40
	
l4316:
	bsf	(0+(23/8)+(c:___fldiv@b)),c,(23)&7
	line	42
	
l4318:
	clrf	(0+((c:___fldiv@b)+03h)),c
	line	43
	goto	l4320
	line	44
	
l975:
	line	46
	clrf	((c:___fldiv@b)),c
	clrf	((c:___fldiv@b+1)),c
	clrf	((c:___fldiv@b+2)),c
	clrf	((c:___fldiv@b+3)),c

	line	49
	
l4320:
	movf	(0+((c:___fldiv@a)+03h)),c,w
	andlw	low(080h)
	xorwf	((c:___fldiv@sign)),c
	line	50
	movf	(0+((c:___fldiv@a)+03h)),c,w
	addwf	(0+((c:___fldiv@a)+03h)),c,w
	movwf	((c:___fldiv@aexp)),c
	line	51
	
l4322:
	
	btfss	(0+((c:___fldiv@a)+02h)),c,(7)&7
	goto	u4661
	goto	u4660
u4661:
	goto	l4326
u4660:
	line	52
	
l4324:
	bsf	(0+(0/8)+(c:___fldiv@aexp)),c,(0)&7
	line	56
	
l4326:
	movf	((c:___fldiv@aexp)),c,w
	btfsc	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l979
u4670:
	line	58
	
l4328:
		incf	((c:___fldiv@aexp)),c,w
	btfss	status,2
	goto	u4681
	goto	u4680

u4681:
	goto	l4332
u4680:
	line	60
	
l4330:
	clrf	((c:___fldiv@a)),c
	clrf	((c:___fldiv@a+1)),c
	clrf	((c:___fldiv@a+2)),c
	clrf	((c:___fldiv@a+3)),c

	line	63
	
l4332:
	bsf	(0+(23/8)+(c:___fldiv@a)),c,(23)&7
	line	65
	
l4334:
	clrf	(0+((c:___fldiv@a)+03h)),c
	line	66
	goto	l4336
	line	67
	
l979:
	line	69
	clrf	((c:___fldiv@a)),c
	clrf	((c:___fldiv@a+1)),c
	clrf	((c:___fldiv@a+2)),c
	clrf	((c:___fldiv@a+3)),c

	line	75
	
l4336:
	movf	((c:___fldiv@a)),c,w
iorwf	((c:___fldiv@a+1)),c,w
iorwf	((c:___fldiv@a+2)),c,w
iorwf	((c:___fldiv@a+3)),c,w
	btfss	status,2
	goto	u4691
	goto	u4690

u4691:
	goto	l4346
u4690:
	line	76
	
l4338:
	clrf	((c:___fldiv@b)),c
	clrf	((c:___fldiv@b+1)),c
	clrf	((c:___fldiv@b+2)),c
	clrf	((c:___fldiv@b+3)),c

	line	77
	
l4340:
	movlw	low(07F80h)
	iorwf	(0+((c:___fldiv@b)+02h)),c
	movlw	high(07F80h)
	iorwf	(1+((c:___fldiv@b)+02h)),c
	line	78
	
l4342:
	movff	(c:___fldiv@b),(c:?___fldiv)
	movff	(c:___fldiv@b+1),(c:?___fldiv+1)
	movff	(c:___fldiv@b+2),(c:?___fldiv+2)
	movff	(c:___fldiv@b+3),(c:?___fldiv+3)
	goto	l983
	line	82
	
l4346:
	movf	((c:___fldiv@bexp)),c,w
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l4350
u4700:
	line	83
	
l4348:
	line	84
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l983
	line	88
	
l4350:
	movf	((c:___fldiv@aexp)),c,w
	movff	(c:___fldiv@bexp),??___fldiv+0+0
	clrf	(??___fldiv+0+0+1)&0ffh,c
	subwf	(??___fldiv+0+0),c
	movlw	0
	subwfb	(??___fldiv+0+1),c
	movlw	low(07Fh)
	addwf	(??___fldiv+0+0),c,w
	movwf	((c:___fldiv@new_exp)),c
	movlw	high(07Fh)
	addwfc	(??___fldiv+0+1),c,w
	movwf	1+((c:___fldiv@new_exp)),c
	line	91
	
l4352:
	movff	(c:___fldiv@b),(c:___fldiv@rem)
	movff	(c:___fldiv@b+1),(c:___fldiv@rem+1)
	movff	(c:___fldiv@b+2),(c:___fldiv@rem+2)
	movff	(c:___fldiv@b+3),(c:___fldiv@rem+3)
	line	92
	
l4354:
	clrf	((c:___fldiv@b)),c
	clrf	((c:___fldiv@b+1)),c
	clrf	((c:___fldiv@b+2)),c
	clrf	((c:___fldiv@b+3)),c

	line	93
	
l4356:
	clrf	((c:___fldiv@grs)),c
	clrf	((c:___fldiv@grs+1)),c
	clrf	((c:___fldiv@grs+2)),c
	clrf	((c:___fldiv@grs+3)),c

	line	95
	
l4358:
	clrf	((c:___fldiv@aexp)),c
	line	96
	goto	l985
	line	99
	
l4360:
	movf	((c:___fldiv@aexp)),c,w
	btfsc	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l4368
u4710:
	line	100
	
l4362:
	bcf	status,0
	rlcf	((c:___fldiv@rem)),c
	rlcf	((c:___fldiv@rem+1)),c
	rlcf	((c:___fldiv@rem+2)),c
	rlcf	((c:___fldiv@rem+3)),c
	line	101
	bcf	status,0
	rlcf	((c:___fldiv@b)),c
	rlcf	((c:___fldiv@b+1)),c
	rlcf	((c:___fldiv@b+2)),c
	rlcf	((c:___fldiv@b+3)),c
	line	102
	
l4364:
	
	btfss	((c:___fldiv@grs+3)),c,(31)&7
	goto	u4721
	goto	u4720
u4721:
	goto	l988
u4720:
	line	103
	
l4366:
	bsf	(0+(0/8)+(c:___fldiv@b)),c,(0)&7
	line	104
	
l988:
	line	105
	bcf	status,0
	rlcf	((c:___fldiv@grs)),c
	rlcf	((c:___fldiv@grs+1)),c
	rlcf	((c:___fldiv@grs+2)),c
	rlcf	((c:___fldiv@grs+3)),c
	line	111
	
l4368:
		movf	((c:___fldiv@a)),c,w
	subwf	((c:___fldiv@rem)),c,w
	movf	((c:___fldiv@a+1)),c,w
	subwfb	((c:___fldiv@rem+1)),c,w
	movf	((c:___fldiv@a+2)),c,w
	subwfb	((c:___fldiv@rem+2)),c,w
	movf	((c:___fldiv@a+3)),c,w
	subwfb	((c:___fldiv@rem+3)),c,w
	btfss	status,0
	goto	u4731
	goto	u4730

u4731:
	goto	l4374
u4730:
	line	114
	
l4370:
	bsf	(0+(30/8)+(c:___fldiv@grs)),c,(30)&7
	line	115
	
l4372:
	movf	((c:___fldiv@a)),c,w
	subwf	((c:___fldiv@rem)),c
	movf	((c:___fldiv@a+1)),c,w
	subwfb	((c:___fldiv@rem+1)),c
	movf	((c:___fldiv@a+2)),c,w
	subwfb	((c:___fldiv@rem+2)),c
	movf	((c:___fldiv@a+3)),c,w
	subwfb	((c:___fldiv@rem+3)),c
	line	117
	
l4374:
	incf	((c:___fldiv@aexp)),c
	line	118
	
l985:
	line	96
		movlw	01Ah-1
	cpfsgt	((c:___fldiv@aexp)),c
	goto	u4741
	goto	u4740

u4741:
	goto	l4360
u4740:
	line	121
	
l4376:
	movf	((c:___fldiv@rem)),c,w
iorwf	((c:___fldiv@rem+1)),c,w
iorwf	((c:___fldiv@rem+2)),c,w
iorwf	((c:___fldiv@rem+3)),c,w
	btfsc	status,2
	goto	u4751
	goto	u4750

u4751:
	goto	l4386
u4750:
	line	122
	
l4378:
	bsf	(0+(0/8)+(c:___fldiv@grs)),c,(0)&7
	goto	l4386
	line	127
	
l4380:
	bcf	status,0
	rlcf	((c:___fldiv@b)),c
	rlcf	((c:___fldiv@b+1)),c
	rlcf	((c:___fldiv@b+2)),c
	rlcf	((c:___fldiv@b+3)),c
	line	128
	
l4382:
	
	btfss	((c:___fldiv@grs+3)),c,(31)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l994
u4760:
	line	129
	
l4384:
	bsf	(0+(0/8)+(c:___fldiv@b)),c,(0)&7
	line	130
	
l994:
	line	131
	bcf	status,0
	rlcf	((c:___fldiv@grs)),c
	rlcf	((c:___fldiv@grs+1)),c
	rlcf	((c:___fldiv@grs+2)),c
	rlcf	((c:___fldiv@grs+3)),c
	line	132
	decf	((c:___fldiv@new_exp)),c
	btfss	status,0
	decf	((c:___fldiv@new_exp+1)),c
	line	126
	
l4386:
	
	btfss	((c:___fldiv@b+2)),c,(23)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l4380
u4770:
	
l995:
	line	138
	clrf	((c:___fldiv@aexp)),c
	line	139
	
	btfss	((c:___fldiv@grs+3)),c,(31)&7
	goto	u4781
	goto	u4780
u4781:
	goto	l996
u4780:
	line	140
	
l4388:
	movlw	0FFh
	andwf	((c:___fldiv@grs)),c,w
	movwf	(??___fldiv+0+0)&0ffh,c
	movlw	0FFh
	andwf	((c:___fldiv@grs+1)),c,w
	movwf	1+(??___fldiv+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___fldiv@grs+2)),c,w
	movwf	2+(??___fldiv+0+0)&0ffh,c
	
	movlw	07Fh
	andwf	((c:___fldiv@grs+3)),c,w
	movwf	3+(??___fldiv+0+0)&0ffh,c
	movf	(??___fldiv+0+0),c,w
iorwf	(??___fldiv+0+1),c,w
iorwf	(??___fldiv+0+2),c,w
iorwf	(??___fldiv+0+3),c,w
	btfsc	status,2
	goto	u4791
	goto	u4790

u4791:
	goto	l997
u4790:
	line	141
	
l4390:
	movlw	low(01h)
	movwf	((c:___fldiv@aexp)),c
	line	142
	goto	l996
	line	143
	
l997:
	line	144
	
	btfss	((c:___fldiv@b)),c,(0)&7
	goto	u4801
	goto	u4800
u4801:
	goto	l996
u4800:
	goto	l4390
	line	148
	
l996:
	line	149
	movf	((c:___fldiv@aexp)),c,w
	btfsc	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l4402
u4810:
	line	150
	
l4394:
	movlw	low(01h)
	addwf	((c:___fldiv@b)),c
	movlw	0
	addwfc	((c:___fldiv@b+1)),c
	addwfc	((c:___fldiv@b+2)),c
	addwfc	((c:___fldiv@b+3)),c
	line	151
	
l4396:
	
	btfss	((c:___fldiv@b+3)),c,(24)&7
	goto	u4821
	goto	u4820
u4821:
	goto	l4402
u4820:
	line	152
	
l4398:
	rlcf	((c:___fldiv@b+3)),c,w
	rrcf	((c:___fldiv@b+3)),c
	rrcf	((c:___fldiv@b+2)),c
	rrcf	((c:___fldiv@b+1)),c
	rrcf	((c:___fldiv@b)),c
	line	153
	
l4400:
	infsnz	((c:___fldiv@new_exp)),c
	incf	((c:___fldiv@new_exp+1)),c
	line	158
	
l4402:
	btfsc	((c:___fldiv@new_exp+1)),c,7
	goto	u4831
	movf	((c:___fldiv@new_exp+1)),c,w
	bnz	u4830
	incf	((c:___fldiv@new_exp)),c,w
	btfss	status,0
	goto	u4831
	goto	u4830

u4831:
	goto	l4408
u4830:
	line	159
	
l4404:
	movlw	high(0FFh)
	movwf	((c:___fldiv@new_exp+1)),c
	setf	((c:___fldiv@new_exp)),c
	line	160
	
l4406:
	clrf	((c:___fldiv@b)),c
	clrf	((c:___fldiv@b+1)),c
	clrf	((c:___fldiv@b+2)),c
	clrf	((c:___fldiv@b+3)),c

	line	164
	
l4408:
	btfsc	((c:___fldiv@new_exp+1)),c,7
	goto	u4840
	movf	((c:___fldiv@new_exp+1)),c,w
	bnz	u4841
	decf	((c:___fldiv@new_exp)),c,w
	btfsc	status,0
	goto	u4841
	goto	u4840

u4841:
	goto	l1003
u4840:
	line	165
	
l4410:
	clrf	((c:___fldiv@new_exp)),c
	clrf	((c:___fldiv@new_exp+1)),c
	line	166
	clrf	((c:___fldiv@b)),c
	clrf	((c:___fldiv@b+1)),c
	clrf	((c:___fldiv@b+2)),c
	clrf	((c:___fldiv@b+3)),c

	line	168
	clrf	((c:___fldiv@sign)),c
	line	169
	
l1003:
	line	172
	movff	(c:___fldiv@new_exp),(c:___fldiv@bexp)
	line	174
	
	btfss	((c:___fldiv@bexp)),c,(0)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l4414
u4850:
	line	175
	
l4412:
	bsf	(0+(7/8)+0+((c:___fldiv@b)+02h)),c,(7)&7
	line	176
	goto	l4416
	line	179
	
l4414:
	bcf	(0+(7/8)+0+((c:___fldiv@b)+02h)),c,(7)&7
	line	181
	
l4416:
	bcf	status,0
	rrcf	((c:___fldiv@bexp)),c,w
	movwf	(0+((c:___fldiv@b)+03h)),c
	line	182
	
l4418:
	movf	((c:___fldiv@sign)),c,w
	iorwf	(0+((c:___fldiv@b)+03h)),c
	goto	l4342
	line	184
	
l983:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	_log10

;; *************** function _log10 *****************
;; Defined at:
;;		line 39 in file "/opt/microchip/xc8/v1.45/sources/common/log.c"
;; Parameters:    Size  Location     Type
;;  x               4   26[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   26[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
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
psect	text21,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	39
global __ptext21
__ptext21:
psect	text21
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	39
	global	__size_of_log10
	__size_of_log10	equ	__end_of_log10-_log10
	
_log10:
;incstack = 0
	opt	stack 24
	line	41
	
l4582:
	movff	(log10@x),(log@x)
	movff	(log10@x+1),(log@x+1)
	movff	(log10@x+2),(log@x+2)
	movff	(log10@x+3),(log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_log10$1314)
	movff	1+?_log,(_log10$1314+1)
	movff	2+?_log,(_log10$1314+2)
	movff	3+?_log,(_log10$1314+3)
	
	
l4584:
	movff	(_log10$1314),(c:___flmul@b)
	movff	(_log10$1314+1),(c:___flmul@b+1)
	movff	(_log10$1314+2),(c:___flmul@b+2)
	movff	(_log10$1314+3),(c:___flmul@b+3)
	movlw	low(normalize32(0.43429448189999997))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(0.43429448189999997))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(0.43429448189999997))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(0.43429448189999997))
	movwf	((c:___flmul@a+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(?_log10)
	movff	1+?___flmul,(?_log10+1)
	movff	2+?___flmul,(?_log10+2)
	movff	3+?___flmul,(?_log10+3)
	
	line	42
	
l849:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_log10
	__end_of_log10:
	signat	_log10,4220
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v1.45/sources/common/log.c"
;; Parameters:    Size  Location     Type
;;  x               4   20[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   24[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   20[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___fladd
;;		___flmul
;;		___xxtofl
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_log10
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=1
	line	5
global __ptext22
__ptext22:
psect	text22
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	24
	
l4522:
	movlb	0	; () banked
	btfsc	((log@x+3))&0ffh,7
	goto	u4990
	goto	u4991

u4991:
	goto	l4526
u4990:
	line	26
	
l4524:; BSR set to: 0

	clrf	((?_log))&0ffh
	clrf	((?_log+1))&0ffh
	clrf	((?_log+2))&0ffh
	clrf	((?_log+3))&0ffh

	goto	l845
	line	28
	
l4526:; BSR set to: 0

	movf	((log@x))&0ffh,w
iorwf	((log@x+1))&0ffh,w
iorwf	((log@x+2))&0ffh,w
iorwf	((log@x+3))&0ffh,w
	btfss	status,2
	goto	u5001
	goto	u5000

u5001:
	goto	l4530
u5000:
	line	30
	
l4528:; BSR set to: 0

	clrf	((?_log))&0ffh
	clrf	((?_log+1))&0ffh
	clrf	((?_log+2))&0ffh
	clrf	((?_log+3))&0ffh

	goto	l845
	line	32
	
l4530:; BSR set to: 0

	movlw	low(normalize32(2.0000000000000000))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(2.0000000000000000))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(2.0000000000000000))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(2.0000000000000000))
	movwf	((c:___flmul@a+3)),c
		movlw	low(log@exponent)
	movwf	((c:frexp@eptr)),c

	movff	(log@x),(c:frexp@value)
	movff	(log@x+1),(c:frexp@value+1)
	movff	(log@x+2),(c:frexp@value+2)
	movff	(log@x+3),(c:frexp@value+3)
	call	_frexp	;wreg free
	movff	0+?_frexp,(c:___flmul@b)
	movff	1+?_frexp,(c:___flmul@b+1)
	movff	2+?_frexp,(c:___flmul@b+2)
	movff	3+?_frexp,(c:___flmul@b+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@b)
	movff	1+?___flmul,(c:___fladd@b+1)
	movff	2+?___flmul,(c:___fladd@b+2)
	movff	3+?___flmul,(c:___fladd@b+3)
	
	movlw	low(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a)),c
	movlw	high(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a+1)),c
	movlw	low highword(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a+2)),c
	movlw	high highword(normalize32(-1.0000000000000000))
	movwf	((c:___fladd@a+3)),c
	call	___fladd	;wreg free
	movff	0+?___fladd,(log@x)
	movff	1+?___fladd,(log@x+1)
	movff	2+?___fladd,(log@x+2)
	movff	3+?___fladd,(log@x+3)
	
	line	33
	
l4532:
	movlb	0	; () banked
	decf	((log@exponent))&0ffh
	btfss	status,0
	decf	((log@exponent+1))&0ffh
	line	34
	
l4534:; BSR set to: 0

	movff	(log@x),(eval_poly@x)
	movff	(log@x+1),(eval_poly@x+1)
	movff	(log@x+2),(eval_poly@x+2)
	movff	(log@x+3),(eval_poly@x+3)
		movlw	low(log@coeff)
	movwf	((eval_poly@d))&0ffh

	movlw	high(08h)
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(08h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(log@x)
	movff	1+?_eval_poly,(log@x+1)
	movff	2+?_eval_poly,(log@x+2)
	movff	3+?_eval_poly,(log@x+3)
	
	line	35
	
l4536:; BSR set to: 0

	movlw	low(normalize32(0.69314718055994995))
	movwf	((c:___flmul@a)),c
	movlw	high(normalize32(0.69314718055994995))
	movwf	((c:___flmul@a+1)),c
	movlw	low highword(normalize32(0.69314718055994995))
	movwf	((c:___flmul@a+2)),c
	movlw	high highword(normalize32(0.69314718055994995))
	movwf	((c:___flmul@a+3)),c
	movff	(log@exponent),(c:___xxtofl@val)
	movff	(log@exponent+1),(c:___xxtofl@val+1)
	movlw	0
	btfsc	((c:___xxtofl@val+1)),c,7
	movlw	-1
	movwf	((c:___xxtofl@val+2)),c
	movwf	((c:___xxtofl@val+3)),c
	movlw	(01h)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(c:___flmul@b)
	movff	1+?___xxtofl,(c:___flmul@b+1)
	movff	2+?___xxtofl,(c:___flmul@b+2)
	movff	3+?___xxtofl,(c:___flmul@b+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@b)
	movff	1+?___flmul,(c:___fladd@b+1)
	movff	2+?___flmul,(c:___fladd@b+2)
	movff	3+?___flmul,(c:___fladd@b+3)
	
	movff	(log@x),(c:___fladd@a)
	movff	(log@x+1),(c:___fladd@a+1)
	movff	(log@x+2),(c:___fladd@a+2)
	movff	(log@x+3),(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(?_log)
	movff	1+?___fladd,(?_log+1)
	movff	2+?___fladd,(?_log+2)
	movff	3+?___fladd,(?_log+3)
	
	line	36
	
l845:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4220
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "/opt/microchip/xc8/v1.45/sources/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4    8[COMRAM] int 
;;  eptr            1   12[COMRAM] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    8[COMRAM] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	254
global __ptext23
__ptext23:
psect	text23
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 25
	line	256
	
l4176:
	movf	((c:frexp@value)),c,w
iorwf	((c:frexp@value+1)),c,w
iorwf	((c:frexp@value+2)),c,w
iorwf	((c:frexp@value+3)),c,w
	btfss	status,2
	goto	u4391
	goto	u4390

u4391:
	goto	l4184
u4390:
	line	257
	
l4178:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l4180:
	clrf	((c:?_frexp)),c
	clrf	((c:?_frexp+1)),c
	clrf	((c:?_frexp+2)),c
	clrf	((c:?_frexp+3)),c

	goto	l689
	line	261
	
l4184:
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
	goto	u4401
	goto	u4400
u4401:
	movlw	1
	goto	u4406
u4400:
	movlw	0
u4406:
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l4186:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l4188:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	(0+((c:frexp@value)+03h)),c
	line	269
	
l4190:
	bcf	(0+((c:frexp@value)+02h)),c,7
	line	273
	
l4192:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	movff	(c:frexp@value+3),(c:?_frexp+3)
	line	274
	
l689:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8316
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.45/sources/common/evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               4   13[BANK0 ] PTR int 
;;  d               1   17[BANK0 ] PTR const 
;;		 -> exp@coeff(40), log@coeff(36), 
;;  n               2   18[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             4  106[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       7       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         5       7       0       0       0       0       0
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
psect	text24,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/evalpoly.c"
	line	4
global __ptext24
__ptext24:
psect	text24
	file	"/opt/microchip/xc8/v1.45/sources/common/evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 24
	line	8
	
l4468:; BSR set to: 0

	movf	((eval_poly@n))&0ffh,w
	mullw	04h
	movf	((eval_poly@d))&0ffh,w
	addwf	(prodl),c,w
	movwf	(??_eval_poly+0+0)&0ffh,c
	movff	(??_eval_poly+0+0),tblptrl
	if	0	;There is only one active tblptr byte
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
	goto	l4472
	line	10
	
l4470:; BSR set to: 0

	movff	(c:eval_poly@res),(c:___flmul@a)
	movff	(c:eval_poly@res+1),(c:___flmul@a+1)
	movff	(c:eval_poly@res+2),(c:___flmul@a+2)
	movff	(c:eval_poly@res+3),(c:___flmul@a+3)
	movff	(eval_poly@x),(c:___flmul@b)
	movff	(eval_poly@x+1),(c:___flmul@b+1)
	movff	(eval_poly@x+2),(c:___flmul@b+2)
	movff	(eval_poly@x+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@b)
	movff	1+?___flmul,(c:___fladd@b+1)
	movff	2+?___flmul,(c:___fladd@b+2)
	movff	3+?___flmul,(c:___fladd@b+3)
	
	decf	((eval_poly@n))&0ffh
	btfss	status,0
	decf	((eval_poly@n+1))&0ffh
	movf	((eval_poly@n))&0ffh,w
	mullw	04h
	movf	((eval_poly@d))&0ffh,w
	addwf	(prodl),c,w
	movwf	(??_eval_poly+0+0)&0ffh,c
	movff	(??_eval_poly+0+0),tblptrl
	if	0	;There is only one active tblptr byte
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
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@a)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@a+1)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@a+2)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:eval_poly@res)
	movff	1+?___fladd,(c:eval_poly@res+1)
	movff	2+?___fladd,(c:eval_poly@res+2)
	movff	3+?___fladd,(c:eval_poly@res+3)
	
	line	9
	
l4472:
	movlb	0	; () banked
	movf	((eval_poly@n))&0ffh,w
iorwf	((eval_poly@n+1))&0ffh,w
	btfss	status,2
	goto	u4921
	goto	u4920

u4921:
	goto	l4470
u4920:
	
l1060:; BSR set to: 0

	line	11
	movff	(c:eval_poly@res),(?_eval_poly)
	movff	(c:eval_poly@res+1),(?_eval_poly+1)
	movff	(c:eval_poly@res+2),(?_eval_poly+2)
	movff	(c:eval_poly@res+3),(?_eval_poly+3)
	line	12
	
l1061:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12412
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.45/sources/common/sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4   93[COMRAM] int 
;;  a               4   97[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  prod            4    7[BANK0 ] struct .
;;  grs             4    3[BANK0 ] unsigned long 
;;  temp            2   11[BANK0 ] struct .
;;  bexp            1    2[BANK0 ] unsigned char 
;;  aexp            1    1[BANK0 ] unsigned char 
;;  sign            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   93[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        12      13       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
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
psect	text25,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcmul.c"
	line	8
global __ptext25
__ptext25:
psect	text25
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcmul.c"
	line	8
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	17
	
l4038:
	movf	(0+((c:___flmul@b)+03h)),c,w
	andlw	low(080h)
	movlb	0	; () banked
	movwf	((___flmul@sign))&0ffh
	line	18
	movf	(0+((c:___flmul@b)+03h)),c,w
	addwf	(0+((c:___flmul@b)+03h)),c,w
	movwf	((___flmul@bexp))&0ffh
	line	19
	
l4040:; BSR set to: 0

	
	btfss	(0+((c:___flmul@b)+02h)),c,(7)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l4044
u4160:
	line	20
	
l4042:; BSR set to: 0

	bsf	(0+(0/8)+(___flmul@bexp))&0ffh,(0)&7
	line	24
	
l4044:; BSR set to: 0

	movf	((___flmul@bexp))&0ffh,w
	btfsc	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l1009
u4170:
	line	26
	
l4046:; BSR set to: 0

		incf	((___flmul@bexp))&0ffh,w
	btfss	status,2
	goto	u4181
	goto	u4180

u4181:
	goto	l4050
u4180:
	line	28
	
l4048:; BSR set to: 0

	clrf	((c:___flmul@b)),c
	clrf	((c:___flmul@b+1)),c
	clrf	((c:___flmul@b+2)),c
	clrf	((c:___flmul@b+3)),c

	line	31
	
l4050:; BSR set to: 0

	bsf	(0+(23/8)+(c:___flmul@b)),c,(23)&7
	line	33
	goto	l4052
	line	34
	
l1009:; BSR set to: 0

	line	36
	clrf	((c:___flmul@b)),c
	clrf	((c:___flmul@b+1)),c
	clrf	((c:___flmul@b+2)),c
	clrf	((c:___flmul@b+3)),c

	line	39
	
l4052:; BSR set to: 0

	movf	(0+((c:___flmul@a)+03h)),c,w
	andlw	low(080h)
	xorwf	((___flmul@sign))&0ffh
	line	40
	movf	(0+((c:___flmul@a)+03h)),c,w
	addwf	(0+((c:___flmul@a)+03h)),c,w
	movwf	((___flmul@aexp))&0ffh
	line	41
	
l4054:; BSR set to: 0

	
	btfss	(0+((c:___flmul@a)+02h)),c,(7)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l4058
u4190:
	line	42
	
l4056:; BSR set to: 0

	bsf	(0+(0/8)+(___flmul@aexp))&0ffh,(0)&7
	line	45
	
l4058:; BSR set to: 0

	movf	((___flmul@aexp))&0ffh,w
	btfsc	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l1013
u4200:
	line	48
	
l4060:; BSR set to: 0

		incf	((___flmul@aexp))&0ffh,w
	btfss	status,2
	goto	u4211
	goto	u4210

u4211:
	goto	l4064
u4210:
	line	50
	
l4062:; BSR set to: 0

	clrf	((c:___flmul@a)),c
	clrf	((c:___flmul@a+1)),c
	clrf	((c:___flmul@a+2)),c
	clrf	((c:___flmul@a+3)),c

	line	53
	
l4064:; BSR set to: 0

	bsf	(0+(23/8)+(c:___flmul@a)),c,(23)&7
	line	54
	goto	l4066
	line	55
	
l1013:; BSR set to: 0

	line	57
	clrf	((c:___flmul@a)),c
	clrf	((c:___flmul@a+1)),c
	clrf	((c:___flmul@a+2)),c
	clrf	((c:___flmul@a+3)),c

	line	65
	
l4066:; BSR set to: 0

	movf	((___flmul@aexp))&0ffh,w
	btfsc	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l1018
u4220:
	
l4068:; BSR set to: 0

	movf	((___flmul@bexp))&0ffh,w
	btfss	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l4070
u4230:
	
l1018:; BSR set to: 0

	line	66
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l1019
	line	95
	
l4070:; BSR set to: 0

	movf	(0+((c:___flmul@a)+02h)),c,w
	mulwf	((c:___flmul@b)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	96
	
l4072:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	movwf	((___flmul@grs))&0ffh
	clrf	((___flmul@grs+1))&0ffh
	clrf	((___flmul@grs+2))&0ffh
	clrf	((___flmul@grs+3))&0ffh

	line	97
	
l4074:; BSR set to: 0

	movf	(0+(___flmul@temp+01h))&0ffh,w
	movwf	((___flmul@prod))&0ffh
	clrf	((___flmul@prod+1))&0ffh
	clrf	((___flmul@prod+2))&0ffh
	clrf	((___flmul@prod+3))&0ffh

	line	98
	movf	(0+((c:___flmul@a)+01h)),c,w
	mulwf	(0+((c:___flmul@b)+01h)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	99
	
l4076:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	addwf	((___flmul@grs))&0ffh
	movlw	0
	addwfc	((___flmul@grs+1))&0ffh
	addwfc	((___flmul@grs+2))&0ffh
	addwfc	((___flmul@grs+3))&0ffh
	line	100
	
l4078:; BSR set to: 0

	movf	(0+(___flmul@temp+01h))&0ffh,w
	addwf	((___flmul@prod))&0ffh
	movlw	0
	addwfc	((___flmul@prod+1))&0ffh
	addwfc	((___flmul@prod+2))&0ffh
	addwfc	((___flmul@prod+3))&0ffh
	line	101
	movf	((c:___flmul@a)),c,w
	mulwf	(0+((c:___flmul@b)+02h)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	102
	
l4080:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	addwf	((___flmul@grs))&0ffh
	movlw	0
	addwfc	((___flmul@grs+1))&0ffh
	addwfc	((___flmul@grs+2))&0ffh
	addwfc	((___flmul@grs+3))&0ffh
	line	103
	
l4082:; BSR set to: 0

	movf	(0+(___flmul@temp+01h))&0ffh,w
	addwf	((___flmul@prod))&0ffh
	movlw	0
	addwfc	((___flmul@prod+1))&0ffh
	addwfc	((___flmul@prod+2))&0ffh
	addwfc	((___flmul@prod+3))&0ffh
	line	104
	
l4084:; BSR set to: 0

	movff	(___flmul@grs+2),(___flmul@grs+3)
	movff	(___flmul@grs+1),(___flmul@grs+2)
	movff	(___flmul@grs),(___flmul@grs+1)
	clrf	((___flmul@grs))&0ffh
	line	105
	
l4086:; BSR set to: 0

	movf	((c:___flmul@a)),c,w
	mulwf	(0+((c:___flmul@b)+01h)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	106
	
l4088:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	addwf	((___flmul@grs))&0ffh
	movf	((___flmul@temp+1))&0ffh,w
	addwfc	((___flmul@grs+1))&0ffh
	movlw	0
	addwfc	((___flmul@grs+2))&0ffh
	movlw	0
	addwfc	((___flmul@grs+3))&0ffh

	line	107
	
l4090:; BSR set to: 0

	movf	(0+((c:___flmul@a)+01h)),c,w
	mulwf	((c:___flmul@b)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	108
	
l4092:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	addwf	((___flmul@grs))&0ffh
	movf	((___flmul@temp+1))&0ffh,w
	addwfc	((___flmul@grs+1))&0ffh
	movlw	0
	addwfc	((___flmul@grs+2))&0ffh
	movlw	0
	addwfc	((___flmul@grs+3))&0ffh

	line	109
	
l4094:; BSR set to: 0

	movff	(___flmul@grs+2),(___flmul@grs+3)
	movff	(___flmul@grs+1),(___flmul@grs+2)
	movff	(___flmul@grs),(___flmul@grs+1)
	clrf	((___flmul@grs))&0ffh
	line	110
	movf	((c:___flmul@a)),c,w
	mulwf	((c:___flmul@b)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	111
	
l4096:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	addwf	((___flmul@grs))&0ffh
	movf	((___flmul@temp+1))&0ffh,w
	addwfc	((___flmul@grs+1))&0ffh
	movlw	0
	addwfc	((___flmul@grs+2))&0ffh
	movlw	0
	addwfc	((___flmul@grs+3))&0ffh

	line	112
	
l4098:; BSR set to: 0

	movf	(0+((c:___flmul@a)+02h)),c,w
	mulwf	(0+((c:___flmul@b)+01h)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	113
	movf	((___flmul@temp))&0ffh,w
	addwf	((___flmul@prod))&0ffh
	movf	((___flmul@temp+1))&0ffh,w
	addwfc	((___flmul@prod+1))&0ffh
	movlw	0
	addwfc	((___flmul@prod+2))&0ffh
	movlw	0
	addwfc	((___flmul@prod+3))&0ffh

	line	114
	
l4100:; BSR set to: 0

	movf	(0+((c:___flmul@a)+01h)),c,w
	mulwf	(0+((c:___flmul@b)+02h)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	115
	
l4102:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	addwf	((___flmul@prod))&0ffh
	movf	((___flmul@temp+1))&0ffh,w
	addwfc	((___flmul@prod+1))&0ffh
	movlw	0
	addwfc	((___flmul@prod+2))&0ffh
	movlw	0
	addwfc	((___flmul@prod+3))&0ffh

	line	116
	movf	(0+((c:___flmul@a)+02h)),c,w
	mulwf	(0+((c:___flmul@b)+02h)),c
	movff	prodl,(___flmul@temp)
	movff	prodh,(___flmul@temp+1)
	line	117
	
l4104:; BSR set to: 0

	movf	((___flmul@temp))&0ffh,w
	movwf	(??___flmul+0+0)&0ffh,c
	movf	((___flmul@temp+1))&0ffh,w
	movwf	1+(??___flmul+0+0)&0ffh,c
	
	clrf	2+(??___flmul+0+0)&0ffh,c
	
	clrf	3+(??___flmul+0+0)&0ffh,c
	movff	??___flmul+0+2,??___flmul+0+3
	movff	??___flmul+0+1,??___flmul+0+2
	movff	??___flmul+0+0,??___flmul+0+1
	clrf	(??___flmul+0+0),c
	movf	(??___flmul+0+0),c,w
	addwf	((___flmul@prod))&0ffh
	movf	(??___flmul+0+1),c,w
	addwfc	((___flmul@prod+1))&0ffh
	movf	(??___flmul+0+2),c,w
	addwfc	((___flmul@prod+2))&0ffh
	movf	(??___flmul+0+3),c,w
	addwfc	((___flmul@prod+3))&0ffh

	line	145
	
l4106:; BSR set to: 0

	movf	(0+(___flmul@grs+03h))&0ffh,w
	addwf	((___flmul@prod))&0ffh
	movlw	0
	addwfc	((___flmul@prod+1))&0ffh
	addwfc	((___flmul@prod+2))&0ffh
	addwfc	((___flmul@prod+3))&0ffh
	line	146
	
l4108:; BSR set to: 0

	movff	(___flmul@grs+2),(___flmul@grs+3)
	movff	(___flmul@grs+1),(___flmul@grs+2)
	movff	(___flmul@grs),(___flmul@grs+1)
	clrf	((___flmul@grs))&0ffh
	line	149
	
l4110:; BSR set to: 0

	movf	((___flmul@aexp))&0ffh,w
	movff	(___flmul@bexp),??___flmul+0+0
	clrf	(??___flmul+0+0+1)&0ffh,c
	addwf	(??___flmul+0+0),c
	movlw	0
	addwfc	(??___flmul+0+1),c
	movlw	low(-126)
	addwf	(??___flmul+0+0),c,w
	movwf	((___flmul@temp))&0ffh
	movlw	high(-126)
	addwfc	(??___flmul+0+1),c,w
	movwf	1+((___flmul@temp))&0ffh
	line	152
	goto	l4118
	line	153
	
l4112:; BSR set to: 0

	bcf	status,0
	rlcf	((___flmul@prod))&0ffh
	rlcf	((___flmul@prod+1))&0ffh
	rlcf	((___flmul@prod+2))&0ffh
	rlcf	((___flmul@prod+3))&0ffh
	line	154
	
l4114:; BSR set to: 0

	
	btfss	((___flmul@grs+3))&0ffh,(31)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l1022
u4240:
	line	155
	
l4116:; BSR set to: 0

	bsf	(0+(0/8)+(___flmul@prod))&0ffh,(0)&7
	line	156
	
l1022:; BSR set to: 0

	line	157
	bcf	status,0
	rlcf	((___flmul@grs))&0ffh
	rlcf	((___flmul@grs+1))&0ffh
	rlcf	((___flmul@grs+2))&0ffh
	rlcf	((___flmul@grs+3))&0ffh
	line	158
	decf	((___flmul@temp))&0ffh
	btfss	status,0
	decf	((___flmul@temp+1))&0ffh
	line	152
	
l4118:; BSR set to: 0

	
	btfss	((___flmul@prod+2))&0ffh,(23)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l4112
u4250:
	
l1023:; BSR set to: 0

	line	163
	clrf	((___flmul@aexp))&0ffh
	line	164
	
	btfss	((___flmul@grs+3))&0ffh,(31)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l1024
u4260:
	line	165
	
l4120:; BSR set to: 0

	movlw	0FFh
	andwf	((___flmul@grs))&0ffh,w
	movwf	(??___flmul+0+0)&0ffh,c
	movlw	0FFh
	andwf	((___flmul@grs+1))&0ffh,w
	movwf	1+(??___flmul+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((___flmul@grs+2))&0ffh,w
	movwf	2+(??___flmul+0+0)&0ffh,c
	
	movlw	07Fh
	andwf	((___flmul@grs+3))&0ffh,w
	movwf	3+(??___flmul+0+0)&0ffh,c
	movf	(??___flmul+0+0),c,w
iorwf	(??___flmul+0+1),c,w
iorwf	(??___flmul+0+2),c,w
iorwf	(??___flmul+0+3),c,w
	btfsc	status,2
	goto	u4271
	goto	u4270

u4271:
	goto	l1025
u4270:
	line	166
	
l4122:; BSR set to: 0

	movlw	low(01h)
	movwf	((___flmul@aexp))&0ffh
	line	167
	goto	l1024
	line	168
	
l1025:; BSR set to: 0

	line	169
	
	btfss	((___flmul@prod))&0ffh,(0)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l1024
u4280:
	goto	l4122
	line	173
	
l1024:; BSR set to: 0

	line	174
	movf	((___flmul@aexp))&0ffh,w
	btfsc	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l4134
u4290:
	line	175
	
l4126:; BSR set to: 0

	movlw	low(01h)
	addwf	((___flmul@prod))&0ffh
	movlw	0
	addwfc	((___flmul@prod+1))&0ffh
	addwfc	((___flmul@prod+2))&0ffh
	addwfc	((___flmul@prod+3))&0ffh
	line	176
	
l4128:; BSR set to: 0

	
	btfss	((___flmul@prod+3))&0ffh,(24)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l4134
u4300:
	line	177
	
l4130:; BSR set to: 0

	rlcf	((___flmul@prod+3))&0ffh,w
	rrcf	((___flmul@prod+3))&0ffh
	rrcf	((___flmul@prod+2))&0ffh
	rrcf	((___flmul@prod+1))&0ffh
	rrcf	((___flmul@prod))&0ffh
	line	178
	
l4132:; BSR set to: 0

	infsnz	((___flmul@temp))&0ffh
	incf	((___flmul@temp+1))&0ffh
	line	183
	
l4134:; BSR set to: 0

	btfsc	((___flmul@temp+1))&0ffh,7
	goto	u4311
	movf	((___flmul@temp+1))&0ffh,w
	bnz	u4310
	incf	((___flmul@temp))&0ffh,w
	btfss	status,0
	goto	u4311
	goto	u4310

u4311:
	goto	l4138
u4310:
	line	184
	
l4136:; BSR set to: 0

	movlw	low(07F800000h)
	movwf	((___flmul@prod))&0ffh
	movlw	high(07F800000h)
	movwf	((___flmul@prod+1))&0ffh
	movlw	low highword(07F800000h)
	movwf	((___flmul@prod+2))&0ffh
	movlw	high highword(07F800000h)
	movwf	((___flmul@prod+3))&0ffh
	line	185
	goto	l4150
	line	187
	
l4138:; BSR set to: 0

	btfsc	((___flmul@temp+1))&0ffh,7
	goto	u4320
	movf	((___flmul@temp+1))&0ffh,w
	bnz	u4321
	decf	((___flmul@temp))&0ffh,w
	btfsc	status,0
	goto	u4321
	goto	u4320

u4321:
	goto	l1032
u4320:
	line	188
	
l4140:; BSR set to: 0

	clrf	((___flmul@prod))&0ffh
	clrf	((___flmul@prod+1))&0ffh
	clrf	((___flmul@prod+2))&0ffh
	clrf	((___flmul@prod+3))&0ffh

	line	190
	clrf	((___flmul@sign))&0ffh
	line	191
	goto	l4150
	line	192
	
l1032:; BSR set to: 0

	line	194
	movff	(___flmul@temp),(___flmul@bexp)
	line	195
	
l4142:; BSR set to: 0

	movlw	0FFh
	andwf	((___flmul@prod))&0ffh
	movlw	0FFh
	andwf	((___flmul@prod+1))&0ffh
	movlw	07Fh
	andwf	((___flmul@prod+2))&0ffh
	movlw	0
	andwf	((___flmul@prod+3))&0ffh
	line	196
	
l4144:; BSR set to: 0

	
	btfss	((___flmul@bexp))&0ffh,(0)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l4148
u4330:
	line	197
	
l4146:; BSR set to: 0

	bsf	(0+(7/8)+0+(___flmul@prod+02h))&0ffh,(7)&7
	line	199
	
l4148:; BSR set to: 0

	bcf	status,0
	rrcf	((___flmul@bexp))&0ffh,w
	movwf	(0+(___flmul@prod+03h))&0ffh
	line	201
	
l4150:; BSR set to: 0

	movf	((___flmul@sign))&0ffh,w
	iorwf	(0+(___flmul@prod+03h))&0ffh
	line	203
	
l4152:; BSR set to: 0

	movff	(___flmul@prod),(c:?___flmul)
	movff	(___flmul@prod+1),(c:?___flmul+1)
	movff	(___flmul@prod+2),(c:?___flmul+2)
	movff	(___flmul@prod+3),(c:?___flmul+3)
	line	205
	
l1019:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "/opt/microchip/xc8/v1.45/sources/common/sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   77[COMRAM] unsigned char 
;;  a               4   81[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  grs             1   92[COMRAM] unsigned char 
;;  bexp            1   91[COMRAM] unsigned char 
;;  aexp            1   90[COMRAM] unsigned char 
;;  signs           1   89[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   77[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;;		___flsub
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcadd.c"
	line	10
global __ptext26
__ptext26:
psect	text26
	file	"/opt/microchip/xc8/v1.45/sources/common/sprcadd.c"
	line	10
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	21
	
l3854:
	movf	(0+((c:___fladd@b)+03h)),c,w
	andlw	low(080h)
	movwf	((c:___fladd@signs)),c
	line	22
	movf	(0+((c:___fladd@b)+03h)),c,w
	addwf	(0+((c:___fladd@b)+03h)),c,w
	movwf	((c:___fladd@bexp)),c
	line	23
	
l3856:
	
	btfss	(0+((c:___fladd@b)+02h)),c,(7)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l3860
u3770:
	line	24
	
l3858:
	bsf	(0+(0/8)+(c:___fladd@bexp)),c,(0)&7
	line	28
	
l3860:
	movf	((c:___fladd@bexp)),c,w
	btfsc	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l918
u3780:
	line	30
	
l3862:
		incf	((c:___fladd@bexp)),c,w
	btfss	status,2
	goto	u3791
	goto	u3790

u3791:
	goto	l3866
u3790:
	line	32
	
l3864:
	clrf	((c:___fladd@b)),c
	clrf	((c:___fladd@b+1)),c
	clrf	((c:___fladd@b+2)),c
	clrf	((c:___fladd@b+3)),c

	line	35
	
l3866:
	bsf	(0+(23/8)+(c:___fladd@b)),c,(23)&7
	line	37
	
l3868:
	clrf	(0+((c:___fladd@b)+03h)),c
	line	38
	goto	l3870
	line	39
	
l918:
	line	41
	clrf	((c:___fladd@b)),c
	clrf	((c:___fladd@b+1)),c
	clrf	((c:___fladd@b+2)),c
	clrf	((c:___fladd@b+3)),c

	line	44
	
l3870:
	movf	(0+((c:___fladd@a)+03h)),c,w
	andlw	low(080h)
	movwf	((c:___fladd@aexp)),c
	line	46
	movf	((c:___fladd@signs)),c,w
xorwf	((c:___fladd@aexp)),c,w
	btfsc	status,2
	goto	u3801
	goto	u3800

u3801:
	goto	l3874
u3800:
	line	47
	
l3872:
	bsf	(0+(6/8)+(c:___fladd@signs)),c,(6)&7
	line	49
	
l3874:
	movf	(0+((c:___fladd@a)+03h)),c,w
	addwf	(0+((c:___fladd@a)+03h)),c,w
	movwf	((c:___fladd@aexp)),c
	line	50
	
l3876:
	
	btfss	(0+((c:___fladd@a)+02h)),c,(7)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l3880
u3810:
	line	51
	
l3878:
	bsf	(0+(0/8)+(c:___fladd@aexp)),c,(0)&7
	line	55
	
l3880:
	movf	((c:___fladd@aexp)),c,w
	btfsc	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l923
u3820:
	line	57
	
l3882:
		incf	((c:___fladd@aexp)),c,w
	btfss	status,2
	goto	u3831
	goto	u3830

u3831:
	goto	l3886
u3830:
	line	59
	
l3884:
	clrf	((c:___fladd@a)),c
	clrf	((c:___fladd@a+1)),c
	clrf	((c:___fladd@a+2)),c
	clrf	((c:___fladd@a+3)),c

	line	62
	
l3886:
	bsf	(0+(23/8)+(c:___fladd@a)),c,(23)&7
	line	64
	
l3888:
	clrf	(0+((c:___fladd@a)+03h)),c
	line	65
	goto	l3890
	line	66
	
l923:
	line	68
	clrf	((c:___fladd@a)),c
	clrf	((c:___fladd@a+1)),c
	clrf	((c:___fladd@a+2)),c
	clrf	((c:___fladd@a+3)),c

	line	75
	
l3890:
		movf	((c:___fladd@bexp)),c,w
	subwf	((c:___fladd@aexp)),c,w
	btfsc	status,0
	goto	u3841
	goto	u3840

u3841:
	goto	l3926
u3840:
	line	77
	
l3892:
	
	btfss	((c:___fladd@signs)),c,(6)&7
	goto	u3851
	goto	u3850
u3851:
	goto	l3896
u3850:
	line	78
	
l3894:
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs)),c
	line	81
	
l3896:
	movff	(c:___fladd@bexp),(c:___fladd@grs)
	line	82
	
l3898:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	83
	
l3900:
	movff	(c:___fladd@grs),(c:___fladd@aexp)
	line	84
	
l3902:
	movff	(c:___fladd@b),(c:___fladd@grs)
	line	85
	
l3904:
	movff	(c:___fladd@a),(c:___fladd@b)
	line	86
	
l3906:
	movff	(c:___fladd@grs),(c:___fladd@a)
	line	87
	
l3908:
	movff	0+((c:___fladd@b)+01h),(c:___fladd@grs)
	line	88
	
l3910:
	movff	0+((c:___fladd@a)+01h),0+((c:___fladd@b)+01h)
	line	89
	
l3912:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+01h)
	line	90
	
l3914:
	movff	0+((c:___fladd@b)+02h),(c:___fladd@grs)
	line	91
	
l3916:
	movff	0+((c:___fladd@a)+02h),0+((c:___fladd@b)+02h)
	line	92
	
l3918:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+02h)
	line	93
	
l3920:
	movff	0+((c:___fladd@b)+03h),(c:___fladd@grs)
	line	94
	
l3922:
	movff	0+((c:___fladd@a)+03h),0+((c:___fladd@b)+03h)
	line	95
	
l3924:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+03h)
	line	98
	
l3926:
	clrf	((c:___fladd@grs)),c
	line	100
	movf	((c:___fladd@bexp)),c,w
	movff	(c:___fladd@aexp),??___fladd+0+0
	clrf	(??___fladd+0+0+1)&0ffh,c
	subwf	(??___fladd+0+0),c
	movlw	0
	subwfb	(??___fladd+0+1),c
	btfsc	(??___fladd+0+1),c,7
	goto	u3861
	movf	(??___fladd+0+1),c,w
	bnz	u3860
	movlw	26
	subwf	 (??___fladd+0+0),c,w
	btfss	status,0
	goto	u3861
	goto	u3860

u3861:
	goto	l930
u3860:
	line	101
	
l3928:
	movf	((c:___fladd@b)),c,w
iorwf	((c:___fladd@b+1)),c,w
iorwf	((c:___fladd@b+2)),c,w
iorwf	((c:___fladd@b+3)),c,w
	btfss	status,2
	goto	u3871
	goto	u3870

u3871:
	movlw	1
	goto	u3880
u3870:
	movlw	0
u3880:
	movwf	((c:___fladd@grs)),c
	line	102
	
l3930:
	clrf	((c:___fladd@b)),c
	clrf	((c:___fladd@b+1)),c
	clrf	((c:___fladd@b+2)),c
	clrf	((c:___fladd@b+3)),c

	line	103
	
l3932:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	104
	goto	l929
	line	106
	
l931:
	line	109
	
	btfss	((c:___fladd@grs)),c,(0)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l3936
u3890:
	line	110
	
l3934:
	bcf	status,0
	rrcf	((c:___fladd@grs)),c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs)),c
	line	111
	goto	l3938
	line	113
	
l3936:
	bcf status,0
	rrcf	((c:___fladd@grs)),c

	line	115
	
l3938:
	
	btfss	((c:___fladd@b)),c,(0)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l3942
u3900:
	line	116
	
l3940:
	bsf	(0+(7/8)+(c:___fladd@grs)),c,(7)&7
	line	118
	
l3942:
	rlcf	((c:___fladd@b+3)),c,w
	rrcf	((c:___fladd@b+3)),c
	rrcf	((c:___fladd@b+2)),c
	rrcf	((c:___fladd@b+1)),c
	rrcf	((c:___fladd@b)),c
	line	119
	
l3944:
	incf	((c:___fladd@bexp)),c
	line	120
	
l930:
	line	106
		movf	((c:___fladd@aexp)),c,w
	subwf	((c:___fladd@bexp)),c,w
	btfss	status,0
	goto	u3911
	goto	u3910

u3911:
	goto	l931
u3910:
	line	121
	
l929:
	line	124
	
	btfsc	((c:___fladd@signs)),c,(6)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l3968
u3920:
	line	127
	
l3946:
	movf	((c:___fladd@bexp)),c,w
	btfss	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l3950
u3930:
	line	128
	
l3948:
	clrf	((c:?___fladd)),c
	clrf	((c:?___fladd+1)),c
	clrf	((c:?___fladd+2)),c
	clrf	((c:?___fladd+3)),c

	goto	l938
	line	132
	
l3950:
	movf	((c:___fladd@a)),c,w
	addwf	((c:___fladd@b)),c
	movf	((c:___fladd@a+1)),c,w
	addwfc	((c:___fladd@b+1)),c
	movf	((c:___fladd@a+2)),c,w
	addwfc	((c:___fladd@b+2)),c
	movf	((c:___fladd@a+3)),c,w
	addwfc	((c:___fladd@b+3)),c
	line	134
	
l3952:
	
	btfss	((c:___fladd@b+3)),c,(24)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l943
u3940:
	line	135
	
l3954:
	
	btfss	((c:___fladd@grs)),c,(0)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l3958
u3950:
	line	136
	
l3956:
	bcf status,0
	rrcf	((c:___fladd@grs)),c

	movf	((c:___fladd@grs)),c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs)),c
	line	137
	goto	l3960
	line	139
	
l3958:
	bcf status,0
	rrcf	((c:___fladd@grs)),c

	line	141
	
l3960:
	
	btfss	((c:___fladd@b)),c,(0)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l3964
u3960:
	line	142
	
l3962:
	bsf	(0+(7/8)+(c:___fladd@grs)),c,(7)&7
	line	144
	
l3964:
	rlcf	((c:___fladd@b+3)),c,w
	rrcf	((c:___fladd@b+3)),c
	rrcf	((c:___fladd@b+2)),c
	rrcf	((c:___fladd@b+1)),c
	rrcf	((c:___fladd@b)),c
	line	145
	
l3966:
	incf	((c:___fladd@bexp)),c
	goto	l943
	line	153
	
l3968:
		movf	((c:___fladd@a)),c,w
	subwf	((c:___fladd@b)),c,w
	movf	((c:___fladd@a+1)),c,w
	subwfb	((c:___fladd@b+1)),c,w
	movf	((c:___fladd@a+2)),c,w
	subwfb	((c:___fladd@b+2)),c,w
	movf	((c:___fladd@b+3)),c,w
	xorlw	80h
	movwf	(??___fladd+0+0)&0ffh,c
	movf	((c:___fladd@a+3)),c,w
	xorlw	80h
	subwfb	(??___fladd+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u3971
	goto	u3970

u3971:
	goto	l3978
u3970:
	line	154
	
l3970:
	movf	((c:___fladd@b)),c,w
	subwf	((c:___fladd@a)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
	movf	((c:___fladd@b+1)),c,w
	subwfb	((c:___fladd@a+1)),c,w
	movwf	1+(??___fladd+0+0)&0ffh,c
	
	movf	((c:___fladd@b+2)),c,w
	subwfb	((c:___fladd@a+2)),c,w
	movwf	2+(??___fladd+0+0)&0ffh,c
	
	movf	((c:___fladd@b+3)),c,w
	subwfb	((c:___fladd@a+3)),c,w
	movwf	3+(??___fladd+0+0)&0ffh,c
	movlw	0FFh
	addwf	(??___fladd+0+0),c,w
	movwf	((c:___fladd@b)),c
	movlw	0FFh
	addwfc	(??___fladd+0+1),c,w
	movwf	1+((c:___fladd@b)),c
	
	movlw	0FFh
	addwfc	(??___fladd+0+2),c,w
	movwf	2+((c:___fladd@b)),c
	
	movlw	0FFh
	addwfc	(??___fladd+0+3),c,w
	movwf	3+((c:___fladd@b)),c
	line	155
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs)),c
	line	156
	
l3972:
	negf	((c:___fladd@grs)),c
	line	157
	
l3974:
	movf	((c:___fladd@grs)),c,w
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l946
u3980:
	line	158
	
l3976:
	movlw	low(01h)
	addwf	((c:___fladd@b)),c
	movlw	0
	addwfc	((c:___fladd@b+1)),c
	addwfc	((c:___fladd@b+2)),c
	addwfc	((c:___fladd@b+3)),c
	goto	l946
	line	162
	
l3978:
	movf	((c:___fladd@a)),c,w
	subwf	((c:___fladd@b)),c
	movf	((c:___fladd@a+1)),c,w
	subwfb	((c:___fladd@b+1)),c
	movf	((c:___fladd@a+2)),c,w
	subwfb	((c:___fladd@b+2)),c
	movf	((c:___fladd@a+3)),c,w
	subwfb	((c:___fladd@b+3)),c
	line	163
	
l946:
	line	166
	movf	((c:___fladd@b)),c,w
iorwf	((c:___fladd@b+1)),c,w
iorwf	((c:___fladd@b+2)),c,w
iorwf	((c:___fladd@b+3)),c,w
	btfss	status,2
	goto	u3991
	goto	u3990

u3991:
	goto	l4000
u3990:
	
l3980:
	movf	((c:___fladd@grs)),c,w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l4000
u4000:
	line	167
	
l3982:
	clrf	((c:?___fladd)),c
	clrf	((c:?___fladd+1)),c
	clrf	((c:?___fladd+2)),c
	clrf	((c:?___fladd+3)),c

	goto	l938
	line	172
	
l3984:
	bcf	status,0
	rlcf	((c:___fladd@b)),c
	rlcf	((c:___fladd@b+1)),c
	rlcf	((c:___fladd@b+2)),c
	rlcf	((c:___fladd@b+3)),c
	line	173
	
l3986:
	
	btfss	((c:___fladd@grs)),c,(7)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l3990
u4010:
	line	174
	
l3988:
	bsf	(0+(0/8)+(c:___fladd@b)),c,(0)&7
	line	176
	
l3990:
	
	btfss	((c:___fladd@grs)),c,(0)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l3994
u4020:
	line	177
	
l3992:
	bsf	status,0
	
	rlcf	((c:___fladd@grs)),c
	line	178
	goto	l3996
	line	180
	
l3994:
	bcf status,0
	rlcf	((c:___fladd@grs)),c

	line	182
	
l3996:
	movf	((c:___fladd@bexp)),c,w
	btfsc	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l4000
u4030:
	line	183
	
l3998:
	decf	((c:___fladd@bexp)),c
	line	171
	
l4000:
	
	btfss	((c:___fladd@b+2)),c,(23)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l3984
u4040:
	line	186
	
l943:
	line	192
	clrf	((c:___fladd@aexp)),c
	line	193
	
	btfss	((c:___fladd@grs)),c,(7)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l955
u4050:
	line	194
	
l4002:
	movff	(c:___fladd@grs),??___fladd+0+0
	movlw	07Fh
	andwf	(??___fladd+0+0),c
	btfsc	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l956
u4060:
	line	195
	
l4004:
	movlw	low(01h)
	movwf	((c:___fladd@aexp)),c
	line	196
	goto	l955
	line	197
	
l956:
	line	198
	
	btfss	((c:___fladd@b)),c,(0)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l955
u4070:
	goto	l4004
	line	202
	
l955:
	line	203
	movf	((c:___fladd@aexp)),c,w
	btfsc	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l4016
u4080:
	line	204
	
l4008:
	movlw	low(01h)
	addwf	((c:___fladd@b)),c
	movlw	0
	addwfc	((c:___fladd@b+1)),c
	addwfc	((c:___fladd@b+2)),c
	addwfc	((c:___fladd@b+3)),c
	line	205
	
l4010:
	
	btfss	((c:___fladd@b+3)),c,(24)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l4016
u4090:
	line	206
	
l4012:
	rlcf	((c:___fladd@b+3)),c,w
	rrcf	((c:___fladd@b+3)),c
	rrcf	((c:___fladd@b+2)),c
	rrcf	((c:___fladd@b+1)),c
	rrcf	((c:___fladd@b)),c
	line	207
		incf	((c:___fladd@bexp)),c,w
	btfsc	status,2
	goto	u4101
	goto	u4100

u4101:
	goto	l4016
u4100:
	line	208
	
l4014:
	incf	((c:___fladd@bexp)),c
	line	215
	
l4016:
		incf	((c:___fladd@bexp)),c,w
	btfsc	status,2
	goto	u4111
	goto	u4110

u4111:
	goto	l964
u4110:
	
l4018:
	movf	((c:___fladd@bexp)),c,w
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l962
u4120:
	
l964:
	line	216
	clrf	((c:___fladd@b)),c
	clrf	((c:___fladd@b+1)),c
	clrf	((c:___fladd@b+2)),c
	clrf	((c:___fladd@b+3)),c

	line	218
	
l4020:
	movf	((c:___fladd@bexp)),c,w
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l962
u4130:
	line	219
	
l4022:
	clrf	((c:___fladd@signs)),c
	line	221
	
l962:
	line	225
	
	btfss	((c:___fladd@bexp)),c,(0)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l4026
u4140:
	line	226
	
l4024:
	bsf	(0+(7/8)+0+((c:___fladd@b)+02h)),c,(7)&7
	line	227
	goto	l4028
	line	230
	
l4026:
	bcf	(0+(7/8)+0+((c:___fladd@b)+02h)),c,(7)&7
	line	232
	
l4028:
	bcf	status,0
	rrcf	((c:___fladd@bexp)),c,w
	movwf	(0+((c:___fladd@b)+03h)),c
	line	233
	
l4030:
	
	btfss	((c:___fladd@signs)),c,(7)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l4034
u4150:
	line	234
	
l4032:
	bsf	(0+(7/8)+0+((c:___fladd@b)+03h)),c,(7)&7
	line	236
	
l4034:
	movff	(c:___fladd@b),(c:?___fladd)
	movff	(c:___fladd@b+1),(c:?___fladd+1)
	movff	(c:___fladd@b+2),(c:?___fladd+2)
	movff	(c:___fladd@b+3),(c:?___fladd+3)
	line	237
	
l938:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 26 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   77[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___xxtofl
;;		_delay10ms
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_putch
;;		_measure_freq
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"src/measure.c"
	line	26
global __ptext27
__ptext27:
psect	text27
	file	"src/measure.c"
	line	26
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:
;incstack = 0
	opt	stack 23
	line	30
	
l4704:
;measure.c: 27: uint8_t i;
;measure.c: 30: lcd_clear();
	call	_lcd_clear	;wreg free
	line	32
	
l4706:
;measure.c: 32: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	33
	
l4708:
;measure.c: 33: put_str("Calibrating");
		movlw	low(STR_6)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	35
	
l4710:
;measure.c: 35: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	39
	
l4712:
;measure.c: 39: put_str("please wait...");
		movlw	low(STR_7)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	42
	
l4714:
;measure.c: 42: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	44
	
l4716:
;measure.c: 44: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___xxtofl@val)
	movff	1+?_measure_freq,(c:___xxtofl@val+1)
	clrf	((c:___xxtofl@val+2)),c
	clrf	((c:___xxtofl@val+3)),c

	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(_F1)
	movff	1+?___xxtofl,(_F1+1)
	movff	2+?___xxtofl,(_F1+2)
	movff	3+?___xxtofl,(_F1+3)
	
	line	45
	
l4718:
;measure.c: 45: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	47
;measure.c: 47: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___xxtofl@val)
	movff	1+?_measure_freq,(c:___xxtofl@val+1)
	clrf	((c:___xxtofl@val+2)),c
	clrf	((c:___xxtofl@val+3)),c

	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(_F1)
	movff	1+?___xxtofl,(_F1+1)
	movff	2+?___xxtofl,(_F1+2)
	movff	3+?___xxtofl,(_F1+3)
	
	line	48
	
l4720:
;measure.c: 48: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	50
	
l4722:
;measure.c: 50: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___xxtofl@val)
	movff	1+?_measure_freq,(c:___xxtofl@val+1)
	clrf	((c:___xxtofl@val+2)),c
	clrf	((c:___xxtofl@val+3)),c

	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(_F2)
	movff	1+?___xxtofl,(_F2+1)
	movff	2+?___xxtofl,(_F2+2)
	movff	3+?___xxtofl,(_F2+3)
	
	line	51
	
l4724:
;measure.c: 51: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	53
	
l4726:
;measure.c: 53: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___xxtofl@val)
	movff	1+?_measure_freq,(c:___xxtofl@val+1)
	clrf	((c:___xxtofl@val+2)),c
	clrf	((c:___xxtofl@val+3)),c

	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(_F2)
	movff	1+?___xxtofl,(_F2+1)
	movff	2+?___xxtofl,(_F2+2)
	movff	3+?___xxtofl,(_F2+3)
	
	line	54
	
l4728:
;measure.c: 54: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	57
	
l4730:
;measure.c: 57: lcd_gotoxy(11, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Bh)&0ffh
	
	call	_lcd_gotoxy
	line	58
	
l4732:
;measure.c: 58: for(i = 0; i < 6; i++) {
	clrf	((c:calibrate@i)),c
	line	59
	
l4738:
;measure.c: 59: lcd_putch('=');
	movlw	(03Dh)&0ffh
	
	call	_lcd_putch
	line	61
	
l4740:
;measure.c: 61: delay10ms(28);
	movlw	(01Ch)&0ffh
	
	call	_delay10ms
	line	58
	incf	((c:calibrate@i)),c
	
l4742:
		movlw	06h-1
	cpfsgt	((c:calibrate@i)),c
	goto	u5161
	goto	u5160

u5161:
	goto	l4738
u5160:
	line	67
	
l366:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,89
	global	_put_str

;; *************** function _put_str *****************
;; Defined at:
;;		line 501 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  s               1   13[COMRAM] PTR const unsigned char 
;;		 -> STR_10(13), STR_9(10), STR_7(15), STR_6(12), 
;; Auto vars:     Size  Location     Type
;;  i               2   15[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_output_putch
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	501
global __ptext28
__ptext28:
psect	text28
	file	"src/print.c"
	line	501
	global	__size_of_put_str
	__size_of_put_str	equ	__end_of_put_str-_put_str
	
_put_str:
;incstack = 0
	opt	stack 23
	line	504
	
l3368:
;print.c: 502: int i;
;print.c: 504: for(i = 0; s[i]; i++) {
	clrf	((c:put_str@i)),c
	clrf	((c:put_str@i+1)),c
	goto	l3374
	line	505
	
l3370:
;print.c: 505: output_putch(s[i]);
	movf	((c:put_str@s)),c,w
	addwf	((c:put_str@i)),c,w
	movwf	(??_put_str+0+0)&0ffh,c
	movff	(??_put_str+0+0),tblptrl
	if	0	;There is only one active tblptr byte
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	
	call	_output_putch
	line	504
	
l3372:
	infsnz	((c:put_str@i)),c
	incf	((c:put_str@i+1)),c
	
l3374:
	movf	((c:put_str@s)),c,w
	addwf	((c:put_str@i)),c,w
	movwf	(??_put_str+0+0)&0ffh,c
	movff	(??_put_str+0+0),tblptrl
	if	0	;There is only one active tblptr byte
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3370
u3370:
	line	507
	
l430:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_put_str
	__end_of_put_str:
	signat	_put_str,4217
	global	_output_putch

;; *************** function _output_putch *****************
;; Defined at:
;;		line 488 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_put_str
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	488
global __ptext29
__ptext29:
psect	text29
	file	"src/print.c"
	line	488
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:
;incstack = 0
	opt	stack 23
;output_putch@c stored from wreg
	movwf	((c:output_putch@c)),c
	line	490
	
l3262:
;print.c: 490: lcd_putch(c);
	movf	((c:output_putch@c)),c,w
	
	call	_lcd_putch
	line	495
	
l424:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4217
	global	_lcd_putch

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 170 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_puts
;;		_calibrate
;;		_output_putch
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	170
global __ptext30
__ptext30:
psect	text30
	file	"lib/lcd44780.c"
	line	170
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:
;incstack = 0
	opt	stack 24
;lcd_putch@value stored from wreg
	movwf	((c:lcd_putch@value)),c
	line	171
	
l2940:
;lcd44780.c: 171: lcd_send((unsigned char)value, 1);
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_putch@value)),c,w
	
	call	_lcd_send
	line	172
	
l216:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
	signat	_lcd_putch,4217
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 73 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   61[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   58[COMRAM] unsigned short 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_buffer_init
;;		_buffer_puts
;;		_format_number
;;		_lcd_gotoxy
;;		_print_buffer
;;		_timer0_read_ps
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"src/measure.c"
	line	73
global __ptext31
__ptext31:
psect	text31
	file	"src/measure.c"
	line	73
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:
;incstack = 0
	opt	stack 23
	line	76
	
l4622:
;measure.c: 74: uint16_t count;
;measure.c: 76: INTCONbits.TMR0IF = 0;
	bcf	((c:4082)),c,2	;volatile
	line	80
	
l4624:
;measure.c: 80: TRISA &= ~0b00010000;
	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	82
	
l4626:
;measure.c: 82: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	98
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	118
u5377:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5377
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5377
	nop2
opt asmopt_pop

	line	85
	
l4628:
;measure.c: 85: TMR0 = 0x00;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	90
	
l4630:
;measure.c: 90: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5387:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5387
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5387
opt asmopt_pop

	line	91
	
l4632:
;measure.c: 91: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5397:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5397
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5397
opt asmopt_pop

	line	92
	
l4634:
;measure.c: 92: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5407:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5407
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5407
opt asmopt_pop

	line	93
	
l4636:
;measure.c: 93: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5417:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5417
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5417
opt asmopt_pop

	line	94
	
l4638:
;measure.c: 94: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5427:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5427
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5427
opt asmopt_pop

	line	95
	
l4640:
;measure.c: 95: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5437:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5437
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5437
opt asmopt_pop

	line	96
	
l4642:
;measure.c: 96: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5447:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5447
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5447
opt asmopt_pop

	line	97
	
l4644:
;measure.c: 97: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5457:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5457
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5457
opt asmopt_pop

	line	98
	
l4646:
;measure.c: 98: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5467:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5467
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5467
opt asmopt_pop

	line	99
	
l4648:
;measure.c: 99: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u5477:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5477
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u5477
opt asmopt_pop

	line	104
	
l4650:
;measure.c: 104: TRISA |= 0b00010000;
	bsf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	107
	
l4652:
;measure.c: 107: count = timer0_read_ps();
	call	_timer0_read_ps	;wreg free
	movff	0+?_timer0_read_ps,(c:measure_freq@count)
	movff	1+?_timer0_read_ps,(c:measure_freq@count+1)
	line	110
	
l4654:
;measure.c: 110: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	112
	
l4656:
;measure.c: 112: buffer_init();
	call	_buffer_init	;wreg free
	line	113
	
l4658:; BSR set to: 1

;measure.c: 113: buffer_puts("Freq=");
		movlw	low(STR_8)
	movwf	((c:buffer_puts@x)),c

	call	_buffer_puts	;wreg free
	line	114
	
l4660:; BSR set to: 1

;measure.c: 114: format_number(count, 10, 5);
	movff	(c:measure_freq@count),(c:format_number@n)
	movff	(c:measure_freq@count+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(05h)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	115
	
l4662:
;measure.c: 115: print_buffer();
	call	_print_buffer	;wreg free
	line	117
	
l4664:
;measure.c: 117: return count;
	movff	(c:measure_freq@count),(c:?_measure_freq)
	movff	(c:measure_freq@count+1),(c:?_measure_freq+1)
	line	118
	
l369:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
	signat	_measure_freq,90
	global	_timer0_read_ps

;; *************** function _timer0_read_ps *****************
;; Defined at:
;;		line 77 in file "lib/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   13[COMRAM] unsigned int 
;;  prev            1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"lib/timer.c"
	line	77
global __ptext32
__ptext32:
psect	text32
	file	"lib/timer.c"
	line	77
	global	__size_of_timer0_read_ps
	__size_of_timer0_read_ps	equ	__end_of_timer0_read_ps-_timer0_read_ps
	
_timer0_read_ps:
;incstack = 0
	opt	stack 26
	line	78
	
l3248:
;timer.c: 78: uint8_t prev = TMR0;
	movff	(c:4054),(c:timer0_read_ps@prev)	;volatile
	line	79
;timer.c: 79: uint16_t count = 0;
	clrf	((c:timer0_read_ps@count)),c
	clrf	((c:timer0_read_ps@count+1)),c
	line	81
;timer.c: 81: T0CONbits.T0CS = 1;
	bsf	((c:4053)),c,5	;volatile
	line	83
;timer.c: 83: do {
	
l310:
	line	85
;timer.c: 85: T0CONbits.T0SE = 1;
	bsf	((c:4053)),c,4	;volatile
	line	87
;timer.c: 87: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	88
;timer.c: 88: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	90
;timer.c: 90: T0CONbits.T0SE = 0;
	bcf	((c:4053)),c,4	;volatile
	line	92
;timer.c: 92: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	93
;timer.c: 93: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	95
	
l3250:
;timer.c: 95: ++count;
	infsnz	((c:timer0_read_ps@count)),c
	incf	((c:timer0_read_ps@count+1)),c
	line	98
	
l3252:
;timer.c: 98: } while(prev == TMR0 && count <= 255);
	movf	((c:timer0_read_ps@prev)),c,w
	xorwf	((c:4054)),c,w	;volatile
	iorwf	((c:4054+1)),c,w	;volatile

	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l3256
u3200:
	
l3254:
		decf	((c:timer0_read_ps@count+1)),c,w
	btfss	status,0
	goto	u3211
	goto	u3210

u3211:
	goto	l310
u3210:
	line	100
	
l3256:
;timer.c: 100: count = ((prev << 8) + (256 - count));
	movf	((c:timer0_read_ps@prev)),c,w
	movwf	(??_timer0_read_ps+0+0+1)&0ffh,c
	clrf	(??_timer0_read_ps+0+0)&0ffh,c
	movf	((c:timer0_read_ps@count)),c,w
	subwf	(??_timer0_read_ps+0+0),c
	movf	((c:timer0_read_ps@count+1)),c,w
	subwfb	(??_timer0_read_ps+0+1),c
	movlw	low(0100h)
	addwf	(??_timer0_read_ps+0+0),c,w
	movwf	((c:timer0_read_ps@count)),c
	movlw	high(0100h)
	addwfc	(??_timer0_read_ps+0+1),c,w
	movwf	1+((c:timer0_read_ps@count)),c
	line	101
	
l3258:
;timer.c: 101: return count;
	movff	(c:timer0_read_ps@count),(c:?_timer0_read_ps)
	movff	(c:timer0_read_ps@count+1),(c:?_timer0_read_ps+1)
	line	102
	
l314:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer0_read_ps
	__end_of_timer0_read_ps:
	signat	_timer0_read_ps,90
	global	_print_buffer

;; *************** function _print_buffer *****************
;; Defined at:
;;		line 510 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	510
global __ptext33
__ptext33:
psect	text33
	file	"src/print.c"
	line	510
	global	__size_of_print_buffer
	__size_of_print_buffer	equ	__end_of_print_buffer-_print_buffer
	
_print_buffer:
;incstack = 0
	opt	stack 26
	line	518
	
l433:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_buffer
	__end_of_print_buffer:
	signat	_print_buffer,89
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 135 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1   13[COMRAM] unsigned char 
;;  row_offsets     4   14[COMRAM] unsigned char [4]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;;		_measure_freq
;;		_measure_capacitance
;;		_measure_inductance
;;		_print_unit
;;		_print_reading
;;		_print_indicator
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	135
global __ptext34
__ptext34:
psect	text34
	file	"lib/lcd44780.c"
	line	135
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:
;incstack = 0
	opt	stack 24
;lcd_gotoxy@col stored from wreg
	movwf	((c:lcd_gotoxy@col)),c
	line	137
	
l3182:
;lcd44780.c: 137: uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	movff	(lcd_gotoxy@F2308),(c:lcd_gotoxy@row_offsets)
	movff	(lcd_gotoxy@F2308+1),(c:lcd_gotoxy@row_offsets+1)
	movff	(lcd_gotoxy@F2308+2),(c:lcd_gotoxy@row_offsets+2)
	movff	(lcd_gotoxy@F2308+3),(c:lcd_gotoxy@row_offsets+3)
	line	146
	
l3184:
;lcd44780.c: 146: if(LCD_lines == 1) {
		decf	((c:_LCD_lines)),c,w
	btfss	status,2
	goto	u3121
	goto	u3120

u3121:
	goto	l3188
u3120:
	line	147
	
l3186:
;lcd44780.c: 147: row_offsets[1] = 0x14;
	movlw	low(014h)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+01h)),c
	line	148
;lcd44780.c: 148: row_offsets[2] = 0x28;
	movlw	low(028h)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+02h)),c
	line	149
;lcd44780.c: 149: row_offsets[3] = 0x3C;
	movlw	low(03Ch)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+03h)),c
	line	156
	
l3188:
;lcd44780.c: 150: }
;lcd44780.c: 156: lcd_command(0x80 | (col + row_offsets[row]));
	movf	((c:lcd_gotoxy@row)),c,w
	addlw	low(lcd_gotoxy@row_offsets)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	addwf	((c:lcd_gotoxy@col)),c,w
	iorlw	low(080h)
	
	call	_lcd_command
	line	157
	
l207:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
	signat	_lcd_gotoxy,8313
	global	_format_number

;; *************** function _format_number *****************
;; Defined at:
;;		line 19 in file "lib/format.c"
;; Parameters:    Size  Location     Type
;;  n               2   15[COMRAM] unsigned int 
;;  base            1   17[COMRAM] unsigned char 
;;  pad             1   18[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   21[COMRAM] unsigned char [32]
;;  i               1   57[COMRAM] char 
;;  di              1   56[COMRAM] unsigned char 
;;  padchar         1   55[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:        37       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        43       0       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_buffer_putch
;; This function is called by:
;;		_measure_freq
;;		_print_reading
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"lib/format.c"
	line	19
global __ptext35
__ptext35:
psect	text35
	file	"lib/format.c"
	line	19
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:
;incstack = 0
	opt	stack 25
	line	22
	
l4474:
;format.c: 20: char buf[8 * sizeof(long)];
;format.c: 21: uint8_t di;
;format.c: 22: int8_t i = 0;
	clrf	((c:format_number@i)),c
	line	23
	
l4476:
;format.c: 23: char padchar = ' ';
	movlw	low(020h)
	movwf	((c:format_number@padchar)),c
	line	25
	
l4478:
;format.c: 25: if(pad < 0) {
	btfsc	((c:format_number@pad)),c,7
	goto	u4930
	goto	u4931

u4931:
	goto	l4484
u4930:
	line	26
	
l4480:
;format.c: 26: pad = -pad;
	negf	((c:format_number@pad)),c
	line	27
	
l4482:
;format.c: 27: padchar = '0';
	movlw	low(030h)
	movwf	((c:format_number@padchar)),c
	line	39
	
l4484:
;format.c: 39: di = n % base;
	movff	(c:format_number@n),(c:___lwmod@dividend)
	movff	(c:format_number@n+1),(c:___lwmod@dividend+1)
	movff	(c:format_number@base),(c:___lwmod@divisor)
	clrf	((c:___lwmod@divisor+1)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	movwf	((c:format_number@di)),c
	line	40
	
l4486:
;format.c: 40: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
		movlw	0Ah-1
	cpfsgt	((c:format_number@di)),c
	goto	u4941
	goto	u4940

u4941:
	goto	l4490
u4940:
	
l4488:
	movlw	low(037h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$293)),c
	clrf	1+((c:_format_number$293)),c
	movlw	high(037h)
	addwfc	1+((c:_format_number$293)),c
	goto	l4492
	
l4490:
	movlw	low(030h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$293)),c
	clrf	1+((c:_format_number$293)),c
	movlw	high(030h)
	addwfc	1+((c:_format_number$293)),c
	
l4492:
	movf	((c:format_number@i)),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_format_number$293),indf2

	
l4494:
	incf	((c:format_number@i)),c
	line	42
	
l4496:
;format.c: 42: n /= base;
	movff	(c:format_number@n),(c:___lwdiv@dividend)
	movff	(c:format_number@n+1),(c:___lwdiv@dividend+1)
	movff	(c:format_number@base),(c:___lwdiv@divisor)
	clrf	((c:___lwdiv@divisor+1)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:format_number@n)
	movff	1+?___lwdiv,(c:format_number@n+1)
	line	43
	
l4498:
;format.c: 43: } while(n > 0);
	movf	((c:format_number@n)),c,w
iorwf	((c:format_number@n+1)),c,w
	btfss	status,2
	goto	u4951
	goto	u4950

u4951:
	goto	l4484
u4950:
	goto	l4502
	line	45
	
l4500:
	movf	((c:format_number@padchar)),c,w
	
	call	_buffer_putch
	
l4502:
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
	goto	u4961
	goto	u4960

u4961:
	goto	l4500
u4960:
	line	47
	
l4504:
;format.c: 47: for(; i > 0; i--) {
		movf	((c:format_number@i)),c,w
	xorlw	80h
	addlw	-(80h^01h)
	btfsc	status,0
	goto	u4971
	goto	u4970

u4971:
	goto	l4508
u4970:
	goto	l157
	line	48
	
l4508:
;format.c: 48: buffer_putch((char)buf[(int16_t)i - 1]);
	movff	(c:format_number@i),??_format_number+0+0
	movlw	0FFh
	addwf	(??_format_number+0+0),c
	movf	(??_format_number+0+0),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_buffer_putch
	line	47
	
l4510:; BSR set to: 1

	decf	((c:format_number@i)),c
	goto	l4504
	line	51
	
l157:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
	signat	_format_number,12409
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.45/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    8[COMRAM] unsigned int 
;;  divisor         2   10[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_print_reading
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/lwmod.c"
	line	8
global __ptext36
__ptext36:
psect	text36
	file	"/opt/microchip/xc8/v1.45/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 25
	line	13
	
l3166:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u3091
	goto	u3090

u3091:
	goto	l887
u3090:
	line	14
	
l3168:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l3172
	line	16
	
l3170:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	line	15
	
l3172:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l3170
u3100:
	line	20
	
l3174:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u3111
	goto	u3110

u3111:
	goto	l3178
u3110:
	line	21
	
l3176:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	line	22
	
l3178:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l3180:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l3174
	line	24
	
l887:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l894:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    8[COMRAM] unsigned int 
;;  divisor         2   10[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[COMRAM] unsigned int 
;;  counter         1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_print_reading
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
global __ptext37
__ptext37:
psect	text37
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 25
	line	14
	
l3144:
	clrf	((c:___lwdiv@quotient)),c
	clrf	((c:___lwdiv@quotient+1)),c
	line	15
	
l3146:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u3061
	goto	u3060

u3061:
	goto	l877
u3060:
	line	16
	
l3148:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l3152
	line	18
	
l3150:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	line	17
	
l3152:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l3150
u3070:
	line	22
	
l3154:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l3156:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3081
	goto	u3080

u3081:
	goto	l3162
u3080:
	line	24
	
l3158:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l3160:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	line	27
	
l3162:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l3164:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l3154
	line	29
	
l877:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l884:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_buffer_puts

;; *************** function _buffer_puts *****************
;; Defined at:
;;		line 56 in file "lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  x               1   11[COMRAM] PTR const unsigned char 
;;		 -> STR_8(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_buffer_putch
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"lib/buffer.c"
	line	56
global __ptext38
__ptext38:
psect	text38
	file	"lib/buffer.c"
	line	56
	global	__size_of_buffer_puts
	__size_of_buffer_puts	equ	__end_of_buffer_puts-_buffer_puts
	
_buffer_puts:
;incstack = 0
	opt	stack 25
	line	57
	
l4514:; BSR set to: 1

;buffer.c: 57: while(*x) {
	goto	l4520
	line	58
	
l4516:; BSR set to: 1

;buffer.c: 58: buffer_putch(*x);
	movff	(c:buffer_puts@x),tblptrl
	if	0	;There is only one active tblptr byte
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	
	call	_buffer_putch
	line	59
	
l4518:; BSR set to: 1

;buffer.c: 59: ++x;
	incf	((c:buffer_puts@x)),c
	line	57
	
l4520:; BSR set to: 1

	movff	(c:buffer_puts@x),tblptrl
	if	0	;There is only one active tblptr byte
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u4981
	goto	u4980
u4981:
	goto	l4516
u4980:
	line	62
	
l131:; BSR set to: 1

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_buffer_puts
	__end_of_buffer_puts:
	signat	_buffer_puts,4217
	global	_buffer_putch

;; *************** function _buffer_putch *****************
;; Defined at:
;;		line 30 in file "lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_buffer_puts
;;		_format_number
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	30
global __ptext39
__ptext39:
psect	text39
	file	"lib/buffer.c"
	line	30
	global	__size_of_buffer_putch
	__size_of_buffer_putch	equ	__end_of_buffer_putch-_buffer_putch
	
_buffer_putch:; BSR set to: 1

;incstack = 0
	opt	stack 25
;buffer_putch@ch stored from wreg
	movwf	((c:buffer_putch@ch)),c
	line	31
	
l4274:
;buffer.c: 31: if(16 - buffer.n <= 0)
	movlw	low(010h)
	movwf	(??_buffer_putch+0+0)&0ffh,c
	movlw	high(010h)
	movwf	1+(??_buffer_putch+0+0)&0ffh,c
	movlb	1	; () banked
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	subwf	(??_buffer_putch+0+0),c
	movlw	0
	subwfb	(??_buffer_putch+0+1),c
	btfsc	(??_buffer_putch+0+1),c,7
	goto	u4580
	movf	(??_buffer_putch+0+1),c,w
	bnz	u4581
	decf	(??_buffer_putch+0+0),c,w
	btfsc	status,0
	goto	u4581
	goto	u4580

u4581:
	goto	l4278
u4580:
	goto	l118
	line	33
	
l4278:; BSR set to: 1

;buffer.c: 33: buffer.x[buffer.n] = ch;
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_buffer_putch+0+0)&0ffh,c
	clrf	(??_buffer_putch+0+0+1)&0ffh,c

	movlw	low(_buffer)
	addwf	(??_buffer_putch+0+0),c,w
	movwf	c:fsr2l
	movlw	high(_buffer)
	addwfc	(??_buffer_putch+0+1),c,w
	movwf	1+c:fsr2l
	movff	(c:buffer_putch@ch),indf2

	line	34
	
l4280:; BSR set to: 1

;buffer.c: 34: buffer.n++;
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_buffer_putch+0+0)&0ffh,c
	incf	(??_buffer_putch+0+0),c
	swapf	(??_buffer_putch+0+0)&0ffh,c
	movf	(0+(_buffer+010h))&0ffh,w
	xorwf	(??_buffer_putch+0+0)&0ffh,c,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_buffer_putch+0+0)&0ffh,c,w
	movwf	(0+(_buffer+010h))&0ffh
	line	36
	
l118:; BSR set to: 1

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_buffer_putch
	__end_of_buffer_putch:
	signat	_buffer_putch,4217
	global	_buffer_init

;; *************** function _buffer_init *****************
;; Defined at:
;;		line 10 in file "lib/buffer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	line	10
global __ptext40
__ptext40:
psect	text40
	file	"lib/buffer.c"
	line	10
	global	__size_of_buffer_init
	__size_of_buffer_init	equ	__end_of_buffer_init-_buffer_init
	
_buffer_init:; BSR set to: 1

;incstack = 0
	opt	stack 26
	line	11
	
l3238:
;buffer.c: 11: buffer.p = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	movlb	1	; () banked
	andwf	(0+(_buffer+010h))&0ffh
	line	12
;buffer.c: 12: buffer.n = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	(0+(_buffer+010h))&0ffh
	line	13
	
l111:; BSR set to: 1

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_buffer_init
	__end_of_buffer_init:
	signat	_buffer_init,89
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 292 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	292
global __ptext41
__ptext41:
psect	text41
	file	"lib/lcd44780.c"
	line	292
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:; BSR set to: 1

;incstack = 0
	opt	stack 25
	line	293
	
l3324:
;lcd44780.c: 293: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	294
	
l3326:
;lcd44780.c: 294: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	10
movwf	(??_lcd_clear+0+0)&0ffh,c,f
	movlw	190
u5487:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5487
	decfsz	(??_lcd_clear+0+0)&0ffh,c,f
	bra	u5487
	nop2
opt asmopt_pop

	line	296
	
l237:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,89
	global	_lcd_command

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 127 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_gotoxy
;;		_lcd_clear
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	line	127
global __ptext42
__ptext42:
psect	text42
	file	"lib/lcd44780.c"
	line	127
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:
;incstack = 0
	opt	stack 24
;lcd_command@value stored from wreg
	movwf	((c:lcd_command@value)),c
	line	128
	
l2972:
;lcd44780.c: 128: lcd_send(value, 0);
	movlw	low(0)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_command@value)),c,w
	
	call	_lcd_send
	line	129
	
l201:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
	signat	_lcd_command,4217
	global	_lcd_send

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 103 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    9[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write4bits
;; This function is called by:
;;		_lcd_command
;;		_lcd_putch
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	line	103
global __ptext43
__ptext43:
psect	text43
	file	"lib/lcd44780.c"
	line	103
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:
;incstack = 0
	opt	stack 24
;lcd_send@value stored from wreg
	movwf	((c:lcd_send@value)),c
	line	104
	
l2510:
;lcd44780.c: 104: if(mode) {
	movf	((c:lcd_send@mode)),c,w
	btfsc	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l2514
u1890:
	line	105
	
l2512:
;lcd44780.c: 105: LATB |= 0b0100;
	bsf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	106
;lcd44780.c: 106: } else {
	goto	l2516
	line	107
	
l2514:
;lcd44780.c: 107: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	116
	
l2516:
;lcd44780.c: 108: }
;lcd44780.c: 115: {
;lcd44780.c: 116: lcd_write4bits(value >> 4);
	swapf	((c:lcd_send@value)),c,w
	andlw	(0ffh shr 4) & 0ffh
	
	call	_lcd_write4bits
	line	117
	
l2518:
;lcd44780.c: 117: lcd_write4bits(value);
	movf	((c:lcd_send@value)),c,w
	
	call	_lcd_write4bits
	line	119
	
l198:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
	signat	_lcd_send,8313
	global	_lcd_write4bits

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 34 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_lcd_send
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	line	34
global __ptext44
__ptext44:
psect	text44
	file	"lib/lcd44780.c"
	line	34
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:
;incstack = 0
	opt	stack 24
;lcd_write4bits@value stored from wreg
	movwf	((c:lcd_write4bits@value)),c
	line	39
	
l2502:
;lcd44780.c: 39: LATB &= 0b00001111;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	40
;lcd44780.c: 40: LATB |= value << 4;
	swapf	((c:lcd_write4bits@value)),c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:3978)),c	;volatile
	line	55
	
l2504:
;lcd44780.c: 55: LATB |= 0b1000; _delay((unsigned long)((4)*(20000000/4000000.0))); LATB &= ~0b1000; _delay((unsigned long)((100)*(20000000/4000000.0)));;
	bsf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	opt asmopt_push
opt asmopt_off
	movlw	5
u5497:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5497
opt asmopt_pop

	
l2506:
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	
l2508:
	opt asmopt_push
opt asmopt_off
	movlw	125
u5507:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u5507
opt asmopt_pop

	line	60
	
l193:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
	signat	_lcd_write4bits,4217
	global	_delay10ms

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 64 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period_10ms     1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	file	"LC-meter.c"
	line	64
global __ptext45
__ptext45:
psect	text45
	file	"LC-meter.c"
	line	64
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:
;incstack = 0
	opt	stack 28
	line	68
	
l65:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
	signat	_delay10ms,4217
	global	___xxtofl

;; *************** function ___xxtofl *****************
;; Defined at:
;;		line 10 in file "/opt/microchip/xc8/v1.45/sources/common/xxtofl.c"
;; Parameters:    Size  Location     Type
;;  sign            1    wreg     unsigned char 
;;  val             4   63[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   71[COMRAM] unsigned char 
;;  arg             4   73[COMRAM] unsigned long 
;;  exp             1   72[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   63[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;;		_floor
;;		_log
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/xxtofl.c"
	line	10
global __ptext46
__ptext46:
psect	text46
	file	"/opt/microchip/xc8/v1.45/sources/common/xxtofl.c"
	line	10
	global	__size_of___xxtofl
	__size_of___xxtofl	equ	__end_of___xxtofl-___xxtofl
	
___xxtofl:
;incstack = 0
	opt	stack 27
;___xxtofl@sign stored from wreg
	movwf	((c:___xxtofl@sign)),c
	line	15
	
l4234:
	movf	((c:___xxtofl@sign)),c,w
	btfsc	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l1037
u4480:
	
l4236:
	btfsc	((c:___xxtofl@val+3)),c,7
	goto	u4490
	goto	u4491

u4491:
	goto	l1037
u4490:
	line	16
	
l4238:
	movff	(c:___xxtofl@val),??___xxtofl+0+0
	movff	(c:___xxtofl@val+1),??___xxtofl+0+0+1
	movff	(c:___xxtofl@val+2),??___xxtofl+0+0+2
	movff	(c:___xxtofl@val+3),??___xxtofl+0+0+3
	comf	(??___xxtofl+0+0),c
	comf	(??___xxtofl+0+1),c
	comf	(??___xxtofl+0+2),c
	comf	(??___xxtofl+0+3),c
	incf	(??___xxtofl+0+0),c
	movlw	0
	addwfc	(??___xxtofl+0+1),c
	addwfc	(??___xxtofl+0+2),c
	addwfc	(??___xxtofl+0+3),c
	movff	??___xxtofl+0+0,(c:___xxtofl@arg)
	movff	??___xxtofl+0+1,(c:___xxtofl@arg+1)
	movff	??___xxtofl+0+2,(c:___xxtofl@arg+2)
	movff	??___xxtofl+0+3,(c:___xxtofl@arg+3)
	line	17
	goto	l4240
	line	18
	
l1037:
	line	19
	movff	(c:___xxtofl@val),(c:___xxtofl@arg)
	movff	(c:___xxtofl@val+1),(c:___xxtofl@arg+1)
	movff	(c:___xxtofl@val+2),(c:___xxtofl@arg+2)
	movff	(c:___xxtofl@val+3),(c:___xxtofl@arg+3)
	line	21
	
l4240:
	movf	((c:___xxtofl@val)),c,w
iorwf	((c:___xxtofl@val+1)),c,w
iorwf	((c:___xxtofl@val+2)),c,w
iorwf	((c:___xxtofl@val+3)),c,w
	btfss	status,2
	goto	u4501
	goto	u4500

u4501:
	goto	l4244
u4500:
	line	22
	
l4242:
	clrf	((c:?___xxtofl)),c
	clrf	((c:?___xxtofl+1)),c
	clrf	((c:?___xxtofl+2)),c
	clrf	((c:?___xxtofl+3)),c

	goto	l1040
	line	23
	
l4244:
	movlw	low(096h)
	movwf	((c:___xxtofl@exp)),c
	line	24
	goto	l4248
	line	25
	
l4246:
	incf	((c:___xxtofl@exp)),c
	line	26
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3)),c
	rrcf	((c:___xxtofl@arg+2)),c
	rrcf	((c:___xxtofl@arg+1)),c
	rrcf	((c:___xxtofl@arg)),c
	line	24
	
l4248:
	movlw	0
	andwf	((c:___xxtofl@arg)),c,w
	movwf	(??___xxtofl+0+0)&0ffh,c
	movlw	0
	andwf	((c:___xxtofl@arg+1)),c,w
	movwf	1+(??___xxtofl+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2)),c,w
	movwf	2+(??___xxtofl+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___xxtofl@arg+3)),c,w
	movwf	3+(??___xxtofl+0+0)&0ffh,c
	movf	(??___xxtofl+0+0),c,w
iorwf	(??___xxtofl+0+1),c,w
iorwf	(??___xxtofl+0+2),c,w
iorwf	(??___xxtofl+0+3),c,w
	btfss	status,2
	goto	u4511
	goto	u4510

u4511:
	goto	l4246
u4510:
	goto	l1044
	line	29
	
l4250:
	incf	((c:___xxtofl@exp)),c
	line	30
	
l4252:
	movlw	low(01h)
	addwf	((c:___xxtofl@arg)),c
	movlw	0
	addwfc	((c:___xxtofl@arg+1)),c
	addwfc	((c:___xxtofl@arg+2)),c
	addwfc	((c:___xxtofl@arg+3)),c
	line	31
	
l4254:
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3)),c
	rrcf	((c:___xxtofl@arg+2)),c
	rrcf	((c:___xxtofl@arg+1)),c
	rrcf	((c:___xxtofl@arg)),c
	line	32
	
l1044:
	line	28
	movlw	0
	andwf	((c:___xxtofl@arg)),c,w
	movwf	(??___xxtofl+0+0)&0ffh,c
	movlw	0
	andwf	((c:___xxtofl@arg+1)),c,w
	movwf	1+(??___xxtofl+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2)),c,w
	movwf	2+(??___xxtofl+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___xxtofl@arg+3)),c,w
	movwf	3+(??___xxtofl+0+0)&0ffh,c
	movf	(??___xxtofl+0+0),c,w
iorwf	(??___xxtofl+0+1),c,w
iorwf	(??___xxtofl+0+2),c,w
iorwf	(??___xxtofl+0+3),c,w
	btfss	status,2
	goto	u4521
	goto	u4520

u4521:
	goto	l4250
u4520:
	goto	l4258
	line	34
	
l4256:
	decf	((c:___xxtofl@exp)),c
	line	35
	bcf	status,0
	rlcf	((c:___xxtofl@arg)),c
	rlcf	((c:___xxtofl@arg+1)),c
	rlcf	((c:___xxtofl@arg+2)),c
	rlcf	((c:___xxtofl@arg+3)),c
	line	33
	
l4258:
	
	btfsc	((c:___xxtofl@arg+2)),c,(23)&7
	goto	u4531
	goto	u4530
u4531:
	goto	l1051
u4530:
	
l4260:
		movlw	02h-0
	cpfslt	((c:___xxtofl@exp)),c
	goto	u4541
	goto	u4540

u4541:
	goto	l4256
u4540:
	
l1051:
	line	37
	
	btfsc	((c:___xxtofl@exp)),c,(0)&7
	goto	u4551
	goto	u4550
u4551:
	goto	l1052
u4550:
	line	38
	
l4262:
	movlw	0FFh
	andwf	((c:___xxtofl@arg)),c
	movlw	0FFh
	andwf	((c:___xxtofl@arg+1)),c
	movlw	07Fh
	andwf	((c:___xxtofl@arg+2)),c
	movlw	0FFh
	andwf	((c:___xxtofl@arg+3)),c
	
l1052:
	line	39
	bcf status,0
	rrcf	((c:___xxtofl@exp)),c

	line	40
	movff	(c:___xxtofl@exp),??___xxtofl+0+0
	clrf	(??___xxtofl+0+0+1)&0ffh,c
	clrf	(??___xxtofl+0+0+2)&0ffh,c
	clrf	(??___xxtofl+0+0+3)&0ffh,c
	movff	??___xxtofl+0+0,??___xxtofl+0+3
	clrf	(??___xxtofl+0+2),c
	clrf	(??___xxtofl+0+1),c
	clrf	(??___xxtofl+0+0),c
	movf	(??___xxtofl+0+0),c,w
	iorwf	((c:___xxtofl@arg)),c
	movf	(??___xxtofl+0+1),c,w
	iorwf	((c:___xxtofl@arg+1)),c
	movf	(??___xxtofl+0+2),c,w
	iorwf	((c:___xxtofl@arg+2)),c
	movf	(??___xxtofl+0+3),c,w
	iorwf	((c:___xxtofl@arg+3)),c

	line	41
	
l4264:
	movf	((c:___xxtofl@sign)),c,w
	btfsc	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l4270
u4560:
	
l4266:
	btfsc	((c:___xxtofl@val+3)),c,7
	goto	u4570
	goto	u4571

u4571:
	goto	l4270
u4570:
	line	42
	
l4268:
	bsf	(0+(31/8)+(c:___xxtofl@arg)),c,(31)&7
	line	43
	
l4270:
	movff	(c:___xxtofl@arg),(c:?___xxtofl)
	movff	(c:___xxtofl@arg+1),(c:?___xxtofl+1)
	movff	(c:___xxtofl@arg+2),(c:?___xxtofl+2)
	movff	(c:___xxtofl@arg+3),(c:?___xxtofl+3)
	line	44
	
l1040:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___xxtofl
	__end_of___xxtofl:
	signat	___xxtofl,8316
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 84 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   79[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2___lwdiv
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"LC-meter.c"
	line	84
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
;incstack = 0
	opt	stack 23
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	line	85
	
i2l3740:
;LC-meter.c: 85: if(PIR1bits.TMR2IF) {
	btfss	((c:3998)),c,1	;volatile
	goto	i2u367_41
	goto	i2u367_40
i2u367_41:
	goto	i2l83
i2u367_40:
	line	86
	
i2l3742:
;LC-meter.c: 86: bres += 256;
	movlw	0
	movlb	0	; () banked
	addwf	((_bres))&0ffh	;volatile
	movlw	01h
	addwfc	((_bres+1))&0ffh	;volatile
	movlw	0
	addwfc	((_bres+2))&0ffh	;volatile
	movlw	0
	addwfc	((_bres+3))&0ffh	;volatile
	line	87
;LC-meter.c: 87: if(bres >= ((unsigned long)((double)((20000000) / 4) / 1000))) {
		movf	((_bres+3))&0ffh,w	;volatile
	iorwf	((_bres+2))&0ffh,w	;volatile
	bnz	i2u368_40
	movlw	136
	subwf	 ((_bres))&0ffh,w	;volatile
	movlw	19
	subwfb	((_bres+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u368_41
	goto	i2u368_40

i2u368_41:
	goto	i2l3758
i2u368_40:
	line	88
	
i2l3744:; BSR set to: 0

;LC-meter.c: 88: bres -= ((unsigned long)((double)((20000000) / 4) / 1000));
	movlw	088h
	subwf	((_bres))&0ffh	;volatile
	movlw	013h
	subwfb	((_bres+1))&0ffh	;volatile
	movlw	0
	subwfb	((_bres+2))&0ffh	;volatile
	movlw	0
	subwfb	((_bres+3))&0ffh	;volatile
	line	89
	
i2l3746:; BSR set to: 0

;LC-meter.c: 89: msecpart++;
	infsnz	((c:_msecpart)),c	;volatile
	incf	((c:_msecpart+1)),c	;volatile
	line	90
	
i2l3748:; BSR set to: 0

;LC-meter.c: 90: led_cycle++;
	infsnz	((c:_led_cycle)),c	;volatile
	incf	((c:_led_cycle+1)),c	;volatile
	line	92
	
i2l3750:; BSR set to: 0

;LC-meter.c: 92: LATC &= ~(1 << 2); LATC |= (!!(led_cycle >= 0 && led_cycle < led_interval/6)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	
i2l3752:; BSR set to: 0

	movff	(_led_interval),(c:i2___lwdiv@dividend)	;volatile
	movff	(_led_interval+1),(c:i2___lwdiv@dividend+1)	;volatile
	movlw	high(06h)
	movwf	((c:i2___lwdiv@divisor+1)),c
	movlw	low(06h)
	movwf	((c:i2___lwdiv@divisor)),c
	call	i2___lwdiv	;wreg free
		movf	(0+?i2___lwdiv),c,w
	subwf	((c:_led_cycle)),c,w	;volatile
	movf	(1+?i2___lwdiv),c,w
	subwfb	((c:_led_cycle+1)),c,w	;volatile
	btfss	status,0
	goto	i2u369_41
	goto	i2u369_40

i2u369_41:
	clrf	(??_isr+0+0)&0ffh,c
	incf	(??_isr+0+0)&0ffh,c
	goto	i2u370_48
i2u369_40:
	clrf	(??_isr+0+0)&0ffh,c
i2u370_48:
	bcf	status,0
	rlcf	(??_isr+0+0),c
	bcf	status,0
	rlcf	(??_isr+0+0),c,w
	iorwf	((c:3979)),c	;volatile
	line	96
	
i2l3754:
;LC-meter.c: 96: if(msecpart >= 1000) {
		movlw	232
	subwf	 ((c:_msecpart)),c,w	;volatile
	movlw	3
	subwfb	((c:_msecpart+1)),c,w	;volatile
	btfss	status,0
	goto	i2u371_41
	goto	i2u371_40

i2u371_41:
	goto	i2l3758
i2u371_40:
	line	98
	
i2l3756:
;LC-meter.c: 98: seconds++;
	movlw	low(01h)
	movlb	1	; () banked
	addwf	((_seconds))&0ffh	;volatile
	movlw	0
	addwfc	((_seconds+1))&0ffh	;volatile
	addwfc	((_seconds+2))&0ffh	;volatile
	addwfc	((_seconds+3))&0ffh	;volatile
	line	99
;LC-meter.c: 99: msecpart -= 1000;
	movlw	low(03E8h)
	subwf	((c:_msecpart)),c	;volatile
	movlw	high(03E8h)
	subwfb	((c:_msecpart+1)),c	;volatile
	line	103
	
i2l3758:
;LC-meter.c: 100: }
;LC-meter.c: 101: }
;LC-meter.c: 103: PIR1bits.TMR2IF=0;
	bcf	((c:3998)),c,1	;volatile
	line	111
	
i2l83:
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,90
	global	i2___lwdiv

;; *************** function i2___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwdiv         2    4[COMRAM] unsigned int 
;;  __lwdiv         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=0
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
global __ptext48
__ptext48:
psect	text48
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
	global	__size_ofi2___lwdiv
	__size_ofi2___lwdiv	equ	__end_ofi2___lwdiv-i2___lwdiv
	
i2___lwdiv:
;incstack = 0
	opt	stack 23
	line	14
	
i2l3718:; BSR set to: 0

	clrf	((c:i2___lwdiv@quotient)),c
	clrf	((c:i2___lwdiv@quotient+1)),c
	line	15
	
i2l3720:; BSR set to: 0

	movf	((c:i2___lwdiv@divisor)),c,w
iorwf	((c:i2___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	i2u364_41
	goto	i2u364_40

i2u364_41:
	goto	i2l877
i2u364_40:
	line	16
	
i2l3722:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:i2___lwdiv@counter)),c
	line	17
	goto	i2l3726
	line	18
	
i2l3724:; BSR set to: 0

	bcf	status,0
	rlcf	((c:i2___lwdiv@divisor)),c
	rlcf	((c:i2___lwdiv@divisor+1)),c
	line	19
	incf	((c:i2___lwdiv@counter)),c
	line	17
	
i2l3726:; BSR set to: 0

	
	btfss	((c:i2___lwdiv@divisor+1)),c,(15)&7
	goto	i2u365_41
	goto	i2u365_40
i2u365_41:
	goto	i2l3724
i2u365_40:
	line	22
	
i2l3728:; BSR set to: 0

	bcf	status,0
	rlcf	((c:i2___lwdiv@quotient)),c
	rlcf	((c:i2___lwdiv@quotient+1)),c
	line	23
	
i2l3730:; BSR set to: 0

		movf	((c:i2___lwdiv@divisor)),c,w
	subwf	((c:i2___lwdiv@dividend)),c,w
	movf	((c:i2___lwdiv@divisor+1)),c,w
	subwfb	((c:i2___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	i2u366_41
	goto	i2u366_40

i2u366_41:
	goto	i2l3736
i2u366_40:
	line	24
	
i2l3732:; BSR set to: 0

	movf	((c:i2___lwdiv@divisor)),c,w
	subwf	((c:i2___lwdiv@dividend)),c
	movf	((c:i2___lwdiv@divisor+1)),c,w
	subwfb	((c:i2___lwdiv@dividend+1)),c

	line	25
	
i2l3734:; BSR set to: 0

	bsf	(0+(0/8)+(c:i2___lwdiv@quotient)),c,(0)&7
	line	27
	
i2l3736:; BSR set to: 0

	bcf	status,0
	rrcf	((c:i2___lwdiv@divisor+1)),c
	rrcf	((c:i2___lwdiv@divisor)),c
	line	28
	
i2l3738:; BSR set to: 0

	decfsz	((c:i2___lwdiv@counter)),c
	
	goto	i2l3728
	line	29
	
i2l877:; BSR set to: 0

	line	30
	movff	(c:i2___lwdiv@quotient),(c:?i2___lwdiv)
	movff	(c:i2___lwdiv@quotient+1),(c:?i2___lwdiv+1)
	line	31
	
i2l884:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2___lwdiv
	__end_ofi2___lwdiv:
	signat	i2___lwdiv,90
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp6
	wtemp6 set btemp+1
	end
