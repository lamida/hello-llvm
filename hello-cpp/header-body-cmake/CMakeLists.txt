add_library(header-body header-body.cpp)
add_executable(main header-body-main.cpp)
target_link_libraries(main header-body)