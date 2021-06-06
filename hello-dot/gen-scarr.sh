if [ -z "$1" ]
  then
    echo "title is required"
    exit 1
fi

title=$1

clang -emit-llvm $title.c -S
# Comment attributes line because it prevent the pass to proces the IR
sed -i 's/^attributes/;&/g' $title.ll

mkdir -p $title/dot-scarr
cd $title/dot-scarr
/home/lamida/github/llvm/llvm-project/llvm/cmake-build-release/bin/opt ../../$title.ll -passes=inliner-wrapper,mycfg,dot-cfg
ls *.dot | xargs -I{} dot -Tpng {} -o {}.png
# generate png for hidden files too
ls .*.dot | xargs -I{} dot -Tpng {} -o {}.png
cd ../..