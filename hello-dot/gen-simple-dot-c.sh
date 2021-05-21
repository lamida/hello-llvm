clang -S -emit-llvm simple-dot-c.c 
rm -rf simple-dot-c
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p simple-dot-c/dot-{}
for dot in $(ls -d simple-dot-c/*/); do
echo "processing $dot"
cd $dot
opt "--${PWD##*/}" ../../simple-dot-c.bc
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done