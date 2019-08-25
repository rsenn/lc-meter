#include <math.h>
#include <stdio.h>  /* printf, NULL */
#include <stdlib.h> /* strtod */

#define PICO 1.0E-12
#define NANO 1.0E-9
#define MICRO 1.0E-6
#define MILLI 1.0E-3
#define KILO 1.0E+3
#define MEGA 1.0E+6
#define GIGA 1.0E+12

double
parse_num(const char* num) {
  char* end;
  double mul = 1;
  double ret = strtod(num, &end);
  switch(*end) {
    case 'p': mul = PICO; break;
    case 'n': mul = NANO; break;
    case 'u': mul = MICRO; break;
    case 'm': mul = MILLI; break;
    default: break;
  }
  return ret * mul;
}

// --------------------------------------------------------------------------
void
output_num(const char* varname, double num) {

  char suffix[2] = {0, 0};
  double mul = 1;

  if(num < 1.0E-10) {
    mul = PICO;
    suffix[0] = 'p';
  } else if(num < 1.0E-7) {
    mul = NANO;
    suffix[0] = 'n';
  } else if(num < 1.0E-4) {
    mul = MICRO;
    suffix[0] = 'u';
  } else if(num < 1.0E-1) {
    mul = MILLI;
    suffix[0] = 'm';
  } else if(num >= GIGA) {
    mul = GIGA;
    suffix[0] = 'G';
  } else if(num >= MEGA) {
    mul = MEGA;
    suffix[0] = 'M';
  } else if(num >= KILO) {
    mul = KILO;
    suffix[0] = 'k';
  }

  fprintf(stderr, "%s: %lf%s\n", varname, num / mul, suffix[0] ? suffix : "");
}

// --------------------------------------------------------------------------
double
ask(const char* prompt) {
  char linebuf[256];
  fprintf(stderr, "%s: ", prompt);
  fflush(stderr);
  if(fgets(linebuf, sizeof(linebuf), stdin))
    return parse_num(linebuf);
  return NAN;
}

// --------------------------------------------------------------------------
int
main() {
  /*  double inductance = ask("Inductance (H)");
    double capacitance = ask("Capactiance (F)");

    double freq = 1 / (2 * M_PI * sqrt( inductance * capacitance ));

    output_num("Frequency (Hz)", freq);
  */
  double inductance = 82e-06;
  double freq = 15.61 6e+03;

  double two_pi_f = 2 * M_PI * freq;
  double capacitance = 1 / ((two_pi_f * two_pi_f) * inductance);

  output_num("Capacitance (F)", capacitance);

  return 0;
}