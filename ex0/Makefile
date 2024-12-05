.PHONY: all emulate debug clean

all:
	arm-none-eabi-gcc -g -Wall -O0 -mcpu=cortex-m3 -c startup.s -o startup.o	
	arm-none-eabi-gcc -g -Wall -O0 -mcpu=cortex-m3 -c main.c -o main.o
	arm-none-eabi-ld -nostdlib -Tlinker.ld startup.o main.o -o main.elf
	arm-none-eabi-objcopy -O binary main.elf main.bin

emulate:
	qemu-system-arm -S -M lm3s811evb -nographic -kernel main.bin -gdb tcp::1234

debug:
	arm-none-eabi-gdb -silent -w main.elf -ex "target remote tcp::1234" -ex "break main"

clean:
	rm -rf .gdb_history *.o *.elf *.bin