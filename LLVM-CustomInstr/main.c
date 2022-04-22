
int main() {
    int a = 127;
    int b = 129;

    //////rvrs
    unsigned int c = a + b;
    c = 
            (((unsigned int) 0xff000000 & c) >> 24) |
            (((unsigned int) 0x00ff0000 & c) >> 8) |
            (((unsigned int) 0x0000ff00 & c) << 8)  |
            (((unsigned int) 0x000000ff & c) << 24)  ;
   return 0;
}