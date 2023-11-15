#
# Risc-V Assembler program to print "Hello World!"
# to stdout.
#

.global _start      # Provide program starting address to linker




_WRITE_SYSOUT_:
  # Setup the parameters to print hello world
  # and then call Linux to do it.

  addi    sp,sp,-16      # Make room for 2 registers
  sd      ra,8(sp)       # Save return address (PUSH 1)
  sd      fp,0(sp)       # Save frame pointer  (PUSH 2)
  #addi    fp,sp,1      # Setup frame pointer

  addi    a0, x0, 1      # 1 = StdOut
  la      a1, helloworld # load address of helloworld
  addi    a2, x0, 13     # length of our string
  addi    a7, x0, 64     # linux write system call
  ecall                # Call linux to output the string

  ld      ra,8(sp)
  ld      fp,0(sp)
  addi    sp,sp,16

  jr      ra

_EXIT_PROGRAM_:
  # Setup the parameters to exit the program
  # and then call Linux to do it.
  addi    a0, x0, 0   # Use 0 return code
  addi    a7, x0, 93  # Service command code 93 terminates
  ecall               # Call linux to terminate the program

_start: 

  jal     ra, _WRITE_SYSOUT_ # Call the write system call

  jal     ra, _EXIT_PROGRAM_ # Call the exit system call

  ret
  # End of program


.data
helloworld:      .ascii "Hello World!\n"
