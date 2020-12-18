#include "llvm/Pass.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
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
    llvm::errs() << "Visiting function " << F.getName() << "\n";

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
    return false; // We did not alter the IR
}

// Register the pass with llvm, so that we can call it with dummypass
char DummyPass::ID = 0;
static llvm::RegisterPass<DummyPass> X("dummypass", "Example LLVM pass printing each function it visits");