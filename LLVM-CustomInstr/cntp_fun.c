/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// It return the number of ones in rs1.

unsigned int cntp_fun(unsigned int rs1){
    return __builtin_popcount(rs1);
}
