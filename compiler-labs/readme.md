# Note from Compiler Labs
https://www.youtube.com/playlist?list=PLDSTpI7ZVmVnvqtebWnnI8YeB8bJoGOyv

## Compile to Assembly
```
clang -S file.c -o file.ll
```

## Compile to IR
```
clang -S -emit-llvm -o file.ll
```

## Extract to dot
```
opt file.ll -disable-output -passes=dot-cfg
```

## llc
show all backends

```
llc --version
```

compile to x86
```
llc file.ll -march=x86 -o file.x86
```

compile to arm
```
llc file.ll -march=arm -o file.arm
```