# LLVM Pass Tutorial

https://osterlund.xyz/posts/2017-11-28-LLVM-pass.html

Let's write DummyPass.cpp and compile.
```
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_os_ostream.h"

namespace {
    struct DummyPass : public llvm::FunctionPass {
        public:
            static char ID;
            DummyPass() : FunctionPass(ID) {}
            virtual bool runOnFunction(llvm::Function &F) override;
    };
}

bool DummyPass::runOnFunction(llvm::Function &F) {
    return false; // We did not alter the IR
}

// Register the pass with llvm, so that we can call it with dummypass
char DummyPass::ID = 0;
static llvm::RegisterPass<DummyPass> X("dummypass", "Example LLVM pass printing each function it visits");
```

```
clang -g3 -shared -o libdummypass.so -fPIC DummyPass.cpp
```

Then let's write simple hello.c.
```
void a() {
    int c = 6;
}

int main() {
    int di = 2;
    a();
    return 6;
}
```

and compile it to bitcode.
```
clang -O3 -emit-llvm hello.c -c -o hello.bc
```

Or we can also simply emit IR.
```
clang -S -emit-llvm hello.c
```

Now let's run the pass.
```
opt -load libdummypass.so -dummypass hello.ll
```

You might get this error.
```
Error opening 'libdummypass.so': libdummypass.so: cannot open shared object file: No such file or directory
  -load request ignored.
opt: Unknown command line argument '-dummypass'.  Try: 'opt --help'
opt: Did you mean '--debug-pass'?
```

Which can be solved by setting LD_LIBRARY_PATH from the directory where libdummypass.so is.
```
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
```

On the second run, the pass should output something, which is actually nothing.
```
WARNING: You're attempting to print out a bitcode file.
This is inadvisable as it may cause display problems. If
you REALLY want to taste LLVM bitcode first-hand, you
can force output with the `-f' option.
```

Let's add the following line on the top of runOnFunction and compile it again.
```
llvm::errs() << "Visiting function " << F.getName();
```

Then recompile again the pass.
```
clang -g3 -shared -o libdummypass.so -fPIC DummyPass.cpp
```

Run the pass again.
```
opt -load libdummypass.so -dummypass hello.ll
```

We will get this output.
```
WARNING: You're attempting to print out a bitcode file.
This is inadvisable as it may cause display problems. If
you REALLY want to taste LLVM bitcode first-hand, you
can force output with the `-f' option.

Visiting function aVisiting function main% 
```

Let's do more by printing BasicBlock, Instruction and debug info. Update the headers declaration to the following.
```
#include "llvm/Pass.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_os_ostream.h"
```

And add this block to the runOnFunction.
```
    for (llvm::BasicBlock &BB : F) {
        for (llvm::Instruction &II : BB) {
            llvm::Instruction *I = &II;
            if (llvm::CallInst *CI = llvm::dyn_cast<llvm::CallInst>(I)) {
                if (llvm::DILocation *Loc = I->getDebugLoc()) {
                    unsigned Line = Loc->getLine();
                    llvm::StringRef File = Loc->getFilename();
                    llvm::StringRef Dir = Loc->getDirectory();
                    llvm::errs() << Dir << "/" << File << ":" << Line << "\n";
                }
            }
        }

    }
```

Then recompile again the pass.
```
clang -g3 -shared -o libdummypass.so -fPIC DummyPass.cpp
```

Run the pass again.
```
opt -load libdummypass.so -dummypass hello.ll
```