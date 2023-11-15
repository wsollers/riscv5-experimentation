# riscv5-experimentation

https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf

https://gpages.juszkiewicz.com.pl/syscalls-table/syscalls.html

https://www.qemu.org/docs/master/system/index.html




https://colatkinson.site/linux/riscv/2021/01/27/riscv-qemu/
https://web.eecs.utk.edu/~smarz1/courses/ece356/notes/assembly/

TODO: Table layout


riscv calling convention:

Register ABI Name Description Saver
x0 zero Hard-wired zero —
x1 ra Return address Caller
x2 sp Stack pointer Callee
x3 gp Global pointer —
x4 tp Thread pointer —
x5–7 t0–2 Temporaries Caller
x8 s0/fp Saved register/frame pointer Callee
x9 s1 Saved register Callee
x10–11 a0–1 Function arguments/return values Caller
x12–17 a2–7 Function arguments Caller
x18–27 s2–11 Saved registers Callee
x28–31 t3–6 Temporaries Caller
f0–7 ft0–7 FP temporaries Caller
f8–9 fs0–1 FP saved registers Callee
f10–11 fa0–1 FP arguments/return values Caller
f12–17 fa2–7 FP arguments Caller
f18–27 fs2–11 FP saved registers Callee
f28–31 ft8–11 FP temporaries Caller


RISCV5 simulator -> https://github.com/TheThirdOne/rars
