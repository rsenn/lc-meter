# Perfboard review (photo inspection, 2026-11-04)

Source: photos in `~/Desktop/lc-meter/` (7 overview shots plus `osc-top.jpg`,
`osc-bottom.jpg` close-ups of the oscillator section), compared with
`doc/LC meter pic16f876A (diagram and source code).jpg`.

Limits: the solder side is too dense to trace by eye. Nothing below is a
confirmed fault. These are suspects and checks, not a netlist verification.

## Likely problems (check first)

1. **L1 may be 1 mH instead of 100 uH.** Bands on the choke at the upper right
   (`osc-top.jpg`) read brown, black, red, silver = 1000 uH. 100 uH would be
   brown, black, brown. The tank would then oscillate at about 160 kHz instead
   of about 500 kHz, outside the count ranges the firmware was derived from.
   Measure it with an LCR meter or re-read the bands in better light.
2. **Relay flyback diode D1 not found.** No 1N4148 is visible across the MT2
   relay coil or near the driver transistor. Without it the relay switching can
   reset the PIC or damage the transistor. If it is on the solder side, check
   polarity (cathode to +5 V).
3. **Polarity of C2 and C3 (10 uF electrolytics) is unreadable.** C2 is the AC
   coupling cap in the oscillator path, C3 goes RA1 to ground (bias about
   2.5 V, so negative lead to ground). Check the stripes against the schematic.

## Build quality

4. Corroded, rust-brown pads and dark flux residue on the solder side (lower
   left of `osc-bottom.jpg`, middle of `photo_02-44-52.jpg`): dry-joint risk.
5. Dust, grime and dark possibly scorched residue on the top side, around
   R1 to R4, the green caps and the header right of the socket. The 100k nodes
   feeding the comparator are high impedance, so leakage matters. Clean with
   isopropyl alcohol and a brush.
6. The two green film caps (C1 and CCAL) lean against each other on bent
   leads. Stray capacitance shifts the CCAL calibration. Mount them flat with
   short leads.
7. Possible solder bridge: the large blob in the top-right corner of
   `photo_02-44-33.jpg` (about x=780..830, y=470..560) sits close to
   neighbouring tracks. The vertical solder strips in the top row look
   intentional.

## Checks before powering up

- PIC removed: measure continuity between every pair of adjacent socket pins.
  Check VDD (pin 20) against VSS (pins 8 and 19) first.
- Verify the nets against the schematic:
  - RA3 (pin 5) joins R1, R2, R3 and the C2 junction.
  - RA1 (pin 3) joins R4 and C3.
  - RA5 (pin 7) drives the R3/R4 feedback node.
- Crystal (20 MHz) and the two 22 pF caps look right. MCLR pull-up, C5 and the
  reset button were not visible on this board.
- Resistor row reads roughly 100k, 4.7k, 47k, 100k, 4.7k, 100k, matching
  R1 to R4, R5 and R11. Exact values not verifiable from the photos.

## Next

A photo of both sides in bright light, or a meter reading of L1, settles
items 1 and 3.
