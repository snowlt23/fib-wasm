
#include <stdint.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int64_t fibonacci(int64_t n) {
    if (n <= 1) {
        return 1;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int main(int argc, char** argv) {
    clock_t start = clock();
    printf("fibonacci(46) = %" PRId64 "\n", fibonacci(46));
    clock_t end = clock();
    printf("elapsed: %.2f\n", (double)(end-start) / CLOCKS_PER_SEC);
    return 0;
}
