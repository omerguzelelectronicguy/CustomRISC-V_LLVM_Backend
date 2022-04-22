/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// it will return the left half part of rs2 and right part of rs1 combined.
void sladd(unsigned int rs1, unsigned int rs2, unsigned int *rd){ 
    *rd  = rs1 + (rs2 << (unsigned int) 1 ) ;
}
