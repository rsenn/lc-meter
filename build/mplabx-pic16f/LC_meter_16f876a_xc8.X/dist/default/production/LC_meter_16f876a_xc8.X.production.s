opt subtitle "Microchip MPLAB XC8 C Compiler v2.10 (Free license) build 20190730164152 Og9 "

    opt pagewidth 120

    opt flic

        processor 16F876A opt include
    "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\16f876a.cgen.inc" getbyte macro val,
    pos(((val) >> (8 * pos)) and 0xff) endm byte0 macro val(getbyte(val, 0)) endm byte1 macro
    val(getbyte(val, 1)) endm byte2 macro val(getbyte(val, 2)) endm byte3 macro val(getbyte(val, 3)) endm byte4 macro
    val(getbyte(val, 4)) endm byte5 macro val(getbyte(val, 5)) endm byte6 macro val(getbyte(val, 6)) endm byte7 macro
    val(getbyte(val, 7)) endm getword macro val,
    pos(((val) >> (8 * pos)) and 0xffff) endm word0 macro val(getword(val, 0)) endm word1 macro
    val(getword(val, 2)) endm word2 macro val(getword(val, 4)) endm word3 macro
    val(getword(val, 6)) endm gettword macro val,
    pos(((val) >> (8 * pos)) and 0xffffff) endm tword0 macro val(gettword(val, 0)) endm tword1 macro
    val(gettword(val, 3)) endm tword2 macro val(gettword(val, 6)) endm getdword macro val,
    pos(((val) >> (8 * pos)) and 0xffffffff) endm dword0 macro val(getdword(val, 0)) endm dword1 macro
    val(getdword(val, 4)) endm clrc macro bcf 3,
    0 endm clrz macro bcf 3, 2 endm setc macro bsf 3, 0 endm setz macro bsf 3, 2 endm skipc macro btfss 3,
    0 endm skipz macro btfss 3, 2 endm skipnc macro btfsc 3, 0 endm skipnz macro btfsc 3,
    2 endm
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INDF equ 00h;
#
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR0 equ 01h;
#
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCL equ 02h;
#
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    STATUS equ 03h;
#
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    FSR equ 04h;
#
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTA equ 05h;
#
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTB equ 06h;
#
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PORTC equ 07h;
#
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCLATH equ 0Ah;
#
# 362 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    INTCON equ 0Bh;
#
# 440 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR1 equ 0Ch;
#
# 496 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIR2 equ 0Dh;
#
# 536 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1 equ 0Eh;
#
# 543 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1L equ 0Eh;
#
# 550 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR1H equ 0Fh;
#
# 557 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T1CON equ 010h;
#
# 632 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TMR2 equ 011h;
#
# 639 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    T2CON equ 012h;
#
# 710 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPBUF equ 013h;
#
# 717 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON equ 014h;
#
# 787 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1 equ 015h;
#
# 794 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1L equ 015h;
#
# 801 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR1H equ 016h;
#
# 808 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP1CON equ 017h;
#
# 866 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCSTA equ 018h;
#
# 961 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXREG equ 019h;
#
# 968 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    RCREG equ 01Ah;
#
# 975 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2 equ 01Bh;
#
# 982 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2L equ 01Bh;
#
# 989 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCPR2H equ 01Ch;
#
# 996 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CCP2CON equ 01Dh;
#
# 1054 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESH equ 01Eh;
#
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON0 equ 01Fh;
#
# 1157 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    OPTION_REG equ 081h;
#
# 1227 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISA equ 085h;
#
# 1277 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISB equ 086h;
#
# 1339 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TRISC equ 087h;
#
# 1401 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE1 equ 08Ch;
#
# 1457 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PIE2 equ 08Dh;
#
# 1497 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PCON equ 08Eh;
#
# 1531 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPCON2 equ 091h;
#
# 1593 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    PR2 equ 092h;
#
# 1600 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPADD equ 093h;
#
# 1607 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SSPSTAT equ 094h;
#
# 1776 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    TXSTA equ 098h;
#
# 1857 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    SPBRG equ 099h;
#
# 1864 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CMCON equ 09Ch;
#
# 1934 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    CVRCON equ 09Dh;
#
# 1999 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADRESL equ 09Eh;
#
# 2006 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    ADCON1 equ 09Fh;
#
# 2065 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATA equ 010Ch;
#
# 2072 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADR equ 010Dh;
#
# 2079 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEDATH equ 010Eh;
#
# 2086 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EEADRH equ 010Fh;
#
# 2093 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON1 equ 018Ch;
#
# 2138 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f876a.h"
    EECON2 equ 018Dh;
#global ___latbits ___latbits equ 2
