# Thomson-formula implementation tests

Three implementations of the corrected Thomson-equation Cx/Lin
calculation (see `../TODO.md` for the full derivation, the `Cin`
denominator bug found via `git blame`/`images/equations.png`/
`Unpack-1116/firmware-asm-hex/lcmeter.asm`, and the `USE_FIXED`
migration plan these tests exist to validate):

| File | Approach | Notes |
|---|---|---|
| `test_double.c` | plain C `double` | host-only oracle; what `src/measure.c` does today, and why it doesn't fit on 16F876A/SDCC (pulls in SDCC's software-float library) |
| `test_fixed32.c` | pure `uint32_t` fixed-point | `../lib/fixedmath.[ch]`; no 64-bit type anywhere (SDCC has none on pic14/pic16) |
| `test_float24.c` | byte-accurate AN575 float24 model | `../lib/float24.[ch]`; mirrors `lcmeter.asm`'s own `C_calc`/`L_calc` call sequence operation-for-operation |

`common.h` is shared test scaffolding: a synthetic F1/F2/F3 sweep
generator (`gen_trial`, computed via `double` for the reference
Cx/Lin) and an error-stats accumulator (`stats_record`/`stats_print`).
Host-only (uses `double`, `printf`) - never shipped to a chip.

All three implementations round-trip the *same* known case
(`F1=30000 F2=21300 F3=29500 CCal=1000`), for which the double oracle
gives `Cx=34.7509pF` (`Cx_x100=3475`) and `Lin=9464.9452nH`
(`Lin_x100=946495`). fixed32 and float24 land within ~0.01% of that on
`Lin` and exactly on `Cx` - the remaining spread across all three
comes from the near-cancellation resolution floor inherent to the
3-frequency method itself (see TODO.md), not a representation bug in
either alternate implementation.

## Host round-trip (native x86_64, no PIC toolchain)

`test_float24.c` is dual-target: the exact same source builds either
as the no-stdio MCU firmware (see below) or, with `-DHOST_TEST=1`, as
a host program that prints the same known-case/trial-sweep report as
the other two tests. This is what lets all three implementations be
round-tripped identically before ever touching a simulator.

```sh
./run_host_tests.sh
```

Builds and runs all three tests under every host C compiler it finds
(`gcc`, `tcc` - deliberately two independent compilers, as a
cross-check that no implementation is silently relying on one
compiler's handling of unspecified/implementation-defined behavior),
prints each one's known-case line and trial-sweep precision summary,
then a combined comparison table. `make run` (see `Makefile`) does the
same with just `$(CC)` (default `gcc`).

Both `test_fixed32.c` and `test_float24.c` (host build) need
`-D__XC=1` on the command line even though this is a host build - see
`test_fixed32.c`'s own top-of-file comment: `../lib/typedef.h`'s
`uint32_t` is only a real 4-byte `stdint.h` typedef under a compiler
it recognizes; without `__XC` it falls back to
`#define uint32_t unsigned long int`, 8 bytes on LP64 Linux, which
silently corrupts any struct shared between a test file and a
`lib/*.c` it links against if the two aren't compiled with matching
defines.

## MCU round-trip (PIC16F876A, MPLAB X simulator via `mdb`)

`test_float24.c` built *without* `-DHOST_TEST` is plain embedded C -
no `printf`/stdio anywhere (can't be, and shouldn't: this is the whole
point of the float24/fixed32 exercise). Its `main()` computes the
known case into three `volatile` globals and then loops forever:

```c
volatile uint32_t result_Cx_x100;
volatile uint32_t result_Lin_x100;
volatile uint8_t done;
```

```sh
./run_mdb_sim.sh
```

Builds it for PIC16F876A with debug symbols (XC8, `-G --opt=+debug`),
stages the `.cof` under `dist/` (MPLAB X's COFF loader requires the
debug image to sit in a `dist/` subdirectory beneath the source dir -
undocumented in the MDB User's Guide, found by triggering and reading
`ProgramFileProcessingException`'s own message), then drives MPLAB
X's `mdb` command-line debugger against its built-in software
simulator (`Hwtool SIM` - no physical programmer or board involved)
with a short command script:

```
Device PIC16F876A
Hwtool SIM
Program "dist/test_float24_mcu.cof"
Reset MCLR
Run
Wait 5000
Print result_Cx_x100
Print result_Lin_x100
Print done
Quit
```

`mdb` actually executes the compiled firmware in the simulator and
reads the three globals back by symbol name afterward - this is the
literal "does it run and calculate the right result on the real
target" check, not just a compile check. Confirmed passing:
`result_Cx_x100=3475`, `result_Lin_x100=946482`, `done=1` - exactly
matching the host build's own float24 run (bit-identical code, as
expected).

Two things worth knowing if this needs debugging again:
- **Watchdog timer**: float24's bit-serial multiply/divide take
  thousands of cycles - past the default WDT timeout, which resets
  the simulated chip mid-computation before `done` is ever set (seen
  first-hand: `result_Lin_x100=0`/`done=0` with a stream of
  `W0004-CORE: Watchdog Timer has caused a Reset.` in the `mdb`
  output). `test_float24.c` now sets `#pragma config ... WDTE = OFF`
  on the MCU build to avoid this.
- **No breakpoint needed**: an early version tried
  `Break test_float24.c:<line of the halt loop>`, which XC8's debug
  info didn't always resolve to an address for a bodyless `for(;;){}`
  (fragile across otherwise-identical rebuilds). `Run` + `Wait 5000`
  alone is enough simulated time to reach the halt loop and is far
  more reliable - `mdb` halts on its own once the wait elapses.
- `mdb` is found automatically at any of
  `/opt/microchip/mplabx/{v6.35,v5.50,v5.35}/mplab_platform/bin/mdb.sh`;
  pass a different path as `./run_mdb_sim.sh /path/to/mdb.sh` if
  needed.

(gpsim was also investigated as an alternative simulator - it has a
`load` command but only accepts gputil's own `.cod` symbol format for
full symbolic debugging, not XC8's `.cof` - see the next section for
how that was actually made to work, via SDCC+gputils instead of XC8.)

## gpsim round-trip (SDCC + gputils, not XC8)

```sh
./run_gpsim_sim.sh
# or: make gpsim
```

gpsim needs a gputils `.cod` symbol file, which only `gplink` (part of
the `gputils` package - `gpasm`/`gplink`/`gputil`) produces - so this
path goes through SDCC's pic14 backend instead of XC8. Builds
`gpsim_demo.c` (a **deliberately minimal** standalone program - plain
`uint32_t` add + multiply, no `lib/` dependency) with `sdcc -mpic14
-p16f876a`, links with `gplink` to get `gpsim_demo.cod`, then drives
`gpsim -i -c <script>` (`load`, `step N`, `x _symbol`, `quit`) to
actually run it and read `result_a`/`result_b`/`done` back by symbol
name. **Confirmed passing, byte-exact.**

Two gpsim usage notes from getting this working:
- Symbols from a `.cod` load with a leading underscore (C name
  mangling) - `_result_a`, not `result_a`.
- `x _symbol` only shows **one byte** (the symbol's base address) -
  fine for a `uint8_t` like `done`, not enough for a `uint32_t` like
  `result_a`/`result_b`. Reading a multi-byte value back needs a plain
  `dump` (shows the whole GPR address space) and reassembling the
  bytes little-endian by hand from the known base address - there's
  no multi-byte-aware `x`/`print` equivalent for a loaded `.cod` in
  gpsim's CLI.
- An `.stc` command file passed via `gpsim -c` must live in the same
  directory as the `.cod` it loads - gpsim changes its own working
  directory to match the command file's location before executing
  `load`, so a command file elsewhere (e.g. `mktemp`'s default `/tmp`)
  causes `load` to look in the wrong place.

**Why `gpsim_demo.c` and not the real `lib/fixedmath.c`/
`lib/float24.c`**: both currently hit real, unresolved SDCC pic14
backend issues on PIC16F876A, found and only partially worked around
while getting this far - full writeup in
[`sdcc-pic14-bank-overflow.md`](sdcc-pic14-bank-overflow.md) (data
table of every build's exact byte count, every workaround tried and
why it didn't help, the root-cause hypotheses, and the separate
execution-time bug found in a build that does link but never
completes in gpsim); short version also in TODO.md's "Second simulator
investigated: gpsim" entry. In brief: a register-allocator failure
needing `--stack-size 32`, then a `gplink` link failure placing SDCC's
compiler-generated local-variable section in a RAM bank even after
that (reproducible even at 72 bytes, well under a 96-byte bank's
capacity), and - for a trimmed build that does link - a reproducible
runaway/never-completes bug when actually run in gpsim. `gpsim_demo.c`
keeps the gpsim/.cod round-trip mechanism itself proven and ready to
reuse once that gets fixed; for now, the `mdb`/XC8 path above is the
reliable way to numerically verify this project's Thomson-formula
implementations on PIC16F876A.

## Code-size comparison (XC8 vs SDCC, all three implementations)

```sh
./compare_sizes.sh
# or: make sizes
```

Builds all three `test_*.c` (MCU variant - no `-DHOST_TEST`, same
no-stdio embedded build the simulator round-trips above use) for real
PIC16F876A hardware under both compilers this project supports, and
prints a size table. Current result:

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

**Under XC8** (which is what actually matters for this project's real
shipped firmware - see TODO.md's `USE_FIXED` plan), `double` is
smallest, `float24` in the middle, `fixed32` largest - all three fit
comfortably (17-22% of 16F876A's 8K-word flash), so the original
motivation for a fixed-point migration (SDCC's software `double`
overflowing flash) doesn't actually apply to XC8's own float library;
`double` stays perfectly viable there. This is consistent with the
original scratch-prototype code-size experiment in TODO.md (XC8:
~1467 vs ~1456 words, effectively a tie) - the *real* `tests/*.c` files
show a similar spread, now cross-checked against `lib/fixedmath.c`/
`lib/float24.c` as they actually exist, not hand-written prototypes.

**Under SDCC, all three currently fail to build for 16F876A** - but
for two different reasons, not one:
- `double` fails at **link time on flash** (`S_test_double__main` -
  code, not RAM) - the expected, previously-documented result: SDCC's
  software `double` library is much larger than XC8's.
- `fixed32`/`float24` fail at **link time on a RAM bank**
  (`UDL_fixedmath_0`/`UDL_float24_0`) - a different, still-open SDCC
  pic14 backend issue (see `run_gpsim_sim.sh`'s section above and
  TODO.md's "Second simulator investigated: gpsim" entry for the full
  diagnosis) unrelated to flash capacity - both would very likely fit
  in flash if this RAM-placement problem were solved, going by how
  much smaller they are than `double` under XC8.

## Cleaning up

```sh
make clean
```
