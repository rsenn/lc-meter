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

### 2.3 RA5 driver fighting the analog bias — `LC-meter.c:133`

**Bug.** With `CMCON = 0b101` on the 16F876A the comparator module is in
"one independent comparator" mode: only C1 is active, with C1(−) = RA0,
C1(+) = RA3, C1OUT on RA4. RA1, RA2 and **RA5 are plain digital I/O**.

But the schematic wires the RA5 pin (labelled `C2OUT/RA5` because that is one
of its alternate functions) directly into net **A0**, which is the C1(−) node,
the R1 hysteresis path, and the R4/C4 filtered bias. Because
`TRISA = 0b11001111` left RA5 as an *output* driven by `LATA5 = 0`, the digital
low-side driver was clamping the analog C1(−) node to ground — killing R1
hysteresis, pulling the R4 divider off-bias, and making the comparator refuse
to oscillate or to oscillate only when parasitics happened to align.

**Fix.** Set RA5 as input so the pin is truly high-impedance and the analog
network on A0 sees only the intended R1/R4 sources:

```c
TRISA = 0b11101111;   // was 0b11001111 — RA5 now input, doesn't fight A0
```

`CMCON = 0b101` is kept as-is; that mode is what the working julznc reference
uses, and with RA5 tri-stated the analog wiring becomes consistent with it.

---

## 3. Hardware fixes — `LCmeter0-LCD-8pinlcd-PIC_COMP-fixed.sch/.brd`

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
| a | Replace **C3** and **C4** device from `CPOL` / `CPOL-H` (polarised electrolytic footprint) to a non-polar `C` device with 100 nF ceramic footprint (0805 or C025). | Value alone was changed; the polarised footprint is wrong for a ceramic. |
| b | Delete the wire from **IC1 pin RA5** (labelled `C2OUT/RA5`) to net **A0**. | RA5 in CMCON mode 5 is digital I/O; the wire is the root cause of §2.3. Firmware fix helps regardless, but a floating trace is cleaner and removes the schematic-vs-mode mismatch. |
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

## 6. Bring-up procedure on the new PCB

1. Power on with S2 held down (PIC in reset). Confirm 5 V rail and quiescent
   current (< 50 mA before LCD backlight).
2. Release S2. Scope OSC2/CLKO — expect a clean 20 MHz sine.
3. Scope RA4 (T0CKI). With no DUT attached and the L/C switch in either
   position, you should see a clean square wave in the 300 kHz–1 MHz band. If
   RA4 is DC-stuck, revisit CMCON mode and the RA5 wire deletion (§4b).
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
LC-meter.c               delay10ms body + TRISA5 fix           (§2.2, §2.3)
eagle/…-fixed.sch        R1, R5, C3, C4 value changes + note   (§3)
eagle/…-fixed.brd        R1, R5, C3, C4 value changes + note   (§3)
doc/FIXES.md             this document
```

Unchanged historical references:

```
Attic/julznc/            original 2009 K.C. Chang / julznc reference
Attic/src/               intermediate refactor (HD44780, CCP1 capture attempt)
```
