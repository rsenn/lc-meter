# What was wrong with the LC-meter, and what we learned

Written 2026-11-04 after the repair session. Companion documents:
`doc/FIXES.md` (what was changed, bug table §8, bring-up guide §10) and
`TODO.md` (what is still open). Nothing here has been verified on the real
hardware yet; the firmware was verified in the MPLAB X simulator only.

## 1. Why the meter never worked: seven independent faults

For years the failure was blamed on the perfboard. It was not (only) the
board. At least seven independent faults were stacked, any one of which
prevents a correct reading, so fixing one at a time never changed the symptom:

1. **Hardware - the design has no ground on the DUT terminal.** In all six
   schematics and all boards the DUT- terminal and the L/C switch pole-2 common
   (net `M-`) are connected to nothing but each other. L1's free end and the
   L/C select line have no ground reference, so the tank cannot resonate and
   RC4 always reads high. The original reference design has IN- at ground.
2. **Firmware - RA5 was an input.** The comparator output C2OUT on RA5 is what
   closes the oscillator's feedback loop (it drives net A0). A comparator output
   only reaches its pin when the TRISA bit is 0. A "fix" made in July 2026
   (wrong reading of CMCON mode 101) turned RA5 into an input.
3. **Firmware - Timer0 counted the instruction clock** (`OPTION_REG &=
   ~0b100000` clears T0CS, written when someone meant nRBPU in 2019).
4. **Firmware - the prescaler was assigned to the watchdog** (`PSA = 1`, 2019).
5. **Firmware - no settling time** (`delay10ms()` was an empty function).
6. **Maths - `(F2 - F2)` in the inductance formula** (inductance always 0) and
   **the missing denominator in the capacitance formula** (since 2019).
7. **Output - the LCD path could not show a result**: no decimal point, reversed
   digits, the unit never printed, readings 655.36-999.99 wrapped.

Build-system faults hid all of this: the `lib` submodule pointed at a 2023
commit without the portability fixes; the `double` maths did not fit the
16F876A flash; `build/targets.mk` silently overrode `build/vars.mk` for SDCC.

## 2. Lessons

### Process
- **Check documents against primary sources.** The first `doc/FIXES.md` claimed
  comparator mode 101 is "one independent comparator" and told us to cut the
  RA5 wire. The datasheet (DS39582B fig. 12-1) says mode 101 is "two common
  reference comparators with outputs", and the original reference schematic
  agrees. A confident-looking fix log was wrong and would have killed the
  oscillator for good. Datasheet and reference schematic first, notes second.
- **A regression can come from a "fix".** The TRISA change of 2026-07-07 made
  things worse. Fixes need a check that fails before and passes after
  (here: scope RA5, or the register values in the simulator).
- **Look at the netlist, not only the picture.** Parsing the EAGLE XML (or
  `eagle-dematerialize.js`) showed the open `M-` net that nobody saw in the
  drawing. Check both `.sch` and `.brd`.
- **Several faults can hide each other.** Plan to find more than one; do not
  conclude from "still dead".
- **Do not trust unit boundaries you invented.** My first fixed-point version
  rejected counts above 46340 because `F*F` had to fit 31 bits, while the real
  tank is near 500 kHz = 50000 counts. The sweep had only covered 20000-40000.
  Test ranges must come from the hardware (L1 and C1 give 503 kHz), not from
  the examples in the notes.

### Build system / toolchain
- **XC8 v1.x selects the float library at link time.** `--double/--float` given
  only to the compile step do nothing for the linked code; the default is
  24-bit. Pass the same flags to both stages. For this project: never 24-bit
  float, use fixed point or real 32-bit.
- **`build/targets.mk` is included after `build/vars.mk` by `sdcc.mk`** (not by
  `xc8.mk`), so source and define lists must be changed in both files.
- **A git submodule pin can silently go stale.** Commit c11313c8 moved `lib` to
  an old commit; the build then failed in ways that looked unrelated
  (`log10f` undefined, config word, ISR macro). Check `git -C lib log` first.
- **SDCC on the 16F876A (pic14) is not viable for this program**: missing
  runtime symbols (`STK13`) for functions with many argument bytes, plus the
  flash size. XC8 v1.43 is the supported compiler there.
- **The 16F876A comparator modes are not what the names suggest**: `001` is
  "one independent comparator with output", `101` is "two common reference
  comparators with outputs", `110` multiplexes four inputs.

### Simulation (MPLAB X `mdb`)
- Script the simulator, read result variables by symbol, never trust a
  compile-only check. Gotchas are in the `mcu-firmware-engineer` skill: the
  `dist/` directory, watchdog off, `Print array` (not `array[i]`), RAM banks
  of 96 bytes, mdb exits non-zero.
- The simulator cannot supply a real T0CKI signal: oscillator, Timer0 gating,
  LCD timing and the relay are only verifiable on hardware.

### EAGLE
- Schematic and board carry their own copies of the libraries. When they drift
  apart, ERC reports "inconsistent packages" and forward annotation of schematic
  changes into the board can fail. Update the libraries in both editors, keep
  `.sch` and `.brd` open together, save both.
- A schematic edit does not reach a board that was never saved with it open;
  five boards still had the old `M-` signal after all schematics were fixed.
  Moving the pads into the `GND` signal in the XML worked as a fallback.
- Two boards (`3310-8pinlcd-PIC-COMP`, `mounted-PIC-COMP`) have no schematic.

### Photographing a perfboard
- Two low side lights and a white background beat one spotlight; use the
  zoom and a timer so the phone's shadow stays off the board. Take the
  PIC socket, the tank and the switch as close-ups. See `TODO.md` A.

## 3. Facts worth remembering

- Oscillator: C2 (VIN- = RA1 = low-passed output, VIN+ = RA3 = tank coupling plus
  hysteresis) drives RA5 -> A0; C1 (VIN- = RA0 = A0, VIN+ = RA3) buffers a copy
  to RA4 (open collector, R5 pull-up) = T0CKI.
- Counting: Timer0 external clock, 1:256 prescaler, 100 ms gate; the sub-count
  from the prescaler is read by toggling T0SE ("self-clocking") giving a 16-bit
  count, i.e. 10 Hz per count and at most 655 kHz.
- Formulas (VK3BHR 3-frequency method): `Cx = F2^2 (F1^2 - F3^2) CCal /
  (F3^2 (F1^2 - F2^2))`, `Lx` with the squared gate time. Frequencies are raw
  counts; the count scale cancels in the capacitance ratio.
- `F1` about 500 kHz for 100 uH + 1 nF; `F2` about 71% of `F1` when CCal = 1 nF.
- Readings: stored as value x 100 in a uint16 (max 655.35), units step by 1000.
  Inductance above 42.9 mH is computed in uH.
- Verified in the simulator: 34.75 pF, 9.46 uH, 0.91 uF, 2.21 mH, 62.02 mH,
  86.47 pF at 50000 counts, `----` for no oscillation; serial output
  `Capacity 34.75 pF` / `Induct. 9.46 uH`.
- Resource use (XC8 v1.43, 16F876A, release): 89% flash, 82% RAM with LCD and
  fixed point; the 32-bit `double` build does not fit.
