#include <iostream>

#include <llvm/IR/Function.h>

using namespace std;

enum class Race {
    Dinan,
    Teklan,
    Ivyn,
    Moiran
};

int main() {
    cout << "hi" << endl;
    Race r = Race::Dinan;
    printf("x is %d\n", r);
    return 1;
}