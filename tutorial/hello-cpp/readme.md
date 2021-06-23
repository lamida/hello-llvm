# C++ (and C) Exploration

This folder contains my re-exploration on C and C++. I studied C in university but I have never built something serious.

# References

* https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines
* https://en.cppreference.com/w/
* https://www.cplusplus.com/doc/tutorial/
* [Lecture: Modern C++ (Summer 2018, Uni Bonn)](https://www.youtube.com/playlist?list=PLgnQpQtFTOGR50iIOtO36nK6aNPtVq98C)
* [Why does C++ need a separate header file?](https://stackoverflow.com/questions/1305947/why-does-c-need-a-separate-header-file)
* https://google.github.io/styleguide/

# CPP-02 Modern C++

* Compilation flags and debugging
* Functions
* Header / Source Separation
* Libraries
* CMake Intro

## Compilation flags and debugging

* -std=c++1 - standard c++ to use
* -o - output file
* -Wall, -Wextra, -Eerror - show compilation warning level
* -O0 - no optimizations
* -O3 or -Ofast - full optimization
* -g - keep debugging symbols

See https://godbolt.org/ to explore how c++ code translated into assembly.

For debugging use gdbui.

```
sudo pip3 install --upgrade gdbgui
```

## Functions

* We can declare function first without body. Function declaration usually goes to header file
* We can use reference for function argument, but try to use const reference
* We can use default argument, but only in the funtion declaration

##  Header / Source separation

* Move all declarations to header file
* Implementation goes to *.cpp or *.cc