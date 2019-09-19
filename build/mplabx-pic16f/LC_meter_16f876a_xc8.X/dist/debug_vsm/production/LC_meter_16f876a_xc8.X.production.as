opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 201502162209"

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
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTA equ 05h ;# 
# 211 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTB equ 06h ;# 
# 272 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PORTC equ 07h ;# 
# 333 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T1CON equ 010h ;# 
# 615 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
T2CON equ 012h ;# 
# 691 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXREG equ 019h ;# 
# 941 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "/opt/microchip/xc8/v1.34/include/pic16f876a.h"
EECON2 equ 018Dh ;# 
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
	FNCALL	_main,_ser_init
	FNCALL	_main,_ser_puts
	FNCALL	_main,_timer0_init
	FNCALL	_main,_timer2_init
	FNCALL	_print_indicator,_lcd_gotoxy
	FNCALL	_print_indicator,_lcd_puts
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
	FNCALL	_lcd_puts,_lcd_send
	FNCALL	_format_xint32,_buffer_putch
	FNCALL	_format_xint32,_format_number
	FNCALL	_format_double,___awtofl
	FNCALL	_format_double,___fldiv
	FNCALL	_format_double,___flge
	FNCALL	_format_double,___flmul
	FNCALL	_format_double,___flsub
	FNCALL	_format_double,___fltol
	FNCALL	_format_double,_buffer_putch
	FNCALL	_format_double,_floor
	FNCALL	_format_double,_log10
	FNCALL	_format_double,_pow
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
	FNCALL	_ldexp,___flge
	FNCALL	_ldexp,___flneg
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
	FNCALL	_log,___flge
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
	FNCALL	_calibrate,___lwtofl
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_lcd_clear
	FNCALL	_calibrate,_lcd_gotoxy
	FNCALL	_calibrate,_lcd_send
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_put_str
	FNCALL	_calibrate,_ser_puts
	FNCALL	_put_str,_output_putch
	FNCALL	_output_putch,_lcd_send
	FNCALL	_output_putch,_ser_putch
	FNCALL	_measure_freq,_buffer_init
	FNCALL	_measure_freq,_buffer_puts
	FNCALL	_measure_freq,_format_number
	FNCALL	_measure_freq,_lcd_gotoxy
	FNCALL	_measure_freq,_print_buffer
	FNCALL	_measure_freq,_timer0_read_ps
	FNCALL	_print_buffer,_ser_putch
	FNCALL	_print_buffer,_ser_puts
	FNCALL	_ser_puts,_ser_putch
	FNCALL	_lcd_gotoxy,_lcd_command
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,_buffer_putch
	FNCALL	_buffer_puts,_buffer_putch
	FNCALL	_lcd_clear,_lcd_command
	FNCALL	_lcd_command,_lcd_send
	FNCALL	_lcd_send,_lcd_write4bits
	FNCALL	___lwtofl,___flpack
	FNROOT	_main
	FNCALL	intlevel1,_global_int
	global	intlevel1
	FNROOT	intlevel1
	global	lcd_gotoxy@F1148
	global	_mode
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"../../../lib/lcd44780.c"
	line	135

;initializer for lcd_gotoxy@F1148
	retlw	low(0)
	retlw	040h
	retlw	014h
	retlw	054h
	file	"../../../LC-meter.c"
	line	48

;initializer for _mode
	retlw	0FFh
	global	exp@coeff
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
stringtab:
	global    __stringtab
__stringtab:
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
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
	file	"/opt/microchip/xc8/v1.34/sources/common/exp.c"
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

	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	stringtext
	file	"/opt/microchip/xc8/v1.34/sources/common/log.c"
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

	global __end_oflog@coeff
__end_oflog@coeff:
	global	exp@coeff
	global	log@coeff
	global	_LCD_function
	global	_rxiptr
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
	global	_LCD_ctrl
	global	_LCD_lines
	global	_LCD_mode
	global	_rxoptr
	global	_ser_tmp
	global	_buffer
	global	_F1
	global	_CCal
psect	nvBANK3,class=BANK3,space=1,noexec
global __pnvBANK3
__pnvBANK3:
_CCal:
       ds      4

	global	_bres
_bres:
       ds      2

	global	_msecpart
_msecpart:
       ds      2

	global	_INTCON
_INTCON	set	0xB
	global	_PIR1
_PIR1	set	0xC
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_RCREG
_RCREG	set	0x1A
	global	_T2CON
_T2CON	set	0x12
	global	_TMR0
_TMR0	set	0x1
	global	_TMR2
_TMR2	set	0x11
	global	_TXREG
_TXREG	set	0x19
	global	_CREN
_CREN	set	0xC4
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RC7
_RC7	set	0x3F
	global	_RCIF
_RCIF	set	0x65
	global	_RX9
_RX9	set	0xC6
	global	_SPEN
_SPEN	set	0xC7
	global	_TXIF
_TXIF	set	0x64
	global	_CMCON
_CMCON	set	0x9C
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_PIE1
_PIE1	set	0x8C
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRISC6
_TRISC6	set	0x43E
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
	global	_TXIE
_TXIE	set	0x464
psect	stringtext
	
STR_15:	
	retlw	45	;'-'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	32	;' '
	retlw	40	;'('
	retlw	85	;'U'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	41	;')'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	45	;'-'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	32	;' '
	retlw	40	;'('
	retlw	85	;'U'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	41	;')'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	0
psect	stringtext
	
STR_25:	
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
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_37:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_23:	
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
	retlw	0
psect	stringtext
	
STR_28:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	45	;'-'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_33:	
	retlw	13
	retlw	10
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	13
	retlw	10
	retlw	70	;'F'
	retlw	49	;'1'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_31:	
	retlw	13
	retlw	10
	retlw	70	;'F'
	retlw	50	;'2'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_32:	
	retlw	13
	retlw	10
	retlw	70	;'F'
	retlw	51	;'3'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	70	;'F'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	113	;'q'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_35:	
	retlw	67	;'C'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_29:	
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	82	;'R'
	retlw	67	;'C'
	retlw	52	;'4'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	45	;'-'
	retlw	42	;'*'
	retlw	45	;'-'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	109	;'m'
	retlw	70	;'F'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	110	;'n'
	retlw	70	;'F'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	112	;'p'
	retlw	70	;'F'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	117	;'u'
	retlw	70	;'F'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	109	;'m'
	retlw	72	;'H'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	110	;'n'
	retlw	72	;'H'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	117	;'u'
	retlw	72	;'H'
	retlw	0
psect	stringtext
STR_1	equ	STR_2+1
STR_19	equ	STR_18+0
STR_10	equ	STR_18+1
STR_20	equ	STR_18+1
STR_12	equ	STR_18+3
STR_13	equ	STR_9+0
STR_17	equ	STR_9+0
STR_22	equ	STR_9+0
STR_24	equ	STR_9+0
STR_26	equ	STR_9+0
STR_34	equ	STR_9+0
STR_36	equ	STR_9+0
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"dist/debug_vsm/production/LC_meter_16f876a_xc8.X.production.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_LCD_function:
       ds      1

_rxiptr:
       ds      1

_txiptr:
       ds      1

_txoptr:
       ds      1

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_F2:
       ds      4

_F3:
       ds      4

_msecs:
       ds      4

_seconds:
       ds      4

_timer1of:
       ds      4

_blink:
       ds      2

_LCD_ctrl:
       ds      1

_LCD_lines:
       ds      1

_LCD_mode:
       ds      1

_rxoptr:
       ds      1

_ser_tmp:
       ds      1

_buffer:
       ds      17

_F1:
       ds      4

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"../../../lib/lcd44780.c"
	line	135
lcd_gotoxy@F1148:
       ds      4

psect	dataBANK3
	file	"../../../LC-meter.c"
	line	48
_mode:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_rxfifo:
       ds      16

_txfifo:
       ds      16

	file	"dist/debug_vsm/production/LC_meter_16f876a_xc8.X.production.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+030h)
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+020h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK3
	global __pidataBANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	fcall	__pidataBANK3+0		;fetch initializer
	movwf	__pdataBANK3+0&07fh		
	fcall	__pidataBANK3+1		;fetch initializer
	movwf	__pdataBANK3+1&07fh		
	fcall	__pidataBANK3+2		;fetch initializer
	movwf	__pdataBANK3+2&07fh		
	fcall	__pidataBANK3+3		;fetch initializer
	movwf	__pdataBANK3+3&07fh		
	fcall	__pidataBANK3+4		;fetch initializer
	movwf	__pdataBANK3+4&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
?_format_double:	; 0 bytes @ 0x0
	global	format_double@num
format_double@num:	; 4 bytes @ 0x0
	ds	4
	global	_format_double$1008
_format_double$1008:	; 4 bytes @ 0x4
	ds	4
	global	_format_double$1009
_format_double$1009:	; 4 bytes @ 0x8
	ds	4
	global	format_double@weight
format_double@weight:	; 4 bytes @ 0xC
	ds	4
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0x10
	ds	2
	global	format_double@m
format_double@m:	; 2 bytes @ 0x12
	ds	2
	global	_main$257
_main$257:	; 2 bytes @ 0x14
	ds	2
	global	main@new_mode
main@new_mode:	; 1 bytes @ 0x16
	ds	1
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
	global	_measure_capacitance$1010
_measure_capacitance$1010:	; 4 bytes @ 0x0
	ds	4
	global	_measure_capacitance$1011
_measure_capacitance$1011:	; 4 bytes @ 0x4
	ds	4
	global	_measure_capacitance$1012
_measure_capacitance$1012:	; 4 bytes @ 0x8
	ds	4
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0xC
	ds	1
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0xD
	ds	2
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0xF
	ds	4
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	eval_poly@res
eval_poly@res:	; 4 bytes @ 0x0
	ds	4
	global	?_ldexp
?_ldexp:	; 4 bytes @ 0x4
	global	?_log
?_log:	; 4 bytes @ 0x4
	global	ldexp@value
ldexp@value:	; 4 bytes @ 0x4
	global	log@x
log@x:	; 4 bytes @ 0x4
	ds	4
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x8
	global	log@exponent
log@exponent:	; 2 bytes @ 0x8
	ds	2
??_ldexp:	; 0 bytes @ 0xA
	global	?_log10
?_log10:	; 4 bytes @ 0xA
	global	log10@x
log10@x:	; 4 bytes @ 0xA
	ds	2
	global	_ldexp$661
_ldexp$661:	; 4 bytes @ 0xC
	ds	2
	global	_log10$1020
_log10$1020:	; 4 bytes @ 0xE
	ds	4
	global	?___fltol
?___fltol:	; 4 bytes @ 0x12
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x12
	ds	4
??___fltol:	; 0 bytes @ 0x16
	ds	4
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x1A
	ds	1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x1B
	ds	1
	global	?___altofl
?___altofl:	; 4 bytes @ 0x1C
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0x1C
	global	___altofl@c
___altofl@c:	; 4 bytes @ 0x1C
	ds	4
	global	___altofl@sign
___altofl@sign:	; 1 bytes @ 0x20
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0x20
	ds	1
	global	?_floor
?_floor:	; 4 bytes @ 0x21
	global	floor@x
floor@x:	; 4 bytes @ 0x21
	ds	3
	global	_measure_inductance$1013
_measure_inductance$1013:	; 4 bytes @ 0x24
	ds	1
	global	floor@i
floor@i:	; 4 bytes @ 0x25
	ds	3
	global	_measure_inductance$1017
_measure_inductance$1017:	; 4 bytes @ 0x28
	ds	1
	global	floor@expon
floor@expon:	; 2 bytes @ 0x29
	ds	2
	global	?_exp
?_exp:	; 4 bytes @ 0x2B
	global	exp@x
exp@x:	; 4 bytes @ 0x2B
	ds	1
	global	_measure_inductance$1018
_measure_inductance$1018:	; 4 bytes @ 0x2C
	ds	3
	global	_exp$1023
_exp$1023:	; 4 bytes @ 0x2F
	ds	1
	global	_measure_inductance$1019
_measure_inductance$1019:	; 4 bytes @ 0x30
	ds	3
	global	_exp$755
_exp$755:	; 4 bytes @ 0x33
	ds	1
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x34
	ds	1
	global	_measure_inductance$1014
_measure_inductance$1014:	; 4 bytes @ 0x35
	ds	2
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x37
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x39
	global	_measure_inductance$1015
_measure_inductance$1015:	; 4 bytes @ 0x39
	ds	1
	global	?_pow
?_pow:	; 4 bytes @ 0x3A
	global	pow@x
pow@x:	; 4 bytes @ 0x3A
	ds	3
	global	_measure_inductance$1016
_measure_inductance$1016:	; 4 bytes @ 0x3D
	ds	1
	global	pow@y
pow@y:	; 4 bytes @ 0x3E
	ds	3
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x41
	ds	1
	global	_pow$1021
_pow$1021:	; 4 bytes @ 0x42
	ds	1
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x43
	ds	3
	global	_pow$1022
_pow$1022:	; 4 bytes @ 0x46
	ds	4
	global	pow@sign
pow@sign:	; 1 bytes @ 0x4A
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x4B
	ds	4
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ser_putch:	; 0 bytes @ 0x0
?_lcd_init:	; 0 bytes @ 0x0
?_ser_init:	; 0 bytes @ 0x0
?_calibrate:	; 0 bytes @ 0x0
?_lcd_clear:	; 0 bytes @ 0x0
?_measure_capacitance:	; 0 bytes @ 0x0
?_measure_inductance:	; 0 bytes @ 0x0
?_print_unit:	; 0 bytes @ 0x0
?_print_indicator:	; 0 bytes @ 0x0
?_output_putch:	; 0 bytes @ 0x0
?_print_buffer:	; 0 bytes @ 0x0
?_timer0_init:	; 0 bytes @ 0x0
?_timer2_init:	; 0 bytes @ 0x0
?_delay10ms:	; 0 bytes @ 0x0
?_global_int:	; 0 bytes @ 0x0
??_global_int:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_lcd_write4bits:	; 0 bytes @ 0x0
?_lcd_command:	; 0 bytes @ 0x0
?_buffer_init:	; 0 bytes @ 0x0
?_buffer_putch:	; 1 bytes @ 0x0
print_unit@unit:	; 1 bytes @ 0x0
delay10ms@period_10ms:	; 1 bytes @ 0x0
	ds	4
??_ser_putch:	; 0 bytes @ 0x4
??_lcd_init:	; 0 bytes @ 0x4
??_ser_init:	; 0 bytes @ 0x4
??_frexp:	; 0 bytes @ 0x4
??_timer0_init:	; 0 bytes @ 0x4
??_timer2_init:	; 0 bytes @ 0x4
??_delay10ms:	; 0 bytes @ 0x4
??_lcd_write4bits:	; 0 bytes @ 0x4
??_buffer_init:	; 0 bytes @ 0x4
??___awtofl:	; 0 bytes @ 0x4
??___flneg:	; 0 bytes @ 0x4
??___lltofl:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
??___lwmod:	; 0 bytes @ 0x4
	global	?_timer0_read_ps
?_timer0_read_ps:	; 2 bytes @ 0x4
	global	buffer_putch@ch
buffer_putch@ch:	; 1 bytes @ 0x4
	global	ser_putch@c
ser_putch@c:	; 1 bytes @ 0x4
	global	___awtofl@sign
___awtofl@sign:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	ds	1
??_ser_puts:	; 0 bytes @ 0x5
??_format_number:	; 0 bytes @ 0x5
??_print_buffer:	; 0 bytes @ 0x5
??_buffer_puts:	; 0 bytes @ 0x5
	global	print_buffer@i
print_buffer@i:	; 1 bytes @ 0x5
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x5
	ds	1
??_lcd_send:	; 0 bytes @ 0x6
??_lcd_gotoxy:	; 0 bytes @ 0x6
??_lcd_puts:	; 0 bytes @ 0x6
??_log10:	; 0 bytes @ 0x6
??_pow:	; 0 bytes @ 0x6
??_floor:	; 0 bytes @ 0x6
??_calibrate:	; 0 bytes @ 0x6
??_measure_capacitance:	; 0 bytes @ 0x6
??_measure_inductance:	; 0 bytes @ 0x6
??_exp:	; 0 bytes @ 0x6
??_print_reading:	; 0 bytes @ 0x6
??_print_indicator:	; 0 bytes @ 0x6
??_output_putch:	; 0 bytes @ 0x6
??_format_xint32:	; 0 bytes @ 0x6
??_format_double:	; 0 bytes @ 0x6
??_main:	; 0 bytes @ 0x6
??_lcd_command:	; 0 bytes @ 0x6
??___altofl:	; 0 bytes @ 0x6
??___flsub:	; 0 bytes @ 0x6
??_log:	; 0 bytes @ 0x6
??___lwtofl:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_lcd_send:	; 0 bytes @ 0x0
?_ser_puts:	; 0 bytes @ 0x0
??_buffer_putch:	; 0 bytes @ 0x0
??_timer0_read_ps:	; 0 bytes @ 0x0
?___flge:	; 1 bit 
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___flpack
?___flpack:	; 4 bytes @ 0x0
	global	?_frexp
?_frexp:	; 4 bytes @ 0x0
	global	?___flneg
?___flneg:	; 4 bytes @ 0x0
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x0
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x0
	global	_timer0_init$114
_timer0_init$114:	; 2 bytes @ 0x0
	global	ser_puts@s
ser_puts@s:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___flpack@arg
___flpack@arg:	; 4 bytes @ 0x0
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x0
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x0
	global	frexp@value
frexp@value:	; 4 bytes @ 0x0
	ds	1
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x1
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0x1
	global	_lcd_init$321
_lcd_init$321:	; 2 bytes @ 0x1
	ds	1
?_lcd_puts:	; 0 bytes @ 0x2
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0x2
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0x2
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0x2
	global	_timer0_init$115
_timer0_init$115:	; 2 bytes @ 0x2
	global	lcd_puts@string
lcd_puts@string:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
?_lcd_gotoxy:	; 0 bytes @ 0x3
?_lcd_begin:	; 0 bytes @ 0x3
??_lcd_clear:	; 0 bytes @ 0x3
?_put_str:	; 0 bytes @ 0x3
?_buffer_puts:	; 1 bytes @ 0x3
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x3
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0x3
	global	put_str@s
put_str@s:	; 2 bytes @ 0x3
	global	buffer_puts@x
buffer_puts@x:	; 2 bytes @ 0x3
	ds	1
??_lcd_begin:	; 0 bytes @ 0x4
	global	timer0_read_ps@prev
timer0_read_ps@prev:	; 1 bytes @ 0x4
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x4
	global	lcd_puts@i
lcd_puts@i:	; 1 bytes @ 0x4
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x4
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	global	_timer0_init$116
_timer0_init$116:	; 2 bytes @ 0x4
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x4
	ds	1
??_put_str:	; 0 bytes @ 0x5
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x5
	global	timer0_read_ps@count
timer0_read_ps@count:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	global	lcd_gotoxy@row_offsets
lcd_gotoxy@row_offsets:	; 4 bytes @ 0x5
	ds	1
??___flpack:	; 0 bytes @ 0x6
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0x6
	global	_timer0_init$117
_timer0_init$117:	; 2 bytes @ 0x6
	ds	1
?_format_number:	; 0 bytes @ 0x7
	global	format_number@n
format_number@n:	; 2 bytes @ 0x7
	ds	1
??___flge:	; 0 bytes @ 0x8
	global	timer0_init@prescaler
timer0_init@prescaler:	; 1 bytes @ 0x8
	global	put_str@i
put_str@i:	; 2 bytes @ 0x8
	ds	1
??_print_unit:	; 0 bytes @ 0x9
	global	print_indicator@indicate
print_indicator@indicate:	; 1 bytes @ 0x9
	global	timer0_init@ps_mode
timer0_init@ps_mode:	; 1 bytes @ 0x9
	global	format_number@base
format_number@base:	; 1 bytes @ 0x9
	ds	1
	global	?___awtofl
?___awtofl:	; 4 bytes @ 0xA
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0xA
	global	?___lltofl
?___lltofl:	; 4 bytes @ 0xA
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0xA
	global	___awtofl@c
___awtofl@c:	; 2 bytes @ 0xA
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0xA
	global	___lltofl@c
___lltofl@c:	; 4 bytes @ 0xA
	ds	1
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0xB
	ds	3
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0xE
	ds	4
??___fldiv:	; 0 bytes @ 0x12
	ds	4
	global	___fldiv@f3
___fldiv@f3:	; 4 bytes @ 0x16
	ds	4
	global	___fldiv@cntr
___fldiv@cntr:	; 1 bytes @ 0x1A
	ds	1
	global	___fldiv@exp
___fldiv@exp:	; 1 bytes @ 0x1B
	ds	1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x1C
	ds	1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x1D
	global	___flmul@f1
___flmul@f1:	; 4 bytes @ 0x1D
	ds	4
	global	___flmul@f2
___flmul@f2:	; 4 bytes @ 0x21
	ds	4
??___flmul:	; 0 bytes @ 0x25
	ds	4
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x29
	ds	1
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x2A
	ds	1
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x2B
	ds	1
	global	_format_number$158
_format_number$158:	; 2 bytes @ 0x2C
	ds	2
	global	format_number@di
format_number@di:	; 1 bytes @ 0x2E
	global	___flmul@cntr
___flmul@cntr:	; 1 bytes @ 0x2E
	ds	1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x2F
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x2F
	ds	1
?_print_reading:	; 0 bytes @ 0x30
?_format_xint32:	; 0 bytes @ 0x30
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x30
	global	?___fladd
?___fladd:	; 4 bytes @ 0x30
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x30
	global	format_xint32@x
format_xint32@x:	; 4 bytes @ 0x30
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x30
	ds	2
??_measure_freq:	; 0 bytes @ 0x32
	global	_print_reading$1004
_print_reading$1004:	; 2 bytes @ 0x32
	ds	2
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x34
	global	_print_reading$1005
_print_reading$1005:	; 2 bytes @ 0x34
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x34
	ds	2
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0x36
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0x36
	ds	2
??___fladd:	; 0 bytes @ 0x38
	ds	2
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x3A
	ds	2
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x3C
	ds	1
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x3D
	ds	1
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0x3E
	ds	1
	global	?_eval_poly
?_eval_poly:	; 4 bytes @ 0x3F
	global	?___flsub
?___flsub:	; 4 bytes @ 0x3F
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x3F
	global	eval_poly@x
eval_poly@x:	; 4 bytes @ 0x3F
	ds	4
	global	eval_poly@d
eval_poly@d:	; 2 bytes @ 0x43
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x43
	ds	2
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x45
	ds	2
??_eval_poly:	; 0 bytes @ 0x47
	ds	8
;!
;!Data Sizes:
;!    Strings     174
;!    Constant    76
;!    Data        5
;!    BSS         84
;!    Persistent  8
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            79     79      79
;!    BANK1            80     79      79
;!    BANK3            96     23      84
;!    BANK2            96     19      51

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(2) Largest target is 40
;!		 -> exp@coeff(CODE[40]), log@coeff(CODE[36]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(BANK1[2]), floor@expon(BANK1[2]), 
;!
;!    ser_puts@s	PTR const unsigned char  size(2) Largest target is 16
;!		 -> STR_36(CODE[3]), STR_35(CODE[5]), STR_34(CODE[3]), STR_33(CODE[8]), 
;!		 -> STR_32(CODE[6]), STR_31(CODE[6]), STR_30(CODE[6]), STR_29(CODE[5]), 
;!		 -> STR_26(CODE[3]), STR_24(CODE[3]), STR_22(CODE[3]), STR_17(CODE[3]), 
;!		 -> STR_16(CODE[16]), STR_15(CODE[16]), STR_13(CODE[3]), STR_9(CODE[3]), 
;!
;!    buffer_puts@x	PTR const unsigned char  size(2) Largest target is 6
;!		 -> STR_27(CODE[6]), 
;!
;!    lcd_puts@string	PTR const unsigned char  size(2) Largest target is 10
;!		 -> STR_21(CODE[5]), STR_20(CODE[6]), STR_19(CODE[7]), STR_18(CODE[7]), 
;!		 -> STR_14(CODE[10]), STR_12(CODE[4]), STR_11(CODE[4]), STR_10(CODE[6]), 
;!
;!    main$257	PTR const unsigned char  size(2) Largest target is 16
;!		 -> STR_16(CODE[16]), STR_15(CODE[16]), 
;!
;!    put_str@s	PTR const unsigned char  size(2) Largest target is 15
;!		 -> STR_37(CODE[13]), STR_28(CODE[10]), STR_25(CODE[15]), STR_23(CODE[12]), 
;!
;!    print_unit@units	PTR const unsigned char [8] size(2) Largest target is 3
;!		 -> STR_8(CODE[3]), STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), 
;!		 -> STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _print_reading->_format_number
;!    _format_xint32->_format_number
;!    _floor->_frexp
;!    _log->_frexp
;!    ___flmul->_frexp
;!    ___fladd->_frexp
;!    _lcd_begin->_lcd_write4bits
;!    _measure_freq->_format_number
;!    _measure_freq->_print_buffer
;!    _measure_freq->_timer0_read_ps
;!    _print_buffer->_ser_putch
;!    _ser_puts->_ser_putch
;!    _format_number->___lwmod
;!    _format_number->_buffer_putch
;!    _buffer_puts->_buffer_putch
;!    _lcd_send->_lcd_write4bits
;!
;!Critical Paths under _global_int in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _print_indicator->_lcd_gotoxy
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _lcd_puts->_lcd_send
;!    _format_xint32->_format_number
;!    _exp->_eval_poly
;!    _ldexp->_eval_poly
;!    ___flsub->___fladd
;!    ___fldiv->___flpack
;!    ___lltofl->___flpack
;!    _log->_eval_poly
;!    _eval_poly->___fladd
;!    ___flmul->___fldiv
;!    ___fladd->___flmul
;!    ___awtofl->___flpack
;!    _lcd_begin->_lcd_command
;!    _calibrate->___lwtofl
;!    _put_str->_output_putch
;!    _output_putch->_lcd_send
;!    _measure_freq->_format_number
;!    _print_buffer->_ser_puts
;!    _lcd_gotoxy->_lcd_command
;!    _format_number->___lwdiv
;!    _buffer_puts->_buffer_putch
;!    _lcd_clear->_lcd_command
;!    _lcd_command->_lcd_send
;!    ___lwtofl->_measure_freq
;!
;!Critical Paths under _global_int in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _measure_inductance->___fltol
;!    _format_double->_pow
;!    _pow->_exp
;!    _exp->_floor
;!    _ldexp->_eval_poly
;!    _floor->___altofl
;!    ___fltol->_log10
;!    ___altofl->___fltol
;!    _log10->_log
;!    _log->_eval_poly
;!
;!Critical Paths under _global_int in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    _main->_format_double
;!    _measure_capacitance->_format_double
;!
;!Critical Paths under _global_int in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    _main->_measure_capacitance
;!
;!Critical Paths under _global_int in BANK2
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
;! (0) _main                                                 3     3      0  429679
;!                                             20 BANK3      3     3      0
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
;!                           _ser_init
;!                           _ser_puts
;!                        _timer0_init
;!                        _timer2_init
;! ---------------------------------------------------------------------------------
;! (1) _timer2_init                                          4     4      0     133
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                         10    10      0     371
;!                                              0 BANK0     10    10      0
;! ---------------------------------------------------------------------------------
;! (1) _ser_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _print_indicator                                      1     1      0    3155
;!                                              9 BANK0      1     1      0
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (1) _measure_inductance                                  55    55      0   43103
;!                                             28 BANK1     43    43      0
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
;! (1) _measure_capacitance                                 19    19      0  204882
;!                                              0 BANK2     19    19      0
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
;! (2) _print_unit                                           3     3      0    2996
;!                                              9 BANK0      2     2      0
;!                         _lcd_gotoxy
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        6     4      2    7806
;!                                             48 BANK0      6     4      2
;!                            ___lwdiv
;!                            ___lwmod
;!                      _format_number
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (2) _lcd_puts                                             3     1      2    1179
;!                                              2 BANK0      3     1      2
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (2) _format_xint32                                        4     0      4    3735
;!                                             48 BANK0      4     0      4
;!                       _buffer_putch
;!                      _format_number
;! ---------------------------------------------------------------------------------
;! (2) _format_double                                       20    16      4  157379
;!                                              0 BANK3     20    16      4
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                       _buffer_putch
;!                              _floor
;!                              _log10
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (3) _pow                                                 21    13      8   89436
;!                                             58 BANK1     21    13      8
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___fltol
;!                           ___lltofl
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _exp                                                 15    11      4   48325
;!                                             43 BANK1     15    11      4
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
;! (5) _ldexp                                               12     6      6    3479
;!                                              4 BANK1     12     6      6
;!                             ___flge
;!                            ___flneg
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___flneg                                              4     0      4     325
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (5) _floor                                               10     6      4   11204
;!                                             33 BANK1     10     6      4
;!                           ___altofl
;!                            ___fladd
;!                            ___fldiv (ARG)
;!                             ___flge
;!                            ___fltol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4     882
;!                                             18 BANK1     10     6      4
;!                            ___fldiv (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___altofl                                             5     1      4    2446
;!                                             28 BANK1      5     1      4
;!                           ___flpack
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    5089
;!                                             63 BANK0      8     0      8
;!                           ___awtofl (ARG)
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fldiv                                             19    11      8    3931
;!                                             10 BANK0     19    11      8
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (4) ___lltofl                                             4     0      4    2344
;!                                             10 BANK0      4     0      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (3) _log10                                                8     4      4   34367
;!                                             10 BANK1      8     4      4
;!                            ___flmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _log                                                  6     2      4   27850
;!                                              4 BANK1      6     2      4
;!                           ___awtofl
;!                            ___fladd
;!                             ___flge
;!                            ___flmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) _frexp                                                7     2      5     582
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      5     0      5
;! ---------------------------------------------------------------------------------
;! (5) _eval_poly                                           20    12      8   11109
;!                                             63 BANK0     16     8      8
;!                                              0 BANK1      4     4      0
;!                            ___fladd
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             19    11      8    6342
;!                                             29 BANK0     19    11      8
;!                           ___awtofl (ARG)
;!                            ___fldiv (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             15     7      8    4123
;!                                             48 BANK0     15     7      8
;!                           ___awtofl (ARG)
;!                            ___flmul (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                              12     4      8    2628
;!                                              0 BANK0     12     4      8
;! ---------------------------------------------------------------------------------
;! (5) ___awtofl                                             9     5      4    2686
;!                                              4 COMMON     1     1      0
;!                                             10 BANK0      4     0      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             3     3      0      68
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_begin                                            4     3      1     860
;!                                              3 BANK0      4     3      1
;!                        _lcd_command
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0   14811
;!                                             58 BANK0      1     1      0
;!                           ___lwtofl
;!                          _delay10ms
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                           _lcd_send
;!                       _measure_freq
;!                            _put_str
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _put_str                                              7     5      2    1092
;!                                              3 BANK0      7     5      2
;!                       _output_putch
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     1      0     702
;!                                              2 BANK0      1     1      0
;!                           _lcd_send
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         6     4      2    6737
;!                                             48 BANK0      6     4      2
;!                        _buffer_init
;!                        _buffer_puts
;!                      _format_number
;!                         _lcd_gotoxy
;!                       _print_buffer
;!                     _timer0_read_ps
;! ---------------------------------------------------------------------------------
;! (3) _timer0_read_ps                                       9     7      2     167
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (3) _print_buffer                                         1     1      0    1150
;!                                              5 COMMON     1     1      0
;!                          _ser_putch
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (1) _ser_puts                                             2     0      2    1051
;!                                              0 BANK0      2     0      2
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (2) _ser_putch                                            1     1      0      31
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _lcd_gotoxy                                           6     5      1    1945
;!                                              3 BANK0      6     5      1
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       42    38      4    3249
;!                                              5 COMMON     1     1      0
;!                                              7 BANK0     41    37      4
;!                            ___lwdiv
;!                            ___lwmod
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     582
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     591
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _buffer_puts                                          2     0      2     161
;!                                              3 BANK0      2     0      2
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) _buffer_putch                                         4     4      0      31
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _buffer_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            2     2      0     640
;!                                              3 BANK0      2     2      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _lcd_command                                          1     1      0     640
;!                                              2 BANK0      1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (3) _lcd_send                                             2     1      1     609
;!                                              0 BANK0      2     1      1
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (4) _lcd_write4bits                                       2     2      0      31
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwtofl                                             4     0      4    2669
;!                                             54 BANK0      4     0      4
;!                           ___flpack
;!                       _measure_freq (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___flpack                                            10     4      6    2248
;!                                              0 BANK0     10     4      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _global_int                                           4     4      0       0
;!                                              0 COMMON     4     4      0
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
;!           _ser_putch
;!           _ser_puts
;!             _ser_putch
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
;!     _lcd_send
;!       _lcd_write4bits
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
;!         _ser_putch
;!         _ser_puts
;!           _ser_putch
;!       _timer0_read_ps
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
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
;!           ___flge
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
;!     _buffer_putch
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
;!               ___flge
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
;!             ___flge
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
;!     _log10
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
;!         ___flge
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
;!     _pow
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
;!             ___flge
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
;!               ___flge
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
;!                   ___flge
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
;!                 ___flge
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
;!           ___flge
;!           ___flneg
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
;!           ___flge
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
;!         ___flge
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
;!     _lcd_send
;!       _lcd_write4bits
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
;!           ___flge
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
;!           _ser_putch
;!           _ser_puts
;!             _ser_putch
;!         _timer0_read_ps
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
;!             ___flge
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
;!       _buffer_putch
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
;!                 ___flge
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
;!               ___flge
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
;!       _log10
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
;!           ___flge
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
;!       _pow
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
;!               ___flge
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
;!                 ___flge
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
;!                     ___flge
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
;!                   ___flge
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
;!             ___flge
;!             ___flneg
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
;!             ___flge
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
;!           ___flge
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
;!     _format_xint32
;!       _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
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
;!         _ser_putch
;!         _ser_puts
;!           _ser_putch
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
;!         _lcd_send
;!           _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _ser_puts
;!         _ser_putch
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
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
;!           ___flge
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
;!           _ser_putch
;!           _ser_puts
;!             _ser_putch
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
;!         _ser_putch
;!         _ser_puts
;!           _ser_putch
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
;!         _lcd_send
;!           _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _ser_puts
;!         _ser_putch
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
;!         _ser_putch
;!   _print_indicator
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_puts
;!       _lcd_send
;!         _lcd_write4bits
;!   _ser_init
;!   _ser_puts
;!     _ser_putch
;!   _timer0_init
;!   _timer2_init
;!
;! _global_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     17      54       8       87.5%
;!BITBANK3            60      0       0       7        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60     13      33       9       53.1%
;!BITBANK2            60      0       0      12        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     4F      4F       6       98.8%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               4F     4F      4F       4      100.0%
;!BITBANK0            4F      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     12F      11        0.0%
;!ABS                  0      0     12F      10        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 113 in file "../../../LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new_mode        1   22[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       3       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       3       0
;;Total ram usage:        3 bytes
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
;;		_ser_init
;;		_ser_puts
;;		_timer0_init
;;		_timer2_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"../../../LC-meter.c"
	line	113
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../../../LC-meter.c"
	line	113
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	114
	
l4852:	
;LC-meter.c: 114: bres = msecpart = msecs = seconds = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_seconds)^0180h	;volatile
	clrf	(_seconds+1)^0180h	;volatile
	clrf	(_seconds+2)^0180h	;volatile
	clrf	(_seconds+3)^0180h	;volatile
	movf	((_seconds+3)^0180h),w	;volatile
	movwf	(_msecs+3)^0180h	;volatile
	movf	((_seconds+2)^0180h),w	;volatile
	movwf	(_msecs+2)^0180h	;volatile
	movf	((_seconds+1)^0180h),w	;volatile
	movwf	(_msecs+1)^0180h	;volatile
	movf	((_seconds)^0180h),w	;volatile
	movwf	(_msecs)^0180h	;volatile

	movf	1+((((_msecs)^0180h))),w	;volatile
	movwf	(_msecpart+1)^0180h	;volatile
	movf	0+((((_msecs)^0180h))),w	;volatile
	movwf	(_msecpart)^0180h	;volatile
	movf	((_msecpart+1)^0180h),w	;volatile
	movwf	(_bres+1)^0180h	;volatile
	movf	((_msecpart)^0180h),w	;volatile
	movwf	(_bres)^0180h	;volatile
	line	115
;LC-meter.c: 115: mode = -1;
	movlw	low(0FFh)
	movwf	(_mode)^0180h
	line	117
;LC-meter.c: 117: CCal = 1000;
	movlw	0x44
	movwf	(_CCal+3)^0180h
	movlw	0x7a
	movwf	(_CCal+2)^0180h
	movlw	0x0
	movwf	(_CCal+1)^0180h
	movlw	0x0
	movwf	(_CCal)^0180h

	line	125
;LC-meter.c: 125: CMCON = 0b00000101;
	movlw	low(05h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(156)^080h	;volatile
	line	127
;LC-meter.c: 127: TRISA = 0b11001111;
	movlw	low(0CFh)
	movwf	(133)^080h	;volatile
	line	130
	
l4854:	
;LC-meter.c: 130: timer0_init(0b1000 | 0x20 | 0x40);
	movlw	low(068h)
	fcall	_timer0_init
	line	139
	
l4856:	
;LC-meter.c: 139: OPTION_REG &= ~0b100000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(129)^080h+(5/8),(5)&7	;volatile
	line	145
	
l4858:	
;LC-meter.c: 145: TRISC = 0b10111011;
	movlw	low(0BBh)
	movwf	(135)^080h	;volatile
	line	149
	
l4860:	
;LC-meter.c: 149: TRISC &= ~0b00000100;
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	150
	
l4862:	
;LC-meter.c: 150: PORTC &= ~0b00000100; PORTC |= (!!(1)) << 2;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(2/8),(2)&7	;volatile
	
l4864:	
	bsf	(7)+(2/8),(2)&7	;volatile
	line	152
;LC-meter.c: 152: timer2_init(0b000 | 0x80);
	movlw	low(080h)
	fcall	_timer2_init
	line	160
;LC-meter.c: 160: lcd_init(1);
	movlw	low(01h)
	fcall	_lcd_init
	line	161
;LC-meter.c: 161: lcd_begin(2, 1);
	clrf	(lcd_begin@dotsize)
	incf	(lcd_begin@dotsize),f
	movlw	low(02h)
	fcall	_lcd_begin
	line	164
	
l4866:	
;LC-meter.c: 164: TRISC |= (1 << 4);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(135)^080h+(4/8),(4)&7	;volatile
	line	165
	
l4868:	
;LC-meter.c: 165: TRISC &= ~(1 << 5);
	bcf	(135)^080h+(5/8),(5)&7	;volatile
	line	167
	
l4870:	
;LC-meter.c: 167: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	168
;LC-meter.c: 168: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	169
	
l4872:	
;LC-meter.c: 169: PORTC |= (1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	line	170
;LC-meter.c: 170: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	171
	
l4874:	
;LC-meter.c: 171: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	172
;LC-meter.c: 172: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	173
	
l4876:	
;LC-meter.c: 173: PORTC |= (1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	line	174
;LC-meter.c: 174: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	175
	
l4878:	
;LC-meter.c: 175: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	178
;LC-meter.c: 178: ser_init();
	fcall	_ser_init
	line	185
	
l4880:	
;LC-meter.c: 185: INTCON |= 0xc0;
	movlw	low(0C0h)
	iorwf	(11),f	;volatile
	line	191
	
l4882:	
;LC-meter.c: 191: lcd_gotoxy(0, 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	193
	
l4884:	
;LC-meter.c: 193: lcd_puts("LC-meter ");
	movlw	low(((STR_14)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_puts@string)
	movlw	high(((STR_14)|8000h))
	movwf	((lcd_puts@string))+1
	fcall	_lcd_puts
	line	194
	
l4886:	
;LC-meter.c: 194: format_double( CCal);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+3)^0180h,w
	movwf	(format_double@num+3)^0180h
	movf	(_CCal+2)^0180h,w
	movwf	(format_double@num+2)^0180h
	movf	(_CCal+1)^0180h,w
	movwf	(format_double@num+1)^0180h
	movf	(_CCal)^0180h,w
	movwf	(format_double@num)^0180h

	fcall	_format_double
	line	200
	
l4888:	
;LC-meter.c: 200: delay10ms(200);
	movlw	low(0C8h)
	fcall	_delay10ms
	line	203
	
l4890:	
;LC-meter.c: 203: calibrate();
	fcall	_calibrate
	line	206
	
l4892:	
;LC-meter.c: 206: lcd_clear();
	fcall	_lcd_clear
	line	215
	
l4894:	
;LC-meter.c: 215: char new_mode = (!!(PORTC & 0b10000));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(7),(4)&7	;volatile
	goto	u4351
	goto	u4350
u4351:
	movlw	1
	goto	u4360
u4350:
	movlw	0
u4360:
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@new_mode)^0180h
	line	217
	
l4896:	
;LC-meter.c: 217: if(new_mode != mode) {
	movf	(main@new_mode)^0180h,w
	xorwf	(_mode)^0180h,w
	skipnz
	goto	u4371
	goto	u4370
u4371:
	goto	l4908
u4370:
	line	218
	
l4898:	
;LC-meter.c: 218: ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
	movf	((_mode)^0180h),w
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l4902
u4380:
	
l4900:	
	movlw	low(((STR_16)|8000h))
	movwf	(_main$257)^0180h
	movlw	high(((STR_16)|8000h))
	movwf	((_main$257)^0180h)+1
	goto	l4904
	
l4902:	
	movlw	low(((STR_15)|8000h))
	movwf	(_main$257)^0180h
	movlw	high(((STR_15)|8000h))
	movwf	((_main$257)^0180h)+1
	
l4904:	
	movf	(_main$257)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ser_puts@s)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movf	(_main$257+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(ser_puts@s+1)

	fcall	_ser_puts
	line	219
	
l4906:	
;LC-meter.c: 219: ser_puts("\r\n");
	movlw	low(((STR_17)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_17)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	221
;LC-meter.c: 221: mode = new_mode;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@new_mode)^0180h,w
	movwf	(_mode)^0180h
	line	224
	
l4908:	
;LC-meter.c: 222: }
;LC-meter.c: 224: if(mode)
	movf	((_mode)^0180h),w
	btfsc	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l4912
u4390:
	line	225
	
l4910:	
;LC-meter.c: 225: measure_capacitance();
	fcall	_measure_capacitance
	goto	l269
	line	227
	
l4912:	
;LC-meter.c: 226: else
;LC-meter.c: 227: measure_inductance();
	fcall	_measure_inductance
	
l269:	
	line	229
;LC-meter.c: 229: print_indicator(1);
	movlw	low(01h)
	fcall	_print_indicator
	line	230
	
l4914:	
;LC-meter.c: 230: delay10ms(30);
	movlw	low(01Eh)
	fcall	_delay10ms
	line	232
	
l4916:	
;LC-meter.c: 232: print_indicator(0);
	movlw	low(0)
	fcall	_print_indicator
	line	233
;LC-meter.c: 233: delay10ms(20);
	movlw	low(014h)
	fcall	_delay10ms
	line	234
;LC-meter.c: 234: }
	goto	l4894
	global	start
	ljmp	start
	opt stack 0
	line	235
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_timer2_init

;; *************** function _timer2_init *****************
;; Defined at:
;;		line 130 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1    2[BANK0 ] unsigned char 
;;  ps              1    1[BANK0 ] unsigned char 
;;  postscaler      1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/100
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"../../../lib/timer.c"
	line	130
global __ptext1
__ptext1:	;psect for function _timer2_init
psect	text1
	file	"../../../lib/timer.c"
	line	130
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:	
;incstack = 0
	opt	stack 6
; Regs used in _timer2_init: [wreg+status,2+status,0]
;timer2_init@ps_mode stored from wreg
	movwf	(timer2_init@ps_mode)
	line	131
	
l4536:	
;timer.c: 131: uint8_t ps = ps_mode & 0b1111;
	movf	(timer2_init@ps_mode),w
	movwf	(timer2_init@ps)
	
l4538:	
	movlw	low(0Fh)
	andwf	(timer2_init@ps),f
	line	132
	
l4540:	
	line	135
	
l4542:	
;timer.c: 135: T2CON &= ~0b01111111;
	movlw	low(080h)
	andwf	(18),f	;volatile
	line	137
	
l4544:	
;timer.c: 137: T2CON |= (postscaler & 0b1111) << 3;
	movf	(18),w	;volatile
	line	138
	
l4546:	
;timer.c: 138: T2CON |= (ps & 0b11);
	movf	(timer2_init@ps),w
	andlw	03h
	iorwf	(18),f	;volatile
	line	140
	
l4548:	
;timer.c: 140: TMR2 = 0;
	clrf	(17)	;volatile
	line	142
	
l4550:	
;timer.c: 142: T2CON |= 0b100;
	bsf	(18)+(2/8),(2)&7	;volatile
	line	145
	
l4552:	
;timer.c: 145: PIR1 &= ~0b10;
	bcf	(12)+(1/8),(1)&7	;volatile
	line	146
	
l4554:	
;timer.c: 146: PIE1 = (!!(ps_mode & 0x80)) << 1;
	btfsc	(timer2_init@ps_mode),(7)&7
	goto	u4191
	goto	u4190
u4191:
	movlw	1
	goto	u4200
u4190:
	movlw	0
u4200:
	movwf	(??_timer2_init+0)+0
	addwf	(??_timer2_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(140)^080h	;volatile
	line	147
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
	signat	_timer2_init,4216
	global	_timer0_init

;; *************** function _timer0_init *****************
;; Defined at:
;;		line 27 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1    9[BANK0 ] unsigned char 
;;  prescaler       1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	27
global __ptext2
__ptext2:	;psect for function _timer0_init
psect	text2
	file	"../../../lib/timer.c"
	line	27
	global	__size_of_timer0_init
	__size_of_timer0_init	equ	__end_of_timer0_init-_timer0_init
	
_timer0_init:	
;incstack = 0
	opt	stack 6
; Regs used in _timer0_init: [wreg+status,2+status,0]
;timer0_init@ps_mode stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(timer0_init@ps_mode)
	line	28
	
l4490:	
;timer.c: 28: uint8_t prescaler = ps_mode & 0b1111;
	movf	(timer0_init@ps_mode),w
	movwf	(timer0_init@prescaler)
	
l4492:	
	movlw	low(0Fh)
	andwf	(timer0_init@prescaler),f
	line	30
	
l4494:	
;timer.c: 30: TMR0 = 0;
	clrf	(1)	;volatile
	line	33
	
l4496:	
;timer.c: 33: OPTION_REG |= (!!(ps_mode & 0x20)) ? 0x20 : 0x00;
	btfsc	(timer0_init@ps_mode),(5)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l4500
u4140:
	
l4498:	
	clrf	(_timer0_init$114)
	clrf	(_timer0_init$114+1)
	goto	l4502
	
l4500:	
	movlw	020h
	movwf	(_timer0_init$114)
	clrf	(_timer0_init$114+1)
	
l4502:	
	movf	(_timer0_init$114),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	36
	
l4504:	
;timer.c: 36: OPTION_REG |= (!!(ps_mode & 0x10)) ? 0x10 : 0x00;
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(timer0_init@ps_mode),(4)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l4508
u4150:
	
l4506:	
	clrf	(_timer0_init$115)
	clrf	(_timer0_init$115+1)
	goto	l4510
	
l4508:	
	movlw	010h
	movwf	(_timer0_init$115)
	clrf	(_timer0_init$115+1)
	
l4510:	
	movf	(_timer0_init$115),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	44
	
l4512:	
;timer.c: 44: OPTION_REG &= (!!prescaler) ? ~0x08 : ~0x00;
	bcf	status, 5	;RP0=0, select bank0
	movf	((timer0_init@prescaler)),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l4516
u4160:
	
l4514:	
	movlw	0FFh
	movwf	(_timer0_init$116)
	movlw	0FFh
	movwf	((_timer0_init$116))+1
	goto	l4518
	
l4516:	
	movlw	0F7h
	movwf	(_timer0_init$116)
	movlw	0FFh
	movwf	((_timer0_init$116))+1
	
l4518:	
	movf	(_timer0_init$116),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(129)^080h,f	;volatile
	line	46
	
l4520:	
;timer.c: 46: OPTION_REG &= ~0b111;
	movlw	low(0F8h)
	andwf	(129)^080h,f	;volatile
	line	48
	
l4522:	
;timer.c: 48: if(prescaler > 0) {
	bcf	status, 5	;RP0=0, select bank0
	movf	((timer0_init@prescaler)),w
	btfsc	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l4526
u4170:
	line	49
	
l4524:	
;timer.c: 49: OPTION_REG |= (prescaler - 1) & 0b111;
	movf	(timer0_init@prescaler),w
	addlw	0FFh
	andlw	07h
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	59
	
l4526:	
;timer.c: 55: }
;timer.c: 59: INTCON &= ~0x40;
	bcf	(11)+(6/8),(6)&7	;volatile
	line	60
	
l4528:	
;timer.c: 60: INTCON |= (!!(ps_mode & 0x80)) ? 0x20 : 0x00;
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(timer0_init@ps_mode),(7)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l4532
u4180:
	
l4530:	
	clrf	(_timer0_init$117)
	clrf	(_timer0_init$117+1)
	goto	l4534
	
l4532:	
	movlw	020h
	movwf	(_timer0_init$117)
	clrf	(_timer0_init$117+1)
	
l4534:	
	movf	(_timer0_init$117),w
	iorwf	(11),f	;volatile
	line	61
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,4216
	global	_ser_init

;; *************** function _ser_init *****************
;; Defined at:
;;		line 98 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/300
;;		Unchanged: 0/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"../../../lib/ser.c"
	line	98
global __ptext3
__ptext3:	;psect for function _ser_init
psect	text3
	file	"../../../lib/ser.c"
	line	98
	global	__size_of_ser_init
	__size_of_ser_init	equ	__end_of_ser_init-_ser_init
	
_ser_init:	
;incstack = 0
	opt	stack 6
; Regs used in _ser_init: [wreg+status,2]
	line	101
	
l4626:	
;ser.c: 101: TRISC6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1086/8)^080h,(1086)&7	;volatile
	line	102
;ser.c: 102: RC7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(63/8),(63)&7	;volatile
	line	104
;ser.c: 104: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	110
	
l4628:	
;ser.c: 110: SPBRG = ser_brg;
	movlw	low(01Fh)
	movwf	(153)^080h	;volatile
	line	113
	
l4630:	
;ser.c: 113: TX9 = 0;
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	114
	
l4632:	
;ser.c: 114: RX9 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	line	116
	
l4634:	
;ser.c: 116: SYNC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	117
	
l4636:	
;ser.c: 117: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	118
	
l4638:	
;ser.c: 118: CREN = 1;
	bsf	(196/8),(196)&7	;volatile
	line	119
	
l4640:	
;ser.c: 119: TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	121
	
l4642:	
;ser.c: 121: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	122
	
l4644:	
;ser.c: 122: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	124
	
l4646:	
;ser.c: 124: rxiptr = rxoptr = txiptr = txoptr = 0;
	clrf	(_txoptr)	;volatile
	clrf	(_txiptr)	;volatile
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_rxoptr)^0180h	;volatile
	clrf	(_rxiptr)	;volatile
	line	125
	
l566:	
	return
	opt stack 0
GLOBAL	__end_of_ser_init
	__end_of_ser_init:
	signat	_ser_init,88
	global	_print_indicator

;; *************** function _print_indicator *****************
;; Defined at:
;;		line 184 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
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
psect	text4,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	184
global __ptext4
__ptext4:	;psect for function _print_indicator
psect	text4
	file	"../../../src/print.c"
	line	184
	global	__size_of_print_indicator
	__size_of_print_indicator	equ	__end_of_print_indicator-_print_indicator
	
_print_indicator:	
;incstack = 0
	opt	stack 2
; Regs used in _print_indicator: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;print_indicator@indicate stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print_indicator@indicate)
	line	198
	
l4482:	
;print.c: 198: lcd_gotoxy(0, 1);
	clrf	(lcd_gotoxy@row)
	incf	(lcd_gotoxy@row),f
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	199
	
l4484:	
;print.c: 199: if(indicate) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((print_indicator@indicate)),w
	btfsc	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l4488
u4130:
	line	200
	
l4486:	
;print.c: 200: lcd_puts("-*-");
	movlw	low(((STR_11)|8000h))
	movwf	(lcd_puts@string)
	movlw	high(((STR_11)|8000h))
	movwf	((lcd_puts@string))+1
	fcall	_lcd_puts
	line	201
;print.c: 201: } else {
	goto	l36
	line	202
	
l4488:	
;print.c: 202: lcd_puts("   ");
	movlw	low(((STR_12)|8000h))
	movwf	(lcd_puts@string)
	movlw	high(((STR_12)|8000h))
	movwf	((lcd_puts@string))+1
	fcall	_lcd_puts
	line	205
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_print_indicator
	__end_of_print_indicator:
	signat	_print_indicator,4216
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 197 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   67[BANK1 ] unsigned char 
;;  denominator     4   32[BANK1 ] unsigned char 
;;  numerator       4   28[BANK1 ] unsigned char 
;;  var             2   65[BANK1 ] unsigned int 
;;  unit            1   52[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/300
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      43       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      43       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
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
psect	text5,local,class=CODE,delta=2,merge=1
	file	"../../../lib/../src/measure.c"
	line	197
global __ptext5
__ptext5:	;psect for function _measure_inductance
psect	text5
	file	"../../../lib/../src/measure.c"
	line	197
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:	
;incstack = 0
	opt	stack 1
; Regs used in _measure_inductance: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	204
	
l4786:	
;measure.c: 198: uint8_t unit;
;measure.c: 199: uint16_t var;
;measure.c: 201: double Lin, numerator, denominator;
;measure.c: 204: lcd_gotoxy(0, 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	205
	
l4788:	
;measure.c: 205: put_str("Inductivity ");
	movlw	low(((STR_37)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(put_str@s)
	movlw	high(((STR_37)|8000h))
	movwf	((put_str@s))+1
	fcall	_put_str
	line	207
	
l4790:	
;measure.c: 207: var = measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@var+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@var)^080h
	line	209
	
l4792:	
;measure.c: 209: F3 = (double)var;
	movf	(measure_inductance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwtofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3)^0180h

	line	210
	
l4794:	
;measure.c: 210: if(F3 > F1)
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4311
	goto	u4310
u4311:
	goto	l4798
u4310:
	line	211
	
l4796:	
;measure.c: 211: F3 = F1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	movwf	(_F3+3)^0180h
	movf	(_F1+2)^0180h,w
	movwf	(_F3+2)^0180h
	movf	(_F1+1)^0180h,w
	movwf	(_F3+1)^0180h
	movf	(_F1)^0180h,w
	movwf	(_F3)^0180h

	line	212
	
l4798:	
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1013+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1013+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1013+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1013)^080h

	
l4800:	
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movf	(_measure_inductance$1013+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1013+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1013+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1013)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014)^080h

	
l4802:	
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015)^080h

	
l4804:	
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movf	(_measure_inductance$1014+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1014+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1014+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1014)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016)^080h

	
l4806:	
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movlw	0x46
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0x1c
	movwf	(___flmul@f1+2)
	movlw	0x40
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

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

	line	213
	
l4808:	
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1017+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1017+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1017+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1017)^080h

	
l4810:	
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1017+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1017+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1017+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1017)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1014)^080h

	
l4812:	
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1014+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1014+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1014+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1014)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1015)^080h

	
l4814:	
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1015)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1016)^080h

	
l4816:	
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1016)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1018+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1018+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1018+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1018)^080h

	
l4818:	
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1018+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1018+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1018+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1018)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1019+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1019+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1019+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1019)^080h

	
l4820:	
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movlw	0x42
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0x1d
	movwf	(___flmul@f1+2)
	movlw	0xe9
	movwf	(___flmul@f1+1)
	movlw	0xe6
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1019+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1019+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1019+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1019)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

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

	line	214
	
l4822:	
;measure.c: 214: Lin = (numerator / denominator) * 1e+15l;
	movlw	0x58
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0x63
	movwf	(___flmul@f1+2)
	movlw	0x5f
	movwf	(___flmul@f1+1)
	movlw	0xa9
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

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

	line	216
	
l4824:	
;measure.c: 216: if(Lin > 999) {
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	movlw	0x79
	movwf	(___flge@ff1+2)
	movlw	0xc0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4321
	goto	u4320
u4321:
	goto	l4842
u4320:
	line	217
	
l4826:	
;measure.c: 217: if(Lin > (999e+03l)) {
	movlw	0x49
	movwf	(___flge@ff1+3)
	movlw	0x73
	movwf	(___flge@ff1+2)
	movlw	0xe5
	movwf	(___flge@ff1+1)
	movlw	0x80
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4331
	goto	u4330
u4331:
	goto	l4838
u4330:
	line	218
	
l4828:	
;measure.c: 218: if(Lin > (999e+06l)) {
	movlw	0x4e
	movwf	(___flge@ff1+3)
	movlw	0x6e
	movwf	(___flge@ff1+2)
	movlw	0x2e
	movwf	(___flge@ff1+1)
	movlw	0x1f
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4341
	goto	u4340
u4341:
	goto	l4834
u4340:
	line	219
	
l4830:	
;measure.c: 219: Lin = Lin / (1e+09l);
	movlw	0x4e
	movwf	(___fldiv@f2+3)
	movlw	0x6e
	movwf	(___fldiv@f2+2)
	movlw	0x6b
	movwf	(___fldiv@f2+1)
	movlw	0x28
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

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

	line	220
	
l4832:	
;measure.c: 220: unit = 0;
	clrf	(measure_inductance@unit)^080h
	line	221
;measure.c: 221: } else {
	goto	l4844
	line	222
	
l4834:	
;measure.c: 222: Lin = Lin / (1e+06l);
	movlw	0x49
	movwf	(___fldiv@f2+3)
	movlw	0x74
	movwf	(___fldiv@f2+2)
	movlw	0x24
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

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

	line	223
	
l4836:	
;measure.c: 223: unit = 1;
	clrf	(measure_inductance@unit)^080h
	incf	(measure_inductance@unit)^080h,f
	goto	l4844
	line	226
	
l4838:	
;measure.c: 226: Lin = Lin / 1e+03l;
	movlw	0x44
	movwf	(___fldiv@f2+3)
	movlw	0x7a
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

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

	line	227
	
l4840:	
;measure.c: 227: unit = 2;
	movlw	low(02h)
	movwf	(measure_inductance@unit)^080h
	goto	l4844
	line	230
	
l4842:	
;measure.c: 230: unit = 3;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@unit)^080h
	line	232
	
l4844:	
;measure.c: 232: Lin = Lin * 100;
	movlw	0x42
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xc8
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

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

	line	233
	
l4846:	
;measure.c: 233: var = (uint16_t)Lin;
	movf	(measure_inductance@Lin+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(measure_inductance@Lin)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	movwf	(measure_inductance@var+1)^080h
	movf	0+(((0+(?___fltol))^080h)),w
	movwf	(measure_inductance@var)^080h
	line	235
	
l4848:	
;measure.c: 235: print_reading(var);
	movf	(measure_inductance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(print_reading@measurement+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(print_reading@measurement)
	fcall	_print_reading
	line	236
	
l4850:	
;measure.c: 236: print_unit(unit);
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@unit)^080h,w
	fcall	_print_unit
	line	237
	
l478:	
	return
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,88
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 119 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   15[BANK2 ] unsigned char 
;;  var             2   13[BANK2 ] unsigned int 
;;  unit            1   12[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/300
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0      19
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0      19
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	119
global __ptext6
__ptext6:	;psect for function _measure_capacitance
psect	text6
	file	"../../../lib/../src/measure.c"
	line	119
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:	
;incstack = 0
	opt	stack 0
; Regs used in _measure_capacitance: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	127
	
l4690:	
;measure.c: 120: uint8_t unit;
;measure.c: 121: uint16_t var;
;measure.c: 123: double Cin;
;measure.c: 127: lcd_gotoxy(0, 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	128
	
l4692:	
;measure.c: 128: put_str("Capacity ");
	movlw	low(((STR_28)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(put_str@s)
	movlw	high(((STR_28)|8000h))
	movwf	((put_str@s))+1
	fcall	_put_str
	line	130
	
l4694:	
;measure.c: 130: var = measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@var+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_measure_freq)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@var)^0100h
	line	132
	
l4696:	
;measure.c: 132: F3 = (double)var;
	movf	(measure_capacitance@var+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwtofl@c+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@var)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F3)^0180h

	line	135
	
l4698:	
;measure.c: 135: ser_puts("var=");
	movlw	low(((STR_29)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ser_puts@s)
	movlw	high(((STR_29)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	136
	
l4700:	
;measure.c: 136: format_xint32(var);
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@var)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@var+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	((format_xint32@x))+1
	clrf	2+((format_xint32@x))
	clrf	3+((format_xint32@x))
	fcall	_format_xint32
	line	137
	
l4702:	
;measure.c: 137: ser_puts("\r\nF1=");
	movlw	low(((STR_30)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_30)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	138
	
l4704:	
;measure.c: 138: format_double(F1);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	movwf	(format_double@num+3)^0180h
	movf	(_F1+2)^0180h,w
	movwf	(format_double@num+2)^0180h
	movf	(_F1+1)^0180h,w
	movwf	(format_double@num+1)^0180h
	movf	(_F1)^0180h,w
	movwf	(format_double@num)^0180h

	fcall	_format_double
	line	139
	
l4706:	
;measure.c: 139: ser_putch(' ');
	movlw	low(020h)
	fcall	_ser_putch
	line	140
	
l4708:	
;measure.c: 140: format_xint32(*(uint32_t*)&F1);
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x)

	fcall	_format_xint32
	line	141
	
l4710:	
;measure.c: 141: ser_puts("\r\nF2=");
	movlw	low(((STR_31)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_31)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	142
	
l4712:	
;measure.c: 142: format_double(F2);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+3)^0180h,w
	movwf	(format_double@num+3)^0180h
	movf	(_F2+2)^0180h,w
	movwf	(format_double@num+2)^0180h
	movf	(_F2+1)^0180h,w
	movwf	(format_double@num+1)^0180h
	movf	(_F2)^0180h,w
	movwf	(format_double@num)^0180h

	fcall	_format_double
	line	143
	
l4714:	
;measure.c: 143: ser_putch(' ');
	movlw	low(020h)
	fcall	_ser_putch
	line	144
	
l4716:	
;measure.c: 144: format_xint32(*(uint32_t*)&F2);
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x)

	fcall	_format_xint32
	line	145
	
l4718:	
;measure.c: 145: ser_puts("\r\nF3=");
	movlw	low(((STR_32)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_32)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	146
	
l4720:	
;measure.c: 146: format_double(F3);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	movwf	(format_double@num+3)^0180h
	movf	(_F3+2)^0180h,w
	movwf	(format_double@num+2)^0180h
	movf	(_F3+1)^0180h,w
	movwf	(format_double@num+1)^0180h
	movf	(_F3)^0180h,w
	movwf	(format_double@num)^0180h

	fcall	_format_double
	line	147
	
l4722:	
;measure.c: 147: ser_putch(' ');
	movlw	low(020h)
	fcall	_ser_putch
	line	148
	
l4724:	
;measure.c: 148: format_xint32(*(uint32_t*)&F3);
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x)

	fcall	_format_xint32
	line	149
	
l4726:	
;measure.c: 149: ser_puts("\r\nCCal=");
	movlw	low(((STR_33)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_33)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	150
	
l4728:	
;measure.c: 150: format_double(CCal);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+3)^0180h,w
	movwf	(format_double@num+3)^0180h
	movf	(_CCal+2)^0180h,w
	movwf	(format_double@num+2)^0180h
	movf	(_CCal+1)^0180h,w
	movwf	(format_double@num+1)^0180h
	movf	(_CCal)^0180h,w
	movwf	(format_double@num)^0180h

	fcall	_format_double
	line	151
	
l4730:	
;measure.c: 151: ser_putch(' ');
	movlw	low(020h)
	fcall	_ser_putch
	line	152
	
l4732:	
;measure.c: 152: format_xint32(*(uint32_t*)&CCal);
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x)

	fcall	_format_xint32
	line	153
	
l4734:	
;measure.c: 153: ser_puts("\r\n");
	movlw	low(((STR_34)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_34)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	157
	
l4736:	
;measure.c: 157: if(F3 > F1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4271
	goto	u4270
u4271:
	goto	l4740
u4270:
	line	158
	
l4738:	
;measure.c: 158: F3 = F1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	movwf	(_F3+3)^0180h
	movf	(_F1+2)^0180h,w
	movwf	(_F3+2)^0180h
	movf	(_F1+1)^0180h,w
	movwf	(_F3+1)^0180h
	movf	(_F1)^0180h,w
	movwf	(_F3)^0180h

	line	160
	
l4740:	
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1010+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1010+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1010+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1010)^0100h

	
l4742:	
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	bsf	status, 5	;RP0=1, select bank3
	movf	(_F2+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1010+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1010+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1010+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1010)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1011+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1011+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1011+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1011)^0100h

	
l4744:	
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	bsf	status, 5	;RP0=1, select bank3
	movf	(_F2+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_F2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1011+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1011+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1011+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1011)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1012+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1012+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1012+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_measure_capacitance$1012)^0100h

	
l4746:	
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	bsf	status, 5	;RP0=1, select bank3
	movf	(_CCal+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1012+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1012+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1012+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_measure_capacitance$1012)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin)^0100h

	line	164
	
l4748:	
;measure.c: 164: ser_puts("Cin=");
	movlw	low(((STR_35)|8000h))
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ser_puts@s)
	movlw	high(((STR_35)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	165
	
l4750:	
;measure.c: 165: format_double(Cin);
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bsf	status, 5	;RP0=1, select bank3
	movwf	(format_double@num+3)^0180h
	bcf	status, 5	;RP0=0, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bsf	status, 5	;RP0=1, select bank3
	movwf	(format_double@num+2)^0180h
	bcf	status, 5	;RP0=0, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bsf	status, 5	;RP0=1, select bank3
	movwf	(format_double@num+1)^0180h
	bcf	status, 5	;RP0=0, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bsf	status, 5	;RP0=1, select bank3
	movwf	(format_double@num)^0180h

	fcall	_format_double
	line	166
	
l4752:	
;measure.c: 166: ser_putch(' ');
	movlw	low(020h)
	fcall	_ser_putch
	line	167
	
l4754:	
;measure.c: 167: format_xint32(*(uint32_t*)&Cin);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(format_xint32@x)

	fcall	_format_xint32
	line	168
	
l4756:	
;measure.c: 168: ser_puts("\r\n");
	movlw	low(((STR_36)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_36)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	170
	
l4758:	
;measure.c: 170: if(Cin > 999) {
	movlw	0x44
	movwf	(___flge@ff1+3)
	movlw	0x79
	movwf	(___flge@ff1+2)
	movlw	0xc0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4281
	goto	u4280
u4281:
	goto	l4776
u4280:
	line	171
	
l4760:	
;measure.c: 171: if(Cin > (999e+03l)) {
	movlw	0x49
	movwf	(___flge@ff1+3)
	movlw	0x73
	movwf	(___flge@ff1+2)
	movlw	0xe5
	movwf	(___flge@ff1+1)
	movlw	0x80
	movwf	(___flge@ff1)

	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4291
	goto	u4290
u4291:
	goto	l4772
u4290:
	line	172
	
l4762:	
;measure.c: 172: if(Cin > (999e+06l)) {
	movlw	0x4e
	movwf	(___flge@ff1+3)
	movlw	0x6e
	movwf	(___flge@ff1+2)
	movlw	0x2e
	movwf	(___flge@ff1+1)
	movlw	0x1f
	movwf	(___flge@ff1)

	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4301
	goto	u4300
u4301:
	goto	l4768
u4300:
	line	173
	
l4764:	
;measure.c: 173: Cin = Cin / (1e+09);
	movlw	0x4e
	movwf	(___fldiv@f2+3)
	movlw	0x6e
	movwf	(___fldiv@f2+2)
	movlw	0x6b
	movwf	(___fldiv@f2+1)
	movlw	0x28
	movwf	(___fldiv@f2)

	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin)^0100h

	line	174
	
l4766:	
;measure.c: 174: unit = 4;
	movlw	low(04h)
	movwf	(measure_capacitance@unit)^0100h
	line	175
;measure.c: 175: } else {
	goto	l4778
	line	176
	
l4768:	
;measure.c: 176: Cin = Cin / (1e+06);
	movlw	0x49
	movwf	(___fldiv@f2+3)
	movlw	0x74
	movwf	(___fldiv@f2+2)
	movlw	0x24
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin)^0100h

	line	177
	
l4770:	
;measure.c: 177: unit = 5;
	movlw	low(05h)
	movwf	(measure_capacitance@unit)^0100h
	goto	l4778
	line	180
	
l4772:	
;measure.c: 180: Cin = Cin / 1e+03;
	movlw	0x44
	movwf	(___fldiv@f2+3)
	movlw	0x7a
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin)^0100h

	line	181
	
l4774:	
;measure.c: 181: unit = 6;
	movlw	low(06h)
	movwf	(measure_capacitance@unit)^0100h
	goto	l4778
	line	184
	
l4776:	
;measure.c: 184: unit = 7;
	movlw	low(07h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@unit)^0100h
	line	186
	
l4778:	
;measure.c: 186: Cin = Cin * 100;
	movlw	0x42
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xc8
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+3)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+2)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@Cin)^0100h

	line	187
	
l4780:	
;measure.c: 187: var = (uint16_t)Cin;
	movf	(measure_capacitance@Cin+3)^0100h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+3)^080h
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+2)^0100h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+2)^080h
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin+1)^0100h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+1)^080h
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@Cin)^0100h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@var+1)^0100h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fltol))^080h)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(measure_capacitance@var)^0100h
	line	189
	
l4782:	
;measure.c: 189: print_reading(var);
	movf	(measure_capacitance@var+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print_reading@measurement+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@var)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print_reading@measurement)
	fcall	_print_reading
	line	190
	
l4784:	
;measure.c: 190: print_unit(unit);
	bsf	status, 6	;RP1=1, select bank2
	movf	(measure_capacitance@unit)^0100h,w
	fcall	_print_unit
	line	191
	
l468:	
	return
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
	signat	_measure_capacitance,88
	global	_print_unit

;; *************** function _print_unit *****************
;; Defined at:
;;		line 123 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
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
psect	text7,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	123
global __ptext7
__ptext7:	;psect for function _print_unit
psect	text7
	file	"../../../src/print.c"
	line	123
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:	
;incstack = 0
	opt	stack 1
; Regs used in _print_unit: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	132
	
l4386:	
;print.c: 131: static const char* units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
;print.c: 132: lcd_gotoxy(14, 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_gotoxy@row)
	movlw	low(0Eh)
	fcall	_lcd_gotoxy
	line	136
;print.c: 136: lcd_gotoxy(16 - (buffer.n - buffer.p), 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_gotoxy@row)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	swapf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_unit+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_unit+1)+0
	movf	(??_print_unit+0)+0,w
	subwf	(??_print_unit+1)+0,w
	addlw	010h
	fcall	_lcd_gotoxy
	line	139
	
l4388:	
;print.c: 139: ser_puts("\r\n");
	movlw	low(((STR_9)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ser_puts@s)
	movlw	high(((STR_9)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	141
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4216
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 144 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2   48[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	144
global __ptext8
__ptext8:	;psect for function _print_reading
psect	text8
	file	"../../../src/print.c"
	line	144
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:	
;incstack = 0
	opt	stack 1
; Regs used in _print_reading: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	171
	
l4390:	
;print.c: 171: lcd_gotoxy(9, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(09h)
	fcall	_lcd_gotoxy
	line	172
	
l4392:	
;print.c: 172: lcd_puts("     ");
	movlw	low(((STR_10)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_puts@string)
	movlw	high(((STR_10)|8000h))
	movwf	((lcd_puts@string))+1
	fcall	_lcd_puts
	line	173
	
l4394:	
;print.c: 173: lcd_gotoxy(9, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(09h)
	fcall	_lcd_gotoxy
	line	175
	
l4396:	
;print.c: 175: format_number(measurement / 100, 10, 0);
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(print_reading@measurement+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(print_reading@measurement),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_print_reading$1004+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_print_reading$1004)
	
l4398:	
;print.c: 175: format_number(measurement / 100, 10, 0);
	movf	(_print_reading$1004+1),w
	movwf	(format_number@n+1)
	movf	(_print_reading$1004),w
	movwf	(format_number@n)
	movlw	low(0Ah)
	movwf	(format_number@base)
	clrf	(format_number@pad)
	fcall	_format_number
	line	177
;print.c: 177: format_number(measurement % 100, 10, 0);
	movlw	064h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(print_reading@measurement+1),w
	movwf	(___lwmod@dividend+1)
	movf	(print_reading@measurement),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(_print_reading$1005+1)
	movf	(0+(?___lwmod)),w
	movwf	(_print_reading$1005)
	
l4400:	
;print.c: 177: format_number(measurement % 100, 10, 0);
	movf	(_print_reading$1005+1),w
	movwf	(format_number@n+1)
	movf	(_print_reading$1005),w
	movwf	(format_number@n)
	movlw	low(0Ah)
	movwf	(format_number@base)
	clrf	(format_number@pad)
	fcall	_format_number
	line	180
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_print_reading
	__end_of_print_reading:
	signat	_print_reading,4216
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 163 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_21(5), STR_20(6), STR_19(7), STR_18(7), 
;;		 -> STR_14(10), STR_12(4), STR_11(4), STR_10(6), 
;; Auto vars:     Size  Location     Type
;;  i               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_print_reading
;;		_print_indicator
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	163
global __ptext9
__ptext9:	;psect for function _lcd_puts
psect	text9
	file	"../../../lib/lcd44780.c"
	line	163
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
;incstack = 0
	opt	stack 3
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	165
	
l4244:	
;lcd44780.c: 164: uint8_t i;
;lcd44780.c: 165: for(i = 0; string[i]; i++) lcd_send((string[i]), 1);
	clrf	(lcd_puts@i)
	goto	l4250
	
l4246:	
	clrf	(lcd_send@mode)
	incf	(lcd_send@mode),f
	movf	(lcd_puts@i),w
	addwf	(lcd_puts@string),w
	movwf	fsr0
	movf	(lcd_puts@string+1),w
	skipnc
	incf	(lcd_puts@string+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcd_send
	
l4248:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(lcd_puts@i),f
	
l4250:	
	movf	(lcd_puts@i),w
	addwf	(lcd_puts@string),w
	movwf	fsr0
	movf	(lcd_puts@string+1),w
	skipnc
	incf	(lcd_puts@string+1),w
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l4246
u3930:
	line	166
	
l320:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4216
	global	_format_xint32

;; *************** function _format_xint32 *****************
;; Defined at:
;;		line 51 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  x               4   48[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_buffer_putch
;;		_format_number
;; This function is called by:
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"../../../lib/format.c"
	line	51
global __ptext10
__ptext10:	;psect for function _format_xint32
psect	text10
	file	"../../../lib/format.c"
	line	51
	global	__size_of_format_xint32
	__size_of_format_xint32	equ	__end_of_format_xint32-_format_xint32
	
_format_xint32:	
;incstack = 0
	opt	stack 3
; Regs used in _format_xint32: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	52
	
l4410:	
;format.c: 52: buffer_putch('0');
	movlw	low(030h)
	fcall	_buffer_putch
	line	53
;format.c: 53: buffer_putch('x');
	movlw	low(078h)
	fcall	_buffer_putch
	line	54
;format.c: 54: format_number((uint16_t)(x >> 16), 16, -4);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(format_xint32@x)+02h,w
	movwf	(format_number@n+1)
	movf	0+(format_xint32@x)+02h,w
	movwf	(format_number@n)
	movlw	low(010h)
	movwf	(format_number@base)
	movlw	low(-4)
	movwf	(format_number@pad)
	fcall	_format_number
	line	55
;format.c: 55: format_number((uint16_t)(x & 0xffff), 16, -4);
	movf	(format_xint32@x+1),w
	movwf	(format_number@n+1)
	movf	(format_xint32@x),w
	movwf	(format_number@n)
	movlw	low(010h)
	movwf	(format_number@base)
	movlw	low(-4)
	movwf	(format_number@pad)
	fcall	_format_number
	line	56
	
l136:	
	return
	opt stack 0
GLOBAL	__end_of_format_xint32
	__end_of_format_xint32:
	signat	_format_xint32,4216
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 77 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  num             4    0[BANK3 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  weight          4   12[BANK3 ] unsigned long 
;;  m               2   18[BANK3 ] short 
;;  digit           2   16[BANK3 ] short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/300
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0      16       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0      20       0
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
;;		_buffer_putch
;;		_floor
;;		_log10
;;		_pow
;; This function is called by:
;;		_main
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	77
global __ptext11
__ptext11:	;psect for function _format_double
psect	text11
	file	"../../../lib/format.c"
	line	77
	global	__size_of_format_double
	__size_of_format_double	equ	__end_of_format_double-_format_double
	
_format_double:	
;incstack = 0
	opt	stack 0
; Regs used in _format_double: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	78
	
l4412:	
;format.c: 78: short m = (short)log10(num);
	movf	(format_double@num+3)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x+3)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+2)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x)^080h

	fcall	_log10
	movf	(3+(?_log10))^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(2+(?_log10))^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(1+(?_log10))^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(0+(?_log10))^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@m+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@m)^0180h
	line	82
;format.c: 79: short digit;
;format.c: 82: while(num > 0 + (sizeof(double) == sizeof(float) ? 3.05176e-05 : 1.19209290e-07)) {
	goto	l4428
	line	83
	
l4414:	
;format.c: 83: double weight = pow(10.0l, m);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@m+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@m)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1008+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1008+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1008+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1008)^0180h

	
l4416:	
;format.c: 83: double weight = pow(10.0l, m);
	movlw	0x41
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+3)^080h
	movlw	0x20
	movwf	(pow@x+2)^080h
	movlw	0x0
	movwf	(pow@x+1)^080h
	movlw	0x0
	movwf	(pow@x)^080h

	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1008+3)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y+3)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1008+2)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1008+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1008)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h

	fcall	_pow
	movf	(3+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight+3)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight+2)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight)^0180h

	line	84
	
l4418:	
;format.c: 84: digit = (short)floor(num / weight);
	movf	(format_double@num+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x)^080h

	fcall	_floor
	movf	(3+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1009+3)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1009+2)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1009+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1009)^0180h

;format.c: 84: digit = (short)floor(num / weight);
	movf	(_format_double$1009+3)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+3)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1009+2)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1009+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1009)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@digit+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@digit)^0180h
	line	85
;format.c: 85: num -= (digit * weight);
	movf	(format_double@digit+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@digit)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___flmul@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num)^0180h

	line	86
	
l4420:	
;format.c: 86: buffer_putch((char)('0' + digit));
	movf	(format_double@digit)^0180h,w
	addlw	030h
	fcall	_buffer_putch
	line	87
	
l4422:	
;format.c: 87: if(m == 0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((format_double@m)^0180h),w
iorwf	((format_double@m+1)^0180h),w
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l4426
u4110:
	line	88
	
l4424:	
;format.c: 88: buffer_putch('.');
	movlw	low(02Eh)
	fcall	_buffer_putch
	line	89
	
l4426:	
;format.c: 89: m--;
	movlw	-1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(format_double@m)^0180h,f
	skipc
	decf	(format_double@m+1)^0180h,f
	line	82
	
l4428:	
	movlw	0x38
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x6
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u4121
	goto	u4120
u4121:
	goto	l4414
u4120:
	line	91
	
l150:	
	return
	opt stack 0
GLOBAL	__end_of_format_double
	__end_of_format_double:
	signat	_format_double,4216
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v1.34/sources/common/pow.c"
;; Parameters:    Size  Location     Type
;;  x               4   58[BANK1 ] short 
;;  y               4   62[BANK1 ] short 
;; Auto vars:     Size  Location     Type
;;  yi              4   75[BANK1 ] unsigned long 
;;  sign            1   74[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   58[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0      13       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      21       0       0
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
psect	text12,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/pow.c"
	line	5
global __ptext12
__ptext12:	;psect for function _pow
psect	text12
	file	"/opt/microchip/xc8/v1.34/sources/common/pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
;incstack = 0
	opt	stack 0
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l4342:	
	clrf	(pow@sign)^080h
	line	10
	
l4344:	
	movf	(pow@x+3)^080h,w
	iorwf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l4348
u4020:
	line	11
	
l4346:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___flge@ff1)
	clrf	(___flge@ff1+1)
	clrf	(___flge@ff1+2)
	clrf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	line	13
	
l1062:	
	line	14
	bsf	status, 5	;RP0=1, select bank1
	clrf	(?_pow)^080h
	clrf	(?_pow+1)^080h
	clrf	(?_pow+2)^080h
	clrf	(?_pow+3)^080h
	goto	l1063
	line	16
	
l4348:	
	movf	(pow@y+3)^080h,w
	iorwf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l4354
u4030:
	line	17
	
l4350:	
	movlw	0x3f
	movwf	(?_pow+3)^080h
	movlw	0x80
	movwf	(?_pow+2)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow)^080h

	goto	l1063
	line	18
	
l4354:	
	movf	(pow@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u4041
	goto	u4040
u4041:
	goto	l4366
u4040:
	line	19
	
l4356:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(pow@y+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(pow@y+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(pow@y)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	(3+(?___fltol))^080h,w
	movwf	(pow@yi+3)^080h
	movf	(2+(?___fltol))^080h,w
	movwf	(pow@yi+2)^080h
	movf	(1+(?___fltol))^080h,w
	movwf	(pow@yi+1)^080h
	movf	(0+(?___fltol))^080h,w
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c)

	fcall	___lltofl
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(3+(?___lltofl)),w
	skipz
	goto	u4055
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(2+(?___lltofl)),w
	skipz
	goto	u4055
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(1+(?___lltofl)),w
	skipz
	goto	u4055
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(0+(?___lltofl)),w
u4055:
	skipnz
	goto	u4051
	goto	u4050
u4051:
	goto	l4360
u4050:
	line	22
	
l4358:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(?_pow)^080h
	clrf	(?_pow+1)^080h
	clrf	(?_pow+2)^080h
	clrf	(?_pow+3)^080h
	goto	l1063
	line	24
	
l4360:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi)^080h,w
	movwf	(pow@sign)^080h
	
l4362:	
	movlw	low(01h)
	andwf	(pow@sign)^080h,f
	line	25
	
l4364:	
	movf	(pow@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(pow@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(pow@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(pow@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(pow@x)^080h

	line	27
	
l4366:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+3)^080h,w
	movwf	(log@x+3)^080h
	movf	(pow@x+2)^080h,w
	movwf	(log@x+2)^080h
	movf	(pow@x+1)^080h,w
	movwf	(log@x+1)^080h
	movf	(pow@x)^080h,w
	movwf	(log@x)^080h

	fcall	_log
	movf	(3+(?_log))^080h,w
	movwf	(_pow$1021+3)^080h
	movf	(2+(?_log))^080h,w
	movwf	(_pow$1021+2)^080h
	movf	(1+(?_log))^080h,w
	movwf	(_pow$1021+1)^080h
	movf	(0+(?_log))^080h,w
	movwf	(_pow$1021)^080h

	
l4368:	
	movf	(pow@y+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1021+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1021+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1021+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1021)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1022+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1022+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1022+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1022)^080h

	movf	(_pow$1022+3)^080h,w
	movwf	(exp@x+3)^080h
	movf	(_pow$1022+2)^080h,w
	movwf	(exp@x+2)^080h
	movf	(_pow$1022+1)^080h,w
	movwf	(exp@x+1)^080h
	movf	(_pow$1022)^080h,w
	movwf	(exp@x)^080h

	fcall	_exp
	movf	(3+(?_exp))^080h,w
	movwf	(pow@x+3)^080h
	movf	(2+(?_exp))^080h,w
	movwf	(pow@x+2)^080h
	movf	(1+(?_exp))^080h,w
	movwf	(pow@x+1)^080h
	movf	(0+(?_exp))^080h,w
	movwf	(pow@x)^080h

	line	28
	
l4370:	
	movf	((pow@sign)^080h),w
	btfsc	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l1067
u4060:
	line	29
	
l4372:	
	movf	(pow@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_pow+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_pow+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_pow+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_pow)^080h

	goto	l1063
	
l1067:	
	line	30
	line	31
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8316
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "/opt/microchip/xc8/v1.34/sources/common/exp.c"
;; Parameters:    Size  Location     Type
;;  x               4   43[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   55[BANK1 ] int 
;;  sign            1   57[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   43[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      15       0       0
;;Total ram usage:       15 bytes
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
psect	text13,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/exp.c"
	line	12
global __ptext13
__ptext13:	;psect for function _exp
psect	text13
	file	"/opt/microchip/xc8/v1.34/sources/common/exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
;incstack = 0
	opt	stack 0
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l4186:	
	movf	(exp@x+3)^080h,w
	iorwf	(exp@x+2)^080h,w
	iorwf	(exp@x+1)^080h,w
	iorwf	(exp@x)^080h,w
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l4192
u3840:
	line	32
	
l4188:	
	movlw	0x3f
	movwf	(?_exp+3)^080h
	movlw	0x80
	movwf	(?_exp+2)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp)^080h

	goto	l1089
	line	34
	
l4192:	
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	movlw	0x31
	movwf	(___flge@ff1+2)
	movlw	0x72
	movwf	(___flge@ff1+1)
	movlw	0x18
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3851
	goto	u3850
u3851:
	goto	l4202
u3850:
	line	36
	
l4198:	
	movlw	0x7f
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp+3)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	movlw	0xfe
	movwf	(?_exp+1)^080h
	movlw	0xf7
	movwf	(?_exp)^080h

	goto	l1089
	line	38
	
l4202:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1)

	movlw	0xc4
	movwf	(___flge@ff2+3)
	movlw	0x3a
	movwf	(___flge@ff2+2)
	movlw	0x48
	movwf	(___flge@ff2+1)
	movlw	0x87
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3861
	goto	u3860
u3861:
	goto	l4206
u3860:
	line	40
	
l4204:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(?_exp)^080h
	clrf	(?_exp+1)^080h
	clrf	(?_exp+2)^080h
	clrf	(?_exp+3)^080h
	goto	l1089
	line	43
	
l4206:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfss	status,0
	goto	u3871
	goto	u3870
u3871:
	movlw	1
	goto	u3880
u3870:
	movlw	0
u3880:
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l4208:	
	movf	((exp@sign)^080h),w
	btfsc	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l4212
u3890:
	line	45
	
l4210:	
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x)^080h

	line	46
	
l4212:	
	movlw	0x3f
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xb8
	movwf	(___flmul@f1+2)
	movlw	0xaa
	movwf	(___flmul@f1+1)
	movlw	0x3b
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x)^080h

	line	47
	
l4214:	
	movf	(exp@x+3)^080h,w
	movwf	(floor@x+3)^080h
	movf	(exp@x+2)^080h,w
	movwf	(floor@x+2)^080h
	movf	(exp@x+1)^080h,w
	movwf	(floor@x+1)^080h
	movf	(exp@x)^080h,w
	movwf	(floor@x)^080h

	fcall	_floor
	movf	(3+(?_floor))^080h,w
	movwf	(_exp$1023+3)^080h
	movf	(2+(?_floor))^080h,w
	movwf	(_exp$1023+2)^080h
	movf	(1+(?_floor))^080h,w
	movwf	(_exp$1023+1)^080h
	movf	(0+(?_floor))^080h,w
	movwf	(_exp$1023)^080h

	
l4216:	
	movf	(_exp$1023+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(_exp$1023+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(_exp$1023+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(_exp$1023)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	movwf	(exp@exponent+1)^080h
	movf	0+(((0+(?___fltol))^080h)),w
	movwf	(exp@exponent)^080h
	line	48
	
l4218:	
	movf	(exp@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x)^080h

	line	49
	
l4220:	
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x)

	movlw	low(((exp@coeff)|8000h))
	movwf	(eval_poly@d)
	movlw	high(((exp@coeff)|8000h))
	movwf	((eval_poly@d))+1
	movlw	09h
	movwf	(eval_poly@n)
	clrf	(eval_poly@n+1)
	fcall	_eval_poly
	movf	(3+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(ldexp@value+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(ldexp@value+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(ldexp@value+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(ldexp@value)^080h

	movf	(exp@exponent+1)^080h,w
	movwf	(ldexp@newexp+1)^080h
	movf	(exp@exponent)^080h,w
	movwf	(ldexp@newexp)^080h
	fcall	_ldexp
	movf	(3+(?_ldexp))^080h,w
	movwf	(exp@x+3)^080h
	movf	(2+(?_ldexp))^080h,w
	movwf	(exp@x+2)^080h
	movf	(1+(?_ldexp))^080h,w
	movwf	(exp@x+1)^080h
	movf	(0+(?_ldexp))^080h,w
	movwf	(exp@x)^080h

	line	50
	
l4222:	
	movf	((exp@sign)^080h),w
	btfsc	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l1097
u3900:
	line	52
	
l4228:	
	movlw	0x7f
	movwf	(_exp$755+3)^080h
	movlw	0x7f
	movwf	(_exp$755+2)^080h
	movlw	0xfe
	movwf	(_exp$755+1)^080h
	movlw	0xf7
	movwf	(_exp$755)^080h

	
l1102:	
	movf	(exp@x+3)^080h,w
	xorwf	(_exp$755+3)^080h,w
	skipz
	goto	u3915
	movf	(exp@x+2)^080h,w
	xorwf	(_exp$755+2)^080h,w
	skipz
	goto	u3915
	movf	(exp@x+1)^080h,w
	xorwf	(_exp$755+1)^080h,w
	skipz
	goto	u3915
	movf	(exp@x)^080h,w
	xorwf	(_exp$755)^080h,w
u3915:
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l4232
u3910:
	line	53
	
l4230:	
	clrf	(?_exp)^080h
	clrf	(?_exp+1)^080h
	clrf	(?_exp+2)^080h
	clrf	(?_exp+3)^080h
	goto	l1089
	line	54
	
l4232:	
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2)

	movlw	0x3f
	movwf	(___fldiv@f1+3)
	movlw	0x80
	movwf	(___fldiv@f1+2)
	movlw	0x0
	movwf	(___fldiv@f1+1)
	movlw	0x0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp)^080h

	goto	l1089
	line	55
	
l1097:	
	line	56
	line	57
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4220
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "/opt/microchip/xc8/v1.34/sources/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4    4[BANK1 ] unsigned char 
;;  newexp          2    8[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    4[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flge
;;		___flneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/frexp.c"
	line	277
global __ptext14
__ptext14:	;psect for function _ldexp
psect	text14
	file	"/opt/microchip/xc8/v1.34/sources/common/frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
;incstack = 0
	opt	stack 1
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l4048:	
	movf	(ldexp@value+3)^080h,w
	iorwf	(ldexp@value+2)^080h,w
	iorwf	(ldexp@value+1)^080h,w
	iorwf	(ldexp@value)^080h,w
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l4052
u3650:
	line	280
	
l4050:	
	clrf	(?_ldexp)^080h
	clrf	(?_ldexp+1)^080h
	clrf	(?_ldexp+2)^080h
	clrf	(?_ldexp+3)^080h
	goto	l926
	line	282
	
l4052:	
	movf	0+(ldexp@value)^080h+03h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)^080h+0
	clrf	(??_ldexp+0)^080h+0+1
	clrc
	rlf	(??_ldexp+0)^080h+0,f
	rlf	(??_ldexp+0)^080h+1,f
	movf	0+(??_ldexp+0)^080h+0,w
	addwf	(ldexp@newexp)^080h,f
	skipnc
	incf	(ldexp@newexp+1)^080h,f
	movf	1+(??_ldexp+0)^080h+0,w
	addwf	(ldexp@newexp+1)^080h,f
	line	283
	rlf	0+(ldexp@value)^080h+02h,w
	rlf	0+(ldexp@value)^080h+02h,w
	andlw	1
	addwf	(ldexp@newexp)^080h,f
	skipnc
	incf	(ldexp@newexp+1)^080h,f
	line	287
	
l4054:	
	btfss	(ldexp@newexp+1)^080h,7
	goto	u3661
	goto	u3660
u3661:
	goto	l4060
u3660:
	line	289
	
l4056:	
	clrf	(?_ldexp)^080h
	clrf	(?_ldexp+1)^080h
	clrf	(?_ldexp+2)^080h
	clrf	(?_ldexp+3)^080h
	goto	l926
	line	291
	
l4060:	
	movf	(ldexp@newexp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(01h)^80h
	subwf	btemp+1,w
	skipz
	goto	u3675
	movlw	0
	subwf	(ldexp@newexp)^080h,w
u3675:

	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l4082
u3670:
	line	293
	
l4062:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ldexp@value+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(ldexp@value+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(ldexp@value+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(ldexp@value)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u3681
	goto	u3680
u3681:
	goto	l4078
u3680:
	line	294
	
l4068:	
	movlw	0x7f
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_ldexp$661+3)^080h
	movlw	0x7f
	movwf	(_ldexp$661+2)^080h
	movlw	0xfe
	movwf	(_ldexp$661+1)^080h
	movlw	0xf7
	movwf	(_ldexp$661)^080h

	
l4070:	
	movf	(_ldexp$661+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_ldexp$661+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_ldexp$661+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_ldexp$661)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_ldexp+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_ldexp+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_ldexp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_ldexp)^080h

	goto	l926
	line	296
	
l4078:	
	movlw	0x7f
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_ldexp+3)^080h
	movlw	0x7f
	movwf	(?_ldexp+2)^080h
	movlw	0xfe
	movwf	(?_ldexp+1)^080h
	movlw	0xf7
	movwf	(?_ldexp)^080h

	goto	l926
	line	300
	
l4082:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ldexp@newexp+1)^080h,w
	movwf	(??_ldexp+0)^080h+0+1
	movf	(ldexp@newexp)^080h,w
	movwf	(??_ldexp+0)^080h+0
	rlf	(??_ldexp+0)^080h+1,w
	rrf	(??_ldexp+0)^080h+1,f
	rrf	(??_ldexp+0)^080h+0,f
	movf	0+(ldexp@value)^080h+03h,w
	xorwf	0+(??_ldexp+0)^080h+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)^080h+0,w
	movwf	0+(ldexp@value)^080h+03h
	line	301
	movf	(ldexp@newexp)^080h,w
	andlw	01h
	movwf	(??_ldexp+0)^080h+0
	rrf	(??_ldexp+0)^080h+0,f
	rrf	(??_ldexp+0)^080h+0,f
	movf	0+(ldexp@value)^080h+02h,w
	xorwf	(??_ldexp+0)^080h+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)^080h+0,w
	movwf	0+(ldexp@value)^080h+02h
	line	306
	
l4084:	
	line	307
	
l926:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.34/sources/common/flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ldexp
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/flneg.c"
	line	15
global __ptext15
__ptext15:	;psect for function ___flneg
psect	text15
	file	"/opt/microchip/xc8/v1.34/sources/common/flneg.c"
	line	15
	global	__size_of___flneg
	__size_of___flneg	equ	__end_of___flneg-___flneg
	
___flneg:	
;incstack = 0
	opt	stack 1
; Regs used in ___flneg: [wreg]
	line	17
	
l3884:	
	movf	(___flneg@f1+3),w
	iorwf	(___flneg@f1+2),w
	iorwf	(___flneg@f1+1),w
	iorwf	(___flneg@f1),w
	skipnz
	goto	u3431
	goto	u3430
u3431:
	goto	l3888
u3430:
	line	18
	
l3886:	
	movlw	080h
	xorwf	(___flneg@f1+3),f
	line	19
	
l3888:	
	line	20
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "/opt/microchip/xc8/v1.34/sources/common/floor.c"
;; Parameters:    Size  Location     Type
;;  x               4   33[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  i               4   37[BANK1 ] int 
;;  expon           2   41[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  4   33[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      10       0       0
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/floor.c"
	line	13
global __ptext16
__ptext16:	;psect for function _floor
psect	text16
	file	"/opt/microchip/xc8/v1.34/sources/common/floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
;incstack = 0
	opt	stack 0
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l3966:	
	movf	(floor@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value)

	movlw	(low(floor@expon|((0x0)<<8)))&0ffh
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l3968:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(floor@expon+1)^080h,7
	goto	u3551
	goto	u3550
u3551:
	goto	l3976
u3550:
	line	20
	
l3970:	
	movf	(floor@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u3561
	goto	u3560
u3561:
	goto	l893
u3560:
	line	21
	
l3972:	
	movlw	0xbf
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor+3)^080h
	movlw	0x80
	movwf	(?_floor+2)^080h
	movlw	0x0
	movwf	(?_floor+1)^080h
	movlw	0x0
	movwf	(?_floor)^080h

	goto	l894
	
l893:	
	line	22
	bsf	status, 5	;RP0=1, select bank1
	clrf	(?_floor)^080h
	clrf	(?_floor+1)^080h
	clrf	(?_floor+2)^080h
	clrf	(?_floor+3)^080h
	goto	l894
	line	24
	
l3976:	
	movlw	0
	subwf	(floor@expon+1)^080h,w
	movlw	01Dh
	skipnz
	subwf	(floor@expon)^080h,w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l3980
u3570:
	line	25
	
l3978:	
	goto	l894
	line	26
	
l3980:	
	movf	(floor@x+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(floor@x+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(floor@x+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(floor@x)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	(3+(?___fltol))^080h,w
	movwf	(___altofl@c+3)^080h
	movf	(2+(?___fltol))^080h,w
	movwf	(___altofl@c+2)^080h
	movf	(1+(?___fltol))^080h,w
	movwf	(___altofl@c+1)^080h
	movf	(0+(?___fltol))^080h,w
	movwf	(___altofl@c)^080h

	fcall	___altofl
	movf	(3+(?___altofl))^080h,w
	movwf	(floor@i+3)^080h
	movf	(2+(?___altofl))^080h,w
	movwf	(floor@i+2)^080h
	movf	(1+(?___altofl))^080h,w
	movwf	(floor@i+1)^080h
	movf	(0+(?___altofl))^080h,w
	movwf	(floor@i)^080h

	line	27
	movf	(floor@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3581
	goto	u3580
u3581:
	goto	l3986
u3580:
	line	28
	
l3982:	
	movlw	0xbf
	movwf	(___fladd@f1+3)
	movlw	0x80
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor)^080h

	goto	l894
	line	29
	
l3986:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+3)^080h,w
	movwf	(?_floor+3)^080h
	movf	(floor@i+2)^080h,w
	movwf	(?_floor+2)^080h
	movf	(floor@i+1)^080h,w
	movwf	(?_floor+1)^080h
	movf	(floor@i)^080h,w
	movwf	(?_floor)^080h

	line	30
	
l894:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4220
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "/opt/microchip/xc8/v1.34/sources/common/fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4   18[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   27[BANK1 ] unsigned char 
;;  sign1           1   26[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   18[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      10       0       0
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
psect	text17,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/fltol.c"
	line	43
global __ptext17
__ptext17:	;psect for function ___fltol
psect	text17
	file	"/opt/microchip/xc8/v1.34/sources/common/fltol.c"
	line	43
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fltol: [wreg+status,2+status,0]
	line	47
	
l3912:	
	movf	(___fltol@f1)^080h,w
	movwf	(??___fltol+0)^080h+0
	movf	(___fltol@f1+1)^080h,w
	movwf	((??___fltol+0)^080h+0+1)
	movf	(___fltol@f1+2)^080h,w
	movwf	((??___fltol+0)^080h+0+2)
	movf	(___fltol@f1+3)^080h,w
	movwf	((??___fltol+0)^080h+0+3)
	clrc
	rlf	(??___fltol+0)^080h+2,w
	rlf	(??___fltol+0)^080h+3,w
	movwf	(___fltol@exp1)^080h
	movf	(((___fltol@exp1)^080h)),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l3916
u3450:
	line	48
	
l3914:	
	clrf	(?___fltol)^080h
	clrf	(?___fltol+1)^080h
	clrf	(?___fltol+2)^080h
	clrf	(?___fltol+3)^080h
	goto	l906
	line	49
	
l3916:	
	movf	(___fltol@f1)^080h,w
	movwf	(??___fltol+0)^080h+0
	movf	(___fltol@f1+1)^080h,w
	movwf	((??___fltol+0)^080h+0+1)
	movf	(___fltol@f1+2)^080h,w
	movwf	((??___fltol+0)^080h+0+2)
	movf	(___fltol@f1+3)^080h,w
	movwf	((??___fltol+0)^080h+0+3)
	movlw	01Fh
u3465:
	clrc
	rrf	(??___fltol+0)^080h+3,f
	rrf	(??___fltol+0)^080h+2,f
	rrf	(??___fltol+0)^080h+1,f
	rrf	(??___fltol+0)^080h+0,f
u3460:
	addlw	-1
	skipz
	goto	u3465
	movf	0+(??___fltol+0)^080h+0,w
	movwf	(___fltol@sign1)^080h
	line	50
	
l3918:	
	bsf	(___fltol@f1)^080h+(23/8),(23)&7
	line	51
	
l3920:	
	movlw	0FFh
	andwf	(___fltol@f1)^080h,f
	movlw	0FFh
	andwf	(___fltol@f1+1)^080h,f
	movlw	0FFh
	andwf	(___fltol@f1+2)^080h,f
	movlw	0
	andwf	(___fltol@f1+3)^080h,f
	line	52
	
l3922:	
	movlw	096h
	subwf	(___fltol@exp1)^080h,f
	line	53
	
l3924:	
	btfss	(___fltol@exp1)^080h,7
	goto	u3471
	goto	u3470
u3471:
	goto	l3934
u3470:
	line	54
	
l3926:	
	movf	(___fltol@exp1)^080h,w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l3930
u3480:
	goto	l3914
	line	57
	
l3930:	
	clrc
	rrf	(___fltol@f1+3)^080h,f
	rrf	(___fltol@f1+2)^080h,f
	rrf	(___fltol@f1+1)^080h,f
	rrf	(___fltol@f1)^080h,f
	line	58
	
l3932:	
	incfsz	(___fltol@exp1)^080h,f
	goto	u3491
	goto	u3490
u3491:
	goto	l3930
u3490:
	goto	l3942
	line	60
	
l3934:	
	movlw	low(020h)
	subwf	(___fltol@exp1)^080h,w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l3940
u3500:
	goto	l3914
	line	63
	
l3938:	
	clrc
	rlf	(___fltol@f1)^080h,f
	rlf	(___fltol@f1+1)^080h,f
	rlf	(___fltol@f1+2)^080h,f
	rlf	(___fltol@f1+3)^080h,f
	line	64
	decf	(___fltol@exp1)^080h,f
	line	62
	
l3940:	
	movf	((___fltol@exp1)^080h),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3938
u3510:
	line	67
	
l3942:	
	movf	((___fltol@sign1)^080h),w
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l916
u3520:
	line	68
	
l3944:	
	comf	(___fltol@f1)^080h,f
	comf	(___fltol@f1+1)^080h,f
	comf	(___fltol@f1+2)^080h,f
	comf	(___fltol@f1+3)^080h,f
	incf	(___fltol@f1)^080h,f
	skipnz
	incf	(___fltol@f1+1)^080h,f
	skipnz
	incf	(___fltol@f1+2)^080h,f
	skipnz
	incf	(___fltol@f1+3)^080h,f
	
l916:	
	line	69
	line	70
	
l906:	
	return
	opt stack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___altofl

;; *************** function ___altofl *****************
;; Defined at:
;;		line 36 in file "/opt/microchip/xc8/v1.34/sources/common/altofl.c"
;; Parameters:    Size  Location     Type
;;  c               4   28[BANK1 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   32[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   28[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/altofl.c"
	line	36
global __ptext18
__ptext18:	;psect for function ___altofl
psect	text18
	file	"/opt/microchip/xc8/v1.34/sources/common/altofl.c"
	line	36
	global	__size_of___altofl
	__size_of___altofl	equ	__end_of___altofl-___altofl
	
___altofl:	
;incstack = 0
	opt	stack 0
; Regs used in ___altofl: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l3732:	
	clrf	(___altofl@sign)^080h
	line	41
	
l3734:	
	btfss	(___altofl@c+3)^080h,7
	goto	u3091
	goto	u3090
u3091:
	goto	l3738
u3090:
	line	42
	
l3736:	
	comf	(___altofl@c)^080h,f
	comf	(___altofl@c+1)^080h,f
	comf	(___altofl@c+2)^080h,f
	comf	(___altofl@c+3)^080h,f
	incf	(___altofl@c)^080h,f
	skipnz
	incf	(___altofl@c+1)^080h,f
	skipnz
	incf	(___altofl@c+2)^080h,f
	skipnz
	incf	(___altofl@c+3)^080h,f
	line	43
	clrf	(___altofl@sign)^080h
	incf	(___altofl@sign)^080h,f
	line	45
	
l3738:	
	movf	(___altofl@c+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flpack@arg+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___altofl@c+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flpack@arg+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___altofl@c+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flpack@arg+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___altofl@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flpack@arg)

	movlw	low(096h)
	movwf	(___flpack@exp)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___altofl@sign)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___altofl+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flpack)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___altofl+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flpack)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___altofl+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flpack)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___altofl)^080h

	line	46
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of___altofl
	__end_of___altofl:
	signat	___altofl,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 18 in file "/opt/microchip/xc8/v1.34/sources/common/flsub.c"
;; Parameters:    Size  Location     Type
;;  f2              4   63[BANK0 ] unsigned char 
;;  f1              4   67[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   63[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
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
psect	text19,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/flsub.c"
	line	18
global __ptext19
__ptext19:	;psect for function ___flsub
psect	text19
	file	"/opt/microchip/xc8/v1.34/sources/common/flsub.c"
	line	18
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:	
;incstack = 0
	opt	stack 3
; Regs used in ___flsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l4040:	
	movf	(___flsub@f2+3),w
	iorwf	(___flsub@f2+2),w
	iorwf	(___flsub@f2+1),w
	iorwf	(___flsub@f2),w
	skipnz
	goto	u3641
	goto	u3640
u3641:
	goto	l4044
u3640:
	line	24
	
l4042:	
	movlw	080h
	xorwf	(___flsub@f2+3),f
	line	28
	
l4044:	
	movf	(___flsub@f2+3),w
	movwf	(___fladd@f1+3)
	movf	(___flsub@f2+2),w
	movwf	(___fladd@f1+2)
	movf	(___flsub@f2+1),w
	movwf	(___fladd@f1+1)
	movf	(___flsub@f2),w
	movwf	(___fladd@f1)

	movf	(___flsub@f1+3),w
	movwf	(___fladd@f2+3)
	movf	(___flsub@f1+2),w
	movwf	(___fladd@f2+2)
	movf	(___flsub@f1+1),w
	movwf	(___fladd@f2+1)
	movf	(___flsub@f1),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(?___flsub+3)
	movf	(2+(?___fladd)),w
	movwf	(?___flsub+2)
	movf	(1+(?___fladd)),w
	movwf	(?___flsub+1)
	movf	(0+(?___fladd)),w
	movwf	(?___flsub)

	line	32
	
l902:	
	return
	opt stack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 56 in file "/opt/microchip/xc8/v1.34/sources/common/fldiv.c"
;; Parameters:    Size  Location     Type
;;  f2              4   10[BANK0 ] unsigned char 
;;  f1              4   14[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  f3              4   22[BANK0 ] unsigned char 
;;  sign            1   28[BANK0 ] unsigned char 
;;  exp             1   27[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   10[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
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
psect	text20,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/fldiv.c"
	line	56
global __ptext20
__ptext20:	;psect for function ___fldiv
psect	text20
	file	"/opt/microchip/xc8/v1.34/sources/common/fldiv.c"
	line	56
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___fldiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l4000:	
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
	movf	(((___fldiv@exp))),w
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l4004
u3600:
	line	64
	
l4002:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l861
	line	65
	
l4004:	
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
	movf	(((___fldiv@sign))),w
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l4008
u3610:
	line	66
	
l4006:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l861
	line	67
	
l4008:	
	movlw	low(089h)
	addwf	(___fldiv@sign),w
	movwf	(??___fldiv+0)+0
	movf	0+(??___fldiv+0)+0,w
	subwf	(___fldiv@exp),f
	line	68
	
l4010:	
	movf	0+(___fldiv@f1)+03h,w
	movwf	(___fldiv@sign)
	line	69
	
l4012:	
	movf	0+(___fldiv@f2)+03h,w
	xorwf	(___fldiv@sign),f
	line	70
	
l4014:	
	movlw	low(080h)
	andwf	(___fldiv@sign),f
	line	71
	
l4016:	
	bsf	(___fldiv@f1)+(23/8),(23)&7
	line	72
	
l4018:	
	movlw	0FFh
	andwf	(___fldiv@f1),f
	movlw	0FFh
	andwf	(___fldiv@f1+1),f
	movlw	0FFh
	andwf	(___fldiv@f1+2),f
	movlw	0
	andwf	(___fldiv@f1+3),f
	line	73
	
l4020:	
	bsf	(___fldiv@f2)+(23/8),(23)&7
	line	74
	
l4022:	
	movlw	0FFh
	andwf	(___fldiv@f2),f
	movlw	0FFh
	andwf	(___fldiv@f2+1),f
	movlw	0FFh
	andwf	(___fldiv@f2+2),f
	movlw	0
	andwf	(___fldiv@f2+3),f
	line	75
	
l4024:	
	movlw	low(020h)
	movwf	(___fldiv@cntr)
	line	77
	
l4026:	
	clrc
	rlf	(___fldiv@f3),f
	rlf	(___fldiv@f3+1),f
	rlf	(___fldiv@f3+2),f
	rlf	(___fldiv@f3+3),f
	line	78
	movf	(___fldiv@f2+3),w
	subwf	(___fldiv@f1+3),w
	skipz
	goto	u3625
	movf	(___fldiv@f2+2),w
	subwf	(___fldiv@f1+2),w
	skipz
	goto	u3625
	movf	(___fldiv@f2+1),w
	subwf	(___fldiv@f1+1),w
	skipz
	goto	u3625
	movf	(___fldiv@f2),w
	subwf	(___fldiv@f1),w
u3625:
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l4032
u3620:
	line	79
	
l4028:	
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
	line	80
	
l4030:	
	bsf	(___fldiv@f3)+(0/8),(0)&7
	line	82
	
l4032:	
	clrc
	rlf	(___fldiv@f1),f
	rlf	(___fldiv@f1+1),f
	rlf	(___fldiv@f1+2),f
	rlf	(___fldiv@f1+3),f
	line	83
	
l4034:	
	decfsz	(___fldiv@cntr),f
	goto	u3631
	goto	u3630
u3631:
	goto	l4026
u3630:
	line	84
	
l4036:	
	movf	(___fldiv@f3+3),w
	movwf	(___flpack@arg+3)
	movf	(___fldiv@f3+2),w
	movwf	(___flpack@arg+2)
	movf	(___fldiv@f3+1),w
	movwf	(___flpack@arg+1)
	movf	(___fldiv@f3),w
	movwf	(___flpack@arg)

	movf	(___fldiv@exp),w
	movwf	(___flpack@exp)
	movf	(___fldiv@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___fldiv+3)
	movf	(2+(?___flpack)),w
	movwf	(?___fldiv+2)
	movf	(1+(?___flpack)),w
	movwf	(?___fldiv+1)
	movf	(0+(?___flpack)),w
	movwf	(?___fldiv)

	line	85
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	___lltofl

;; *************** function ___lltofl *****************
;; Defined at:
;;		line 30 in file "/opt/microchip/xc8/v1.34/sources/common/lltofl.c"
;; Parameters:    Size  Location     Type
;;  c               4   10[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   10[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/lltofl.c"
	line	30
global __ptext21
__ptext21:	;psect for function ___lltofl
psect	text21
	file	"/opt/microchip/xc8/v1.34/sources/common/lltofl.c"
	line	30
	global	__size_of___lltofl
	__size_of___lltofl	equ	__end_of___lltofl-___lltofl
	
___lltofl:	
;incstack = 0
	opt	stack 2
; Regs used in ___lltofl: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l4118:	
	movf	(___lltofl@c+3),w
	movwf	(___flpack@arg+3)
	movf	(___lltofl@c+2),w
	movwf	(___flpack@arg+2)
	movf	(___lltofl@c+1),w
	movwf	(___flpack@arg+1)
	movf	(___lltofl@c),w
	movwf	(___flpack@arg)

	movlw	low(096h)
	movwf	(___flpack@exp)
	clrf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___lltofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___lltofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___lltofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___lltofl)

	line	33
	
l986:	
	return
	opt stack 0
GLOBAL	__end_of___lltofl
	__end_of___lltofl:
	signat	___lltofl,4220
	global	_log10

;; *************** function _log10 *****************
;; Defined at:
;;		line 39 in file "/opt/microchip/xc8/v1.34/sources/common/log.c"
;; Parameters:    Size  Location     Type
;;  x               4   10[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   10[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       8       0       0
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
psect	text22,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/log.c"
	line	39
global __ptext22
__ptext22:	;psect for function _log10
psect	text22
	file	"/opt/microchip/xc8/v1.34/sources/common/log.c"
	line	39
	global	__size_of_log10
	__size_of_log10	equ	__end_of_log10-_log10
	
_log10:	
;incstack = 0
	opt	stack 0
; Regs used in _log10: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	41
	
l4336:	
	movf	(log10@x+3)^080h,w
	movwf	(log@x+3)^080h
	movf	(log10@x+2)^080h,w
	movwf	(log@x+2)^080h
	movf	(log10@x+1)^080h,w
	movwf	(log@x+1)^080h
	movf	(log10@x)^080h,w
	movwf	(log@x)^080h

	fcall	_log
	movf	(3+(?_log))^080h,w
	movwf	(_log10$1020+3)^080h
	movf	(2+(?_log))^080h,w
	movwf	(_log10$1020+2)^080h
	movf	(1+(?_log))^080h,w
	movwf	(_log10$1020+1)^080h
	movf	(0+(?_log))^080h,w
	movwf	(_log10$1020)^080h

	
l4338:	
	movlw	0x3e
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xde
	movwf	(___flmul@f1+2)
	movlw	0x5b
	movwf	(___flmul@f1+1)
	movlw	0xd9
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1020+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1020+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1020+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1020)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10)^080h

	line	42
	
l1002:	
	return
	opt stack 0
GLOBAL	__end_of_log10
	__end_of_log10:
	signat	_log10,4220
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v1.34/sources/common/log.c"
;; Parameters:    Size  Location     Type
;;  x               4    4[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exponent        2    8[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  4    4[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtofl
;;		___fladd
;;		___flge
;;		___flmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_log10
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	5
global __ptext23
__ptext23:	;psect for function _log
psect	text23
	file	"/opt/microchip/xc8/v1.34/sources/common/log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
;incstack = 0
	opt	stack 0
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l4122:	
	movf	(log@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u3741
	goto	u3740
u3741:
	goto	l4126
u3740:
	line	26
	
l4124:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(?_log)^080h
	clrf	(?_log+1)^080h
	clrf	(?_log+2)^080h
	clrf	(?_log+3)^080h
	goto	l998
	line	28
	
l4126:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+3)^080h,w
	iorwf	(log@x+2)^080h,w
	iorwf	(log@x+1)^080h,w
	iorwf	(log@x)^080h,w
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l4130
u3750:
	line	30
	
l4128:	
	clrf	(?_log)^080h
	clrf	(?_log+1)^080h
	clrf	(?_log+2)^080h
	clrf	(?_log+3)^080h
	goto	l998
	line	32
	
l4130:	
	movlw	0xbf
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f1+3)
	movlw	0x80
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	movlw	0x40
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	(low(log@exponent|((0x0)<<8)))&0ffh
	movwf	(frexp@eptr)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(frexp@value)

	fcall	_frexp
	movf	(3+(?_frexp)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?_frexp)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?_frexp)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?_frexp)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x)^080h

	line	33
	
l4132:	
	movlw	-1
	addwf	(log@exponent)^080h,f
	skipc
	decf	(log@exponent+1)^080h,f
	line	34
	
l4134:	
	movf	(log@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x)

	movlw	low(((log@coeff)|8000h))
	movwf	(eval_poly@d)
	movlw	high(((log@coeff)|8000h))
	movwf	((eval_poly@d))+1
	movlw	08h
	movwf	(eval_poly@n)
	clrf	(eval_poly@n+1)
	fcall	_eval_poly
	movf	(3+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(log@x)^080h

	line	35
	
l4136:	
	movf	(log@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f1)

	movlw	0x3f
	movwf	(___flmul@f1+3)
	movlw	0x31
	movwf	(___flmul@f1+2)
	movlw	0x72
	movwf	(___flmul@f1+1)
	movlw	0x18
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(log@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log)^080h

	line	36
	
l998:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4220
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "/opt/microchip/xc8/v1.34/sources/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4    0[BANK0 ] int 
;;  eptr            1    4[BANK0 ] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       5       0       0       0
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
psect	text24,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/frexp.c"
	line	254
global __ptext24
__ptext24:	;psect for function _frexp
psect	text24
	file	"/opt/microchip/xc8/v1.34/sources/common/frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 2
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l3892:	
	movf	(frexp@value+3),w
	iorwf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l3900
u3440:
	line	257
	
l3894:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	258
	
l3896:	
	clrf	(?_frexp)
	clrf	(?_frexp+1)
	clrf	(?_frexp+2)
	clrf	(?_frexp+3)
	goto	l922
	line	261
	
l3900:	
	movf	0+(frexp@value)+03h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+02h,w
	rlf	0+(frexp@value)+02h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l3902:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	082h
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	0FFh
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l3904:	
	movf	0+(frexp@value)+03h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+03h
	line	269
	
l3906:	
	bcf	0+(frexp@value)+02h,7
	line	273
	
l3908:	
	line	274
	
l922:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8316
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.34/sources/common/evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               4   63[BANK0 ] PTR int 
;;  d               2   67[BANK0 ] PTR const 
;;		 -> exp@coeff(40), log@coeff(36), 
;;  n               2   69[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             4    0[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  4   63[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      16       4       0       0
;;Total ram usage:       20 bytes
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
psect	text25,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/evalpoly.c"
	line	4
global __ptext25
__ptext25:	;psect for function _eval_poly
psect	text25
	file	"/opt/microchip/xc8/v1.34/sources/common/evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	8
	
l4088:	
	movf	(eval_poly@n),w
	movwf	(??_eval_poly+0)+0
	clrc
	rlf	(??_eval_poly+0)+0,f
	clrc
	rlf	(??_eval_poly+0)+0,f
	movf	0+(??_eval_poly+0)+0,w
	addwf	(eval_poly@d),w
	movwf	(??_eval_poly+2)+0
	movf	(eval_poly@d+1),w
	movwf	(??_eval_poly+1)+0
	skipnc
	incf	(??_eval_poly+1)+0,f
	btfss	0+(??_eval_poly+0)+0,7
	goto	u3690
	decf	(??_eval_poly+1)+0,f
u3690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_eval_poly+1)+0,w
	movwf	0+((??_eval_poly+2)+0)+1
	movf	1+(??_eval_poly+2)+0,w
	movwf	btemp+1
	movf	0+(??_eval_poly+2)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	((??_eval_poly+4)+0)
	fcall	stringtab
	movwf	((??_eval_poly+4)+0+1)
	fcall	stringtab
	movwf	((??_eval_poly+4)+0+2)
	fcall	stringtab
	movwf	((??_eval_poly+4)+0+3)
	movf	3+(??_eval_poly+4)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_eval_poly+4)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_eval_poly+4)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_eval_poly+4)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res)^080h

	line	9
	goto	l4092
	line	10
	
l4090:	
	movlw	-1
	addwf	(eval_poly@n),f
	skipc
	decf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	movwf	(??_eval_poly+0)+0
	clrc
	rlf	(??_eval_poly+0)+0,f
	clrc
	rlf	(??_eval_poly+0)+0,f
	movf	0+(??_eval_poly+0)+0,w
	addwf	(eval_poly@d),w
	movwf	(??_eval_poly+2)+0
	movf	(eval_poly@d+1),w
	movwf	(??_eval_poly+1)+0
	skipnc
	incf	(??_eval_poly+1)+0,f
	btfss	0+(??_eval_poly+0)+0,7
	goto	u3700
	decf	(??_eval_poly+1)+0,f
u3700:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_eval_poly+1)+0,w
	movwf	0+((??_eval_poly+2)+0)+1
	movf	1+(??_eval_poly+2)+0,w
	movwf	btemp+1
	movf	0+(??_eval_poly+2)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	((??_eval_poly+4)+0)
	fcall	stringtab
	movwf	((??_eval_poly+4)+0+1)
	fcall	stringtab
	movwf	((??_eval_poly+4)+0+2)
	fcall	stringtab
	movwf	((??_eval_poly+4)+0+3)
	movf	3+(??_eval_poly+4)+0,w
	movwf	(___fladd@f1+3)
	movf	2+(??_eval_poly+4)+0,w
	movwf	(___fladd@f1+2)
	movf	1+(??_eval_poly+4)+0,w
	movwf	(___fladd@f1+1)
	movf	0+(??_eval_poly+4)+0,w
	movwf	(___fladd@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	movf	(eval_poly@x+3),w
	movwf	(___flmul@f2+3)
	movf	(eval_poly@x+2),w
	movwf	(___flmul@f2+2)
	movf	(eval_poly@x+1),w
	movwf	(___flmul@f2+1)
	movf	(eval_poly@x),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(eval_poly@res)^080h

	line	9
	
l4092:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((eval_poly@n)),w
iorwf	((eval_poly@n+1)),w
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l4090
u3710:
	line	11
	
l4094:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eval_poly+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eval_poly+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eval_poly+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(eval_poly@res)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eval_poly)

	line	12
	
l1075:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12412
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.34/sources/common/flmul.c"
;; Parameters:    Size  Location     Type
;;  f1              4   29[BANK0 ] int 
;;  f2              4   33[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    4   42[BANK0 ] unsigned long 
;;  sign            1   47[BANK0 ] unsigned char 
;;  cntr            1   46[BANK0 ] unsigned char 
;;  exp             1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   29[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
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
psect	text26,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/flmul.c"
	line	62
global __ptext26
__ptext26:	;psect for function ___flmul
psect	text26
	file	"/opt/microchip/xc8/v1.34/sources/common/flmul.c"
	line	62
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___flmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l3832:	
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
	movf	(((___flmul@exp))),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3836
u3350:
	line	68
	
l3834:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l876
	line	69
	
l3836:	
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
	movf	(((___flmul@sign))),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3840
u3360:
	line	70
	
l3838:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l876
	line	71
	
l3840:	
	movf	(___flmul@sign),w
	addlw	07Bh
	addwf	(___flmul@exp),f
	line	72
	
l3842:	
	movf	0+(___flmul@f1)+03h,w
	movwf	(___flmul@sign)
	line	73
	
l3844:	
	movf	0+(___flmul@f2)+03h,w
	xorwf	(___flmul@sign),f
	line	74
	
l3846:	
	movlw	low(080h)
	andwf	(___flmul@sign),f
	line	75
	
l3848:	
	bsf	(___flmul@f1)+(23/8),(23)&7
	line	77
	
l3850:	
	bsf	(___flmul@f2)+(23/8),(23)&7
	line	78
	
l3852:	
	movlw	0FFh
	andwf	(___flmul@f2),f
	movlw	0FFh
	andwf	(___flmul@f2+1),f
	movlw	0FFh
	andwf	(___flmul@f2+2),f
	movlw	0
	andwf	(___flmul@f2+3),f
	line	79
	
l3854:	
	clrf	(___flmul@f3_as_product)
	clrf	(___flmul@f3_as_product+1)
	clrf	(___flmul@f3_as_product+2)
	clrf	(___flmul@f3_as_product+3)
	line	197
	
l3856:	
	movlw	low(07h)
	movwf	(___flmul@cntr)
	line	199
	
l3858:	
	btfss	(___flmul@f1),(0)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l3862
u3370:
	line	200
	
l3860:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3381
	addwf	(___flmul@f3_as_product+1),f
u3381:
	movf	(___flmul@f2+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3382
	addwf	(___flmul@f3_as_product+2),f
u3382:
	movf	(___flmul@f2+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3383
	addwf	(___flmul@f3_as_product+3),f
u3383:

	line	201
	
l3862:	
	clrc
	rrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	202
	
l3864:	
	clrc
	rlf	(___flmul@f2),f
	rlf	(___flmul@f2+1),f
	rlf	(___flmul@f2+2),f
	rlf	(___flmul@f2+3),f
	line	203
	
l3866:	
	decfsz	(___flmul@cntr),f
	goto	u3391
	goto	u3390
u3391:
	goto	l3858
u3390:
	line	206
	
l3868:	
	movlw	low(011h)
	movwf	(___flmul@cntr)
	line	208
	
l3870:	
	btfss	(___flmul@f1),(0)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l3874
u3400:
	line	209
	
l3872:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3411
	addwf	(___flmul@f3_as_product+1),f
u3411:
	movf	(___flmul@f2+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3412
	addwf	(___flmul@f3_as_product+2),f
u3412:
	movf	(___flmul@f2+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3413
	addwf	(___flmul@f3_as_product+3),f
u3413:

	line	210
	
l3874:	
	clrc
	rrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	211
	
l3876:	
	clrc
	rrf	(___flmul@f3_as_product+3),f
	rrf	(___flmul@f3_as_product+2),f
	rrf	(___flmul@f3_as_product+1),f
	rrf	(___flmul@f3_as_product),f
	line	212
	
l3878:	
	decfsz	(___flmul@cntr),f
	goto	u3421
	goto	u3420
u3421:
	goto	l3870
u3420:
	line	219
	
l3880:	
	movf	(___flmul@f3_as_product+3),w
	movwf	(___flpack@arg+3)
	movf	(___flmul@f3_as_product+2),w
	movwf	(___flpack@arg+2)
	movf	(___flmul@f3_as_product+1),w
	movwf	(___flpack@arg+1)
	movf	(___flmul@f3_as_product),w
	movwf	(___flpack@arg)

	movf	(___flmul@exp),w
	movwf	(___flpack@exp)
	movf	(___flmul@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___flmul+3)
	movf	(2+(?___flpack)),w
	movwf	(?___flmul+2)
	movf	(1+(?___flpack)),w
	movwf	(?___flmul+1)
	movf	(0+(?___flpack)),w
	movwf	(?___flmul)

	line	220
	
l876:	
	return
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 88 in file "/opt/microchip/xc8/v1.34/sources/common/fladd.c"
;; Parameters:    Size  Location     Type
;;  f1              4   48[BANK0 ] unsigned char 
;;  f2              4   52[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   62[BANK0 ] unsigned char 
;;  exp2            1   61[BANK0 ] unsigned char 
;;  sign            1   60[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   48[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
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
psect	text27,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/fladd.c"
	line	88
global __ptext27
__ptext27:	;psect for function ___fladd
psect	text27
	file	"/opt/microchip/xc8/v1.34/sources/common/fladd.c"
	line	88
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:	
;incstack = 0
	opt	stack 3
; Regs used in ___fladd: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3742:	
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
	movf	((___fladd@exp1)),w
	btfsc	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l3748
u3100:
	
l3744:	
	movf	(___fladd@exp2),w
	subwf	(___fladd@exp1),w
	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l3752
u3110:
	
l3746:	
	movf	(___fladd@exp2),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp1),w
	subwf	(??___fladd+0)+0,f
	movlw	low(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l3752
u3120:
	line	95
	
l3748:	
	movf	(___fladd@f2+3),w
	movwf	(?___fladd+3)
	movf	(___fladd@f2+2),w
	movwf	(?___fladd+2)
	movf	(___fladd@f2+1),w
	movwf	(?___fladd+1)
	movf	(___fladd@f2),w
	movwf	(?___fladd)

	goto	l830
	line	96
	
l3752:	
	movf	((___fladd@exp2)),w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l833
u3130:
	
l3754:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u3141
	goto	u3140
u3141:
	goto	l3758
u3140:
	
l3756:	
	movf	(___fladd@exp1),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp2),w
	subwf	(??___fladd+0)+0,f
	movlw	low(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3758
u3150:
	
l833:	
	line	97
	goto	l830
	line	98
	
l3758:	
	movlw	low(06h)
	movwf	(___fladd@sign)
	line	99
	
l3760:	
	btfss	(___fladd@f1+3),(31)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l834
u3160:
	line	100
	
l3762:	
	bsf	(___fladd@sign)+(7/8),(7)&7
	
l834:	
	line	101
	btfss	(___fladd@f2+3),(31)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l835
u3170:
	line	102
	
l3764:	
	bsf	(___fladd@sign)+(6/8),(6)&7
	
l835:	
	line	103
	bsf	(___fladd@f1)+(23/8),(23)&7
	line	104
	
l3766:	
	movlw	0FFh
	andwf	(___fladd@f1),f
	movlw	0FFh
	andwf	(___fladd@f1+1),f
	movlw	0FFh
	andwf	(___fladd@f1+2),f
	movlw	0
	andwf	(___fladd@f1+3),f
	line	105
	
l3768:	
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
	goto	u3181
	goto	u3180
u3181:
	goto	l3780
u3180:
	line	112
	
l3770:	
	clrc
	rlf	(___fladd@f2),f
	rlf	(___fladd@f2+1),f
	rlf	(___fladd@f2+2),f
	rlf	(___fladd@f2+3),f
	line	113
	decf	(___fladd@exp2),f
	line	114
	
l3772:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u3191
	goto	u3190
u3191:
	goto	l3778
u3190:
	
l3774:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l3770
u3200:
	goto	l3778
	line	116
	
l3776:	
	clrc
	rrf	(___fladd@f1+3),f
	rrf	(___fladd@f1+2),f
	rrf	(___fladd@f1+1),f
	rrf	(___fladd@f1),f
	line	117
	incf	(___fladd@exp1),f
	line	115
	
l3778:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l3776
u3210:
	goto	l844
	line	119
	
l3780:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u3221
	goto	u3220
u3221:
	goto	l844
u3220:
	line	123
	
l3782:	
	clrc
	rlf	(___fladd@f1),f
	rlf	(___fladd@f1+1),f
	rlf	(___fladd@f1+2),f
	rlf	(___fladd@f1+3),f
	line	124
	decf	(___fladd@exp1),f
	line	125
	
l3784:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u3231
	goto	u3230
u3231:
	goto	l3790
u3230:
	
l3786:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3782
u3240:
	goto	l3790
	line	127
	
l3788:	
	clrc
	rrf	(___fladd@f2+3),f
	rrf	(___fladd@f2+2),f
	rrf	(___fladd@f2+1),f
	rrf	(___fladd@f2),f
	line	128
	incf	(___fladd@exp2),f
	line	126
	
l3790:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l3788
u3250:
	line	131
	
l844:	
	btfss	(___fladd@sign),(7)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l3796
u3260:
	line	133
	
l3792:	
	movlw	0FFh
	xorwf	(___fladd@f1),f
	movlw	0FFh
	xorwf	(___fladd@f1+1),f
	movlw	0FFh
	xorwf	(___fladd@f1+2),f
	movlw	0FFh
	xorwf	(___fladd@f1+3),f
	line	134
	
l3794:	
	incf	(___fladd@f1),f
	skipnz
	incf	(___fladd@f1+1),f
	skipnz
	incf	(___fladd@f1+2),f
	skipnz
	incf	(___fladd@f1+3),f
	line	136
	
l3796:	
	btfss	(___fladd@sign),(6)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l3802
u3270:
	line	138
	
l3798:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	139
	
l3800:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	141
	
l3802:	
	clrf	(___fladd@sign)
	line	142
	
l3804:	
	movf	(___fladd@f1),w
	addwf	(___fladd@f2),f
	movf	(___fladd@f1+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3281
	addwf	(___fladd@f2+1),f
u3281:
	movf	(___fladd@f1+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3282
	addwf	(___fladd@f2+2),f
u3282:
	movf	(___fladd@f1+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3283
	addwf	(___fladd@f2+3),f
u3283:

	line	143
	
l3806:	
	btfss	(___fladd@f2+3),(31)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l3814
u3290:
	line	144
	
l3808:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	145
	
l3810:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	146
	
l3812:	
	clrf	(___fladd@sign)
	incf	(___fladd@sign),f
	line	148
	
l3814:	
	movf	(___fladd@f2+3),w
	movwf	(___flpack@arg+3)
	movf	(___fladd@f2+2),w
	movwf	(___flpack@arg+2)
	movf	(___fladd@f2+1),w
	movwf	(___flpack@arg+1)
	movf	(___fladd@f2),w
	movwf	(___flpack@arg)

	movf	(___fladd@exp1),w
	movwf	(___flpack@exp)
	movf	(___fladd@sign),w
	movwf	(___flpack@sign)
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
	
l830:	
	return
	opt stack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.34/sources/common/flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    0[BANK0 ] unsigned char 
;;  ff2             4    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_floor
;;		_ldexp
;;		_log
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/flge.c"
	line	4
global __ptext28
__ptext28:	;psect for function ___flge
psect	text28
	file	"/opt/microchip/xc8/v1.34/sources/common/flge.c"
	line	4
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:	
;incstack = 0
	opt	stack 5
; Regs used in ___flge: [wreg+status,2+status,0]
	line	6
	
l3818:	
	btfss	(___flge@ff1+3),(31)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3822
u3300:
	line	7
	
l3820:	
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
	goto	u3311
	goto	u3312
u3311:
	subwf	(??___flge+0)+1,f
u3312:
	movf	(___flge@ff1+2),w
	skipc
	incfsz	(___flge@ff1+2),w
	goto	u3313
	goto	u3314
u3313:
	subwf	(??___flge+0)+2,f
u3314:
	movf	(___flge@ff1+3),w
	skipc
	incfsz	(___flge@ff1+3),w
	goto	u3315
	goto	u3316
u3315:
	subwf	(??___flge+0)+3,f
u3316:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff1+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff1+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff1+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff1)

	line	8
	
l3822:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l869
u3320:
	line	9
	
l3824:	
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
	goto	u3331
	goto	u3332
u3331:
	subwf	(??___flge+0)+1,f
u3332:
	movf	(___flge@ff2+2),w
	skipc
	incfsz	(___flge@ff2+2),w
	goto	u3333
	goto	u3334
u3333:
	subwf	(??___flge+0)+2,f
u3334:
	movf	(___flge@ff2+3),w
	skipc
	incfsz	(___flge@ff2+3),w
	goto	u3335
	goto	u3336
u3335:
	subwf	(??___flge+0)+3,f
u3336:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff2+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff2+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff2+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff2)

	
l869:	
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
	goto	u3345
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u3345
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u3345
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u3345:
	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l3828
u3340:
	
l3826:	
	clrc
	
	goto	l870
	
l3828:	
	setc
	
	line	13
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___awtofl

;; *************** function ___awtofl *****************
;; Defined at:
;;		line 31 in file "/opt/microchip/xc8/v1.34/sources/common/awtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   10[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  f1              4    0        int 
;;  sign            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   10[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/awtofl.c"
	line	31
global __ptext29
__ptext29:	;psect for function ___awtofl
psect	text29
	file	"/opt/microchip/xc8/v1.34/sources/common/awtofl.c"
	line	31
	global	__size_of___awtofl
	__size_of___awtofl	equ	__end_of___awtofl-___awtofl
	
___awtofl:	
;incstack = 0
	opt	stack 1
; Regs used in ___awtofl: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3990:	
	clrf	(___awtofl@sign)
	line	37
	
l3992:	
	btfss	(___awtofl@c+1),7
	goto	u3591
	goto	u3590
u3591:
	goto	l3996
u3590:
	line	38
	
l3994:	
	comf	(___awtofl@c),f
	comf	(___awtofl@c+1),f
	incf	(___awtofl@c),f
	skipnz
	incf	(___awtofl@c+1),f
	line	39
	incf	(___awtofl@sign),f
	line	41
	
l3996:	
	movf	(___awtofl@c),w
	movwf	(___flpack@arg)
	movf	(___awtofl@c+1),w
	movwf	((___flpack@arg))+1
	clrf	2+((___flpack@arg))
	clrf	3+((___flpack@arg))
	movlw	low(096h)
	movwf	(___flpack@exp)
	movf	(___awtofl@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___awtofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___awtofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___awtofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___awtofl)

	line	42
	
l803:	
	return
	opt stack 0
GLOBAL	__end_of___awtofl
	__end_of___awtofl:
	signat	___awtofl,4220
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 484 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	484
global __ptext30
__ptext30:	;psect for function _lcd_init
psect	text30
	file	"../../../lib/lcd44780.c"
	line	484
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;incstack = 0
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0]
;lcd_init@fourbitmode stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(lcd_init@fourbitmode)
	line	486
	
l4556:	
;lcd44780.c: 486: LCD_ctrl = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_LCD_ctrl)^0180h
	line	487
	
l4558:	
;lcd44780.c: 487: LCD_function = (fourbitmode ? 0x00 : 0x10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((lcd_init@fourbitmode)),w
	btfss	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l4562
u4210:
	
l4560:	
	movlw	010h
	movwf	(_lcd_init$321)
	clrf	(_lcd_init$321+1)
	goto	l4564
	
l4562:	
	clrf	(_lcd_init$321)
	clrf	(_lcd_init$321+1)
	
l4564:	
	movf	(_lcd_init$321),w
	movwf	(_LCD_function)
	line	489
	
l4566:	
;lcd44780.c: 489: LCD_lines = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_LCD_lines)^0180h
	line	491
	
l4568:	
;lcd44780.c: 491: LCD_mode = 0;
	clrf	(_LCD_mode)^0180h
	line	493
	
l4570:	
;lcd44780.c: 493: TRISB &= ~0b0100;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	494
	
l4572:	
;lcd44780.c: 494: PORTB &= ~0b0100;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(2/8),(2)&7	;volatile
	line	499
	
l4574:	
;lcd44780.c: 499: TRISB &= ~0b1000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(3/8),(3)&7	;volatile
	line	500
	
l4576:	
;lcd44780.c: 500: PORTB &= ~0b1000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(3/8),(3)&7	;volatile
	line	502
	
l4578:	
;lcd44780.c: 502: PORTB &= ~0b11110000;
	movlw	low(0Fh)
	andwf	(6),f	;volatile
	line	512
	
l373:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,4216
	global	_lcd_begin

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 411 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;;		_lcd_write4bits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	411
global __ptext31
__ptext31:	;psect for function _lcd_begin
psect	text31
	file	"../../../lib/lcd44780.c"
	line	411
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:	
;incstack = 0
	opt	stack 3
; Regs used in _lcd_begin: [wreg+status,2+status,0+pclath+cstack]
;lcd_begin@lines stored from wreg
	movwf	(lcd_begin@lines)
	line	412
	
l4580:	
;lcd44780.c: 412: if(lines > 1)
	movlw	low(02h)
	subwf	(lcd_begin@lines),w
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l4584
u4220:
	line	413
	
l4582:	
;lcd44780.c: 413: LCD_function |= 0x08;
	bsf	(_LCD_function)+(3/8),(3)&7
	line	416
	
l4584:	
;lcd44780.c: 416: LCD_lines = lines;
	movf	(lcd_begin@lines),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_LCD_lines)^0180h
	line	420
	
l4586:	
;lcd44780.c: 420: if((dotsize != 0) && (lines == 1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((lcd_begin@dotsize)),w
	btfsc	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l4592
u4230:
	
l4588:	
		decf	((lcd_begin@lines)),w
	btfss	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l4592
u4240:
	line	421
	
l4590:	
;lcd44780.c: 421: LCD_function |= 0x04;
	bsf	(_LCD_function)+(2/8),(2)&7
	line	423
	
l4592:	
;lcd44780.c: 423: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_lcd_begin+0)+0+1),f
	movlw	101
movwf	((??_lcd_begin+0)+0),f
u4407:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4407
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4407
	nop2
opt asmopt_on

	line	426
	
l4594:	
;lcd44780.c: 426: PORTB &= ~0b0100;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6)+(2/8),(2)&7	;volatile
	line	427
	
l4596:	
;lcd44780.c: 427: PORTB &= ~0b1000;
	bcf	(6)+(3/8),(3)&7	;volatile
	line	430
	
l4598:	
;lcd44780.c: 430: if(!(LCD_function & 0x10)) {
	btfsc	(_LCD_function),(4)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l4610
u4250:
	line	434
	
l4600:	
;lcd44780.c: 434: lcd_write4bits(0x03);
	movlw	low(03h)
	fcall	_lcd_write4bits
	line	435
	
l4602:	
;lcd44780.c: 435: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u4417:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4417
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4417
	nop
opt asmopt_on

	line	437
	
l4604:	
;lcd44780.c: 437: lcd_write4bits(0x03);
	movlw	low(03h)
	fcall	_lcd_write4bits
	line	438
;lcd44780.c: 438: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_begin+0)+0,f
u4427:
decfsz	(??_lcd_begin+0)+0,f
	goto	u4427
	nop2	;nop
opt asmopt_on

	line	440
	
l4606:	
;lcd44780.c: 440: lcd_write4bits(0x03);
	movlw	low(03h)
	fcall	_lcd_write4bits
	line	441
	
l4608:	
;lcd44780.c: 441: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_begin+0)+0,f
u4437:
decfsz	(??_lcd_begin+0)+0,f
	goto	u4437
	nop2	;nop
opt asmopt_on

	line	443
;lcd44780.c: 443: lcd_write4bits(0x02);
	movlw	low(02h)
	fcall	_lcd_write4bits
	line	444
;lcd44780.c: 444: }
	goto	l4618
	line	450
	
l4610:	
;lcd44780.c: 446: else {
;lcd44780.c: 450: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	451
	
l4612:	
;lcd44780.c: 451: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u4447:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4447
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4447
	nop
opt asmopt_on

	line	454
	
l4614:	
;lcd44780.c: 454: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	455
;lcd44780.c: 455: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u4457:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4457
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4457
	nop
opt asmopt_on

	line	459
	
l4616:	
;lcd44780.c: 459: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	463
	
l4618:	
;lcd44780.c: 460: }
;lcd44780.c: 463: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	466
;lcd44780.c: 466: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_LCD_ctrl)^0180h
	line	467
	
l4620:	
;lcd44780.c: 467: lcd_command(0x08 | LCD_ctrl);
	movf	(_LCD_ctrl)^0180h,w
	iorlw	08h
	fcall	_lcd_command
	line	470
	
l4622:	
;lcd44780.c: 470: lcd_command(0x01);
	movlw	low(01h)
	fcall	_lcd_command
	line	471
;lcd44780.c: 471: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_begin+0)+0+1),f
	movlw	251
movwf	((??_lcd_begin+0)+0),f
u4467:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4467
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4467
	nop2
opt asmopt_on

	line	474
;lcd44780.c: 474: LCD_mode = 0x02 | 0x00;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_LCD_mode)^0180h
	line	476
	
l4624:	
;lcd44780.c: 476: lcd_command(0x04 | LCD_mode);
	movf	(_LCD_mode)^0180h,w
	iorlw	04h
	fcall	_lcd_command
	line	477
	
l366:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
	signat	_lcd_begin,8312
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 25 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   58[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___lwtofl
;;		_delay10ms
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_send
;;		_measure_freq
;;		_put_str
;;		_ser_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"../../../lib/../src/measure.c"
	line	25
global __ptext32
__ptext32:	;psect for function _calibrate
psect	text32
	file	"../../../lib/../src/measure.c"
	line	25
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:	
;incstack = 0
	opt	stack 1
; Regs used in _calibrate: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l4648:	
;measure.c: 26: uint8_t i;
;measure.c: 29: lcd_clear();
	fcall	_lcd_clear
	line	31
	
l4650:	
;measure.c: 31: lcd_gotoxy(0, 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	32
	
l4652:	
;measure.c: 32: put_str("Calibrating");
	movlw	low(((STR_23)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(put_str@s)
	movlw	high(((STR_23)|8000h))
	movwf	((put_str@s))+1
	fcall	_put_str
	line	34
	
l4654:	
;measure.c: 34: lcd_gotoxy(0, 1);
	clrf	(lcd_gotoxy@row)
	incf	(lcd_gotoxy@row),f
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	35
	
l4656:	
;measure.c: 35: ser_puts("\r\n");
	movlw	low(((STR_24)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ser_puts@s)
	movlw	high(((STR_24)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	36
	
l4658:	
;measure.c: 36: put_str("please wait...");
	movlw	low(((STR_25)|8000h))
	movwf	(put_str@s)
	movlw	high(((STR_25)|8000h))
	movwf	((put_str@s))+1
	fcall	_put_str
	line	39
	
l4660:	
;measure.c: 39: PORTC &= ~(1 << 5);
	bcf	(7)+(5/8),(5)&7	;volatile
	line	41
	
l4662:	
;measure.c: 41: F1 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1)^0180h

	line	42
;measure.c: 42: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	44
	
l4664:	
;measure.c: 44: F1 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F1)^0180h

	line	45
	
l4666:	
;measure.c: 45: PORTC |= (1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	line	47
	
l4668:	
;measure.c: 47: F2 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2)^0180h

	line	48
;measure.c: 48: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	50
	
l4670:	
;measure.c: 50: F2 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_F2)^0180h

	line	51
	
l4672:	
;measure.c: 51: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	54
	
l4674:	
;measure.c: 54: lcd_gotoxy(11, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(0Bh)
	fcall	_lcd_gotoxy
	line	55
	
l4676:	
;measure.c: 55: for(i = 0; i < 6; i++) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(calibrate@i)
	line	56
	
l4682:	
;measure.c: 56: lcd_send(('='), 1);
	clrf	(lcd_send@mode)
	incf	(lcd_send@mode),f
	movlw	low(03Dh)
	fcall	_lcd_send
	line	58
;measure.c: 58: delay10ms(28);
	movlw	low(01Ch)
	fcall	_delay10ms
	line	55
	
l4684:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(calibrate@i),f
	
l4686:	
	movlw	low(06h)
	subwf	(calibrate@i),w
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l4682
u4260:
	line	61
	
l4688:	
;measure.c: 59: }
;measure.c: 61: ser_puts("\r\n");
	movlw	low(((STR_26)|8000h))
	movwf	(ser_puts@s)
	movlw	high(((STR_26)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	62
	
l455:	
	return
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,88
	global	_put_str

;; *************** function _put_str *****************
;; Defined at:
;;		line 221 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_37(13), STR_28(10), STR_25(15), STR_23(12), 
;; Auto vars:     Size  Location     Type
;;  i               2    8[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_output_putch
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	221
global __ptext33
__ptext33:	;psect for function _put_str
psect	text33
	file	"../../../src/print.c"
	line	221
	global	__size_of_put_str
	__size_of_put_str	equ	__end_of_put_str-_put_str
	
_put_str:	
;incstack = 0
	opt	stack 2
; Regs used in _put_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	224
	
l4402:	
;print.c: 222: int i;
;print.c: 224: for(i = 0; s[i]; i++) {
	clrf	(put_str@i)
	clrf	(put_str@i+1)
	goto	l4408
	line	225
	
l4404:	
;print.c: 225: output_putch(s[i]);
	movf	(put_str@i),w
	addwf	(put_str@s),w
	movwf	(??_put_str+1)+0
	movf	(put_str@s+1),w
	movwf	(??_put_str+0)+0
	skipnc
	incf	(??_put_str+0)+0,f
	btfss	(put_str@i),7
	goto	u4080
	decf	(??_put_str+0)+0,f
u4080:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_put_str+0)+0,w
	movwf	0+((??_put_str+1)+0)+1
	movf	1+(??_put_str+1)+0,w
	movwf	btemp+1
	movf	0+(??_put_str+1)+0,w
	movwf	fsr0
	fcall	stringtab
	fcall	_output_putch
	line	224
	
l4406:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(put_str@i),f
	skipnz
	incf	(put_str@i+1),f
	
l4408:	
	movf	(put_str@i),w
	addwf	(put_str@s),w
	movwf	(??_put_str+1)+0
	movf	(put_str@s+1),w
	movwf	(??_put_str+0)+0
	skipnc
	incf	(??_put_str+0)+0,f
	btfss	(put_str@i),7
	goto	u4090
	decf	(??_put_str+0)+0,f
u4090:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_put_str+0)+0,w
	movwf	0+((??_put_str+1)+0)+1
	movf	1+(??_put_str+1)+0,w
	movwf	btemp+1
	movf	0+(??_put_str+1)+0,w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l4404
u4100:
	line	227
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_put_str
	__end_of_put_str:
	signat	_put_str,4216
	global	_output_putch

;; *************** function _output_putch *****************
;; Defined at:
;;		line 208 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/900
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
;;		_lcd_send
;;		_ser_putch
;; This function is called by:
;;		_put_str
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	208
global __ptext34
__ptext34:	;psect for function _output_putch
psect	text34
	file	"../../../src/print.c"
	line	208
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:	
;incstack = 0
	opt	stack 2
; Regs used in _output_putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;output_putch@c stored from wreg
	movwf	(output_putch@c)
	line	210
	
l4292:	
;print.c: 210: lcd_send((c), 1);
	clrf	(lcd_send@mode)
	incf	(lcd_send@mode),f
	movf	(output_putch@c),w
	fcall	_lcd_send
	line	213
	
l4294:	
;print.c: 213: ser_putch(c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(output_putch@c),w
	fcall	_ser_putch
	line	215
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4216
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 68 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   52[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   48[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
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
psect	text35,local,class=CODE,delta=2,merge=1
	file	"../../../lib/../src/measure.c"
	line	68
global __ptext35
__ptext35:	;psect for function _measure_freq
psect	text35
	file	"../../../lib/../src/measure.c"
	line	68
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:	
;incstack = 0
	opt	stack 1
; Regs used in _measure_freq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	71
	
l4434:	
;measure.c: 69: uint16_t count;
;measure.c: 71: INTCON &= ~0b100;
	bcf	(11)+(2/8),(2)&7	;volatile
	line	75
;measure.c: 75: TRISA &= ~0b00010000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	77
	
l4436:	
;measure.c: 77: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	221
movwf	((??_measure_freq+0)+0),f
u4477:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4477
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4477
	nop2
opt asmopt_on

	line	80
	
l4438:	
;measure.c: 80: TMR0 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	85
	
l4440:	
;measure.c: 85: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4487:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4487
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4487
	nop
opt asmopt_on

	line	86
	
l4442:	
;measure.c: 86: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4497:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4497
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4497
	nop
opt asmopt_on

	line	87
	
l4444:	
;measure.c: 87: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4507:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4507
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4507
	nop
opt asmopt_on

	line	88
	
l4446:	
;measure.c: 88: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4517:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4517
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4517
	nop
opt asmopt_on

	line	89
	
l4448:	
;measure.c: 89: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4527:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4527
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4527
	nop
opt asmopt_on

	line	90
	
l4450:	
;measure.c: 90: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4537:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4537
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4537
	nop
opt asmopt_on

	line	91
	
l4452:	
;measure.c: 91: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4547:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4547
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4547
	nop
opt asmopt_on

	line	92
	
l4454:	
;measure.c: 92: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4557:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4557
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4557
	nop
opt asmopt_on

	line	93
	
l4456:	
;measure.c: 93: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4567:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4567
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4567
	nop
opt asmopt_on

	line	94
	
l4458:	
;measure.c: 94: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4577:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4577
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4577
	nop
opt asmopt_on

	line	99
	
l4460:	
;measure.c: 99: TRISA |= 0b00010000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(133)^080h+(4/8),(4)&7	;volatile
	line	102
	
l4462:	
;measure.c: 102: count = timer0_read_ps();
	fcall	_timer0_read_ps
	movf	(1+(?_timer0_read_ps)),w
	movwf	(measure_freq@count+1)
	movf	(0+(?_timer0_read_ps)),w
	movwf	(measure_freq@count)
	line	105
	
l4464:	
;measure.c: 105: lcd_gotoxy(0, 1);
	clrf	(lcd_gotoxy@row)
	incf	(lcd_gotoxy@row),f
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	107
	
l4466:	
;measure.c: 107: buffer_init();
	fcall	_buffer_init
	line	108
	
l4468:	
;measure.c: 108: buffer_puts("Freq=");
	movlw	low(((STR_27)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(buffer_puts@x)
	movlw	high(((STR_27)|8000h))
	movwf	((buffer_puts@x))+1
	fcall	_buffer_puts
	line	109
	
l4470:	
;measure.c: 109: format_number(count, 10, 5);
	movf	(measure_freq@count+1),w
	movwf	(format_number@n+1)
	movf	(measure_freq@count),w
	movwf	(format_number@n)
	movlw	low(0Ah)
	movwf	(format_number@base)
	movlw	low(05h)
	movwf	(format_number@pad)
	fcall	_format_number
	line	110
	
l4472:	
;measure.c: 110: print_buffer();
	fcall	_print_buffer
	line	112
	
l4474:	
;measure.c: 112: return count;
	movf	(measure_freq@count+1),w
	movwf	(?_measure_freq+1)
	movf	(measure_freq@count),w
	movwf	(?_measure_freq)
	line	113
	
l458:	
	return
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
	signat	_measure_freq,90
	global	_timer0_read_ps

;; *************** function _timer0_read_ps *****************
;; Defined at:
;;		line 64 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    5[BANK0 ] unsigned int 
;;  prev            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         2       7       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"../../../lib/timer.c"
	line	64
global __ptext36
__ptext36:	;psect for function _timer0_read_ps
psect	text36
	file	"../../../lib/timer.c"
	line	64
	global	__size_of_timer0_read_ps
	__size_of_timer0_read_ps	equ	__end_of_timer0_read_ps-_timer0_read_ps
	
_timer0_read_ps:	
;incstack = 0
	opt	stack 4
; Regs used in _timer0_read_ps: [wreg+status,2+status,0+btemp+1]
	line	65
	
l4306:	
;timer.c: 65: uint8_t prev = TMR0;
	bcf	status, 5	;RP0=0, select bank0
	movf	(1),w	;volatile
	movwf	(timer0_read_ps@prev)
	line	66
	
l4308:	
;timer.c: 66: uint16_t count = 0;
	clrf	(timer0_read_ps@count)
	clrf	(timer0_read_ps@count+1)
	line	68
	
l4310:	
;timer.c: 68: OPTION_REG |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(129)^080h+(5/8),(5)&7	;volatile
	line	72
	
l4312:	
;timer.c: 72: OPTION_REG |= 0x10;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(129)^080h+(4/8),(4)&7	;volatile
	line	74
	
l4314:	
;timer.c: 74: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	75
	
l4316:	
;timer.c: 75: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	77
	
l4318:	
;timer.c: 77: OPTION_REG &= ~0x10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h+(4/8),(4)&7	;volatile
	line	79
	
l4320:	
;timer.c: 79: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	80
	
l4322:	
;timer.c: 80: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	82
	
l4324:	
;timer.c: 82: ++count;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(timer0_read_ps@count),f
	skipnz
	incf	(timer0_read_ps@count+1),f
	line	85
	
l4326:	
;timer.c: 85: } while(prev == TMR0 && count <= 255);
	movf	(timer0_read_ps@prev),w
	xorwf	(1),w	;volatile
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l4330
u4000:
	
l4328:	
	movlw	01h
	subwf	(timer0_read_ps@count+1),w
	movlw	0
	skipnz
	subwf	(timer0_read_ps@count),w
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l4312
u4010:
	line	87
	
l4330:	
;timer.c: 87: count = ((prev << 8) + (256 - count));
	movf	(timer0_read_ps@prev),w
	movwf	(??_timer0_read_ps+0)+0
	clrf	(??_timer0_read_ps+0)+0+1
	movf	(??_timer0_read_ps+0)+0,w
	movwf	(??_timer0_read_ps+0)+1
	clrf	(??_timer0_read_ps+0)+0
	movf	(timer0_read_ps@count),w
	subwf	0+(??_timer0_read_ps+0)+0,w
	movwf	(??_timer0_read_ps+2)+0
	movf	(timer0_read_ps@count+1),w
	skipc
	incf	(timer0_read_ps@count+1),w
	subwf	1+(??_timer0_read_ps+0)+0,w
	movwf	1+(??_timer0_read_ps+2)+0
	movf	0+(??_timer0_read_ps+2)+0,w
	addlw	low(0100h)
	movwf	(timer0_read_ps@count)
	movf	1+(??_timer0_read_ps+2)+0,w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(timer0_read_ps@count)
	line	88
	
l4332:	
;timer.c: 88: return count;
	movf	(timer0_read_ps@count+1),w
	movwf	(?_timer0_read_ps+1)
	movf	(timer0_read_ps@count),w
	movwf	(?_timer0_read_ps)
	line	89
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_timer0_read_ps
	__end_of_timer0_read_ps:
	signat	_timer0_read_ps,90
	global	_print_buffer

;; *************** function _print_buffer *****************
;; Defined at:
;;		line 230 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_ser_putch
;;		_ser_puts
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	230
global __ptext37
__ptext37:	;psect for function _print_buffer
psect	text37
	file	"../../../src/print.c"
	line	230
	global	__size_of_print_buffer
	__size_of_print_buffer	equ	__end_of_print_buffer-_print_buffer
	
_print_buffer:	
;incstack = 0
	opt	stack 2
; Regs used in _print_buffer: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	232
	
l4296:	
;print.c: 231: uint8_t i;
;print.c: 232: for(i = 0; i < buffer.n; i++) {
	clrf	(print_buffer@i)
	goto	l4302
	line	233
	
l4298:	
;print.c: 233: ser_putch(buffer.x[i]);
	movf	(print_buffer@i),w
	addlw	low(_buffer|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_ser_putch
	line	232
	
l4300:	
	incf	(print_buffer@i),f
	
l4302:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	swapf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	subwf	(print_buffer@i),w
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l4298
u3990:
	line	235
	
l4304:	
;print.c: 234: }
;print.c: 235: ser_puts("\r\n");
	movlw	low(((STR_13)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ser_puts@s)
	movlw	high(((STR_13)|8000h))
	movwf	((ser_puts@s))+1
	fcall	_ser_puts
	line	236
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_print_buffer
	__end_of_print_buffer:
	signat	_print_buffer,88
	global	_ser_puts

;; *************** function _ser_puts *****************
;; Defined at:
;;		line 65 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  s               2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_36(3), STR_35(5), STR_34(3), STR_33(8), 
;;		 -> STR_32(6), STR_31(6), STR_30(6), STR_29(5), 
;;		 -> STR_26(3), STR_24(3), STR_22(3), STR_17(3), 
;;		 -> STR_16(16), STR_15(16), STR_13(3), STR_9(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_print_unit
;;		_print_buffer
;;		_main
;;		_calibrate
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"../../../lib/ser.c"
	line	65
global __ptext38
__ptext38:	;psect for function _ser_puts
psect	text38
	file	"../../../lib/ser.c"
	line	65
	global	__size_of_ser_puts
	__size_of_ser_puts	equ	__end_of_ser_puts-_ser_puts
	
_ser_puts:	
;incstack = 0
	opt	stack 5
; Regs used in _ser_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	66
	
l4098:	
;ser.c: 66: while(*s) ser_putch(*s++);
	goto	l4104
	
l4100:	
	movf	(ser_puts@s+1),w
	movwf	btemp+1
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_ser_putch
	
l4102:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(ser_puts@s),f
	skipnz
	incf	(ser_puts@s+1),f
	
l4104:	
	movf	(ser_puts@s+1),w
	movwf	btemp+1
	movf	(ser_puts@s),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l4100
u3720:
	line	67
	
l544:	
	return
	opt stack 0
GLOBAL	__end_of_ser_puts
	__end_of_ser_puts:
	signat	_ser_puts,4216
	global	_ser_putch

;; *************** function _ser_putch *****************
;; Defined at:
;;		line 55 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/900
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
;;		Nothing
;; This function is called by:
;;		_output_putch
;;		_print_buffer
;;		_measure_capacitance
;;		_ser_puts
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	line	55
global __ptext39
__ptext39:	;psect for function _ser_putch
psect	text39
	file	"../../../lib/ser.c"
	line	55
	global	__size_of_ser_putch
	__size_of_ser_putch	equ	__end_of_ser_putch-_ser_putch
	
_ser_putch:	
;incstack = 0
	opt	stack 5
; Regs used in _ser_putch: [wreg-fsr0h+status,2+status,0]
;ser_putch@c stored from wreg
	movwf	(ser_putch@c)
	line	56
	
l3952:	
;ser.c: 56: while(((txiptr + 1) & ((uint8_t)16 - 1)) == txoptr) continue;
	
l3954:	
	movf	(_txiptr),w	;volatile
	addlw	01h
	andlw	0Fh
	xorwf	(_txoptr),w	;volatile
	skipnz
	goto	u3541
	goto	u3540
u3541:
	goto	l3954
u3540:
	
l537:	
	line	57
;ser.c: 57: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	58
	
l3956:	
;ser.c: 58: txfifo[txiptr] = c;
	movf	(_txiptr),w
	addlw	low(_txfifo|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(ser_putch@c),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	59
	
l3958:	
;ser.c: 59: txiptr = (txiptr + 1) & ((uint8_t)16 - 1);
	incf	(_txiptr),f	;volatile
	
l3960:	
	movlw	low(0Fh)
	andwf	(_txiptr),f	;volatile
	line	60
	
l3962:	
;ser.c: 60: TXIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1124/8)^080h,(1124)&7	;volatile
	line	61
	
l3964:	
;ser.c: 61: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	62
	
l538:	
	return
	opt stack 0
GLOBAL	__end_of_ser_putch
	__end_of_ser_putch:
	signat	_ser_putch,4216
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 135 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    4[BANK0 ] unsigned char 
;;  row_offsets     4    5[BANK0 ] unsigned char [4]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_print_unit
;;		_print_reading
;;		_print_indicator
;;		_main
;;		_calibrate
;;		_measure_freq
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	135
global __ptext40
__ptext40:	;psect for function _lcd_gotoxy
psect	text40
	file	"../../../lib/lcd44780.c"
	line	135
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
;incstack = 0
	opt	stack 2
; Regs used in _lcd_gotoxy: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	movwf	(lcd_gotoxy@col)
	line	137
	
l4236:	
;lcd44780.c: 137: uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1148+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1148+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1148+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1148)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets)

	line	146
	
l4238:	
;lcd44780.c: 146: if(LCD_lines == 1) {
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
		decf	((_LCD_lines)^0180h),w
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l4242
u3920:
	line	147
	
l4240:	
;lcd44780.c: 147: row_offsets[1] = 0x14;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(lcd_gotoxy@row_offsets)+01h
	line	148
;lcd44780.c: 148: row_offsets[2] = 0x28;
	movlw	low(028h)
	movwf	0+(lcd_gotoxy@row_offsets)+02h
	line	149
;lcd44780.c: 149: row_offsets[3] = 0x3C;
	movlw	low(03Ch)
	movwf	0+(lcd_gotoxy@row_offsets)+03h
	line	156
	
l4242:	
;lcd44780.c: 150: }
;lcd44780.c: 156: lcd_command(0x80 | (col + row_offsets[row]));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_gotoxy@row),w
	addlw	low(lcd_gotoxy@row_offsets|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(lcd_gotoxy@col),w
	bcf	status, 7	;select IRP bank0
	addwf	indf,w
	iorlw	080h
	fcall	_lcd_command
	line	157
	
l314:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
	signat	_lcd_gotoxy,8312
	global	_format_number

;; *************** function _format_number *****************
;; Defined at:
;;		line 15 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  n               2    7[BANK0 ] unsigned int 
;;  base            1    9[BANK0 ] unsigned char 
;;  pad             1   10[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   11[BANK0 ] unsigned char [32]
;;  i               1   47[BANK0 ] char 
;;  di              1   46[BANK0 ] unsigned char 
;;  padchar         1   43[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      37       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      41       0       0       0
;;Total ram usage:       42 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_buffer_putch
;; This function is called by:
;;		_print_reading
;;		_format_xint32
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"../../../lib/format.c"
	line	15
global __ptext41
__ptext41:	;psect for function _format_number
psect	text41
	file	"../../../lib/format.c"
	line	15
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:	
;incstack = 0
	opt	stack 3
; Regs used in _format_number: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l4252:	
;format.c: 16: char buf[8 * sizeof(long)];
;format.c: 17: uint8_t di;
;format.c: 18: int8_t i = 0;
	clrf	(format_number@i)
	line	19
	
l4254:	
;format.c: 19: char padchar = ' ';
	movlw	low(020h)
	movwf	(format_number@padchar)
	line	21
	
l4256:	
;format.c: 21: if(pad < 0) {
	btfss	(format_number@pad),7
	goto	u3941
	goto	u3940
u3941:
	goto	l4262
u3940:
	line	22
	
l4258:	
;format.c: 22: pad = -pad;
	comf	(format_number@pad),f
	incf	(format_number@pad),f
	line	23
	
l4260:	
;format.c: 23: padchar = '0';
	movlw	low(030h)
	movwf	(format_number@padchar)
	line	35
	
l4262:	
;format.c: 35: di = n % base;
	movf	(format_number@base),w
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(format_number@n+1),w
	movwf	(___lwmod@dividend+1)
	movf	(format_number@n),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(format_number@di)
	line	36
	
l4264:	
;format.c: 36: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	movlw	low(0Ah)
	subwf	(format_number@di),w
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l4268
u3950:
	
l4266:	
	movf	(format_number@di),w
	movwf	(_format_number$158)
	clrf	(_format_number$158+1)
	movlw	037h
	addwf	(_format_number$158),f
	skipnc
	incf	(_format_number$158+1),f
	goto	l4270
	
l4268:	
	movf	(format_number@di),w
	movwf	(_format_number$158)
	clrf	(_format_number$158+1)
	movlw	030h
	addwf	(_format_number$158),f
	skipnc
	incf	(_format_number$158+1),f
	
l4270:	
	movf	(format_number@i),w
	addlw	low(format_number@buf|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(_format_number$158),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4272:	
	incf	(format_number@i),f
	line	38
	
l4274:	
;format.c: 38: n /= base;
	movf	(format_number@base),w
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(format_number@n+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(format_number@n),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(format_number@n+1)
	movf	(0+(?___lwdiv)),w
	movwf	(format_number@n)
	line	39
	
l4276:	
;format.c: 39: } while(n > 0);
	movf	((format_number@n)),w
iorwf	((format_number@n+1)),w
	btfss	status,2
	goto	u3961
	goto	u3960
u3961:
	goto	l4262
u3960:
	goto	l4280
	line	41
	
l4278:	
	movf	(format_number@padchar),w
	fcall	_buffer_putch
	
l4280:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(format_number@i),w
	xorlw	80h
	movwf	(??_format_number+0)+0
	movf	(format_number@pad),w
	decf	(format_number@pad),f
	xorlw	80h
	subwf	(??_format_number+0)+0
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l4278
u3970:
	line	43
	
l4282:	
;format.c: 43: for(; i > 0; i--) {
	movf	(format_number@i),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l4286
u3980:
	goto	l133
	line	44
	
l4286:	
;format.c: 44: buffer_putch((char)buf[(int16_t)i - 1]);
	movf	(format_number@i),w
	addlw	0FFh
	addlw	low(format_number@buf|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_buffer_putch
	line	43
	
l4288:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(format_number@i),f
	goto	l4282
	line	47
	
l133:	
	return
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
	signat	_format_number,12408
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
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
psect	text42,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	6
global __ptext42
__ptext42:	;psect for function ___lwmod
psect	text42
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l4166:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l4182
u3800:
	line	14
	
l4168:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4172
	line	16
	
l4170:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4172:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l4170
u3810:
	line	20
	
l4174:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3825
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3825:
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l4178
u3820:
	line	21
	
l4176:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4178:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4180:	
	decfsz	(___lwmod@counter),f
	goto	u3831
	goto	u3830
u3831:
	goto	l4174
u3830:
	line	25
	
l4182:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
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
psect	text43,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	6
global __ptext43
__ptext43:	;psect for function ___lwdiv
psect	text43
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l4140:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4142:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l4162
u3760:
	line	16
	
l4144:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4148
	line	18
	
l4146:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4148:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l4146
u3770:
	line	22
	
l4150:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4152:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3785
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3785:
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l4158
u3780:
	line	24
	
l4154:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4156:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4158:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4160:	
	decfsz	(___lwdiv@counter),f
	goto	u3791
	goto	u3790
u3791:
	goto	l4150
u3790:
	line	30
	
l4162:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_buffer_puts

;; *************** function _buffer_puts *****************
;; Defined at:
;;		line 57 in file "../../../lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  x               2    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_27(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_buffer_putch
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	file	"../../../lib/buffer.c"
	line	57
global __ptext44
__ptext44:	;psect for function _buffer_puts
psect	text44
	file	"../../../lib/buffer.c"
	line	57
	global	__size_of_buffer_puts
	__size_of_buffer_puts	equ	__end_of_buffer_puts-_buffer_puts
	
_buffer_puts:	
;incstack = 0
	opt	stack 3
; Regs used in _buffer_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	58
	
l4378:	
;buffer.c: 58: while(*x) {
	goto	l4384
	line	59
	
l4380:	
;buffer.c: 59: buffer_putch(*x);
	movf	(buffer_puts@x+1),w
	movwf	btemp+1
	movf	(buffer_puts@x),w
	movwf	fsr0
	fcall	stringtab
	fcall	_buffer_putch
	line	60
	
l4382:	
;buffer.c: 60: ++x;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(buffer_puts@x),f
	skipnz
	incf	(buffer_puts@x+1),f
	line	58
	
l4384:	
	movf	(buffer_puts@x+1),w
	movwf	btemp+1
	movf	(buffer_puts@x),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l4380
u4070:
	line	63
	
l398:	
	return
	opt stack 0
GLOBAL	__end_of_buffer_puts
	__end_of_buffer_puts:
	signat	_buffer_puts,4217
	global	_buffer_putch

;; *************** function _buffer_putch *****************
;; Defined at:
;;		line 30 in file "../../../lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_format_xint32
;;		_format_double
;;		_buffer_puts
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	line	30
global __ptext45
__ptext45:	;psect for function _buffer_putch
psect	text45
	file	"../../../lib/buffer.c"
	line	30
	global	__size_of_buffer_putch
	__size_of_buffer_putch	equ	__end_of_buffer_putch-_buffer_putch
	
_buffer_putch:	
;incstack = 0
	opt	stack 3
; Regs used in _buffer_putch: [wreg-fsr0h+status,2+status,0+btemp+1]
;buffer_putch@ch stored from wreg
	movwf	(buffer_putch@ch)
	line	31
	
l4106:	
;buffer.c: 31: if(16 - buffer.n <= 0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	swapf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_buffer_putch+0)+0
	movlw	0
	movwf	(??_buffer_putch+1)+0+1
	movf	(??_buffer_putch+0)+0,w
	sublw	010h
	movwf	(??_buffer_putch+1)+0
	skipc
	decf	(??_buffer_putch+1)+0+1,f
	movf	1+(??_buffer_putch+1)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3735
	movlw	01h
	subwf	0+(??_buffer_putch+1)+0,w
u3735:

	skipnc
	goto	u3731
	goto	u3730
u3731:
	goto	l4110
u3730:
	goto	l385
	line	33
	
l4110:	
;buffer.c: 33: buffer.x[buffer.n] = ch;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	swapf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	addlw	low(_buffer|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(buffer_putch@ch),w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	34
	
l4112:	
;buffer.c: 34: buffer.n++;
	swapf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_buffer_putch+0)+0)
	incf	(??_buffer_putch+0)+0
	swapf	((??_buffer_putch+0)+0),f
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_buffer)^0180h+010h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((??_buffer_putch+0)+0),w
	andlw	not (((1<<4)-1)<<4)
	xorwf	((??_buffer_putch+0)+0),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+010h
	line	36
	
l385:	
	return
	opt stack 0
GLOBAL	__end_of_buffer_putch
	__end_of_buffer_putch:
	signat	_buffer_putch,4217
	global	_buffer_init

;; *************** function _buffer_init *****************
;; Defined at:
;;		line 10 in file "../../../lib/buffer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/300
;;		Unchanged: 0/0
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
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	line	10
global __ptext46
__ptext46:	;psect for function _buffer_init
psect	text46
	file	"../../../lib/buffer.c"
	line	10
	global	__size_of_buffer_init
	__size_of_buffer_init	equ	__end_of_buffer_init-_buffer_init
	
_buffer_init:	
;incstack = 0
	opt	stack 4
; Regs used in _buffer_init: [wreg+status,2+status,0]
	line	11
	
l4376:	
;buffer.c: 11: buffer.p = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	0+(_buffer)^0180h+010h,f
	line	12
;buffer.c: 12: buffer.n = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	0+(_buffer)^0180h+010h,f
	line	13
	
l378:	
	return
	opt stack 0
GLOBAL	__end_of_buffer_init
	__end_of_buffer_init:
	signat	_buffer_init,88
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 287 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	287
global __ptext47
__ptext47:	;psect for function _lcd_clear
psect	text47
	file	"../../../lib/lcd44780.c"
	line	287
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
;incstack = 0
	opt	stack 3
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	288
	
l4430:	
;lcd44780.c: 288: lcd_command(0x01);
	movlw	low(01h)
	fcall	_lcd_command
	line	289
	
l4432:	
;lcd44780.c: 289: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_clear+0)+0+1),f
	movlw	251
movwf	((??_lcd_clear+0)+0),f
u4587:
	decfsz	((??_lcd_clear+0)+0),f
	goto	u4587
	decfsz	((??_lcd_clear+0)+0+1),f
	goto	u4587
	nop2
opt asmopt_on

	line	291
	
l341:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,88
	global	_lcd_command

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 127 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
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
psect	text48,local,class=CODE,delta=2,merge=1
	line	127
global __ptext48
__ptext48:	;psect for function _lcd_command
psect	text48
	file	"../../../lib/lcd44780.c"
	line	127
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
;incstack = 0
	opt	stack 2
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@value stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_command@value)
	line	128
	
l4116:	
;lcd44780.c: 128: lcd_send(value, 0);
	clrf	(lcd_send@mode)
	movf	(lcd_command@value),w
	fcall	_lcd_send
	line	129
	
l308:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
	signat	_lcd_command,4216
	global	_lcd_send

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 103 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write4bits
;; This function is called by:
;;		_output_putch
;;		_lcd_command
;;		_lcd_puts
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	line	103
global __ptext49
__ptext49:	;psect for function _lcd_send
psect	text49
	file	"../../../lib/lcd44780.c"
	line	103
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:	
;incstack = 0
	opt	stack 3
; Regs used in _lcd_send: [wreg+status,2+status,0+pclath+cstack]
;lcd_send@value stored from wreg
	movwf	(lcd_send@value)
	line	104
	
l3946:	
;lcd44780.c: 104: if(mode) {
	movf	((lcd_send@mode)),w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l303
u3530:
	line	105
	
l3948:	
;lcd44780.c: 105: PORTB |= 0b0100;
	bsf	(6)+(2/8),(2)&7	;volatile
	line	106
;lcd44780.c: 106: } else {
	goto	l3950
	
l303:	
	line	107
;lcd44780.c: 107: PORTB &= ~0b0100;
	bcf	(6)+(2/8),(2)&7	;volatile
	line	116
	
l3950:	
;lcd44780.c: 108: }
;lcd44780.c: 115: {
;lcd44780.c: 116: lcd_write4bits(value >> 4);
	swapf	(lcd_send@value),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	_lcd_write4bits
	line	117
;lcd44780.c: 117: lcd_write4bits(value);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_send@value),w
	fcall	_lcd_write4bits
	line	119
	
l305:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
	signat	_lcd_send,8312
	global	_lcd_write4bits

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 34 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1
	line	34
global __ptext50
__ptext50:	;psect for function _lcd_write4bits
psect	text50
	file	"../../../lib/lcd44780.c"
	line	34
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:	
;incstack = 0
	opt	stack 3
; Regs used in _lcd_write4bits: [wreg+status,2+status,0]
;lcd_write4bits@value stored from wreg
	movwf	(lcd_write4bits@value)
	line	39
	
l3722:	
;lcd44780.c: 39: PORTB &= 0b00001111;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	40
;lcd44780.c: 40: PORTB |= value << 4;
	swapf	(lcd_write4bits@value),w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(6),f	;volatile
	line	55
	
l3724:	
;lcd44780.c: 55: PORTB |= 0b1000; _delay((unsigned long)((4)*(20000000/4000000.0))); PORTB &= ~0b1000; _delay((unsigned long)((100)*(20000000/4000000.0)));;
	bsf	(6)+(3/8),(3)&7	;volatile
	
l3726:	
	opt asmopt_off
movlw	6
movwf	(??_lcd_write4bits+0)+0,f
u4597:
decfsz	(??_lcd_write4bits+0)+0,f
	goto	u4597
	nop
opt asmopt_on

	
l3728:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6)+(3/8),(3)&7	;volatile
	
l3730:	
	opt asmopt_off
movlw	166
movwf	(??_lcd_write4bits+0)+0,f
u4607:
decfsz	(??_lcd_write4bits+0)+0,f
	goto	u4607
	nop
opt asmopt_on

	line	60
	
l300:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
	signat	_lcd_write4bits,4216
	global	_delay10ms

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 58 in file "../../../LC-meter.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period_10ms     1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1
	file	"../../../LC-meter.c"
	line	58
global __ptext51
__ptext51:	;psect for function _delay10ms
psect	text51
	file	"../../../LC-meter.c"
	line	58
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:	
;incstack = 0
	opt	stack 6
; Regs used in _delay10ms: [wreg]
	line	62
	
l239:	
	return
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
	signat	_delay10ms,4216
	global	___lwtofl

;; *************** function ___lwtofl *****************
;; Defined at:
;;		line 28 in file "/opt/microchip/xc8/v1.34/sources/common/lwtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   54[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   54[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
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
psect	text52,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/lwtofl.c"
	line	28
global __ptext52
__ptext52:	;psect for function ___lwtofl
psect	text52
	file	"/opt/microchip/xc8/v1.34/sources/common/lwtofl.c"
	line	28
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtofl: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4478:	
	movf	(___lwtofl@c),w
	movwf	(___flpack@arg)
	movf	(___lwtofl@c+1),w
	movwf	((___flpack@arg))+1
	clrf	2+((___flpack@arg))
	clrf	3+((___flpack@arg))
	movlw	low(096h)
	movwf	(___flpack@exp)
	clrf	(___flpack@sign)
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
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of___lwtofl
	__end_of___lwtofl:
	signat	___lwtofl,4220
	global	___flpack

;; *************** function ___flpack *****************
;; Defined at:
;;		line 63 in file "/opt/microchip/xc8/v1.34/sources/common/double.c"
;; Parameters:    Size  Location     Type
;;  arg             4    0[BANK0 ] unsigned long 
;;  exp             1    4[BANK0 ] unsigned char 
;;  sign            1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      10       0       0       0
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
psect	text53,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/double.c"
	line	63
global __ptext53
__ptext53:	;psect for function ___flpack
psect	text53
	file	"/opt/microchip/xc8/v1.34/sources/common/double.c"
	line	63
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___flpack: [wreg+status,2+status,0]
	line	65
	
l3696:	
	movf	((___flpack@exp)),w
	btfsc	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l808
u3010:
	
l3698:	
	movf	(___flpack@arg+3),w
	iorwf	(___flpack@arg+2),w
	iorwf	(___flpack@arg+1),w
	iorwf	(___flpack@arg),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l3702
u3020:
	
l808:	
	line	66
	clrf	(?___flpack)
	clrf	(?___flpack+1)
	clrf	(?___flpack+2)
	clrf	(?___flpack+3)
	goto	l809
	line	68
	
l3700:	
	incf	(___flpack@exp),f
	line	69
	clrc
	rrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	67
	
l3702:	
	movlw	high highword(-33554432)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3700
u3030:
	goto	l3706
	line	72
	
l3704:	
	incf	(___flpack@exp),f
	line	73
	incf	(___flpack@arg),f
	skipnz
	incf	(___flpack@arg+1),f
	skipnz
	incf	(___flpack@arg+2),f
	skipnz
	incf	(___flpack@arg+3),f
	line	74
	clrc
	rrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	71
	
l3706:	
	movlw	high highword(-16777216)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l3704
u3040:
	goto	l3710
	line	77
	
l3708:	
	decf	(___flpack@exp),f
	line	78
	clrc
	rlf	(___flpack@arg),f
	rlf	(___flpack@arg+1),f
	rlf	(___flpack@arg+2),f
	rlf	(___flpack@arg+3),f
	line	76
	
l3710:	
	btfsc	(___flpack@arg+2),(23)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l820
u3050:
	
l3712:	
	movlw	low(02h)
	subwf	(___flpack@exp),w
	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l3708
u3060:
	
l820:	
	line	80
	btfsc	(___flpack@exp),(0)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l3716
u3070:
	line	81
	
l3714:	
	movlw	0FFh
	andwf	(___flpack@arg),f
	movlw	0FFh
	andwf	(___flpack@arg+1),f
	movlw	07Fh
	andwf	(___flpack@arg+2),f
	movlw	0FFh
	andwf	(___flpack@arg+3),f
	line	82
	
l3716:	
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
	
l3718:	
	movf	((___flpack@sign)),w
	btfsc	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l822
u3080:
	line	85
	
l3720:	
	bsf	(___flpack@arg)+(31/8),(31)&7
	
l822:	
	line	86
	line	87
	
l809:	
	return
	opt stack 0
GLOBAL	__end_of___flpack
	__end_of___flpack:
	signat	___flpack,12412
	global	_global_int

;; *************** function _global_int *****************
;; Defined at:
;;		line 81 in file "../../../LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1
	file	"../../../LC-meter.c"
	line	81
global __ptext54
__ptext54:	;psect for function _global_int
psect	text54
	file	"../../../LC-meter.c"
	line	81
	global	__size_of_global_int
	__size_of_global_int	equ	__end_of_global_int-_global_int
	
_global_int:	
;incstack = 0
	opt	stack 0
; Regs used in _global_int: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_global_int+1)
	movf	fsr0,w
	movwf	(??_global_int+2)
	movf	pclath,w
	movwf	(??_global_int+3)
	ljmp	_global_int
psect	text54
	line	85
	
i1l3582:	
;LC-meter.c: 85: if(PIR1 & 0x02) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),(1)&7	;volatile
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l3600
u285_20:
	line	86
	
i1l3584:	
;LC-meter.c: 86: bres += 256;
	movlw	(0100h >> 8)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_bres+1)^0180h,f	;volatile
	line	87
;LC-meter.c: 87: if(bres >= ((unsigned long)((double)((20000000) / 4) / 1000))) {
	movlw	013h
	subwf	(_bres+1)^0180h,w	;volatile
	movlw	088h
	skipnz
	subwf	(_bres)^0180h,w	;volatile
	skipc
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l3598
u286_20:
	line	88
	
i1l3586:	
;LC-meter.c: 88: bres -= ((unsigned long)((double)((20000000) / 4) / 1000));
	movlw	088h
	subwf	(_bres)^0180h,f	;volatile
	movlw	013h
	skipc
	decf	(_bres+1)^0180h,f	;volatile
	subwf	(_bres+1)^0180h,f	;volatile
	line	89
	
i1l3588:	
;LC-meter.c: 89: msecpart++;
	incf	(_msecpart)^0180h,f	;volatile
	skipnz
	incf	(_msecpart+1)^0180h,f	;volatile
	line	90
	
i1l3590:	
;LC-meter.c: 90: PORTC &= ~0b00000100; PORTC |= (!!(msecpart >= 833)) << 2;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(2/8),(2)&7	;volatile
	movlw	03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(_msecpart+1)^0180h,w	;volatile
	movlw	041h
	skipnz
	subwf	(_msecpart)^0180h,w	;volatile
	skipnc
	goto	u287_21
	goto	u287_20
u287_21:
	movlw	1
	goto	u288_20
u287_20:
	movlw	0
u288_20:
	movwf	(??_global_int+0)+0
	movlw	(02h)-1
u289_25:
	clrc
	rlf	(??_global_int+0)+0,f
	addlw	-1
	skipz
	goto	u289_25
	clrc
	rlf	(??_global_int+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(7),f	;volatile
	line	92
	
i1l3592:	
;LC-meter.c: 92: if(msecpart >= 1000) {
	movlw	03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(_msecpart+1)^0180h,w	;volatile
	movlw	0E8h
	skipnz
	subwf	(_msecpart)^0180h,w	;volatile
	skipc
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l3598
u290_20:
	line	94
	
i1l3594:	
;LC-meter.c: 94: seconds++;
	incf	(_seconds)^0180h,f	;volatile
	skipnz
	incf	(_seconds+1)^0180h,f	;volatile
	skipnz
	incf	(_seconds+2)^0180h,f	;volatile
	skipnz
	incf	(_seconds+3)^0180h,f	;volatile
	line	95
	
i1l3596:	
;LC-meter.c: 95: msecpart -= 1000;
	movlw	0E8h
	subwf	(_msecpart)^0180h,f	;volatile
	movlw	03h
	skipc
	decf	(_msecpart+1)^0180h,f	;volatile
	subwf	(_msecpart+1)^0180h,f	;volatile
	line	99
	
i1l3598:	
;LC-meter.c: 96: }
;LC-meter.c: 97: }
;LC-meter.c: 99: PIR1 &= ~0b10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12)+(1/8),(1)&7	;volatile
	line	102
	
i1l3600:	
;LC-meter.c: 100: }
;LC-meter.c: 102: if(RCIF) { rxfifo[rxiptr] = RCREG; ser_tmp = (rxiptr + 1) & ((uint8_t)16 - 1); if(ser_tmp != rxoptr) rxiptr = ser_tmp; }; if(TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= ((uint8_t)16 - 1); if(txoptr == txiptr) { TXIE = 0; }; TXIF = 0; 
	btfss	(101/8),(101)&7	;volatile
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l3612
u291_20:
	
i1l3602:	
	movf	(_rxiptr),w
	addlw	low(_rxfifo|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
i1l3604:	
	movf	(_rxiptr),w	;volatile
	addlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_ser_tmp)^0180h
	
i1l3606:	
	movlw	low(0Fh)
	andwf	(_ser_tmp)^0180h,f
	
i1l3608:	
	movf	(_ser_tmp)^0180h,w
	xorwf	(_rxoptr)^0180h,w	;volatile
	skipnz
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l3612
u292_20:
	
i1l3610:	
	movf	(_ser_tmp)^0180h,w
	movwf	(_rxiptr)	;volatile
	
i1l3612:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l259
u293_20:
	
i1l3614:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1124/8)^080h,(1124)&7	;volatile
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l259
u294_20:
	
i1l3616:	
	movf	(_txoptr),w
	addlw	low(_txfifo|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	
i1l3618:	
	incf	(_txoptr),f	;volatile
	
i1l3620:	
	movlw	low(0Fh)
	andwf	(_txoptr),f	;volatile
	
i1l3622:	
	movf	(_txoptr),w	;volatile
	xorwf	(_txiptr),w	;volatile
	skipz
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l258
u295_20:
	
i1l3624:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	
i1l258:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	107
	
i1l259:	
	movf	(??_global_int+3),w
	movwf	pclath
	movf	(??_global_int+2),w
	movwf	fsr0
	swapf	(??_global_int+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_global_int
	__end_of_global_int:
	signat	_global_int,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
