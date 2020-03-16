bits 32

extern add
extern printf
extern exit

global _start

SECTION .DATA
    fmt:    db "%d", 10, 0 ; print a decimal followed by a newline and a null terminator

SECTION .TEXT

_start:
    push 20
    push 20
    call add

    push eax
    push fmt
    call printf ; printf(format, eax)

    push 0
    call exit   ; exit(0)
