/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// it will return the left half part of rs2 and right part of rs1 combined.
unsigned int pkg_fun(unsigned int rs1, unsigned int rs2){ 
    return (rs2<<16) | (rs1>>16);
}
/*
It is working with this command.

/home/llvm/Downloads/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04/bin/clang-14 -target riscv32-linux-gnu -S -emit-llvm -g -Os pkg_fun.c
/home/llvm/llvm-project/RISCV_Backend/bin/llc -mtriple=riscv32 -view-isel-dags pkg_fun.ll

*/