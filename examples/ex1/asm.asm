; All the extern here are references to the Ncurses C library. There is no need
; a C file, but x86 needs to know that these are external function calls
extern initscr
extern refresh
extern getch
extern endwin
extern mvaddch

SECTION .TEXT
	global _start		; Subroutine that will be called when running the exectuable

_start:
	call	initscr		; Set up terminal canvas
	call	refresh		; Make sure it renders correctly

	mov		rdi, 10		; length = 10, aka param 1
	mov		rsi, '*'	; line_char = '*', aka param 2
	call	_render_line; Draw line, render_line(int length, char line_char)

	call	getch		; Wait for user input
	call	endwin		; On user input, close the window

	; Exit
	mov 	rax, 60		; setup to exit
	mov 	rdi, 0		; exiting status 0
	syscall				; System interupt to exit

_render_line:
	mov		rcx, rdi	; set the loop counter to the line length
	mov		rbx, rsi	; set the line_char to a non-volatile reg, rbx

_render_line_helper:
	push	rcx			; Save the current loop count, as it may be destroyed by mvaddch

	mov		rdi, 0		; Row param for mvaddch
	mov		rsi, rcx	; Column param for mvaddch
	mov		rdx, rbx	; The character the line is composed of
	call	mvaddch		; Call to Ncurses library that will render the line character

	pop		rcx			; Restore the current loop count
	loop	_render_line_helper	
	ret					; When done looping goto the return address of the callee
