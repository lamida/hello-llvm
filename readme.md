This repo will show the process of exploring [LLVM](https://llvm.org/).

Quoting from its homepage. LLVM is the following.
> The LLVM Project is a collection of modular and reusable compiler and toolchain technologies. Despite its name, LLVM has little to do with traditional virtual machines. The name "LLVM" itself is not an acronym; it is the full name of the project.

Each folder in this repo is the exploration of LLVM.

# How to build LLVM Faster

Try to use this

```
 cmake -G Ninja -DCMAKE_BUILD_TYPE=release -DLLVM_USE_LINKER=gold  -DLLVM_TARGETS_TO_BUILD="X86" -DLLVM_ENABLE_PROJECTS=llvm ../llvm
```

# How to run LLVM Pass

## New Pass

```
opt -disable-output x.ll -passes=mycfg
```

## Legacy Pass

```
opt --<pass-name> x.ll
```