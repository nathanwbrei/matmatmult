; Call a function

%define SYSCALL_WRITE 1
%define SYSCALL_EXIT  60

section .text


;default rel   ; Does this do what I think it does? I can't tell!

global start 
start:
    push rbp
    mov rbp, rsp
     
    ; print(str)
    mov rax, SYSCALL_WRITE
    mov rdi, 1                   ; to stdout
    lea rsi, [str]
    ; mov rsi, str
    mov rdx, str.len
    syscall

    xor rax, rax               ; Zero rax so that no vector parameters ???
    mov rdi, [val]             ; p92: lea rdi, [val]
    call domagic 

    mov rdi, rdx               ; Use function return value as program return value
    mov rax, SYSCALL_EXIT
    syscall

global domagic
domagic:

    push rbp                    ; Save return address
    mov rbp, rsp                ; 
    ; I don't think I need to do this
    ; sub rsp, 8                  ; Bring back to 16-alignment ???
    
    push rdi

    mov rax, SYSCALL_WRITE
    mov rdi, 1                   ; to stdout
    mov rsi, str2
    mov rdx, str2.len
    syscall
    
    pop rdi
    inc rdi
    mov rax, rdi                ; Return value goes in rdx???

    leave                       ; Reset
    ret


section .data
val:    dq 79
str:    db `Greetings from assembly!\n`
.len:   equ $ - str      ; This is a compile-time constant, not put in memory
str2:   db `Hello from inside!\n`
.len:   equ $ - str2      ; What the hell is this




