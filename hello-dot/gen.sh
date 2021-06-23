if [ -z "$1" ]
  then
    echo "title is required"
    exit 1
fi

title=$1
if [ -n "$2" ] && [  "$2" = "no-opt" ]
  then
    echo "Running with no-opt"
    out_title=$1-no-opt
    clang -emit-llvm $title.c -S -Xclang -disable-O0-optnone -fno-discard-value-names -o $out_title.ll
  else
    out_title=$1
    clang -emit-llvm $title.c -S -o $out_title.ll
fi

rm -rf $out_title
DOTS="callgraph\ncfg\ncfg-only\ndom\ndom-only\npostdom\npostdom-only\nregions\nregions-only\nscops\nscops-only" 
echo $DOTS| xargs -I{} mkdir -p $out_title/dot-{}
for dot in $(ls -d $out_title/*/); do
echo "processing $dot"
cd $dot
echo /home/lamida/github/llvm/llvm-project/llvm/cmake-build-release/bin/opt "--${PWD##*/}" ../../$out_title.ll
/home/lamida/github/llvm/llvm-project/llvm/cmake-build-release/bin/opt "--${PWD##*/}" ../../$out_title.ll
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
done

./gen-scarr.sh $title $2
