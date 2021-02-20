#include <iostream>
#include <string>

using namespace std;

// Function Template Declaration
template <typename T>
void swap(T &a, T &b);

/*
Function template is not an actual function. 
It's recipe for generating functions.

C++ compilers automatically generate function definitions from templates
as needed. This process is called template instantiation.

The function generated is call instantiated function, or just
instantation.
*/

// Function Template Definition
template <typename T> // this is template parameter list... // T's scope begin here
void my_swap(T &a, T &b) { // this is function parameter list
// See above....
// The type parameter T is a placeholder for a type argument. 
// The argument substitution happens at compile time.
// Function parameter a and b are placeholders for argument expressions.
// Depending on the context, either the compiler will pass the arguments
// at compile time or at run time
  T tmp {a};
  a = b;
  b = tmp;
} // T's scope ends here


int main() {
  int a = 10;
  int b = 100;
  my_swap(a, b);
  printf("%d, %d\n", a, b);

  string x = "jon";
  string y = "kartago";
  my_swap(x, y);
  cout << "x " << x << " y " << y << endl;
}
