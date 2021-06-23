#include <iostream>
#include <iostream>

using namespace std;

void swap(int &a, int &b) {
  int tmp {a};
  a = b;
  b = tmp;
}

void swap(string &a, string &b) {
  string tmp {a};
  a = b;
  b = tmp;
}

int main() {
  int a = 10;
  int b = 100;
  swap(a, b);
  printf("%d, %d\n", a, b);

  string x = "jon";
  string y = "kartago";
  swap(x, y);
  cout << "x " << x << " y " << y << endl;
}
