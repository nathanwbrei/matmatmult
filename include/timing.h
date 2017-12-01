#ifndef TIMING_H_
#define TIMING_H_

#include<unistd.h>
#include<stdint.h>
#include<time.h>

// TODO: Retrive floating point ops counter?

/* Count clock 'cycles' as measured by TSC.
   Note that process must be pinned to a core, Turbo Boost should be disabled, 
   and that the TSC updates at a different frequency than the actual clock >:(

   cpuid         ; To synchronizeo
   rtdsc
   shl rdx 4
   or rax rdx    ; To retrieve all 64 bits
*/
extern inline uint64_t tsc()
{
  uint64_t t;
  __asm__ __volatile__ ("rdtsc" : "=A"(t));
  return t;
}


double microsecs(struct timespec start, struct timespec stop) {
  return 1.0e-3 * (1000000000L * (stop.tv_sec - start.tv_sec) + stop.tv_nsec - start.tv_nsec );
}

int cycles(long int microsecs) {
  return 22;
}

int gflops(long int microsecs, long int fmas, int iterations) {
  return 22;
}

#endif
