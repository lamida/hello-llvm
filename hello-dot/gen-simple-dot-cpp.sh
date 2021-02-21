clang++ -emit-llvm simple-dot-cpp.cpp -c
rm -rf simple-dot-cpp
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p simple-dot-cpp/dot-{}
for dot in $(ls -d simple-dot-cpp/*/); do
echo "processing $dot"
cd $dot
opt "--${PWD##*/}" ../../simple-dot-cpp.bc
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done