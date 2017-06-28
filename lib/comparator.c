#include "comparator.h"

#if HAVE_COMPARATOR


void
comparator_disable() {

//Disable PORTA Comparators

#if NUM_COMPARATORS == 1
  
  // CMCONbits.CON = 0;
  CMCON = 0b111;

#elif NUM_COMPARATORS > 1

  C1ON = 0;
  C2ON = 0;

#endif 
}



#endif // HAVE_COMPARATOR


