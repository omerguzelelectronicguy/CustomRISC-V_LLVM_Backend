/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// It return the number of ones in rs1.

unsigned int countones(unsigned int rs1){

    unsigned int res = 0;
    for (int i=0; i<32; i++){
        res = res + ((rs1 >>i) & 1);
    }
    /*unsigned int res = 
    (((((rs1 & 1) + ((rs1 >>1) & 1)) + 
    (((rs1 >>2) & 1) + ((rs1 >>3) & 1))) + 

    ((((rs1 >>4) & 1) + ((rs1 >>5) & 1)) + 
    (((rs1 >>6) & 1) + ((rs1 >>7) & 1)))) + 

    (((((rs1 >>8) & 1) + ((rs1 >>9) & 1)) + 
    (((rs1 >>10) & 1) + ((rs1 >>11) & 1))) + 

    ((((rs1 >>12) & 1) + ((rs1 >>13) & 1)) + 
    (((rs1 >>14) & 1) + ((rs1 >>15) & 1))))) + 

    ((((((rs1 >>16) & 1) + ((rs1 >>17) & 1)) + 
    (((rs1 >>18) & 1) + ((rs1 >>19) & 1))) + 

    ((((rs1 >>20) & 1) + ((rs1 >>21) & 1)) + 
    (((rs1 >>22) & 1) + ((rs1 >>23) & 1)))) + 

    (((((rs1 >>24) & 1) + ((rs1 >>25) & 1)) + 
    (((rs1 >>26) & 1) + ((rs1 >>27) & 1))) + 
    
    ((((rs1 >>28) & 1) + ((rs1 >>29) & 1)) + 
    (((rs1 >>30) & 1) + ((rs1 >>31) & 1))))) ; */
    
    return res;
    
}
