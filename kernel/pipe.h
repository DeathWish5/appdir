#ifndef __PIPE_H__
#define __PIPE_H__

#define PIPESIZE 512

struct pipe {
    char data[PIPESIZE];
    uint nread;     // number of bytes read
    uint nwrite;    // number of bytes written
    int readopen;   // read fd is still open
    int writeopen;  // write fd is still open
};

#elif //!__PIPE_H__