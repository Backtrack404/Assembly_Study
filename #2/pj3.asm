%include "io64.inc"
section .data

section .bss

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov rax, 50 ;// rax에 50을 넣음
    mov rdx, 100 ;// rdx는 rax보조 레지스터로 rdx에 100을 넣음
    add rax, rdx ;// rax += rdx
    PRINT_DEC 2, rax
    xor rax, rax
    ret