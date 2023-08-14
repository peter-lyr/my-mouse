#include <stdlib.h>
#include <windows.h>

int main(void) {

    if (SwapMouseButton(1)) {
        SwapMouseButton(0);
    }

    return EXIT_SUCCESS;
}
