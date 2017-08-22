; All this program does is return some exit code

%define SYSCALL_WRITE 1
%define SYSCALL_EXIT  60

section .text

global _start

_start:
    mov rax, SYSCALL_WRITE
    mov rdi, 1                   ; to stdout
    mov rsi, str
    mov rdx, strlen
    syscall

    mov rax, SYSCALL_EXIT
    mov rdi, 22                  ; return value
    syscall


section .data
    str:     db `Greetings from assembly!\n`
    strlen:  equ $ - str      ; What the hell is this
