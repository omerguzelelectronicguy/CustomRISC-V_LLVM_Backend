/*
This function is produced to use custom custom backend for risc-v cpu.
*/
int arr_sum(int *arr, int size)
{
    int res = 0;
    for (int i = 0; i < size; i++)
    {
        res += arr[i];
    }
    return res;
}
/*
    a0 is return value
    a1 is adress
    a2 is the size
    a3 is temporary

    sla     a2, a2, 2
    add     a2, a2, a1

    lw      a3, 0(a1)
    add     a0, a3
    addi    a1, 4
    ble     a1, a2



*/
/*
li	a2, 0
.Ltmp0:
	.loc	0 7 5 prologue_end              # arr_sum.c:7:5
	blez	a1, .LBB0_2
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: loop:ret <- $x12
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] undef
	.loc	0 9 16                          # arr_sum.c:9:16
	lw	    a3, 0(a0)
	.loc	0 9 13 is_stmt 0                # arr_sum.c:9:13
	add	    a2, a2, a3
.Ltmp2:
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef
	#DEBUG_VALUE: loop:ret <- $x12
	.loc	0 7 23 is_stmt 1                # arr_sum.c:7:23
	addi	a1, a1, -1
	addi	a0, a0, 4
.Ltmp3:
	.loc	0 7 5 is_stmt 0                 # arr_sum.c:7:5
	bnez	a1, .LBB0_1
.Ltmp4:
.LBB0_2:
	.loc	0 11 5 is_stmt 1                # arr_sum.c:11:5
	mv	    a0, a2
	ret
*/