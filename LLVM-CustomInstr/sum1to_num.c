/*
This function is produced to use custom custom backend for risc-v cpu.
*/
int loop(int n)
{
    int ret = 0;
    for (int i = 0; i < n; i++)
    {
        ret += i;
    }
    return ret;
}