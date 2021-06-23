#include <iostream>
#include <string>

using namespace std;

template<class T>
class Box {
    private:
        T data;
    public:
        Box(T data) {
            this.data = data;
        }

        T getData() {
            return this.data;
        }
};

// Something doesn't work in these lines
int main() {
    Box<string> b("xxx");
    cout << "I have a box " << b.getData() << endl;
    Box<int> b2(123);
    cout << "I have another box " << b2.getData() << endl; 

}