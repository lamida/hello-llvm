void foo(int u, int v, int b) {
    int a = u + v;
    int y = 0;
    if (a > b) {
        y = u;
    } else {
        a = u - v;
        b = a - 1;
    }
    y = a * b;
}