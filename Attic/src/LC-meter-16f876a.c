#include <LC-meter-16f876a.h>

void
main() {

  // -------------------------------------------------------------------------
  // Example blinking LED program
  while(true) {
    output_low(LED);
    delay_ms(DELAY);
    output_high(LED);
    delay_ms(DELAY);
  }
}
