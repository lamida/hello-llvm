# Hello LLVM
We will playing around with LLVM here.

# Requirements

LLVM is mainly built and run in Unix, although there is some [support for Windows](https://llvm.org/docs/GettingStartedVS.html). Hence, we need a Linux system to do the development and running LLVM tool chain. In this example I will be using Ubuntu 20.04 that is running on WSL. The part that the Ubuntu runs on WSL shouldn't be matter too much.

# Installation

To explore the source code, we can just clone the repo.

```
git glone https://github.com/llvm/llvm-project.git
```

We can try to build it, however, let's just start to install the tool chain directly from the package manager.

```
sudo apt install llvm llvm-runtime cmake ninja-build clang
```

llvm and llvm-runtime is toolchains. cmake and ninja-build are building tools that we can use to do llvm development. clang is one of the C, C++, Objective C and Objective C++ front-end
 for the LLVM compiler with the goal to offer replacement to the GCC.

 Let see what tools are installed.

 ```
 dpkg -L llvm llvm-runtime | grep 'bin/'
 /usr/bin/bugpoint
/usr/bin/dsymutil
/usr/bin/llc
/usr/bin/llvm-PerfectShuffle
/usr/bin/llvm-ar
/usr/bin/llvm-as
/usr/bin/llvm-bcanalyzer
/usr/bin/llvm-c-test
/usr/bin/llvm-cat
/usr/bin/llvm-cfi-verify
/usr/bin/llvm-config
/usr/bin/llvm-cov
/usr/bin/llvm-cvtres
/usr/bin/llvm-cxxdump
/usr/bin/llvm-cxxfilt
/usr/bin/llvm-diff
/usr/bin/llvm-dis
/usr/bin/llvm-dlltool
/usr/bin/llvm-dwarfdump
/usr/bin/llvm-dwp
/usr/bin/llvm-exegesis
/usr/bin/llvm-extract
/usr/bin/llvm-lib
/usr/bin/llvm-link
/usr/bin/llvm-lto
/usr/bin/llvm-lto2
/usr/bin/llvm-mc
/usr/bin/llvm-mca
/usr/bin/llvm-modextract
/usr/bin/llvm-mt
/usr/bin/llvm-nm
/usr/bin/llvm-objcopy
/usr/bin/llvm-objdump
/usr/bin/llvm-opt-report
/usr/bin/llvm-pdbutil
/usr/bin/llvm-profdata
/usr/bin/llvm-ranlib
/usr/bin/llvm-rc
/usr/bin/llvm-readelf
/usr/bin/llvm-readobj
/usr/bin/llvm-rtdyld
/usr/bin/llvm-size
/usr/bin/llvm-split
/usr/bin/llvm-stress
/usr/bin/llvm-strings
/usr/bin/llvm-strip
/usr/bin/llvm-symbolizer
/usr/bin/llvm-tblgen
/usr/bin/llvm-undname
/usr/bin/llvm-xray
/usr/bin/obj2yaml
/usr/bin/opt
/usr/bin/sanstats
/usr/bin/verify-uselistorder
/usr/bin/yaml2obj
/usr/bin/lli
 ```

We can use `man` to see the documentation of the tools, or we also can see from the [LLMV Command Guide page](https://llvm.org/docs/CommandGuide/index.html).

Next let's see what binaries are provided by clang package.

```
dpkg -L clang | grep 'bin/'
/usr/bin/asan_symbolize
/usr/bin/clang
/usr/bin/clang++
```

clang is the frontend compiler for c and clang++ is for c++.

# Compile simple C and C++

Let's write these two codes. hello.c and hello.cpp.

hello.c
```
#include <stdio.h>

int main() {
    printf("Hello world clang\n");
    return 0;
}
```

hello.cpp
```
#include <iostream>

using namespace std;

int main() {
    cout << "Hello world clang++" << endl;
}
```

Then let's compile each of them.
```
clang hello.c -o hello_clang
clang++ hello.cpp -o hello_clang++
./hello_clang
# output
Hello world clang
./hello_clang++
# output
Hello world clang++
```

Now let's compile the c file into LLVM bitcode.
```
clang -O3 -emit-llvm hello.c -c -o hello_clang.bc
```

We will see a .bc binary file will be generated with a gibberish content.

```
cat hello_clang.bc
q 2"e
    0+`YfMO
       LXX$$+]
              pstrmainputs10.0.0x86_64-pc-linux-gnuhello.c.Lstr
```

Let's use LLVM JIT, lli to run the program.

```
lli hello_clang.bc
Hello world clang
```

Let's see the LLVM assembly code.
```
llvm-dis < hello_clang.bc
; ModuleID = '<stdin>'
source_filename = "hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@str = private unnamed_addr constant [18 x i8] c"Hello world clang\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
```

Similar output also can be seen directly using clang command.
```
clang hello.c -S -emit-llvm -o -
; ModuleID = 'hello.c'
source_filename = "hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Hello world clang\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
```

And same like above but with optimization (notice the `-O3` argument).
```
clang hello.c -S -emit-llvm -o - -O3
; ModuleID = 'hello.c'
source_filename = "hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@str = private unnamed_addr constant [18 x i8] c"Hello world clang\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
```

Now let's compile the program to native assembly using LLC code generator.

```
llc hello_clang.bc -o hello_clang.s
```

Let see how the native assembly looks like.
```
cat hello_clang.s
        .text
        .file   "hello.c"
        .globl  main                    # -- Begin function main
        .p2align        4, 0x90
        .type   main,@function
main:                                   # @main
        .cfi_startproc
# %bb.0:
        pushq   %rax
        .cfi_def_cfa_offset 16
        movl    $.Lstr, %edi
        callq   puts
        xorl    %eax, %eax
        popq    %rcx
        .cfi_def_cfa_offset 8
        retq
.Lfunc_end0:
        .size   main, .Lfunc_end0-main
        .cfi_endproc
                                        # -- End function
        .type   .Lstr,@object           # @str
        .section        .rodata.str1.1,"aMS",@progbits,1
.Lstr:
        .asciz  "Hello world clang"
        .size   .Lstr, 18

        .ident  "clang version 10.0.0-4ubuntu1 "
        .section        ".note.GNU-stack","",@progbits
```

Now assemble the native assembly language file into a program.
```
gcc hello_clang.s -o hello_clang.native
```

Unfortunately, I get this error.
```
/usr/bin/ld: /tmp/ccvLgaux.o: relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
collect2: error: ld returned 1 exit status
```

# How to Build LLVM Faster

> From https://www.inf.ed.ac.uk/teaching/courses/ct/19-20/slides/ug3ct-llvm-day1.pdf

* Specify a specific build target
* build only specific project

```
$ cd llvm-project ; mkdir build ; cd build
$ cmake ../llvm -DLLVM_TARGETS_TO_BUILD=X86 -DLLVM_ENABLE_PROJECTS=clang
$ cmake --build .
```

# Resources

The main resources that should be referered is the [LLVM docs page](https://llvm.org/docs/).

The University of Edinburgh offerred Compiling Techniques course with a quite detailed [handson materials](https://www.inf.ed.ac.uk/teaching/courses/ct/19-20/) in exploring LLVM.

These 2 youtube videos are also giving a good general quick introduction on LLVM.

A Brief Introduction to LLVM

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/a5-WaD8VV38/0.jpg)](https://www.youtube.com/watch?v=a5-WaD8VV38)

Make your own LLVM compiler

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/OhkwPSvyBu0/0.jpg)](https://www.youtube.com/watch?v=OhkwPSvyBu0)

