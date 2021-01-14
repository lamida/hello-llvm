This repo will show the process of exploring [LLVM](https://llvm.org/).

Quoting from its homepage. LLVM is the following.
> The LLVM Project is a collection of modular and reusable compiler and toolchain technologies. Despite its name, LLVM has little to do with traditional virtual machines. The name "LLVM" itself is not an acronym; it is the full name of the project.

Each folder in this repo is the exploration of LLVM.

--dot-callgraph         - Print call graph to 'dot' file
--dot-cfg               - Print CFG of function to 'dot' file
--dot-cfg-only          - Print CFG of function to 'dot' file (with no function bodies)
--dot-dom               - Print dominance tree of function to 'dot' file
--dot-dom-only          - Print dominance tree of function to 'dot' file (with no function bodies)
--dot-postdom           - Print postdominance tree of function to 'dot' file
--dot-postdom-only      - Print postdominance tree of function to 'dot' file (with no function bodies)
--dot-regions           - Print regions of function to 'dot' file
--dot-regions-only      - Print regions of function to 'dot' file (with no function bodies)
--dot-scops             - Polly - Print Scops of function
--dot-scops-only        - Polly - Print Scops of function (with no function bodies)
