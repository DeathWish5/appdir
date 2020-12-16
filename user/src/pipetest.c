#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

char STR[] = "hello pipe!";

int main() {
    // create pipe
    int pipe_fd[2];
    pipe(&mut pipe_fd);
    // read end
    assert(pipe_fd[0] = 3, -1);
    // write end
    assert(pipe_fd[1] = 4, -1);
    if (fork() == 0) {
        // child process, read from parent
        // close write_end
        close(pipe_fd[1]);
        char buffer[32];
        int len_read = read(pipe_fd[0], buffer);
        assert(strncmp(buffer, STR, strlen(STR)) == 0, -3);
        puts("Read OK, child process exited!");
        return 0;
    } else {
        // parent process, write to child
        // close read end
        close(pipe_fd[0]);
        assert(write(pipe_fd[1], STR) == strlen(STR));
        // close write end
        close(pipe_fd[1]);
        int exit_code = 0;
        wait(&exit_code);
        assert(child_exit_code == 0, -2);
        puts("pipetest passed!");
    }
    return 0;
}

