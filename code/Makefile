AS = nasm
ASFLAGS = -f elf64
LD = ld
LDFLAGS = -dynamic-linker /lib64/ld-linux-x86-64.so.2

OBJ = hello_world.o

run: $(OBJ)
	$(LD) $(LDFLAGS) -o $@ -lc $^

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o
	rm -f run

