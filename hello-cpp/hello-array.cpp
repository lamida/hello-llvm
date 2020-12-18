#include <array>
#include <iostream>

using namespace std;

int main() {
  cout << "Input some numbers:";
  int num = 0;
  cin >> num;
  array<int, 4> ar = {
      num, num, num,
      num}; // needed in C++11 after the revision and in C++14 and beyond)
  for (const auto &el : ar) {
    cout << el << endl;
  }
  return 0;
}