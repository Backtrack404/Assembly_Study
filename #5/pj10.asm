%include "io64.inc"
section .data
    
section .bss
    a resw 1
    b resw 1
section .text
global CMAIN
CMAIN:
    ;write your code here
    ;//GET_DEC 입력할 바이트 수, 입력 받을 곳
    ;//GET_HEX 입력할 바이트 수, 입력 받을 곳
    
    GET_DEC 1, al
    GET_DEC 2, a
    
    PRINT_DEC 1, al
    NEWLINE
    PRINT_DEC 2, a
    
    ret