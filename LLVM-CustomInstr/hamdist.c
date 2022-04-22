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

    res += (unsigned int)1 & (c >> 0);
    res += (unsigned int)1 & (c >> 1);
    res += (unsigned int)1 & (c >> 2);
    res += (unsigned int)1 & (c >> 3);
    res += (unsigned int)1 & (c >> 4);
    res += (unsigned int)1 & (c >> 5);
    res += (unsigned int)1 & (c >> 6);
    res += (unsigned int)1 & (c >> 7);
    res += (unsigned int)1 & (c >> 8);
    res += (unsigned int)1 & (c >> 9);
    res += (unsigned int)1 & (c >> 10);
    res += (unsigned int)1 & (c >> 11);
    res += (unsigned int)1 & (c >> 12);
    res += (unsigned int)1 & (c >> 13);
    res += (unsigned int)1 & (c >> 14);
    res += (unsigned int)1 & (c >> 15);
    res += (unsigned int)1 & (c >> 16);
    res += (unsigned int)1 & (c >> 17);
    res += (unsigned int)1 & (c >> 18);
    res += (unsigned int)1 & (c >> 19);
    res += (unsigned int)1 & (c >> 20);
    res += (unsigned int)1 & (c >> 21);
    res += (unsigned int)1 & (c >> 22);
    res += (unsigned int)1 & (c >> 23);
    res += (unsigned int)1 & (c >> 24);
    res += (unsigned int)1 & (c >> 25);
    res += (unsigned int)1 & (c >> 26);
    res += (unsigned int)1 & (c >> 27);
    res += (unsigned int)1 & (c >> 28);
    res += (unsigned int)1 & (c >> 29);
    res += (unsigned int)1 & (c >> 30);
    res += (unsigned int)1 & (c >> 31);
    return res; 
}