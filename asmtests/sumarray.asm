
section .text
global sumarray

sumarray:
  push rbp                    ; Save return address
  mov rbp, rsp

  push rdi
  push rsi

  mov rax, 1                    ; Write syscall
  mov rdi, 1                    ; To stdout
  mov rsi, str
  mov rdx, str.len
  syscall

  pop rsi                       ; Array length
  pop rdi                       ; Pointer to first item

  ; acc => rax
  ; n => rsi
  ; arr => rdi
  ; i => rcx

  xor ecx, ecx
  xor eax, eax

for:
  cmp rcx, rsi
  je end_for

  add rax, [rdi + rcx*8]
  inc rcx
  jmp for

end_for:

  xor rdx, rdx
  leave                       ; Reset
  ret

section .data
str:    db `Attempting to sum array...\n`
.len:   equ $ - str




