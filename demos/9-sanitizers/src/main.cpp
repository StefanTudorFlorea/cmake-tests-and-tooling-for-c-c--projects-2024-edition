#include <iostream>

void out_of_bounds() {
    int a[2];
    // a[2] = 0;
}

void user_after_free() {
    int* p = new int{};
    delete p;
    // *p = 42;
}

void leak() {
    int* q = new int[10];
}

void undefined_bool() {
    bool b = 10;
}

int main() {

    // out_of_bounds();
    // user_after_free();
    // leak();
    undefined_bool();

    std::cout << "\ndone\n";
}