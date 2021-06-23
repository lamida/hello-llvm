#include <iostream>
#include <array>

int main() {
    std::array<int, 10> local_array{1, 3, 5};
    for (const auto x : local_array) {
        printf("%d\n", x);
    }
    printf("Max size is %d\n", local_array.max_size());
}