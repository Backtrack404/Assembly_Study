%include "io64.inc"
section .data
    A DW 0
    B DW 0
section .bss

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov [A], DWORD 10
    mov [B], DWORD 5
    mov edx, [A]
    mov eax, [B]
    add edx, eax  
    
    PRINT_DEC 2, edx;
    ret