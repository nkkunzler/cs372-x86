extern add				; Find the add function, which is in add.c

SECTION .TEXT
	global _start

_start:
	mov 	rdi, 69		; Setting add func param1 to 69
	mov 	rsi, 96		; Setting add func param2 to 96
	push 	rsi			; Saving the rsi reg to the stack
	call 	add				; Calling add func in add.c with param1 and param2
	pop 	rsi			; Restore the rsi reg from the stack

	mov 	rdi, rax		; Setting add func param1 to return value from previous call func
	call 	add				; call add function in add.c	

	mov 	rax, 60		; setup to exit
	mov 	rdi, 0		; exiting status 0
	syscall					; System interupt to exit
