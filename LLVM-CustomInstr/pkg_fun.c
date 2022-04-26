/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// it will return the left half part of rs2 and right part of rs1 combined.
unsigned int pkg_fun(unsigned int rs1, unsigned int rs2){ 
    return (rs2<<16) | (rs1>>16);
}
