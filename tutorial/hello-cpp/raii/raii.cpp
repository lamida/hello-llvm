#include <iostream>
#include <memory>
#include <string>

using namespace std;

struct Resource {
    Resource(string n) {
        name = n;
        cout << "Resource object is created: " << name << endl;
    }
    ~Resource() {
        std::cout << "Resource object is destroyed: " << name << endl;
    }
    string name;
};


int main() {
    Resource *r1 = new Resource("R1");
    delete r1;

    {
        unique_ptr<Resource> r2a(new Resource("R2a"));
        unique_ptr<Resource> r2b(new Resource("R2b"));
    }
    unique_ptr<Resource> r3(new Resource("R3"));
    unique_ptr<Resource> r4(new Resource("R4"));
    return 0;
}