# cs372-x86_64

CS372 x86_64 Dinosaur Game written primarly in x86 with assistance from Ncurses C library.

## Helpful Info

- Register Order For Parameters Used In Function Calls
  - rdi
  - rsi
  - rdx
  - rcx
  - r8
  - r9
  - 8+ needs to be pushed on stack in reverse order

- Return Register From Function Calls
  - rax

- General Purpose Registers
  - rax
  - rbx
  - rcx
  - rdx
  - rdi
  - rsi
  - r8-r15

- Volatile Registers (Not Saved Across Function Calls)
  - rax
  - rcx
  - rdx
  - r8 - r11
  - XMM0-5 			(NOTE: I would not worry about this)
  - Uppoer YMM0-15	(NOTE: I would not worry about this)
  - Upper ZMM0-15	(NOTE: I would not worry about this)

- Non-Volatile Registers (Saved Across Function Calls)
  - rbx
  - rsp
  - rbp
  - r12-r15

## Resource Links
[x86_64 C Calling Convention] (https://aaronbloomfield.github.io/pdr/book/x86-64bit-ccc-chapter.pdf)

[x86_64 Architecture] (https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/x64-architecture)

## Authors
Angel Aguayo

Nicholas Kunzler
