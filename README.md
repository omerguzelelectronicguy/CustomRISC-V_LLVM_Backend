# CustomRISC-V_LLVM_Backend
I am a beginner for LLVM Backend. I explained the steps and progress in a beginner side of view. In this work, there might be mistakes or unnecessary parts that are not serve the actual porpuse. I'm always happy with any warning or changes about mistakes.
This work includes the compiler of RISCV CPU, Vector Support for RISCV CPU, and LLVM Backend for RISCV for custom instructions. I tried to explain them in different files in the main directory. I still left a general LLVM build for the main page below.
This is the [video list](https://youtube.com/playlist?list=PLmYxcbArBw8KSbRKC6H-R9508Cegj8Y4S) (in Turkish I will share English later) that you find the explaination for the proceses.

## How to build?

First Step is to build LLVM infrastructure for target CPU in the host computer.
The source code can be downloaded from here: https://github.com/llvm/llvm-project
or released version for the host cmoputer can be downloaded, if it is available.
If you download the source code, you should build. No need, if you downloaded release.


For the backend, clang and llc is needed. Clang is to create IR (Intermediate Representation). LLC will convert the IR to the assembly according to the Target CPU spec and added instructions.(LLVM Backend will effect the LLC.)

install these
```
	git
	Ninja
	Cmake
```
(be careful that the version must be mathced)
Assume that you download the source code in a folder 'llvm-project'. or you can clone it by the command below

`
git clone https://github.com/llvm/llvm-project.git
`    

In the llvm-project type these command:

```
    mkdir build
    cd build
    sudo apt-get install build-essential
    cmake -DLLVM_TARGETS_TO_BUILD="RISCV" -DCMAKE_BUILD_TYPE="Release" -DLLVM_ENABLE_PROJECTS="clang;lld" -G Ninja ../llvm
```

The command above (with ninja) will use all the cores. Target should be RISCV, Build type should be release because debug used too much memory. This process will be much much faster than other alternatives.
Finally build with command below.

`    cmake --build .`

Since the released llvm is available for ubuntu18.04 for 64-bit x86 machine that I used, I directly used the downloaded release for clang.
Then you can start to write an llvm backend code to support several instructions.
