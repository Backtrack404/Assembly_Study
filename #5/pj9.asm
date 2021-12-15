%include "io64.inc"
section .data
    
    ;// 변수명  크기 문자열, 0x00 
    ;// 0x00은 문자열의 끝을 의미하는 NULL값
    msg1 db "hello", 0x00
    msg2 db "hihi", 0x00
section .bss

section .text
global CMAIN
CMAIN:
    ;write your code here
    PRINT_STRING msg1
    NEWLINE
    PRINT_STRING msg2
    ret