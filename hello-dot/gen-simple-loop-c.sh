clang -emit-llvm simple-loop-c.c -c
clang -emit-llvm simple-loop-c.c -S
rm -rf simple-loop-c
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p simple-loop-c/dot-{}
for dot in $(ls -d simple-loop-c/*/); do
echo "processing $dot"
cd $dot
opt "--${PWD##*/}" ../../simple-loop-c.bc
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done