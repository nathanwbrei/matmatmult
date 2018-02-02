
section .text

global matvec4x4
; rdi:A, rsi:B, rdx:C, rcx:?
matvec4x4:
  push rbp
  mov rbp, rsp

  ; load double[4] B => reg[4]
  ; load double[4] C => reg[5]
  vmovupd ymm4, [rsi]
  vmovupd ymm5, [rdx]

  ; load double[4] A[4i] => reg[i] for i in 0..4
  vmovupd ymm0, [rdi]
  vmovupd ymm1, [rdi + 32]
  vmovupd ymm2, [rdi + 64]
  vmovupd ymm3, [rdi + 96]

  ; broadcast double B[i] => double[4] reg[6+i] for i in 0..4
  vbroadcastsd ymm6, [rsi]
  vbroadcastsd ymm7, [rsi + 8]
  vbroadcastsd ymm8, [rsi + 16]
  vbroadcastsd ymm9, [rsi + 24]

  ; C += reg[0]*reg[6]
  ; vfmadd132pd ymm5, ymm0, ymm6
  ; vfmadd132pd ymm5, ymm1, ymm7
  ; vfmadd132pd ymm5, ymm2, ymm8
  ; vfmadd132pd ymm5, ymm3, ymm9

  vmulpd ymm10, ymm0, ymm6
  vmulpd ymm11, ymm1, ymm7
  vmulpd ymm12, ymm2, ymm8
  vmulpd ymm13, ymm3, ymm9

  vaddpd ymm10, ymm10, ymm11
  vaddpd ymm12, ymm12, ymm13
  vaddpd ymm10, ymm10, ymm12

  vmovupd [rdx], ymm10

  leave
  ret

; Improvements:
; - Align data?
; - Enable FMA?
; - Compare with libxsmm generated code
; - Measure and predict cycles
