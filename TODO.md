# TODO — Thomson-formula fixed-point migration

## Background / findings (2026-08-28)

The float math in `src/measure.c` (`measure_capacitance()`,
`measure_inductance()`) was copy-pasted from a design whose real origin
is now confirmed: it's the **VK3BHR "Surprisingly Accurate Digital LC
Meter"** (3-frequency method, PIC16F84 + Microchip AN575 24-bit
floating-point library). Proof, sitting right in this repo:

- `images/equations.png` — the exact reference derivation (formulas 1-8,
  "For Capacitor" / "For Inductor").
- `Unpack-1116/firmware-asm-hex/lcmeter.asm` — the original assembly
  firmware. Its `C_calc`/`L_calc`/`F1_F2`/`F1_F3` routines implement
  those equations directly via `FPM24`/`FPD24`/`FPS24` (AN575's 24-bit
  float multiply/divide/subtract).
- `Unpack-1116/firmware-asm-hex/FP24.A16` — the AN575 24-bit floating
  point library itself (Microchip app note, F.J. Testa, 1996). Register
  contract: `AEXP` (8-bit biased exponent) + `AARGB0:AARGB1:AARGB2`
  (24-bit mantissa, MSB-first, normalized so bit7 of `AARGB0` is always
  1), sign folded into the top bit pre-normalization / a separate
  `SIGN` byte. Binary ops: input in `AEXP,AARG` and `BEXP,BARG`, output
  back into `AEXP,AARG`.

**Real bug found and confirmed against that reference**: the *active*
`Cin` line in `src/measure.c` is missing its own denominator —

```c
Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
//  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal / (F3 * F3 * (F1 * F1 - F2 * F2));
```

The **commented-out** line is the one that matches `equations.png`
formula (4) exactly:
`Cx = [(F1/F3)²-1] / [(F1/F2)²-1] × CCal`, algebraically expanded. `git
blame` confirms both lines were introduced together, unedited, since
`src/measure.c` was first added on 2019-09-06 (commit `15d0d76f`) — this
was never "working" with the denominator in this repo's own history.
`measure_inductance()`'s active `Lin` formula, by contrast, **is**
already structurally correct against equations.png formula (8) — its
`GATE_PERIOD²` factor is the necessary unit-correction because this
codebase's `F1/F2/F3` are raw prescaled Timer0 counts over the 100 ms
gate window, not literal Hz (equations.png's derivation assumes real
Hz; the counts-to-Hz scale factor cancels exactly in the ratio-only `Cx`
formula, which is why no such correction term is needed there).

**SDCC has no `long long`/`unsigned long long` at all** on `pic14` or
`pic16` (`error 206: invalid combination of short/long`) — confirmed
against SDCC 4.3.0rc1. Any fixed-point design here has to stay within
32-bit (`uint32_t`) arithmetic, no 64-bit widening trick available. See
`~/.claude/skills/mcu-firmware-engineer/` for the general portability
notes this produced.

**16F876A cannot fit the existing float math under SDCC at all** —
`error: No target memory available for section "S_format__format_float"`
even in `release` — SDCC's `pic14` software float is much larger than
XC8's. Confirmed via the full build matrix (`make compile COMPILERS=xc8
CHIPS=16f876a\ 18f252\ 18f2550\ 18f25k50 BUILD_TYPES=debug\ release
PROGRAMS=LC_meter_HD44780`): **14/16 xc8×sdcc×chip×build_type
combinations build clean; both SDCC×16F876A combinations fail on flash,
not on a bug.** This is *why* a fixed-point path is worth having: it's
not just about speed, it's the only way to get this math onto 16F876A
under SDCC at all.

## Plan: `USE_FIXED` compile-time toggle

Two methods, selectable by a single `USE_FIXED` define threaded through
`src/measure.c` (mirrors the project's existing `USE_*` convention):

- **not defined (default)**: current `double`-based implementation,
  unchanged in behavior — including the `Cin` denominator bug above,
  which stays a **separate, deliberate decision** to fix or not (not
  bundled into this migration). Retained via `#ifndef USE_FIXED`.
- **`USE_FIXED=1`**: new `uint32_t`-only fixed-point implementation
  (below). No `double`/`float` anywhere in this path, no SDCC libm
  needed — this is the path that actually fits 16F876A under SDCC.

Anywhere a fixed-point equivalent doesn't exist yet for something the
float path does, emit `#warning "fixed-point implementation not yet
made"` under `USE_FIXED` rather than silently compiling wrong/missing
behavior. Same treatment for the other float-only `lib/` helpers
(`format_float`, `format_double`, `lcd_print_float`,
`ds18b20_temperature`, `adc.h`'s `ADVAL_V`) — gate each body in
`#ifndef USE_FIXED`, `#warning`-stub the `#else`. None of these are
currently called from any `USE_FIXED`-relevant code path once
`measure.c` stops calling `format_float`/`format_double` for its debug
dump (that dump needs its own small `USE_FIXED`-aware replacement, or to
just be skipped under `USE_FIXED` — TODO, not yet decided).

## Three reference implementations of the Thomson-derived formula

Built and validated **outside** the firmware first (host-side, `gcc`),
each computing the *corrected* `Cx = F2²(F1²−F3²)CCal / [F3²(F1²−F2²)]`
formula from the same integer `F1,F2,F3` (raw counts) and `CCal`:

1. **`double`** — the reference/oracle for the other two; not otherwise
   novel.
2. **Fixed-point, `uint32_t` only** — `lib/fixedmath.h/.c` (new,
   portable, no 64-bit needed):
   - `muldiv_u32(a,b,c)` = `floor(a*b/c)`, exact for any 32-bit inputs
     whose true result fits in 32 bits — implemented via a 16×16→32
     partial-product widening multiply (`a*b` held as an explicit
     `hi:lo` 32+32 bit pair, no native 64-bit type) followed by a
     64-step restoring long division. Validated **exact** (zero error)
     against `double` over 2,000,000 random cases.
   - `fixed_div_u32(num,den)` → an adaptively-scaled `Q(fb)` result
     (uses every spare bit of a `uint32_t` for fraction after leaving
     just enough integer headroom — a small quotient, which is the
     common case for `(F1/Fx)²−1` near the low end of the meter's
     range, gets far more relative precision than a fixed `Q16.16`
     budget would give it).
   - `src/measure.c`'s `Cx` computed as: `r13 = fixed_div_u32(F1²−F3²,
     F3²)`, `r12 = fixed_div_u32(F1²−F2², F2²)`, align both to the
     smaller of their two fractional scales, then
     `muldiv_u32(r13, CCal_x100, r12)`.
   - **Same near-cancellation precision floor as the float path** when
     `F3` is within a couple of raw counts of `F1` (i.e. a very small
     measured value) — inherent to the 3-frequency method's own integer
     count resolution, not something either number representation
     avoids. Empirically: 320/200,000 synthetic trials exceed 1% error,
     worst case ~43%, matching the float24 path's own 376/200,000,
     worst case ~46% (see below) — comparable order of magnitude.
3. **`float24`, modeled on AN575** — `lib/float24.h/.c` (new, portable,
   **byte-accurate port of `FP24.A16`'s actual algorithms**, not just
   its bit-format): 24-bit mantissa (3 bytes) + sign byte + 8-bit biased
   exponent (bias 127); every mantissa op (`m_shl1`/`m_shr1`/`m_add`/
   `m_sub`) works one byte at a time with explicit carry/borrow, exactly
   like `RLF`/`RRF`/`ADDWFC`/`SUBWFB` chains in the assembly; multiply
   is a 48-bit-accumulator Horner shift-add (`MLOOP24`'s shape, just
   with two explicit 3-byte halves instead of the ASM's register-reuse
   trick); divide is a pre-aligned 24-step restoring long division
   (`FPD24`'s `AGEB24`/`ALTB24` pre-check, needed because two mantissas
   each in `[2²³,2²⁴)` can have a ratio ≥1, which would overflow a plain
   24-bit quotient register without it).
   - **API is pointer/output-param, not struct-by-value or struct
     return** — deliberately mirrors AN575's own calling convention
     (fixed `AARG`/`BARG`/result locations, never "returns a struct").
     This matters a lot in practice, not just style: the struct-return
     version made **SDCC's `pic16` (PIC18) backend crash outright**
     (`FATAL Compiler Internal Error ... rsize > 0 && rsize <= 4`) on a
     5-byte struct flowing through a several-calls-deep chain, and made
     plain struct-copy assignments lower to `memcpy` calls that then
     failed to link (`Missing definition for symbol "___memcpy"`, no
     libc pulled in during a bare per-routine compile). Switching every
     multi-byte value to `f24_t *`/`qval_t *` out-params fixed both.
   - Validated against `double`: 376/200,000 exceed 1%, worst case
     ~46% (same near-cancellation floor as the fixed path, see above).

### Code-size experiment (the actual thing asked for): `uint32_t` fixed vs. `float24`

Both built as a single `measure_capacitance()`-equivalent routine +
its dependencies, nothing else, `--opt=default,+speed` (xc8) / default
(sdcc), same target chip:

| Toolchain / chip | fixed (`uint32_t`) | `float24` (AN575-modeled) |
|---|---|---|
| XC8 v1.43, 16F876A | 1467 words | 1456 words (≈ tie, float24 marginally smaller) |
| SDCC `pic14`, 16F876A | **fails to compile** (`error 8: Out of stack Space` in the 64-bit-wide divide's 64-iteration loop — a real SDCC pic14 register/stack-allocator limit, unrelated to code style) | (moot on this chip either way — flash too small regardless, see above) |
| SDCC `pic16`, 18F2550 | 6282 bytes | 10976 bytes (**75% bigger**) |

**Conclusion**: under XC8 it's a wash — XC8 already synthesizes
`uint32_t` arithmetic about as compactly as hand-written byte-serial
code. Under SDCC it isn't close: SDCC's codegen for the manual
byte-array shift/add/subtract style is dramatically more bloated than
its native 32-bit integer codegen — **the opposite** of the "ASM has no
word/dword concept, so maybe the compiler does worse with uint32_t"
hypothesis this experiment set out to check. **The `uint32_t`
fixed-point path is the better default for `USE_FIXED`**: same
precision floor as float24, smaller everywhere that matters, and it's
the one that actually compiles across the whole toolchain matrix.
`float24` stays valuable as the third, independent cross-check
implementation (and as a generically reusable `libpicp` module for any
future project that genuinely needs AN575-compatible byte-exact
floating point) — not as the `USE_FIXED` production path.

**Re-measured for real, now including `double`**: `tests/compare_sizes.sh`
(`make sizes` in `tests/`) builds the *actual* `tests/test_double.c`/
`test_fixed32.c`/`test_float24.c` + their real `lib/` dependencies for
16F876A under both compilers (not the hand-written scratch prototypes
above), and prints a size table — see `tests/README.md`'s own copy of
the output. Confirms the scratch-prototype conclusion under XC8 (all
three fit comfortably, 17-22% of flash, `double` smallest) and gives
`double` a real number for the first time (1418 words) — under XC8,
the original "double is too big for 16F876A" motivation for
`USE_FIXED` doesn't actually hold; that's an SDCC-specific problem.
Under SDCC, `fixed32`/`float24` now fail differently than `double`
does: not a flash-capacity issue at all, but the RAM-bank placement
bug documented in "Second simulator investigated: gpsim" below — worth
knowing before citing the `pic16f876a 6282 bytes`/`10976 bytes` SDCC
numbers above, which were measured on a *different* SDCC target
(`pic16`/18F2550, not `pic14`/16F876A) precisely because the `pic14`
build doesn't get that far.

## Still open / not done yet

- [x] Land `lib/fixedmath.h/.c` and `lib/float24.h/.c` in the real
      `libpicp` submodule (done — real files in `lib/`, no longer
      scratch-only; also now XC8-compiled for `16f876a`, see below).
- [x] `tests/` subdirectory: `tests/test_double.c` (oracle),
      `tests/test_fixed32.c`, `tests/test_float24.c` (dual-target —
      same source builds as no-stdio PIC firmware *or*, with
      `-DHOST_TEST=1`, as a host program printing the same
      known-case/trial-sweep report as the other two). `tests/common.h`
      is the shared synthetic-trial generator + stats accumulator.
      `tests/run_host_tests.sh` builds and runs all three under both
      `gcc` and `tcc` (two independent compilers, as a cross-check) and
      prints a combined comparison; `tests/Makefile` has the same as
      individual targets (`make run`) plus `make build-float24` for the
      embedded XC8 build. `tests/README.md` documents the full flow.
      All three: known case `F1=30000 F2=21300 F3=29500 CCal=1000` →
      `Cx_x100=3475` (exact match, all three) and `Lin_x100` 946495
      (double) / 946400 (fixed32) / 946482 (float24) — the ~0.01-0.02%
      spread is the near-cancellation resolution floor described above,
      not a bug in either alternate implementation. `test_float24.c`
      also now confirmed to actually compile for the real target
      (`xc8 --chip=16f876a`, 1682 words / 20.5% flash, 121 bytes RAM —
      comfortably fits, unlike the `double` path).
- [ ] Wire the fixed-point `Cx`/`Lin` computation into
      `src/measure.c` behind `#ifdef USE_FIXED`, replacing the
      `double` path; keep `double` as the `#else` default.
- [ ] Decide & fix (or deliberately leave, and say so in a comment) the
      missing-denominator `Cin` bug in the `double` path — currently
      **not** touched, per explicit instruction to retain existing
      float behavior unless asked.
- [ ] `USE_FIXED`-gate the other float-only `lib/` functions (`format_float`,
      `format_double`, `lcd_print_float`, `ds18b20_temperature`,
      `adc.h`'s `ADVAL_V`), `#warning`-stubbing each until/unless they
      get a real fixed-point replacement.
- [x] Simulator round-trip: `tests/run_mdb_sim.sh` builds
      `test_float24.c` for real PIC16F876A hardware (XC8, debug
      symbols), then drives MPLAB X's `mdb` CLI against its built-in
      software simulator (`Hwtool SIM`) with a small command script
      (`Program`, `Reset MCLR`, `Run`, `Wait 5000`, `Print <symbol>`)
      to actually *execute* the compiled firmware and read
      `result_Cx_x100`/`result_Lin_x100`/`done` back by symbol name —
      not just confirm it compiles. **Confirmed passing**:
      `result_Cx_x100=3475`, `result_Lin_x100=946482`, `done=1`,
      exactly matching the host float24 build (bit-identical code, as
      expected). Two real bugs found and fixed along the way (see
      `tests/README.md` for the full detail): the default watchdog
      timer was resetting the chip mid-computation before `done` ever
      got set (float24's bit-serial multiply/divide take thousands of
      cycles) — fixed with `#pragma config ... WDTE = OFF` on the MCU
      build; and a source-line breakpoint on the bodyless
      `for(;;){}` halt loop didn't reliably resolve to an address in
      XC8's debug info — replaced with a plain `Wait N` (no breakpoint
      needed, `mdb` halts on its own once the simulated time elapses).
      `mdb`'s COFF loader also turned out to require the `.cof` be
      staged under a `dist/` subdirectory beneath the source dir
      (undocumented; discovered from its own exception message) — the
      script handles that automatically. gpsim was also investigated
      but only accepts gputil's `.cod` symbol format for full symbolic
      debugging, not XC8's `.cof`, so `mdb` became the actual path
      used.
- [x] **Second simulator investigated: gpsim, driven via SDCC+gputils
      (not XC8) since gpsim needs a `.cod` symbol file, which only
      gputils' `gplink` produces.** `tests/run_gpsim_sim.sh` builds a
      small standalone demonstrator (`tests/gpsim_demo.c`) with SDCC
      pic14 for 16F876A, links with `gplink` to get a real `.cod`, and
      drives `gpsim -i -c <script>` to run it and read results back by
      symbol name (`x _symbol`, plus a `dump` for multi-byte values —
      symbols load with a leading `_`, C name-mangling convention).
      **Confirmed passing end to end**, byte-exact: a known
      add+multiply computation round-tripped through gpsim matches
      the expected values exactly. This is a real, reusable mechanism
      for future SDCC-targeted design verification, independent of
      whether MPLAB X (`mdb`) is installed.

      **See `tests/sdcc-pic14-bank-overflow.md` for the full,
      standalone writeup of the RAM-bank-placement bug below** (data
      table, every workaround tried, the root-cause hypotheses, and
      the separate execution-time bug found in a build that does
      link) — this section is the short version.

      **However, `lib/fixedmath.c`/`lib/float24.c` themselves are NOT
      yet runnable this way on 16F876A** — real, reproducible SDCC
      pic14 backend issues distinct from the earlier `double`
      flash-overflow finding, found and only partially worked around:
      1. `fixedmath.c`'s `div_wide_u32` (64-iteration restoring
         division loop) hits `error 8: Out of stack Space. 'Register'
         not allocated` under SDCC's *default* pic14 codegen settings.
         Worked around with `--stack-size 32` (SDCC's default is 16) —
         confirmed this alone fixes the compile error.
      2. Even with that fix, linking `lib/fixedmath.c`'s full object
         (all of `mul_u32_wide`/`div_wide_u32`/`muldiv_u32`/
         `fixed_div_u32`/`fixed_align_to`, ~90 bytes of address-taken
         local variables — SDCC's pic14 backend lumps these into one
         non-splittable per-translation-unit `udata` section) fails:
         `gplink` error `No target memory available for section
         "UDL_fixedmath_0"`. Same failure for `lib/float24.c` (~134
         bytes locals separately compiled, ~88 with a unity/single-TU
         build). PIC16F876A's largest single GPR bank is 96 bytes
         (`gpr2`/`gpr3` per `/usr/share/gputils/lkr/16f876a_g.lkr`) —
         `gplink` did not fall back to trying those, only the 16-byte
         shared-memory region, even for a **72-byte** unity build that
         should fit a 96-byte bank. Root cause not fully isolated
         (plausibly: SDCC pic14 binds this section to a fixed default
         bank class at codegen time rather than leaving it freely
         relocatable, and/or `libsdcc.lib`'s own runtime helper
         globals for 32-bit arithmetic already consume much of that
         bank) — open item, not resolved.
      3. Trimming `fixedmath.c` down to just `mul_u32_wide`/
         `div_wide_u32`/`muldiv_u32` (48 bytes locals) *does* compile
         and link cleanly (produces a valid `.cod`) — but running the
         result in gpsim **never completes**: `result` stays `0`,
         `done` stays `0`, and after ~15-20k simulated instructions the
         program counter starts wrapping at the 0x2000 memory-size
         boundary (`increment PC=0x2000 == memory size 0x2000`, a
         gpsim diagnostic for a runaway/corrupted PC) — confirmed
         reproducible up to 200,000 steps, never resolves on its own.
         Not yet root-caused: candidates are an SDCC pic14 codegen bug
         specific to `div_wide_u32`'s loop shape (`int8_t i` counting
         down with a signed comparison), a call-stack-depth issue, or
         a gpsim simulation bug — genuinely unresolved, flagged for
         separate follow-up, not blocking the mdb/XC8 path above which
         already fully verifies the same math.
      - **Net effect**: for SDCC-pic14-targeted numeric verification on
        this specific chip, the XC8/`mdb` round-trip (already working,
        see above) remains the reliable path. The gpsim/SDCC/gputils
        mechanism itself is proven and reusable (`tests/gpsim_demo.c`
        + `run_gpsim_sim.sh`), but `lib/fixedmath.c`/`lib/float24.c`
        need real debugging work (register/RAM pressure reduction, or
        an SDCC bug report) before they can run under it on 16F876A.
      - **uCsim** (SDCC's own bundled simulator, `sdcc-4.6.0/sim/ucsim`)
        was also checked and ruled out early: its supported target
        list (`src/sims/`: MCS51, 8080/8085, XA, Z80, Rabbit, SM83,
        TLCS90, ST7, STM8, PDK, MC6800/6809, M68HC08/11/12, MOS6502,
        PicoBlaze, F8, p1516/p2223, AVR) has **no PIC support at all**
        — not pic14, not pic16/PIC18. Not a viable option for this
        project; don't spend time on it again.
      - **gpsim's LCD support**: exists in gpsim's own source tree
        (`extras/lcd/` — `lcd.cc`/`lcdgui.cc`, an HD44780-style
        character-LCD module, a real match for lc-meter's actual
        hardware) but the installed Debian `gpsim` package does **not**
        ship it (`module list` after loading both `libgpsim_modules`
        and `libgpsim_extras` shows no `lcd` type at all — only
        `libgpsim_extras` has `DS1307`/`DS1820`/`DS18B20`/`DS18S20`/
        `Solar`/`dht11`, notably including a `DS18B20` module that IS
        directly relevant to lc-meter's own `lib/ds18b20.c`). Using
        gpsim's LCD module would require building gpsim from the local
        source tree at `/mnt/data/Projects/gpsim-0.32.1` with the
        `extras/lcd` subdirectory enabled — not yet done.
