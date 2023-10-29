#
helloworld: helloworld.o
	riscv64-unknown-elf-ld -o helloworld helloworld.o

helloworld.o: helloworld.s
	riscv64-unknown-elf-as -o helloworld.o helloworld.s

clean:
	rm -f helloworld helloworld.o

all: helloworld

run: helloworld
	qemu-riscv64 helloworld
