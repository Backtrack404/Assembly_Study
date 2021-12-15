%include "io64.inc"
section .data
    A DW 0
    B DW 0
    C DW 0
section .bss    

section .text
global CMAIN
CMAIN:
    ;write your code here
    MOV RAX, 0
    GET_DEC 2, [A]
    GET_DEC 2, [B]
    
    MOV RAX, [B]
    IMUL RAX, 2     ;//곱하기
    ADD EAX, [A]
    PRINT_DEC 2, RAX
    
    XOR RAX, RAX
    ret