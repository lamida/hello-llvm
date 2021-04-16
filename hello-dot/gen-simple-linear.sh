clang -emit-llvm simple-linear.c -c
clang -emit-llvm simple-linear.c -S
rm -rf simple-linear
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only"
echo $DOTS| xargs -I{} mkdir -p simple-linear/dot-{}
for dot in $(ls -d simple-linear/*/); do
echo "processing $dot"
cd $dot
opt "--${PWD##*/}" ../../simple-linear.bc
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done