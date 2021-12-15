%include "io64.inc"
section .data

section .bss

section .text
global CMAIN
CMAIN:
    ;write your code here
    MOV RAX, 0x1234 ;// 레지스터는 16비트 선언한건 32비트 따라서 오류 
    MOV AX, 0x1234 ;// 레지스터는 16비트 선언한건 32비트 따라서 오류
    
    MOV AX, RAX
    XOR RAX, RAX
    ret