#Simple Makefile for helloworld
helloworld: helloworld.o
	riscv64-unknown-elf-ld -o helloworld helloworld.o

helloworld.o: 
	riscv64-unknown-elf-as -o helloworld.o helloworld.S

clean:
	rm -f helloworld helloworld.o

all: clean helloworld

run: all
	qemu-riscv64 helloworld

debug-run: all
	qemu-riscv64 -g 1234 helloworld

debug-attach:
	riscv64-gdb -ex "target remote localhost:1234" helloworld
