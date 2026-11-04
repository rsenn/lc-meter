# LC-meter — hardware and firmware fix log

This document collects the changes made to make the K.C. Chang / julznc-derived
LC-meter reliable on a PCB prototype after the perfboard build refused to run.
It targets the current source tree (PIC16F876A primary, PIC18F252 / PIC18F25K50
secondary) with the HD44780 4-bit LCD.

Baseline files (unchanged, kept as reference):

- `eagle/LCmeter0-LCD-8pinlcd-PIC_COMP.sch` / `.brd`
- `LC-meter.c`, `src/measure.c`, `src/print.c`
- `lib.old/timer.c` (self-clocking Timer0 prescaler read)

Fixed variants:

- `eagle/LCmeter0-LCD-8pinlcd-PIC_COMP-fixed.sch` / `.brd`
- `LC-meter.c` and `src/measure.c` — edited in place

---

## 1. Measurement principle (context)

The tank is a Colpitts-style LC oscillator built around one on-chip comparator
of the 16F876A. Three frequencies are captured through Timer0 running as an
external 8-bit counter with an 8-bit prescaler, read out by the "self-clock
the prescaler" trick in `lib.old/timer.c:73-99`:

- `F1` = tank alone (calibration cap disconnected)
- `F2` = tank with a known `Ccal ≈ 1 nF` in parallel (relay ON)
- `F3` = tank with DUT connected (via DPDT L/C select)

Thompson formulas in `src/measure.c`:

```
Cx = F2² · (F1² − F3²) · Ccal / (F3² · (F1² − F2²))          [pF]
Lx = ((F1² − F3²)·(F1² − F2²)·T²) / (4π²·F1²·F2²·F3²·Ccal)·1e15   [nH]
```

The 100 ms gate `T` shows up squared in the L formula but cancels in C — so
inductance measurement is timebase-sensitive, capacitance measurement is not.

---

## 2. Software fixes

### 2.1 Inductance formula typo — `src/measure.c:225`

**Bug.** The L-formula had `(F2 - F2)` instead of `(F2 * F2)`. Numerator always
zero → every inductance reading rounded to 0 nH.

```diff
-  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (GATE_PERIOD * GATE_PERIOD);
+  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 * F2)) * (GATE_PERIOD * GATE_PERIOD);
```

The same typo lives in `Attic/julznc/main.c:177` and `Attic/src/main.c:140` —
those are frozen historical references and were left alone.

### 2.2 `delay10ms()` was a no-op — `LC-meter.c:63-68`

**Bug.** The whole body was commented out. Every call site silently skipped the
delay:

- Relay warm-up taps at boot (`LC-meter.c:178-186`) — Ccal wiring untested.
- Calibrate settling delays (`src/measure.c:44-53`) — oscillator not given time
  to stabilise after switching Ccal in/out. Corrupts F1 and F2, so every
  measurement afterwards is wrong even when the formula is right.
- LED cadence in the main loop (`LC-meter.c:246-249`) — no visible activity.
- The `Calibrating please wait…` message appeared and vanished in µs, giving
  the false impression the meter was already looping on garbage.

**Fix.**

```c
void
delay10ms(unsigned char period_10ms) {
  while(period_10ms--)
    delay_ms(10);
}
```

### 2.3 RA5 must be an OUTPUT (comparator C2 drives the oscillator) — `LC-meter.c`

**Correction (2026-11-03).** An earlier revision of this section claimed that
`CMCON = 0b101` is "one independent comparator", that RA5 is plain digital I/O
and that the RA5 wire to net A0 clamps the analog node, and so set
`TRISA = 0b11101111` (RA5 input). That was wrong. Per DS39582B fig. 12-1,
`CM2:CM0 = 101` is **two common reference comparators with outputs**
(`001` is the one-comparator mode):

- C1: VIN- = RA0, VIN+ = RA3, C1OUT on RA4 (open collector, pulled up by R5);
  RA4 is also the Timer0 clock input T0CKI.
- C2: VIN- = RA1, VIN+ = RA3 (common), C2OUT on RA5 (push-pull).

C2 *is* the oscillator: C2OUT (RA5) is wired to the A0 net, which feeds back
through R1 to RA3 (positive feedback / hysteresis) and through R4 + C4 to RA1
(averaged bias). The original 16F876A reference design
(`doc/LC meter pic16f876A (diagram and source code).jpg`) has the same wiring.
A comparator output only reaches its pin while the pin's TRISA bit is 0, so
with RA5 as an input nothing drives A0 and the tank never oscillates.

```c
CMCON = 0b00000101;
TRISA = 0b11001111;   // RA4 = C1OUT (T0CKI), RA5 = C2OUT, both outputs
```

The RA5 wire must therefore stay (§4, row b).

### 2.4 Timer0 must count T0CKI — `LC-meter.c`, `lib/timer.c`

Two more bugs kept Timer0 from being a prescaled external counter on the
16F876A:

- `OPTION_REG &= ~0b100000` (meant as "enable PORTB pull-ups") clears bit 5 =
  **T0CS** and switches Timer0 back to the internal clock. nRBPU is bit 7.
- `timer0_init()` set `PSA = 1` (prescaler assigned to the watchdog). The
  prescaler belongs to Timer0, `PSA = 0`.

After the fix, a simulator run shows `OPTION_REG = 0x67` (nRBPU 0, T0CS 1,
PSA 0, PS = 111 = 1:256), `TRISA = 0x0F` (RA4/RA5 outputs) and `CMCON = 0xC5`.

---

## 3. Hardware fixes (proposed values) — `LCmeter0-LCD-8pinlcd-PIC_COMP-fixed.sch/.brd`

> Note (2026-11-04): the `-fixed` files do not exist in the repo and these
> value changes were never applied or tested; treat §3 as a list of
> recommendations. The one proven blocking hardware error is the missing GND
> on the DUT- terminal, see §4 row 0 and §9.

Applied via safe XML `value=` edits so EAGLE re-opens the file cleanly and the
DTD reference is preserved. Values only — devices/footprints still need a manual
swap for C3/C4 (see §4).

### 3.1 R5 pull-up: 4.7 kΩ → 1 kΩ

RA4 is open-drain (comparator C1OUT overrides the port driver). Rising edge is
`V = VCC·(1 − e^(−t/RC))` where R = R5 and C = trace+T0CKI-input parasitic.
On perfboard that C is easily 20–30 pF; with 4.7 kΩ the rise time hits ~100 ns.
At 500 kHz tank rate that's 5 % of a period, tolerable; but in L-mode the tank
frequency climbs and the counter starts dropping edges or picking up jitter.

At 1 kΩ pull-up the rise time drops below 30 ns even with generous perfboard
parasitics. No downside — 5 mA sink when the comparator pulls low is fine for
the 16F876A driver.

### 3.2 R1 hysteresis: 100 kΩ → 47 kΩ

R1 provides positive feedback from the C1(−) node (A0) back to the C1(+) node
(A3) so the comparator behaves as a Schmitt inverter. 100 kΩ against just a few
picofarads of stray capacitance on A3 gives a low-pass corner in the tens of
kHz — ambient noise couples straight into the reference node and the
comparator's decision threshold wanders. Frequent symptom: perfboard oscillator
either refuses to start or bursts and quits.

47 kΩ pushes the corner up by ~2× and roughly doubles the hysteresis window;
the R2/R3 100 k/100 k divider still holds A3 at VCC/2 nominal.

### 3.3 C3 AC coupling: 10 µF electrolytic → 100 nF ceramic

C3 couples the tank hot node (N$2) into the C1(+) reference node (A3). At the
~500 kHz tank frequency, an aluminium electrolytic behaves inductively — ESL
dominates, ESR is high, and the effective coupling impedance is unpredictable.
100 nF X7R ceramic gives a flat, low impedance across the whole tank operating
band (~50 kHz to ~2 MHz).

### 3.4 C4 RA1 bypass: 10 µF electrolytic → 100 nF ceramic

C4 shunts the RA1 pin (unused as a comparator input in mode 5, but still an
analog input tied to the R4 filter node) to ground. 10 µF was overkill and
suffers the same HF ESL/ESR problems as C3. 100 nF ceramic is what you want.

---

## 4. Pending manual edits in EAGLE

The XML-only pass can't safely add parts, delete wires, or reroute a board
without risking file corruption. Open `LCmeter0-LCD-8pinlcd-PIC_COMP-fixed.sch`
in EAGLE 7.2.0 and do these by hand:

| # | Change | Why |
|---|--------|-----|
| 0 | **Connect GND to S1 pin 5 (pole-2 common) and X2-1 (DUT-, net `M-`).** In every `.sch`/`.brd` variant `M-` is an isolated net, so L1.1, the DUT- terminal and the L/C select line (`/LC`, RC4) have no ground reference: the tank cannot oscillate and RC4 always reads high. The original reference has IN- at ground. | Without it the meter cannot work. |
| a | Replace **C3** and **C4** device from `CPOL` / `CPOL-H` (polarised electrolytic footprint) to a non-polar `C` device with 100 nF ceramic footprint (0805 or C025). | Value alone was changed; the polarised footprint is wrong for a ceramic. |
| b | **Do not delete the RA5 wire.** RA5 = C2OUT is the oscillator output and is meant to drive net A0 (see §2.3). | Removing it stops the oscillation. |
| c | Add a **10 kΩ trimpot** with wiper to LCD V0, ends to VCC / GND. | V0 is currently unconnected in the netlist. Symptom on the perfboard is either a blank LCD (V0 floats near VCC) or a row of black boxes (V0 floats near GND). |
| d | Add a **100 nF ceramic** near each Vdd/Vss pair on IC1 (pins 20↔19 and pins 8↔GND). | Only C9 in the netlist services both Vdd pins from one place; the second pair needs its own local bypass. |
| e | (optional) Add a **74HC14U** buffer between RA4 and T0CKI. | Not required with R5 = 1 kΩ; useful only if you plan to run the tank above ~1 MHz for small inductors. |

After (a)–(d): **ERC**, then **Board → Update from Schematic**, then route the
new nets. Keep a solid ground pour under the tank (L1, C1, C2, C3) and under
the comparator input pins on IC1 (RA0, RA1, RA3).

---

## 5. Layout notes for the PCB revision

- Star or short-loop ground under the tank and comparator area.
- Keep the K2 (DS2Y) relay coil trace physically away from N$2 (tank hot) — a
  ~500 kHz signal capacitively couples happily into a relay coil.
- Crystal load caps C5/C6 at 33 pF assume ~18–20 pF crystal load. If you use a
  small HC49 or SMD crystal with 14 pF load, drop C5/C6 to 22 pF.
- ICSP series resistors R8/R9 (100 Ω) are shared with LCD data lines D6/D7.
  This is fine functionally but disconnect the ICSP header before trusting LCD
  timing on a bring-up board.
- MCLR pull-up (R10 = 4.7 kΩ) and reset button S2 are already correct.

---

## 6. Bring-up procedure on the new PCB (older; §10 is the current guide)

1. Power on with S2 held down (PIC in reset). Confirm 5 V rail and quiescent
   current (< 50 mA before LCD backlight).
2. Release S2. Scope OSC2/CLKO — expect a clean 20 MHz sine.
3. Scope RA4 (T0CKI). With no DUT attached and the L/C switch in either
   position, you should see a clean square wave in the 300 kHz–1 MHz band. If
   RA4 is DC-stuck, check CMCON/TRISA (§2.3: RA4 and RA5 outputs) and that the A0 net really reaches RA5.
4. LCD should show `Calibrating please wait…` for ~1.5 s (this window was
   invisible in the pre-fix build because `delay10ms()` was a no-op), then
   switch to the running measurement display.
5. If `USE_SER = 1` in the build, UART at 38400 8N1 dumps `F1/F2/F3` and the
   computed `Cin` / `Lin` values each iteration — use this to sanity-check the
   calibration numbers against your L1 and Ccal (1 nF).
6. Sanity checks against known parts:
   - 100 pF NP0 → reads ~100 pF ± 5 pF
   - 10 nF X7R → reads ~10 nF ± 3 %
   - 100 µH RF choke → reads ~100 µH ± 5 %
   - short across the DUT terminals in L mode → reads a small residual (lead
     inductance ~10 nH), *not* zero or overflow.

---

## 7. Files touched

```
src/measure.c            L formula typo fix                    (§2.1)
LC-meter.c               delay10ms body, TRISA/OPTION_REG fixes (§2.2-2.4)
lib/timer.c              PSA = 0 for Timer0 prescaler           (§2.4)
eagle/…-fixed.sch        R1, R5, C3, C4 value changes + note   (§3)
eagle/…-fixed.brd        R1, R5, C3, C4 value changes + note   (§3)
doc/FIXES.md             this document
```

Unchanged historical references:

```
Attic/julznc/            original 2009 K.C. Chang / julznc reference
Attic/src/               intermediate refactor (HD44780, CCP1 capture attempt)
```

---

## 8. Complete list of bugs that kept the meter from working (as of 2026-11-03)

Dates come from `git log -S` / `git blame`; "fixed" means in the working tree,
nothing here has been run on the real hardware yet.

| # | Where | Bug | Since | Fixed |
|---|-------|-----|-------|-------|
| H1 | EAGLE `.sch`/`.brd` (all variants) | DUT- (X2-1, net `M-`) and S1 pole-2 common are not connected to GND: tank L1.1 and the `/LC` select line have no ground, no oscillation, RC4 always high | design | **open** (add GND to S1 pin 5 and X2-1) |
| H2 | LCD header J1 | no contrast (V0) or R/W connection in the schematic | design | open, check the module |
| F1 | `LC-meter.c` | `delay10ms()` body commented out: no settling time after switching Ccal, F1/F2 garbage | 2019-09-15 (4d4c65ef) | 2026-07-07 (edb05c02) |
| F2 | `src/measure.c` | inductance numerator used `(F2 - F2)`, every L reading 0 | 2019-08-31 | 2026-07-07 (edb05c02) |
| F3 | `src/measure.c` | capacitance formula missing the `F3²(F1²-F2²)` denominator | 2019-09-06 (15d0d76f) | 2026-09-13 (9f39b936) |
| F4 | `LC-meter.c` | `TRISA` RA5 made an input (wrong reading of CMCON mode 101): C2OUT never reached A0, no oscillation | 2026-07-07 (edb05c02, regression) | 2026-11-03 |
| F5 | `LC-meter.c` | `OPTION_REG &= ~0b100000` cleared T0CS: Timer0 counted the instruction clock, not T0CKI | 2019-09-16 (3d7e79e8) | 2026-11-03 |
| F6 | `lib/timer.c` | `PSA = 1`: prescaler given to the watchdog, Timer0 not prescaled | 2019-12-28 (libpicp ddc824a) | 2026-11-03 |
| F7 | `src/measure.c` | readings 655.36..999.99 wrapped (x100 cast to uint16_t) | long-standing | 2026-11-03 |
| F8 | `src/print.c`, `lib/format.c` | LCD path printed no decimal point, reversed digits, never printed the unit | refactor | 2026-11-03 |
| F9 | `lib` submodule pin | commit c11313c8 (2026-10-20) pins libpicp 86f23ee, which lacks the build fixes (log10f, config word, ISR macro) and fixedmath | 2026-10-20 | local checkout moved to 4eee869, **pin not committed** |
| F10 | build | the `double` math did not fit the 16F876A flash (XC8 free mode and SDCC) | long-standing | fixed-point `USE_FIXED` (XC8 only) |
| F11 | `src/measure.c`, `lib/fixedmath.c` | my first fixed-point version rejected counts above 46340 (463 kHz); a 100 uH / 1 nF tank is about 500 kHz, so every reading would have been `----` | 2026-11-03 (introduced and fixed in the same session) | 2026-11-04 |
| F12 | `src/measure.c` | inductance above 42.9 mH overflowed the nH x 100 result | same | 2026-11-04 (uH fallback) |
| F13 | `build/xc8.mk` | `--double/--float` only passed to the compiler; the linker used XC8's 24-bit float library whatever the flags said | long-standing | 2026-11-03 (flags at both stages, 32-bit) |


---

## 9. Change log of the 2026-11 repair session

Everything below is in the working tree, nothing is committed yet. None of it
has run on the real hardware; the firmware parts were run in the MPLAB X
simulator (`tests/run_mdb_display.sh`).

### 9.1 Firmware

| File | Change |
|------|--------|
| `LC-meter.c` | `TRISA = 0b11001111` (RA4 = C1OUT/T0CKI and RA5 = C2OUT outputs), correct comment on comparator mode 101; `OPTION_REG &= ~0b10000000` (nRBPU) instead of the T0CS bit; banner prints `CCal` with `format_number` under `USE_FIXED` |
| `lib/timer.c` (submodule) | `PSA = 0`: prescaler on Timer0, not the watchdog |
| `src/measure.c` | new `USE_FIXED` path (uint32 fixed point via `lib/fixedmath`, no float/double); unit stepping up to 655.35 per unit; range error instead of garbage; counts accepted up to 65535 (was 46340); inductance above 42.9 mH computed in uH; `READING_MAX` for the double path; serial debug line `F1=.. F2=.. F3=..`; `calibrating...` on serial |
| `lib/fixedmath.c` (submodule) | division/remainder handle divisors >= 2^31 (extra carry bit), needed for F*F above 2^31 |
| `src/print.c`, `print.h` | HD44780 layout rewritten (8-char label, `ppp.ff` reading right-aligned in columns 8-13, 2-char unit in 14-15); new `print_label()`, `print_error()`; micro sign via `LCD_MU` (0xE4 A00 ROM, `-DLCD_MU=0xB5` for A02); serial output (`Capacity 34.75 pF`) independent of the LCD |
| `lib/format.c`, `format.h` (submodule) | `format_number` prints digits in the right order and pads through `fn`; `format_float` rewritten without `log10/pow/floor`; float formatters compiled out under `USE_FIXED` |
| `build/xc8.mk` | `FLOAT_FLAGS = --double=32 --float=32` for compile **and** link (the float library is chosen at link time; before, the link silently used the 24-bit default) |
| `build/vars.mk`, `build/targets.mk` | `fixedmath.c` and `-DUSE_FIXED=1` for `LC_meter_HD44780` (both files: `sdcc.mk` includes `targets.mk` after `vars.mk`, its lists win) |
| `lib` submodule | local checkout moved to libpicp 4eee869 (pin not committed, see TODO) |
| `tests/` | `test_display.c` + `run_mdb_display.sh [lcd\|ser]`: real `measure.c`/`print.c` on a PIC16F876A simulator with stub LCD / stub UART; sweep extended to 65000 counts |

Build variants (flags only, no code change needed):

| `USE_FIXED` | `USE_SER` | `USE_HD44780_LCD` | Use |
|---|---|---|---|
| 1 | 0 | 1 | normal meter on the 16F876A (XC8): 89% flash, 82% RAM |
| 1 | 1 | 1 | LCD plus serial debug on the 16F876A: 89% flash |
| 1 | 1 | 0 | serial only: 77% flash |
| 0 | any | any | `double` (32-bit) maths, PIC18 only; never 24-bit float |

### 9.2 Hardware / EAGLE

- Missing ground: the DUT- terminal (X2-1, net `M-`) and the L/C switch pole-2
  common (S1 pin 5) were not connected to GND in any schematic or board.
- `eagle/fix-dut-gnd-comp.scr` and `eagle/fix-dut-gnd-plain.scr` add the GND
  flag in the schematics (applied to all six `.sch`).
- Boards: `PICCOMP.brd` and `LCD3310-PICCOMP.brd` were updated in EAGLE; the
  other five (`PIC_COMP`, `8pinlcd`, `alt`, `alt2`, `3310-8pinlcd-PIC-COMP`)
  were patched in the XML: signal `M-` merged into `GND`.
- Still to do in EAGLE: `RATSNEST`, DRC, library update (34 consistency errors,
  pad drill differences between the schematic's and the board's embedded libs).

### 9.3 Documentation / skills

- `doc/FIXES.md` §2.3 and §4b of the old version were wrong (they told you to
  make RA5 an input and delete the RA5 wire). Corrected; see §2.3 and §2.4.
- `doc/LESSONS.md` (new): causes, lessons, tool gotchas.
- `mcu-firmware-engineer` skill updated (XC8 link-time float library, mdb
  gotchas, lc-meter findings).

---

## 10. Guide: getting the LC-meter to run

Work through this in order and stop at the first step that fails; every step
checks one thing the previous ones depend on.

### Step 1 - fix and check the wiring (power off)

1. **Add the ground wire**: X2 pin 1 (DUT-) and S1 pin 5 (switch pole-2 common)
   to GND. This is the one blocking board error.
2. Check with the continuity range (PIC16F876A DIP-28 pin numbers):

| Net | Must connect |
|-----|--------------|
| A3 | pin 5 (RA3) - R1 - R3 (to VCC) - R2 (to GND) - C3 (+) |
| A0 | pin 2 (RA0) **and pin 7 (RA5)** - R1 (to A3) - R4 |
| A1 | pin 3 (RA1) - R4 (other end) - C4 (+), C4 (-) to GND |
| A4 | pin 6 (RA4) - R5 (other end to VCC), nothing else |
| tank | C3 (-) - C1 - C2 - L1 pin 2 - S1 pole-1 throw O; C1 other end GND; C2 other end to the relay contact, relay common to GND |
| L1 pin 1 | S1 throws S and O1 |
| DUT | X2 pin 2 - S1 P (pole-1 common); X2 pin 1 - S1 P1 - **GND** |
| select | S1 pin 6 - pin 15 (RC4) - R7 (other end VCC) |
| relay | pin 16 (RC5) - R6 (10k) - BC547 base; emitter GND; collector - relay coil - VCC; 1N4148 across the coil, cathode to VCC |
| LED | pin 13 (RC2) - R11 (1k) - LED - GND |
| LCD | RS = pin 23 (RB2), E = pin 24 (RB3), D4..D7 = pins 25..28 (RB4..RB7), VCC, GND |
| clock | 20 MHz crystal and two 33 pF caps to GND on pins 9/10 |
| power | pin 20 VDD, pins 8 and 19 GND, pin 1 (MCLR) to VCC via 4.7k, 100 nF near the chip |

3. No short between VCC and GND. Polarity of C3, C4, C7 (electrolytic), the
   1N4148 and the BC547 pinout.
4. Compare with the netlist: `qjsm ~/Sources/plot-cv/eagle-dematerialize.js
   eagle/LCmeter0-LCD-8pinlcd-PIC_COMP.sch` prints all nets.
5. LCD: check R/W (to GND) and the contrast pin V0 (trimpot or resistor to GND)
   of your module.

### Step 2 - build and flash

```sh
export PATH=/opt/sdcc-4.6.0/bin:$PATH
make compile COMPILERS=xc8 CHIPS=16f876a BUILD_TYPES=release PROGRAMS=LC_meter_HD44780
# hex: bin/xc8-16f876a/LC_meter_HD44780_release_20mhz_38kbps.hex
```

- Flash the **release** build with the PICkit2 (never the debug build).
- Fuses (`src/config-16f876a.h`): HS oscillator, watchdog off, LVP off,
  BOR on. `piccfg <hex> <cfgdata>` dumps them.
- Optional serial debug: build with `-DUSE_SER=1` and watch 38400 8N1: one line
  per reading (`Capacity 34.75 pF`) plus `F1=.. F2=.. F3=..`.

### Step 3 - power up

1. Without the PIC: 5 V at pins 20 and 1, GND at 8 and 19.
2. With the PIC: LCD shows `LC-meter 1000pF` then `Calibrating`, the relay
   clicks a few times at start, the LED blinks. No text: contrast / R/W / the
   LCD wiring. No relay click: RC5 / T1.
3. Expected register values after init (verified in the simulator): `CMCON` =
   0xC5, `TRISA` = 0x0F, `OPTION_REG` = 0x67 (nRBPU 0, T0CS 1, PSA 0, 1:256).

### Step 4 - oscillator and counter

1. Scope RA5 (pin 7): square wave, DUT open. Expected frequency about 300-500 kHz
   (100 uH with 1 nF is 503 kHz before strays). **No oscillation: re-check the
   ground wire (step 1.1), the A0/RA5 wire and `TRISA`.**
2. Scope RA4 (pin 6): same frequency, open-collector with the R5 pull-up.
3. Serial/debug: `F1` about 30000-50000 (counts in the 100 ms gate; 10 Hz per
   count). `F2` about 71% of `F1` (the 1 nF calibration cap is switched in).
   Counts above 65535 (655 kHz) overflow the 16-bit counter.
4. Zero or constant counts: `OPTION_REG`/`TRISA` wrong, or no signal on RA4.

### Step 5 - calibration and measuring

1. Calibration runs at every start with the DUT terminals open (switch in C
   position, nothing attached).
2. Test parts: 100 pF NP0 -> about 100 pF; 10 nF -> about 10 nF; a 100 uH
   choke in the L position -> about 100 uH; terminals shorted in L -> a small
   residual (tens of nH), not zero and not `----`.
3. `----` means a range error: counts above 65535, `F3` far from `F1`
   (near-cancellation), or the tank not oscillating.

### Step 6 - if it still fails

Compare each symptom with `doc/FIXES.md` §8 and `doc/LESSONS.md`. The three
silent killers were: the DUT-/L1 ground, `TRISA` (RA5), and Timer0 not counting
(T0CS/PSA). Check them first on the real chip with the scope.
