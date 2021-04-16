clang -emit-llvm simple-add-recurse.c -c
clang -emit-llvm simple-add-recurse.c -S
rm -rf simple-add-recurse
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p simple-add-recurse/dot-{}
for dot in $(ls -d simple-add-recurse/*/); do
echo "processing $dot"
cd $dot
opt "--${PWD##*/}" ../../simple-add-recurse.bc
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done