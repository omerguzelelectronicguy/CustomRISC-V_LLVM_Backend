/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// It return the number of zeros from lsb to first 1.


unsigned int clz2(unsigned int rs1){
    return __builtin_clz(rs1);
}
/*
https://discourse.llvm.org/t/ctlz-pattern/28776

Compiler doesn't detect the pattern automatically. 
It cannot be added according to the website above.
So, intrinsic functions must be used.
*/
// unsigned int cntz_fun(unsigned int rs1)
// {
//     for (int count = 0; count < 32; count++)
//         if ((rs1 << count) >> (32 - 1))
//             return count;
//     return 32;
// }

