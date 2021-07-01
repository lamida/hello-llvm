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

# Comment attributes line because it prevent the pass to proces the IR
sed -i 's/^attributes/;&/g' $out_title.ll

mkdir -p $out_title/dot-scarr
cd $out_title/dot-scarr
/home/lamida/github/llvm/llvm-project/llvm/cmake-build-release/bin/opt ../../$out_title.ll -passes=scarr-cp-marker,dot-cfg
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..


mkdir -p $out_title/dot-scarr-inline
cd $out_title/dot-scarr-inline
/home/lamida/github/llvm/llvm-project/llvm/cmake-build-release/bin/opt ../../$out_title.ll -passes=inliner-wrapper,scarr-cp-marker,dot-cfg
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..
