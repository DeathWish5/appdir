#include <stdio.h>

unsigned long long hash(unsigned long long n) {
    n = 6364136223846793005ULL * n + 1;
    return n >> 33;
}

int main() {
    printf("hash = %lld", hash(hash(hash(hash(hash(233333ULL))))));
    return 0;
}