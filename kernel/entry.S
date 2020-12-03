.section .text
_entry:
    la sp, stack0
    li a0, 1024*4
    add sp, sp, a0
    call start
spin:
    j spin
