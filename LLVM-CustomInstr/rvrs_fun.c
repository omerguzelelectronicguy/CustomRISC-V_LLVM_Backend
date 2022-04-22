/*-----------------------Original Function form https://www.design-reuse.com/articles/46237/extending-risc-v-isa-with-a-custom-instruction-set-extension.html

inline uint32_t byteswap(const uint32_t word){
    #ifdef ISA_BYTE_SWAP
        return __byteswap(word);
    #else
        return  ((word >> 24) & 0x000000ff) |
                ((word << 8) & 0x00ff0000) |
                ((word >> 8) & 0x0000ff00) |
                ((word << 24) & 0xff000000) ;
}
    
*//*
This function is produced to use custom custom backend for risc-v cpu.
*/
// It takes all bytes from rs1. It reverses the order of bytes to write rd	(It doesn't change the order of bits!) 
unsigned int rvrs_fun(unsigned int rs1){ 
    return  ((rs1 >> 24) |
            ( 0xff00 & (rs1 >> 8))) |
            ((0xff0000 & (rs1 << 8)) |
            (rs1 << 24));
}

/*



    lui	a0, 0xabcd117

	srli	a1, a0, 24
	lui	    a2, 0xff0
	and	    a3, a0, a2
	srli	a3, a3, 8
	or	    a1, a1, a3
	slli	a3, a0, 8
	and	    a2, a2, a3
	or	    a1, a1, a2
	slli	a0, a0, 24
	or	    a0, a0, a1    
*/