%include "io64.inc"
section .data
    a dw 5
section .bss
    b resw 1
    c resw 1
section .text
global CMAIN
CMAIN:
    ;write your code here
    mov [a], word 5
    mov [c], word 1
    mov [b], word 3
    mov rax, [a]
    mov rdx, [b]
    add rax, rdx   
    PRINT_DEC 2, rax
    NEWLINE
    mov rax, 1
    mov rbx, 3  
    sub rax, rbx
    PRINT_DEC 2, rax ;출력문
    NEWLINE ;줄바꿈 
    mov [a], word 7
    mov rdx, [a]
    sub rax, rdx
    PRINT_DEC 2, rax 
    NEWLINE  
    mov rbx, 2
    sub rax, rbx
    PRINT_DEC 2, a   
    NEWLINE
    sub rax, byte 1
    PRINT_DEC 2, rax
    
    ret
    