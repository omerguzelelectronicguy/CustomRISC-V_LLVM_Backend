# CustomRISC-V_LLVM_Backend
This is a simple tutorial to show LLVM-Backend Steps.

First Step is to build LLVM infrastructure for target CPU in the host computer.
The source code can be downloaded from here: https://github.com/llvm/llvm-project
Released version for the host cmoputer can be downloaded, if it is available.
If you download the source code, you should build. No need, if you downloaded release.

How to build?

For the backend, clang and llc is needed. Clang is to create IR (Intermediate Representation). LLC will convert the IR to the assembly according to the Target CPU spec and added instructions.(LLVM Backend will effect the LLC.)

install these
	git
	Ninja
	Cmake
(be careful that the version must be mathced)
Assume that you download the source code in a folder 'llvm-project'. or you can clone it by the command below
    clone llvm-project
    
In the llvm-project type these command:
    mkdir build
    cd build
    cmake -DLLVM_TARGETS_TO_BUILD="RISCV" -DCMAKE_BUILD_TYPE="Release" -DLLVM_ENABLE_PROJECTS="clang;lld" -G Ninja ../llvm
The command above (with ninja) will use all the cores. Target should be RISCV, Build type should be release because debug used too much memory. This process will be much much faster than other alternatives.
Finally build with command below.
    cmake --build .
Since the released llvm is available for ubuntu18.04 for 64-bit x86 machine that I used, I directly used the downloaded release for clang.
Then you can start to write an llvm backend code to support several instructions.
