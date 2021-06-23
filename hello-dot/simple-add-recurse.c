int addRecurse(int a, int b) {
    if (a == 0) return b;
    return addRecurse(a - 1, b + 1);
}
