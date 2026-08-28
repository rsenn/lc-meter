# Recent work log: lc-meter float→fixed-point migration + simulator verification

Chronological summary of everything done in this work session, for
anyone picking this up cold. Detailed technical content mostly lives
in the files this document points to (`TODO.md`, `tests/README.md`,
`tests/sdcc-pic14-bank-overflow.md`, and the `mcu-firmware-engineer`
skill) — this is the narrative connecting them.

## 1. Skill audit + build-matrix fixes

Checked the whole lc-meter project against the `mcu-firmware-engineer`
skill's guidelines, then built `LC_meter_HD44780` across the full
chip × compiler × build-type matrix (4 chips × {XC8, SDCC} ×
{debug, release} = 16 combinations). **14/16 succeeded.**

Found and fixed five real, project-specific portability bugs along the
way (full detail in the skill's own lc-meter project notes):

1. `build/vars.mk` referenced three nonexistent `MATH_SOURCES` files
   (`frexpf.c`/`log10f.c`/`logf.c`) — dead build-system cruft, removed.
2. `lib/format.c` called `log10f()` directly instead of going through
   the project's own `MATH_LIB_ALIASES` compiler-name-aliasing shim in
   `device.h` — XC8 has no `log10f` symbol at all. Fixed to call plain
   `log10()`.
3. `lib/interrupt.h`'s `INTERRUPT_FN()` macro keyed its PIC18-vs-pic14
   ISR-declarator choice on this project's own `PIC16` macro, which
   means "is a PIC16-series chip" — the **opposite** of SDCC's
   `pic14`-vs-`pic16` instruction-set naming (`pic16` = PIC18). Fixed
   to key on `PIC18` instead, and fixed the ISR syntax itself
   (`__interrupt(1)` parenthesized for pic16/PIC18, no argument at all
   for pic14 — `__interrupt 1` fails on both with a syntax error).
4. `lib/device.h`'s `__config_word` emission was guarded on
   `defined(PIC16)` — same backwards-naming bug as #3 — causing every
   16F876A translation unit to emit an absolute config word at 0x2007
   and collide at link time. Fixed with an opt-in
   `DEVICE_EMIT_CONFIG_WORD` macro, defined only by the top-level
   program's own `config-bits.h` (never `lib/*.c`), so exactly one
   translation unit emits it.
5. `lib/format.c`'s `format_double()` was guarded `#ifndef SDCC` — but
   the macro is `__SDCC` (with underscores) everywhere else in this
   codebase; `SDCC` (bare) is never defined, so the guard never fired
   and `format_double` always compiled, including under SDCC.

Also corrected a wrong assumption already baked into the skill:
**PIC18F252 has no onboard analog comparator at all** (confirmed
against its real XC8 header — zero `CMCON`/`CM1CON0`/`CVRCON`/`C1OUT`
symbols), unlike 18F2550 and 18F25K50. This isn't a bug to route
around; `Cap_meter_HD44780`/`Freq_meter_HD44780` genuinely can't build
for that chip because the hardware they need isn't there.

The 2 real (non-bug) failures: SDCC on 16F876A, both build types,
overflow flash — `LC_meter_HD44780`'s `double`-based Thomson-formula
math plus its HD44780 driver don't fit in 16F876A's 8K-word flash
under SDCC's software-double library, even though the identical source
fits comfortably (13%) under XC8. This became the motivating problem
for everything that follows.

Generalized the project's own **prescaler/timer sub-tick readout
technique** (`lib/timer.c`'s `timer0_read_ps()`) into the skill as a
reusable pattern: extend an 8-bit hardware timer's resolution by
re-pointing its clock source at a software toggle loop the instant a
gate window closes, then combine the coarse hardware count with a fine
loop-iteration count for sub-LSB timing resolution — no extra hardware
needed.

## 2. Provenance investigation: is the float math even correct?

The user flagged that the existing `double`-based Thomson-formula math
in `src/measure.c` "might not even work." Investigated via `git blame`
plus two independent sources the user pointed to directly:
`images/equations.png` (the reference derivation) and
`Unpack-1116/firmware-asm-hex/lcmeter.asm` (another LC meter's actual
firmware, doing the same "rearranged Thomson formula, no huge
floating-point routines" calculation this project needed).

**Confirmed**: the *active* `Cin` capacitance formula in
`src/measure.c` is missing its denominator — a commented-out line
right next to it has the correct, complete formula. This was
cross-validated two ways: against the equations image, and later
independently again when the inductance-calculation constant derived
from scratch for the fixed-point/float24 work turned out to match the
original `lcmeter.asm`'s own hardcoded `Get_Lscale` constant almost
byte-for-byte. Per explicit instruction, **this bug was documented but
deliberately left unfixed** in the `double` code path — the task was
to add fixed-point alternatives alongside the existing float code, not
silently changing its behavior.

## 3. AN575 code-size experiment

Before committing to a fixed-point design, tested a hypothesis: since
`lcmeter.asm` implements this calculation in hand-written PIC assembly
using Microchip's AN575 24-bit software-floating-point library
(register-based calling convention, byte-serial arithmetic — "no
notion of word/dword" the way C does), would modeling that same
byte-serial approach in C actually produce *smaller* code than a
straightforward `uint32_t` fixed-point implementation? The intuition
being that compilers might not synthesize great code for 32-bit
integer ops on an 8-bit part.

Built both as standalone routines and measured:

| Toolchain / chip | `uint32_t` fixed | float24 (AN575-modeled) |
|---|---|---|
| XC8 v1.43, 16F876A | 1467 words | 1456 words (≈ tie) |
| SDCC `pic14`, 16F876A | fails to compile (see §6) | moot — flash too small either way |
| SDCC `pic16`, 18F2550 | 6282 bytes | 10976 bytes (**75% bigger**) |

**Result: the hypothesis was wrong.** Under XC8 it's a wash. Under
SDCC it isn't close, and in the *opposite* direction predicted:
SDCC's codegen for manual byte-serial shift/add/subtract code is
dramatically more bloated than its native 32-bit integer codegen.
`uint32_t` fixed-point became the recommended `USE_FIXED` production
path; float24 stays as a valuable independent cross-check
implementation (and a reusable byte-exact AN575 model for any future
project that needs one) rather than the primary path.

## 4. Three parallel implementations, built for real

Per the user's explicit design, built three complete, independently
verifiable implementations of the Thomson-formula capacitance/
inductance calculation:

- **`lib/fixedmath.c`/`.h`** — pure `uint32_t` fixed-point. No 64-bit
  type anywhere (SDCC has none on `pic14`/`pic16`) — built from a
  16×16→32 widening multiply (`mul_u32_wide`) and a 64-step restoring
  long division (`div_wide_u32`), composed into `muldiv_u32` and an
  *adaptive-precision* `fixed_div_u32` (uses every spare bit of a
  `uint32_t` for the fractional part rather than a fixed Q-format,
  which matters a lot for this application's small-ratio precision
  near the low end of its measurement range).
- **`lib/float24.c`/`.h`** — a byte-accurate C model of AN575's actual
  mantissa/exponent layout and normalize/multiply/divide/subtract
  algorithms, worked out one byte at a time exactly like the
  assembly's register-chain operations, never widened to a native
  32/64-bit type.
- **`double`** — the existing, retained reference path.

All three use a **pointer/output-parameter API** (never struct-by-
value or struct-return) — this was necessary, not stylistic: SDCC's
`pic16` backend crashed outright (`FATAL Compiler Internal Error`)
compiling a 5-byte struct passed by value through a multi-call chain,
and struct-to-struct assignment lowered to a `memcpy` that failed to
link standalone. (This same design choice later turned out to have its
own cost on `pic14` — see §6/§7.)

Real bugs found and fixed deriving these (see `TODO.md` for the full
list): a wrong exponent-bias constant in `f24_mul` (off by exactly
2x), a missing pre-alignment step in `f24_div` needed because two
normalized mantissas can have a ratio ≥1 (overflowing a naive 24-bit
restoring divide), a fixed (non-adaptive) `FRAC_BITS` design that gave
up to 35% error for small ratios before being made adaptive, and two
separate hand-arithmetic scaling-constant errors (one off by 1000x, one
off by 100x from double-counting a display-scale factor).

## 5. `tests/` — three-way verification infrastructure

Built out `tests/` as a real, reusable, dual-target test harness:

- **`common.h`** — shared synthetic F1/F2/F3 trial generator (matching
  the meter's real 3-frequency measurement method) and an error-stats
  accumulator, host-only.
- **`test_double.c`**, **`test_fixed32.c`**, **`test_float24.c`** —
  each **dual-target**: the exact same source file builds either as
  plain no-stdio embedded C for a real PIC target (computes a known
  test case into `volatile` global result variables and halts in an
  infinite loop — for a simulator to read back), or, with
  `-DHOST_TEST=1`, as a host program with `printf` that runs the
  identical computation through `common.h`'s synthetic trial sweep and
  reports precision statistics. One file, two build modes, zero drift
  between what's verified on the host and what actually ships.
- **`run_host_tests.sh`** — builds and runs all three under **two
  independent host compilers** (`gcc` and `tcc`), specifically to
  catch any implementation silently depending on one compiler's
  handling of unspecified/implementation-defined behavior. All three
  converge on the known test case (`F1=30000 F2=21300 F3=29500
  CCal=1000`) to within the method's own near-cancellation precision
  floor — not a representation bug in any of them, just the inherent
  resolution limit of a 3-frequency measurement approach.
- **`Makefile`** — `make run` / `make gpsim` / `make sizes` /
  `make build-float24` / `make clean`, tying everything together.

## 6. Simulator round-trip #1: MPLAB X's `mdb`, via XC8

Goal: not just "does it compile" but "does the compiled firmware
actually run on the real target and compute the right answer,"
without real hardware.

Read the local `MDBUserGuide.pdf` (ships with every MPLAB X install;
fetching the online doc page timed out repeatedly, the local copy was
the way in) and worked out the command-file pattern: `Device`,
`Hwtool SIM` (MPLAB X's own built-in software simulator — no physical
debug probe needed), `Program`, `Reset`, `Run`, `Wait N`, `Print
<symbol>`.

`run_mdb_sim.sh` builds `test_float24.c` for real PIC16F876A hardware
via XC8 with debug symbols, drives `mdb` against `Hwtool SIM`, and
reads `result_Cx_x100`/`result_Lin_x100`/`done` back by symbol name.
**Confirmed passing**, bit-exact match with the host build. Two real
bugs found and fixed getting there:

- `mdb`'s COFF loader silently requires the `.cof` debug image to live
  in a subdirectory literally named `dist/`, one level below the
  source directory — completely undocumented in the User's Guide;
  discovered by triggering and reading
  `ProgramFileProcessingException`'s own message.
- The default watchdog timer was resetting the simulated chip
  mid-computation before `done` ever got set (float24's bit-serial
  multiply/divide take thousands of cycles) — fixed with
  `#pragma config ... WDTE = OFF` on the MCU build.
- A source-line breakpoint on the bodyless `for(;;){}` halt loop didn't
  reliably resolve to an address in XC8's own debug info across
  otherwise-identical rebuilds — replaced with a plain `Wait N`
  (simulated instructions/cycles; `mdb` halts on its own once that
  elapses), which has no such dependency.

## 7. Simulator round-trip #2: gpsim, via SDCC + gputils

gpsim's `load` command only accepts gputils' own `.cod` symbol format
— never XC8's `.cof` — so this path goes through SDCC's `pic14`
backend and the `gputils` package (`gpasm`/`gplink`/`gputil`) instead.

Also investigated and **ruled out** SDCC's own bundled simulator,
uCsim: its supported target list (checked directly against its source
tree, `src/sims/`) has no PIC support at all — not `pic14`, not
`pic16`. Not viable for this project.

Built `gpsim_demo.c` + `run_gpsim_sim.sh` — a deliberately minimal
standalone program (plain `uint32_t` add + multiply, no `lib/`
dependency) that proves the whole SDCC → `gplink` (produces the
`.cod`) → `gpsim` (loads it, runs it, reads results back by symbol
name) pipeline end to end. **Confirmed passing, byte-exact.** Real
gpsim CLI gotchas found along the way: symbols from a `.cod` load with
a leading underscore (C name mangling); `x <symbol>` shows only one
byte, so a multi-byte value needs a plain `dump` and manual little-
endian reassembly; and an `.stc` command file passed via `gpsim -c`
must live in the same directory as the `.cod` it loads, because gpsim
changes its own working directory to match wherever that file sits.

**However**, the real `lib/fixedmath.c`/`lib/float24.c` libraries
themselves do **not** yet build-and-run cleanly this way on
PIC16F876A — this became its own, fairly deep investigation:

- A register-allocator failure (`error 8: Out of stack Space`) in
  `div_wide_u32`'s 64-iteration loop, worked around with SDCC's
  `--stack-size 32` (default 16).
- A **RAM-bank-placement link failure** even after that fix — the
  headline finding of this whole investigation, written up in full
  detail in **[`tests/sdcc-pic14-bank-overflow.md`](tests/sdcc-pic14-bank-overflow.md)**.
  Short version: SDCC's `pic14` backend lumps every address-taken
  local variable in a translation unit into one non-splittable
  `udata` section (a direct consequence of the pointer/output-param
  API chosen in §4), and `gplink` fails to place even a 72-byte such
  section — well under a 96-byte free GPR bank on this chip — instead
  of trying the chip's other banks. Confirmed via five separate
  measured builds; every workaround tried (`--opt-code-size`,
  `--no-pcode-opt`, a whole-program "unity build" to give SDCC's
  overlay optimizer full visibility, checking for a `gplink`
  bank-retry flag) either had no effect or didn't fully solve it.
  Root cause not fully isolated — two hypotheses documented, neither
  confirmed by reading `gputils`/SDCC source directly.
- A **second, separate bug**: a version trimmed small enough to
  actually link (48 bytes of locals — just `muldiv_u32` and its two
  helpers) still never completes when run in gpsim — the program
  counter runs off into invalid memory after ~15–20k simulated
  instructions, reproducible up to 200,000 steps, watchdog ruled out
  as the cause. Also not root-caused (candidates: an SDCC codegen bug
  in that loop's specific shape, or a gpsim simulation bug).

**Net effect**: for this specific chip and compiler combination, the
`mdb`/XC8 path (§6) is the reliable one for actually verifying
`fixedmath.c`/`float24.c`. The gpsim/SDCC/gputils *mechanism* is
proven and ready to reuse the moment this gets fixed.

Also checked what gpsim offers beyond symbol readback, since it was
raised as a possible round-trip approach: gpsim does have a built-in
`usart` peripheral-simulation module (could decode a real hardware-
UART TX stream from inside the simulator) and real HD44780-style
character-LCD module *source* (`extras/lcd/`, a genuine match for this
project's actual LCD hardware) — but the installed Debian package
wasn't built with `extras/lcd` included (confirmed: it's absent from
`module list` even after loading every available module library;
only `DS1307`/`DS1820`/`DS18B20`/`DS18S20`/`Solar`/`dht11` are
present — notably including a `DS18B20` module that's directly
relevant to this project's own `lib/ds18b20.c`). Using the LCD module
would require building gpsim from its local source tree with that
subdirectory enabled — not done.

## 8. Code-size comparison, all three implementations, both compilers

Made `test_double.c` dual-target too (matching §5's other two files),
then wrote `tests/compare_sizes.sh` (`make sizes`) to build all three
real `tests/*.c` + their `lib/` dependencies for PIC16F876A under both
XC8 and SDCC and print a size table:

```
IMPL       CC     RESULT PROGRAM SPACE                                 RAM
----       --     ------ -------------                                 ---
double     xc8    OK     1418 words (17.3% flash)                      109 bytes RAM
double     sdcc   FAIL   error: No target memory available for section "S_test_double__main".
fixed32    xc8    OK     1767 words (21.6% flash)                      171 bytes RAM
fixed32    sdcc   FAIL   error: No target memory available for section "UDL_fixedmath_0".
float24    xc8    OK     1682 words (20.5% flash)                      121 bytes RAM
float24    sdcc   FAIL   error: No target memory available for section "UDL_float24_0".
```

**Notable finding**: under XC8, `double` is actually the *smallest* of
the three, and all three fit comfortably (17–22% of flash). The
original motivation for a `USE_FIXED` migration — "double is too big
for 16F876A" — turns out to be an SDCC-specific problem, not a
universal one; XC8's own `double` support is perfectly viable on this
chip. Under SDCC, all three currently fail, but for two genuinely
different reasons that are easy to conflate: `double` fails from real
flash-capacity exhaustion (the known, expected cause), while
`fixed32`/`float24` fail from the unrelated RAM-bank-placement bug in
§7 — a data-memory placement problem, not a program-memory capacity
one, and one that (going by how much smaller these two are than
`double` under XC8) would very likely not recur once fixed.

## 9. Skill updates (`~/.claude/skills/mcu-firmware-engineer/`)

Everything generalizable from this session was written back into the
skill, not just left in this project:

- **`SKILL.md`**: new `### mdb` and `### gpsim` tool sections (full
  invocation patterns, every CLI gotcha found, SDCC `pic14` toolchain
  gotchas including the config-word idiom and the RAM-bank-placement
  issue, the uCsim negative finding, the gpsim-LCD-module gap); SDCC
  `__interrupt` syntax rules added to the Toolchains section; a
  generalized "design-verification pattern" bullet in the lc-meter
  project notes (three parallel implementations → dual-target host/MCU
  test files → two-compiler host round-trip → simulator round-trip,
  picking `mdb` or `gpsim` by which compiler produced the binary being
  verified → wire the winner in behind a selector macro, keeping the
  original as a fallback); the corrected PIC18F252-has-no-comparator
  fact; the five build-matrix bugs, generalized.
- **`sources.yaml`**: new entries for the MDB User's Guide (and its
  release notes / online help), the gpsim source tree, the
  gpsim-LCD-module gap, gpsim's own module-system docs, and the
  uCsim-has-no-PIC-support finding — each with enough detail to be
  useful without re-deriving it from scratch next time.

## Where things stand / what's still open

Tracked in detail in `TODO.md`'s "Still open" checklist; summary:

- **Done**: the provenance investigation, all three implementations
  (validated against each other and a `double` oracle across hundreds
  of thousands of synthetic trials), the full `tests/` verification
  harness (host, two compilers, two simulators where they work, code
  size), and the skill updates.
- **Not yet done**: wiring the fixed-point implementation into the
  real `src/measure.c` behind `#ifdef USE_FIXED` (keeping `double` as
  the default); deciding whether to actually fix the missing-
  denominator `Cin` bug in the `double` path itself (currently
  deliberately left alone); `#warning`-gating the other float-only
  `lib/` functions (`format_float`, `format_double`,
  `lcd_print_float`, `ds18b20_temperature`, `adc.h`'s `ADVAL_V`) behind
  `USE_FIXED`; and the SDCC-`pic14`-on-16F876A RAM-bank bug itself,
  which remains genuinely unsolved (see
  `tests/sdcc-pic14-bank-overflow.md`'s "Practical takeaway" for the
  realistic options if it's ever worth pursuing further).
