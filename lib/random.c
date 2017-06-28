#include "random.h"

static uint8_t x = 0;
uint8_t a = 0, b = 0, c = 0;

// http://www.electro-tech-online.com/threads/ultra-fast-pseudorandom-number-generator-for-8-bit.124249/
void
random_init(uint8_t s1, uint8_t s2, uint8_t s3) // Can also be used to seed the rng with more entropy during use.
{
  // XOR new entropy into key state
  a ^= s1;
  b ^= s2;
  c ^= s3;

  x++;
  a = (a ^ c ^ x);
  b = (b + a);
  c = (c + (b >> 1)^a);
}

uint8_t
random()
{
  x++;                  // x is incremented every round and is not affected by any other variable
  a = (a ^ c ^ x);      // note the mix of addition and XOR
  b = (b + a);          // And the use of very few instructions
  c = (c + (b >> 1)^a); // the right shift is to ensure that high-order bits from b can affect
  return (c);           // low order bits of other variables
}

