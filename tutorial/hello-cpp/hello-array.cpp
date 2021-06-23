#include <array>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  cout << "Input some numbers:";
  int num = 0;
  cin >> num;
  cout << "First let's create array for compile time size. We will set it to 4"
       << endl;
  array<int, 4> ar = {
      num, num, num,
      num}; // needed in C++11 after the revision and in C++14 and beyond)
  for (const auto &el : ar) {
    cout << el << endl;
  }

  cout << "First let's create vector for dynamic size array" << endl;
  vector<int> v = vector<int>();
  for (auto i = 0; i < num; i++) {
    v.push_back(i);
  }

  for (auto x : v) {
    cout << x << endl;
  }

  return 0;
}