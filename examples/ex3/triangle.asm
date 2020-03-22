global _start
section .text

_start:


	mov rax, 1          ;system call for write
	mov rdi, 1          ; file handle 1 is stdout
	mov rsi, message    ;address of string to output
    mov rdx, 13         ; number of byes
	syscall
	mov rax, 60         ; system call for exit
    xor rdi, rdi    ; exit code 0
    syscall

section .data
imessage: db "Hello, World", 10, 0
