PIC18F USB LC Meter

Inductance and Capacitance Meter
using Microchip's PIC18F2550 connected to USB using HID class (Plug-n-Play).

The source codes for PIC and host (C#) are based on the "USB Device - HID - Custom Demos" of Microchip
It's included in the "Microchip Application Libraries".


http://projectproto.blogspot.com/2010/10/pic18f-usb-lc-meter.html


'yus
August 2011


############################################################################

changelog:

Aug 14, 2011 - v1.2
-> change in host-side application to run also on 64-bit OS (e.g. Win7 64-bit)

Oct 20, 2010 - v1.1
-> added "calibration option" on the PC application
    calibration values are stored on "lcmeter.ini" configuration file.

Oct 14, 2010 - v1.0
-> initial release