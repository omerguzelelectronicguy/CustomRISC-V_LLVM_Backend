/*
This function is produced to use custom custom backend for risc-v cpu.
*/
// It return the number of zeros from left to first 1.
// unsigned int cntz_fun(unsigned int rs1){
//     unsigned int res = 0;
//         while(((rs1 >> res) & (unsigned int) 1) == 0)
//             res++;
//         return res;       
// }
int n = 0;
unsigned int cntz_fun(unsigned int rs1, int k){
    if (k<=31)
        return ((rs1) & 1 ) + cntz_fun(rs1>>1 , k+1);
    else
        return 0;
}

/*
def : Pat<  
    (add
        (add
            (add
                (add
                    (add
                        (and(SRLI GPR:$src1, 0),1),
                        (and(SRLI GPR:$src1, 1),1)
                    ),
                    (add
                                            (and(SRLI GPR:$src1, 2),1),
                        (and(SRLI GPR:$src1, 3),1)
                                            )
                ),
                (add
                    (add
                                            (and(SRLI GPR:$src1, 4),1),
                        (and(SRLI GPR:$src1, 5),1)
                                            ),
                    (add
                                            (and(SRLI GPR:$src1, 6),1),
                        (and(SRLI GPR:$src1, 7),1)
                                            )
                )
            ),
            (add
                (add
                    (add
                        (and(SRLI GPR:$src1, 8),1),
                        (and(SRLI GPR:$src1, 9),1)
                    ),
                    (add
                                            (and(SRLI GPR:$src1, 10),1),
                        (and(SRLI GPR:$src1, 11),1)
                                            )
                ),
                (add
                    (add
                                            (and(SRLI GPR:$src1, 12),1),
                        (and(SRLI GPR:$src1, 13),1)
                                            )
                    (add
                                            (and(SRLI GPR:$src1, 14),1),
                        (and(SRLI GPR:$src1, 15),1)
                                            )
                )
            )
        ),
        (add
            (add
                (add
                    (add
                        (and(SRLI GPR:$src1, 16),1),
                        (and(SRLI GPR:$src1, 17),1)
                    ),
                    (add
                                            (and(SRLI GPR:$src1, 18),1),
                        (and(SRLI GPR:$src1, 19),1)
                                            )
                ),
                (add
                    (add
                                            (and(SRLI GPR:$src1, 20),1),
                        (and(SRLI GPR:$src1, 21),1)
                                            ),
                    (add
                                            (and(SRLI GPR:$src1, 22),1),
                        (and(SRLI GPR:$src1, 23),1)
                                            )
                )
            ),
            (add
                (add
                    (add
                        (and(SRLI GPR:$src1, 24),1),
                        (and(SRLI GPR:$src1, 25),1)
                    ),
                    (add
                        (and(SRLI GPR:$src1, 26),1),
                        (and(SRLI GPR:$src1, 27),1)
                    )
                )
                (add
                    (add
                                            (and(SRLI GPR:$src1, 28),1),
                        (and(SRLI GPR:$src1, 29),1)
                                            )
                    (add
                                            (and(SRLI GPR:$src1, 30),1),
                        (and(SRLI GPR:$src1, 31),1)
                                            )
                )
            )
        )
    )
    ,
      (cntp GPR:$src1)>;
//
*/