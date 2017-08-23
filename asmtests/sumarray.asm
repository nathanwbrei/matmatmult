
section .text


global sumarrayl
sumarrayl:
; arr=>rdi, n=>esi; i=>rcx, acc=>rax
  push rbp
  mov rbp, rsp

  mov rax, [rdi]
  mov rcx, 1

.for:
  cmp ecx, esi
  je sumarrayl.end_for
  add rax, [rdi + rcx*8]
  inc rcx
  jmp sumarrayl.for

.end_for:
  leave
  ret


global sumarrayi
sumarrayi:
; arr=>rdi, n=>esi; i=>rcx, acc=>rax
  push rbp
  mov rbp, rsp

  mov rax, [rdi]
  mov rcx, 1

.for:
  cmp ecx, esi
  je sumarrayi.end_for
  add eax, [rdi + rcx*4]
  inc rcx
  jmp sumarrayi.for

.end_for:
  leave
  ret



global sumarrayd
sumarrayd:
; arr=>rdi, n=>esi; i=>ecx, acc=>xmm0
  push rbp
  mov rbp, rsp

  movsd xmm0, [rdi]
  mov rcx, 1

.for:
  cmp ecx, esi
  je sumarrayd.end_for
  addsd xmm0, [rdi + rcx*8]
  inc rcx
  jmp sumarrayd.for

.end_for:
  leave
  ret

