clang -emit-llvm llvm-dot.c -c
rm -rf dot
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p dot/dot-{}
for dot in $(ls -d dot/*/); do
cd $dot
opt "--${PWD##*/}" ../../llvm-dot.bc
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done