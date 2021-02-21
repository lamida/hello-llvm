#include <stdio.h>
#include <stdlib.h>

// Simple program from ScaRR paper to test the CFG.
// See section 4
// https://arxiv.org/abs/1807.08003

char* get_input() {
    int rnd = rand() % 2;
    return rnd == 1 ? "auth" : "error";
}

char* get_privileged_info() {
    return "you are privileged!";
}

char* get_unprivileged_info() {
    return "Invalid!";
}

void print_output(char* result) {
    printf("%s", result);
}

void my_terminate() {
    printf("Exiting...");
}

int main() {
    char* access = get_input();
    char* result = "";
    if (access == "auth") {
        result = get_privileged_info();
    } else {
        result = get_unprivileged_info();
    }
    print_output(result);
    my_terminate();
}


