#include <iostream>
#include <string>

using namespace std;

int main() {
    string hello = "Hello";
    cout << "Type your name:" << endl;
    string name = "";
    cin >> name;
    cout << hello << ", " << name << "!"  << endl;
    return 0;
}