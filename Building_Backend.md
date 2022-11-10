# How to write Backend

To write a backend I generally used the [slide](https://speakerdeck.com/asb/llvm-backend-development-by-example-risc-v) by Alex Bradbury.
I asked any question to the [LLVM website in the Beginners part](https://discourse.llvm.org/c/beginners/17).
I used the file `RISCVInstrInfo.td`to define both instruction and pattern. The directory of this file is `/llvm-project/llvm/lib/Target/RISCV`. I also used the file `RISCVISelLowering.cpp` to use intrinsic function in the selection pattern. I add my codes at the end of files generally. If it is not the case as happen in `RISCVISelLowering.cpp`, I add a comment at the end of line that `I add this line`. So you can serach and find it(only several lines inside of it.).
I used some the instructions for custom backend from [this page](https://raw.githubusercontent.com/riscv/riscv-bitmanip/master/bitmanip-draft.pdf).
The added instructions are in the end of the [RISCVInstrInfo.td](https://github.com/omerguzelelectronicguy/CustomRISC-V_LLVM_Backend/blob/main/RISCVInstrInfo.td)

# How to build Backend
After writing backend, you should build it to use to compile a c code. 
I create a folder named `RISCV_Backend` in the `llvm-project` folder. Then I enter the command below in the `RISCV_Backend` folder.
```
    cmake -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=RISCV -G Ninja ../llvm
    ninja llc
```
After built once, no need to build all the files. Only `ninja llc` is enough to build the changed files. (This saves your time.)

# How to compile a code using backend
After built the llc that you write a backend for custom instructions, you can write a c code to try the backend whether it is working or not.
I compiled my c codes by using these two codes.
First code produce ll file second code produced the assembly file.

```
/home/llvm/Downloads/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04/bin/clang-14 -target riscv32-linux-gnu -S -emit-llvm -g -Os arr_sum.c
/home/llvm/llvm-project/RISCV_Backend/bin/llc -mtriple=riscv32 -view-isel-dags arr_sum.ll
```
`-Os ` is to run llvm optimizer. It will add instrinsic functions to the IR. It is useful because you can use that functions in your backend to define you pattern in an easier way.
`-target riscv32-linux-gnu` is to tell the target to the clang because it produced different IR for different targets. Thank's for Mr. Northover for their great [help](https://discourse.llvm.org/t/llvm-backend-code-compilation/61646/2).
`-view-isel-dags` shows the graph representation of your C code. It is useful to see the result of optimization on the DAG. the instruction pattern that you wrote for Backend should match the graph.
The other graph visualization flags are below:

-view-dag-combine1-dags displays the DAG after being built, before the first optimization pass.

-view-legalize-dags displays the DAG before Legalization.

-view-dag-combine2-dags displays the DAG before the second optimization pass.

-view-isel-dags displays the DAG before the Select phase.

-view-sched-dags displays the DAG before Scheduling.

# Possible problems
When we tried a lot of way and compiler framework to write backend, it is possible to conflict the projects that we tried previously. It is simple but be sure that you are running the `clang` and `llc` from right directory that you build backend. For example, If you just call `clang test.c` or `llc` test.ll you may face this problem. or you should check by typing `whereis clang` and `whereis llc` to see the directory of them.
