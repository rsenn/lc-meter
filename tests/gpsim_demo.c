/*
 * Minimal standalone proof of the gpsim/SDCC/gputils simulator
 * round-trip mechanism (see TODO.md's "Second simulator investigated:
 * gpsim" entry for the full writeup, including why this file is
 * deliberately NOT lib/fixedmath.c or lib/float24.c - both currently
 * hit real, unresolved SDCC pic14 backend limits on PIC16F876A: a
 * register-allocator failure needing `--stack-size 32`, a `gplink`
 * bank-placement failure even after that, and (for a trimmed-down
 * muldiv_u32-only build that DOES link) a runaway/never-completes bug
 * when actually run in gpsim. This file exists to keep the gpsim/.cod
 * round-trip mechanism itself proven and reusable independent of that
 * unresolved work - a future fix to fixedmath.c/float24.c can reuse
 * exactly this build+run recipe (see run_gpsim_sim.sh) once it links
 * and runs cleanly.
 *
 * Deliberately plain integer add/multiply, no lib/ dependency, no
 * stdio (real target build) - computes into volatile globals, halts
 * in an infinite loop, same convention as test_float24.c/
 * test_fixed32.c's MCU builds.
 *
 * Build (see run_gpsim_sim.sh for the automated version):
 *   sdcc -mpic14 -p16f876a --use-non-free -c gpsim_demo.c
 *   gplink -I<sdcc-share>/lib/pic14 -I<sdcc-share>/non-free/lib/pic14 \
 *       -m -w -r -o gpsim_demo.hex gpsim_demo.o libsdcc.lib pic16f876a.lib
 *   # -> gpsim_demo.cod, the file gpsim's `load` command wants
 *
 * Run in gpsim:
 *   gpsim -i -c gpsim_demo.stc
 * where gpsim_demo.stc is:
 *   load gpsim_demo.cod
 *   step 500
 *   dump
 *   quit
 * (symbols load with a leading underscore - `_result_a` etc; `x
 * _result_a` shows only its first byte, `dump` shows the whole GPR
 * space so all 4 bytes of a uint32_t can be read and reassembled
 * little-endian by hand/script).
 */
#include <stdint.h>
#include <pic16f876a.h>

/* WDTE=OFF: not strictly needed for a computation this short, but
 * matches the convention used everywhere else in tests/ (see
 * test_float24.c's own comment on why float24/fixedmath computations
 * need this) and avoids surprises if this file is ever extended. */
__code unsigned int __at(_CONFIG) __config_word =
    (_FOSC_HS & _WDTE_OFF & _PWRTE_ON & _BOREN_ON & _LVP_OFF & _CPD_OFF & _DEBUG_ON & _CP_OFF);

volatile uint32_t result_a; /* expect 12345 + 67890 = 80235 = 0x1396b */
volatile uint32_t result_b; /* expect 12345 * 67890 = 838102050 = 0x31f46c22 */
volatile uint8_t done;

void
main(void) {
  uint32_t x = 12345, y = 67890;
  result_a = x + y;
  result_b = x * y;
  done = 1;
  for (;;) {
    /* halt point - gpsim reads result_a/result_b/done back from here */
  }
}
