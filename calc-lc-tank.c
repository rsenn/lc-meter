#include <math.h>
#include <stdio.h>      /* printf, NULL */
#include <stdlib.h>     /* strtod */
#include <string.h>     /* strtod */

#define PICO 1.0E-12
#define NANO 1.0E-9
#define MICRO 1.0E-6
#define MILLI 1.0E-3
#define KILO 1.0E+3
#define MEGA 1.0E+6
#define GIGA 1.0E+12

#define FREQUENCY 0
#define INDUCTANCE 1
#define CAPACITANCE 2

static double values[3] = { 0, 0, 0 };

double
parse_num(const char* num, char **endptr) {
  char* end;
  double mul = 1;
  double ret = strtod(num, &end);
  switch(*end) {
    case 'p': mul = PICO; ++end; break;
    case 'n': mul = NANO; ++end; break;
    case 'u': mul = MICRO; ++end; break;
    case 'm': mul = MILLI; ++end; break;
    default:
      break;
  }
  *endptr = end;
  return ret * mul;
}

// --------------------------------------------------------------------------
void
output_num(const char* varname, const char* unit, double num) {
  char buffer[1024];
  char suffix[2] = {0,0};
  double mul = 1;
  
  if(num < 1.0E-10) { mul = PICO; suffix[0] = 'p'; }
  else if(num < 1.0E-7) { mul = NANO; suffix[0] = 'n'; }
  else if(num < 1.0E-4) { mul = MICRO; suffix[0] = 'u'; }
  else if(num < 1.0E-1) { mul = MILLI; suffix[0] = 'm'; }
  else if(num >= GIGA) { mul = GIGA; suffix[0] = 'G'; }
  else if(num >= MEGA) { mul = MEGA; suffix[0] = 'M'; }
  else if(num >= KILO) { mul = KILO; suffix[0] = 'k'; }
  
  snprintf(buffer, sizeof(buffer)-1, "%s: %lf", varname, num / mul);
  
  int i = strlen(buffer);
  
  while(--i >= 0) {
    if(buffer[i] == '0')
      buffer[i] = '\0';
    else if(buffer[i] == '.')  {
      buffer[i] = '\0';
      break;
    } else break;
  }
  
  fprintf(stderr, "%s%s%s\n", buffer, suffix[0] ? suffix : "", unit);
}

// --------------------------------------------------------------------------
double
ask(const char* prompt, int *typeptr) {
 char linebuf[256];
 char *endptr;
 int type = 0;
 double r = NAN;
 fprintf(stderr, "%s: ", prompt);
 fflush(stderr);
 if(fgets(linebuf, sizeof(linebuf), stdin))  {
   r = parse_num(linebuf, &endptr);
   if(!stricmp(endptr, "Hz")) {
     type = FREQUENCY;
     } else if(!stricmp(endptr, "F")) {
     type = CAPACITANCE;
     } else if(!stricmp(endptr, "H")) {
     type = INDUCTANCE;
     }
     *typeptr = type   
 }
 return r;
}

// --------------------------------------------------------------------------
int main() {
  int type;
  double value = ask("Enter value", &type);
  
/*  double inductance = ask("Inductance (H)");
  double capacitance = ask("Capactiance (F)");

  double freq = 1 / (2 * M_PI * sqrt( inductance * capacitance ));
  
  output_num("Frequency (Hz)", freq);
*/
 double inductance = 330e-06;
 double freq = 15.616e+03;
 
 double two_pi_f = 2 * M_PI * freq;
 double capacitance = 1 / ((two_pi_f*two_pi_f)*inductance);
 
 output_num("Frequency", "Hz", freq);
 output_num("Inductance", "H", inductance);
 output_num("Capacitance" ,"F", capacitance);

  return 0;
}