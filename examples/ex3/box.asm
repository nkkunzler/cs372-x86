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

	mov		rdi, 2		; length = 10, aka param 1
	mov		rsi, '@'	; line_char = '*', aka param 2
	call	_draw_box; Draw line, render_line(int length, char line_char)

	call	getch		; Wait for user input
	call	endwin		; On user input, close the window

	; Exit
	mov 	rax, 0x3c	; setup to exit
	mov 	rdi, 0		; exiting status 0
	syscall				; System interupt to exit

; To be honest there is probably a better way to draw the box
_draw_box:
	mov		r12, rdi	; box_size
	mov		rcx, r12	; curr_row
	mov		rbx, rsi	; box_char
	push	rbp			; Save the calleer base pointer

_draw_box_helper:
	push 	rcx			; Save curr_row

	mov		rdi, rcx	; curr_row to print row at 
	mov		rcx, r12	; num of symbols in row
	call	_draw_box_row
	
	pop		rcx			; restoring curr_row
	loop	_draw_box_helper ; Loop until rcx = 0
	pop		rbp			; restoring base pointer
	ret

_draw_box_row:
	push	rcx			; curr_col
	push	rdi			; Save curr_row to print at
	mov		rsi, rcx	; print at col = curr_col
	mov		rdx, rbx	; print the char
	call	mvaddch		
	pop		rdi			; restore curr_row
	pop		rcx			; restore curr_col

	loop	_draw_box_row ; Loop until rcx = 0
	ret					; Return to _draw_box_helper

