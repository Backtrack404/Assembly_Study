%include "io64.inc"
section .data
    a dw 0 ;// a변수를 dw(data word) 2바이트 크기로 생성 하고 0으로 초기화
section .text
global CMAIN
CMAIN:
    ;//GET_DEC은 10진수를 받아로는 역할
    GET_DEC 2, [a] ;// input에 있는 값을 받아와 a에 넣는다 
    mov rax, [a] ;// a를 rax에 넣는다
    PRINT_DEC 2, rax ;// 2바이트 크기로 rax를 출력8
    
    ret