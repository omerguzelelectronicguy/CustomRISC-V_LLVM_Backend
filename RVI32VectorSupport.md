# VECTOR OPERATIONS
[This link](https://godbolt.org/z/dfPrnv1cK) is the online compiler which is set for rv64gcv.

LLVM+clang14 compressed file is downloaded and extracted from [this website](https://github.com/llvm/llvm-project/releases/tag/llvmorg-14.0.0).
After just extracting the compressed file, it can be used by the command below.

`
/home/llvm/Downloads/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04/bin/clang-14 -S -O2 -mllvm --riscv-v-vector-bits-min=256 --target=riscv64 -march=rv64gcv vec.c`

This command is to produce assembly to apply vector operations.
Note: When suggested vector operation is not worth to use vector hardware it doesn't prefer to convert vector operations. Only the Calculations that worth to run hardware will be converted to vector operations.

Note: Only perm function is not converted to the vector operation for my cases(I didn't use all the operations).
I couldn't add the stdio library in the code but there are solutions in the net I didn't apply.
