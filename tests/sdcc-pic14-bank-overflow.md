# SDCC pic14 RAM-bank placement bug (PIC16F876A)

**Status: open, not root-caused. Reproducible.** Found while trying to
get `lib/fixedmath.c`/`lib/float24.c` running under `gpsim` (see
`run_gpsim_sim.sh`, `TODO.md`'s "Second simulator investigated: gpsim"
entry, and `SKILL.md`'s `### gpsim` tool section — this file is the
detailed writeup those all point back to).

## Summary

Compiling `lib/fixedmath.c` or `lib/float24.c` with SDCC's `pic14`
backend for PIC16F876A and linking with `gplink` fails with:

```
warning: Relocation of section "UDL_fixedmath_0" failed, relocating to a shared memory location.
error: No target memory available for section "UDL_fixedmath_0".
```

(`UDL_float24_0` for `lib/float24.c`.) This happens even for a section
well under the chip's largest single RAM bank — a 72-byte case was
confirmed to still fail, in a bank layout with two 96-byte banks
available. It is **not** a case of the code genuinely not fitting in
16F876A's RAM; something more specific in how SDCC/`gplink` place this
particular kind of section is going wrong.

This is a **different** failure from the already-well-understood
"`double` overflows 16F876A's flash under SDCC" finding (see `TODO.md`
and `tests/compare_sizes.sh`'s output) — that one is a flash/program-
memory capacity problem with a known cause (SDCC's software `double`
library is much bigger than XC8's). This one is a RAM/data-memory
*placement* failure, and the actual byte counts involved are small.

## Why this code has this shape

Both `lib/fixedmath.c` and `lib/float24.c` use a **pointer/output-
parameter API** — every function takes its operands and result as
pointers (`f24_mul(const f24_t *a, const f24_t *b, f24_t *r)`, not
`f24_t f24_mul(f24_t a, f24_t b)`). This was a deliberate choice made
earlier in this project's fixed-point migration, for a different,
already-solved reason: SDCC's `pic16` (PIC18) backend crashed outright
compiling a 5-byte struct passed/returned **by value** through a
multi-call chain (`FATAL Compiler Internal Error ... rsize > 0 && rsize
<= 4`), and struct-to-struct assignment lowered to a `memcpy` call that
failed to link standalone. Pointer/output-param functions sidestep
both problems, and also happen to match AN575's own register-based
calling convention more closely.

That same design choice has a cost on `pic14` that doesn't show up on
`pic16`/XC8: **any local variable whose address is taken (passed as
`&local` to one of these pointer-API functions) cannot be proven non-
aliasing by SDCC's local-variable-overlay optimizer**, so it can't be
safely reused/overlapped with another function's locals the way a
plain scalar local normally would be. SDCC's `pic14` backend responds
by lumping every such address-taken local, across the **whole
translation unit**, into one single, non-splittable `udata` section —
this is the `UDL_<basename>_0` section named in the error.

## The measurements

PIC16F876A's actual RAM layout (from `/usr/share/gputils/lkr/16f876a_g.lkr`):

| Bank | Range | Usable bytes |
|---|---|---|
| `gpr0` | 0x20–0x6F | 80 |
| `gpr1` | 0xA0–0xEF | 80 |
| `gpr2` | 0x110–0x16F | 96 |
| `gpr3` | 0x190–0x1EF | 96 |
| shared (`gprnobnk`) | 0x70–0x7F | 16 (the other 3 shared regions are `PROTECTED`) |

Local-variable-section sizes actually measured (by compiling and
counting `res 1` directives in the generated `.asm`):

| Build | `UDL_..._0` size | Link result |
|---|---|---|
| `lib/fixedmath.c` alone | 90 bytes | **fails** |
| `lib/float24.c` alone | 134 bytes | **fails** |
| `lib/float24.c` + `test_float24.c`, unity build (single translation unit, one `#include`d into the other) | 88 bytes | **fails** |
| `lib/fixedmath.c` + `test_fixed32.c`, unity build | 72 bytes | **fails** |
| `lib/fixedmath.c` trimmed to just `mul_u32_wide`/`div_wide_u32`/`muldiv_u32` (dropping `fixed_div_u32`/`fixed_align_to`) | 48 bytes | **links** (but see "A second, separate bug" below) |

The 72-byte and 88-byte unity-build cases are the key data point: both
are smaller than a single `gpr2`/`gpr3` bank (96 bytes) and yet still
failed to link, with `gplink` only ever reporting the 16-byte shared
region as its fallback target — never `gpr1`, `gpr2`, or `gpr3`. A
simple "doesn't fit in Y bytes total" explanation is ruled out by this;
whatever `gplink`/SDCC is doing is picking (or being told) a specific,
apparently fixed target bank rather than trying every bank with free
space.

## What was tried

- **`--stack-size 32`** (SDCC pic14's argument-passing-stack size,
  default 16): this fixes a *different*, earlier compile-time error
  (`error 8: Out of stack Space. 'Register' not allocated`, hit inside
  `div_wide_u32`'s 64-iteration restoring-division loop) but does not
  affect the link-time RAM-bank error at all — both errors were
  encountered, in that order, and only the first responds to this
  flag.
- **`--opt-code-size`**, **`--no-pcode-opt`**: no effect on either
  error.
- **`--optimize-df`** (thorough dataflow analysis): not available on
  `pic14` — it's `pic16`(PIC18)-port-only per `sdcc --help`'s "Special
  options for the pic16 port" section; `pic14`'s own special-options
  list has no equivalent.
- **Unity build** (concatenating the library and the test file into a
  single translation unit via `#include`, giving SDCC's own overlay
  analysis full whole-program visibility instead of the default
  one-`.c`-file-per-`sdcc`-invocation limit): genuinely shrinks the
  section (90+26 bytes compiled separately → 72 bytes unified for
  fixedmath; 134 bytes alone → 88 bytes unified for float24), proving
  the overlay optimizer *is* doing some real work — but the result
  still fails to link even once it's under a 96-byte bank's capacity.
- **`gplink -r` / `--use-shared`**: already implied by `sdcc`'s own
  default invocation (`gplink ... -w -r -o ...`) — this is exactly the
  16-byte shared-region fallback that's too small and already failing.
- **Checked `gplink --help` for a bank-selection/retry flag**: none
  exists. Its only relevant option is `-r`/`--use-shared` (the
  fallback already being hit). There is no `pic14` equivalent of
  `pic16`'s `--preplace-udata-with=udata_ovr|udata_acs|udata_shr`
  (confirmed `pic16`-port-only in `sdcc --help`'s output).

## Root cause: not fully isolated

Two plausible, non-exclusive explanations, neither confirmed by
reading `gputils`/SDCC source (would need real time in `gplink`'s own
placement logic and/or SDCC's `pic14` codegen to settle definitively —
out of scope for how far this investigation went):

1. **SDCC's `pic14` backend may bind this section to a fixed default
   bank class at code-generation time** (baked into the `.asm` it
   emits, e.g. always targeting whatever it considers the "first"
   bank) rather than emitting it as freely relocatable to any bank
   with room — in which case `gplink` genuinely has no choice but to
   try that one bank and then the shared-memory fallback, regardless
   of how much free space exists in `gpr1`/`gpr2`/`gpr3`.
2. **`libsdcc.lib`'s own runtime helper globals** (the subroutines
   backing `*`/`/`/`<<`/`>>` on `uint32_t`, which both `fixedmath.c`
   and `float24.c` need heavily) may already consume a meaningful
   chunk of whichever bank SDCC's `udata` sections default to,
   shrinking the *actually* free contiguous space in that one bank
   below what the raw byte counts above suggest — without this being
   visible just by counting `res 1` lines in the application code's
   own `.asm`.

## A second, separate bug: the 48-byte build that links doesn't run

Trimming `lib/fixedmath.c` down to just `mul_u32_wide`, `div_wide_u32`,
and `muldiv_u32` (dropping `fixed_div_u32`/`fixed_align_to`, which use
the `qval_t` struct) gets the `UDL_fixedmath_0` section down to 48
bytes — small enough to actually link successfully, producing a real,
loadable `.cod`.

But running the result in `gpsim` never completes: a test `main()`
computing `muldiv_u32(12345, 6789, 100, &fault)` into a `volatile`
result variable leaves that variable at `0` and never sets its own
`done` flag, no matter how many instructions are stepped. Worse, after
roughly 15,000–20,000 simulated instructions, `gpsim` starts reporting
`increment PC=0x2000 == memory size 0x2000` — the program counter
wrapping around at the chip's program-memory boundary, a sign of a
genuine runaway/corrupted control flow, not just "still computing."
This was confirmed reproducible up to 200,000 simulated steps (still
stuck) and with the watchdog explicitly disabled (`WDTE=OFF` in the
config word), ruling out a watchdog reset as the cause.

This is **not yet root-caused either**. Candidates, none confirmed:

- An SDCC `pic14` codegen bug specific to `div_wide_u32`'s loop shape
  (a `for (int8_t i = 63; i >= 0; i--)` — a signed 8-bit downward
  counter compared against zero across a 64-iteration loop with
  several live `uint32_t` temporaries).
- Something related to the PIC hardware call stack (only 8 levels deep
  on this device) being exhausted or corrupted, though the actual call
  depth involved (`main` → `muldiv_u32` → `div_wide_u32`, no
  recursion) is well within that limit on paper.
- A `gpsim` simulation bug specific to whatever instruction sequence
  SDCC emits for this loop.

Whichever it is, it means **a build that links cleanly is not by
itself proof the code is correct on this backend** — the gpsim
round-trip step (actually running the firmware and checking it reaches
its own completion flag) is what caught this, not the build succeeding.

## Practical takeaway

For SDCC-`pic14`-targeted numeric work on PIC16F876A specifically:

- The **XC8 + `mdb`** round-trip (`run_mdb_sim.sh`) remains the
  reliable path for verifying `lib/fixedmath.c`/`lib/float24.c` — both
  build and run correctly there (see `TODO.md`).
- The **gpsim + SDCC/gputils** round-trip mechanism itself is proven
  and reusable (`gpsim_demo.c`/`run_gpsim_sim.sh`, byte-exact verified
  on a minimal program with no `lib/` dependency) — it's specifically
  `fixedmath.c`/`float24.c`'s pointer-API code that doesn't yet
  link-and-run cleanly under SDCC `pic14` on this chip.
- A real fix, if pursued, most likely means either: reducing the
  address-taken local-variable footprint further (fewer/smaller
  simultaneously-live pointer-passed temporaries — a deeper refactor
  than the trimming done here), filing/searching for an upstream SDCC
  or `gputils` bug report about `udata` section bank placement on
  `pic14`, or accepting XC8 as the only supported compiler for this
  specific chip's `USE_FIXED`/`USE_FLOAT24` paths and documenting that
  constraint in `src/measure.c`.
