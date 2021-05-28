if [ -z "$1" ]
  then
    echo "title is required"
    exit 1
fi

title=$1
# clang -emit-llvm $title.c -c
clang -emit-llvm $title.c -S
rm -rf $title
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p $title/dot-{}
for dot in $(ls -d $title/*/); do
echo "processing $dot"
cd $dot
opt "--${PWD##*/}" ../../$title.ll
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done