clang -emit-llvm simple-dot-c-ext.c -c
clang -emit-llvm simple-dot-c-ext.c -S
rm -rf simple-dot-c-ext
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p simple-dot-c-ext/dot-{}
for dot in $(ls -d simple-dot-c-ext/*/); do
echo "processing $dot"
cd $dot
opt "--${PWD##*/}" ../../simple-dot-c-ext.bc
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done