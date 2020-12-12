#include <stdio.h>
#include <string.h>
#include <unistd.h>

int puts(const char* s)
{
    return write(stdout, s, strlen(s));
}