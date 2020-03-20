# cs372-x86_64

CS372 x86_64 Dinosaur Game written primarly in x86 with assistance from Ncurses C library.

## Helpful Info

- Register Order For Parameters Used In Function Calls
1. rdi
2. rsi
3. rdx
4. rcx
5. r8
6. r9
8. 8+ needs to be pushed on stack in reverse order

- Return Register From Function Calls
rax

- General Purpose Registers
1. rax
2. rbx
3. rcx
4. rdx
5. rdi
6. rsi
8. r8-r15

- Volatile Registers (Not Saved Across Function Calls)
1. rax
2. rcx
3. rdx
4. r8 - r11
5. XMM0-5 			(NOTE: I would not worry about this)
6. Uppoer YMM0-15	(NOTE: I would not worry about this)
7. Upper ZMM0-15	(NOTE: I would not worry about this)

- Non-Volatile Registers (Saved Across Function Calls)
1. rbx
2. rsp
3. rbp
4. r12-r15

## Resource Links
[x86_64 C Calling Convention] (https://aaronbloomfield.github.io/pdr/book/x86-64bit-ccc-chapter.pdf)
[x86_64 Architecture] (https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/x64-architecture)

## Authors
Angel Aguayo
Nicholas Kunzler
