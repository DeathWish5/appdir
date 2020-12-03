#include "defs.h"

void consputc(int c) {
    uartputc_sync(c);
}

void consoleinit(void) {
    uartinit();
}
