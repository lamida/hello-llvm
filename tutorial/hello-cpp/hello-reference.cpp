#include <iostream>
#include <string>

using namespace std;

void someFun(string& ref) {
    ref.push_back('x');
}
int main() {
    string name = "jon";
    someFun(name);
    cout << "after reference " << name << endl;
}