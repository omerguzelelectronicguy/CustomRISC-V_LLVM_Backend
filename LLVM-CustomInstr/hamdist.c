/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// it will return the total number of different bits between value a and b.
unsigned int hamdist(int a, int b){ 
    unsigned int res = 0;
    unsigned int c = a ^ b;
    /*for (int i = 0;i < 32; i++){
        res += (unsigned int)1 & (c >> i);
    }*/ // below code works for same porpuse.
    return __builtin_popcount(c);
}