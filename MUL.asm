%include "io64.inc"
section .data
    A DW 0
    B DW 0
section .bss

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov [A], DWORD 3
    mov [B], DWORD 2
    mov edx, [A]
    mov eax, [B]
    imul edx, eax 
    
    PRINT_DEC 2, edx;
    ret