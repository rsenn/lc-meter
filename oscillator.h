#ifndef OSCILLATOR_H
#define OSCILLATOR_H 1

//#ifdef _XTAL_FREQ
//#warning External _XTAL_FREQ
//#endif

#if !defined(_XTAL_FREQ)
#define _XTAL_FREQ 16420000  /** CPU clock */
#endif

#define KHZ        ((_XTAL_FREQ)/1000)
#define OSC_4      ((_XTAL_FREQ)/4)


//----------------------------------------------------------------------------
// Preprocessor macros
//----------------------------------------------------------------------------
#define US_TO_OVERFLOWS(us,period) (US_CYCLES(us)/(period))
#define MS_TO_OVERFLOWS(ms,period) (MS_CYCLES(ms)/(period))

#endif // !defined(OSCILLATOR_H)
