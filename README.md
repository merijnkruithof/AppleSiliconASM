# AppleSiliconAsm
I'm exploring ARMv8, AARCH, or just Assembly using Apple Silicon.

I'm using an M3 and M2 MAX.

This repository contains a lot of mental drawings and perhaps code comments that are not
that eloquently written.


## Compiling .s files
In order to compile ASM files, you'll need the `as` binary. This is installed on macOS Sequoia by default. 

Just run
```
as -arch arm64 <file>.s -o <file>.o
```

You'll need a linker, because the Apple syscalls and other symbols such as other compiled
.s files must be coupled before it can become a binary,

I use clang, but you can use ld as well - ld gives you more debugging information.
```
clang -o <output binary> <.o file>
```