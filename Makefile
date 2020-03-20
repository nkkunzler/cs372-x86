CC = gcc
CFLAGS = -m64 -Wall -Werror
AS = nasm
ASFLAGS = -f elf64
LD = ld
LDFLAGS = -dynamic-linker /lib64/ld-linux-x86-64.so.2

OBJ = add_asm.o add.o

run: $(OBJ)
	$(LD) $(LDFLAGS) -o $@ -lc $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o
	rm -f run

