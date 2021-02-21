# LLVM opt dot* analyser

In this folder we are generating different analyser viewer provided by LLVM. See gen-dot.sh to see how the graph is generated. We are using llvm-dot.c as the source file.

Set the dot folder for all dot files and png images of the generated graph.

* --dot-callgraph         - Print call graph to 'dot' file
* --dot-cfg               - Print CFG of function to 'dot' file
* --dot-cfg-only          - Print CFG of function to 'dot' file (with no function bodies)
* --dot-dom               - Print dominance tree of function to 'dot' file
* --dot-dom-only          - Print dominance tree of function to 'dot' file (with no function bodies)
* --dot-postdom           - Print postdominance tree of function to 'dot' file
* --dot-postdom-only      - Print postdominance tree of function to 'dot' file (with no function bodies)
* --dot-regions           - Print regions of function to 'dot' file
* --dot-regions-only      - Print regions of function to 'dot' file (with no function bodies)
* --dot-scops             - Polly - Print Scops of function
* --dot-scops-only        - Polly - Print Scops of function (with no function bodies)

Need graphviz. Install using:
```
sudo apt-get install graphviz
```