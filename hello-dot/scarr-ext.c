#include "include/helper.h"

// Simple program from ScaRR paper to test the CFG.
// See section 4
// https://arxiv.org/abs/1807.08003

int main() {
    char* access = get_input();
    char* result = "";
    if (strcmp(access, "auth") == 0) {
        result = get_privileged_info();
    } else {
        result = get_unprivileged_info();
    }
    print_output(result);
    my_terminate();
}


