#ifndef TIMING_H_
#define TIMING_H_

#include<unistd.h>

// TODO: Retrive floating point ops counter?

/* Count clock 'cycles' as measured by TSC.
   Note that process must be pinned to a core, Turbo Boost should be disabled, 
   and that the TSC updates at a different frequency than the actual clock >:(

   cpuid         ; To synchronizeo
   rtdsc
   shl rdx 4
   or rax rdx    ; To retrieve all 64 bits
*/
inline uint64_t tsc()
{
  uint64_t t;
  __asm__ __volatile__ ("rdtsc" : "=A"(t));
  return t;
}

#endif
