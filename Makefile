CC = gcc
CFLAGS = -m32 -Werror
AS = nasm
ASFLAGS = -f elf32
LD = ld
LDFLAGS = -m elf_i386 -dynamic-linker /lib/ld-linux.so.2

OBJ = add_asm.o add.o

main: $(OBJ)
	$(LD) $(LDFLAGS) -o $@ -lc $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o
	rm -f main

