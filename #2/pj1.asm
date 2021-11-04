%include "io64.inc"
section .data
section .bss
section .text
global CMAIN

;//eax | rax 누산기 마지막 연산의 값을 저장

CMAIN: ;//main 역할
    mov eax, 10 ;// eax = 10;
    
    ;// PRINT_DEC 10진수로 프린트
    ;// 2바이트 크기로 eax를 출력
    PRINT_DEC 2, eax 
    ret ;//return 과 같은 역할