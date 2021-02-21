#include <iostream>
#include <string>

// Simple program from ScaRR paper to test the CFG.
// See section 4
// https://arxiv.org/abs/1807.08003

using namespace std;

string get_input() {
    int rnd = rand() % 2;
    return rnd == 1 ? "auth" : "error";
}

string get_privileged_info() {
    return "you are privileged!";
}

string get_unprivileged_info() {
    return "Invalid!";
}

void print_output(string result) {
    cout << result << endl;
}

void my_terminate() {
    cout << "exiting..." << endl;
}

int main() {
    string access = get_input();
    string result = "";
    if (access == "auth") {
        result = get_privileged_info();
    } else {
        result = get_unprivileged_info();
    }
    print_output(result);
    my_terminate();
}


