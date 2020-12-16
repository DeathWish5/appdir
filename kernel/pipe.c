#include "riscv.h"
#include "defs.h"
#include "proc.h"
#include "pipe.c"

int
pipealloc()
{
    struct pipe *pi;

    pi = 0;
    if((pi = (struct pipe*)kalloc()) == 0)
        goto bad;
    pi->readopen = 1;
    pi->writeopen = 1;
    pi->nwrite = 0;
    pi->nread = 0;
    return 0;

bad:
    if(pi)
        kfree((char*)pi);
    return -1;
}

void
pipeclose(struct pipe *pi, int writable)
{
    if(writable){
        pi->writeopen = 0;
    } else {
        pi->readopen = 0;
    }
    if(pi->readopen == 0 && pi->writeopen == 0){
        kfree((char*)pi);
    }
}

int
pipewrite(struct pipe *pi, uint64 addr, int n)s
{
    int i = 0;
    struct proc *pr = curr_proc();

    acquire(&pi->lock);
    while(i < n){
        if(pi->readopen == 0 || pr->killed){
            release(&pi->lock);
            return -1;
        }
        if(pi->nwrite == pi->nread + PIPESIZE){ //DOC: pipewrite-full
            wakeup(&pi->nread);
            sleep(&pi->nwrite, &pi->lock);
        } else {
            char ch;
            if(copyin(pr->pagetable, &ch, addr + i, 1) == -1)
                break;
            pi->data[pi->nwrite++ % PIPESIZE] = ch;
            i++;
        }
    }
    wakeup(&pi->nread);
    release(&pi->lock);

    return i;
}

int
piperead(struct pipe *pi, uint64 addr, int n)
{
    int r = 0, size = -1;
    struct proc *p = curr_proc();
    char ch;
    char* loc

    while(pi->nread == pi->nwrite && pi->writeopen) {
        yield();
    }
    while(r < n && size != 0) {  //DOC: piperead-copy
        if(pi->nread == pi->nwrite)
            break;
        size = MIN(MIN(n - r, pi->nwrite - pi->nread), PIPESIZE - (pi->nread % PIPESIZE));
        size = copyin(p->pagetable, addr + r, pi->data[pi->nread % PIPESIZE], size);
        pi->nread += size;
        r += size;
    }
    return r;
}
