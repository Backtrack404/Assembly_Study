%include "io64.inc"

;// 어셈블리 배열 
;// 어셈블리에서 배열은 동일한 크기의 연속적인 메모리 변수를 표현하는 것
;// 배열은 바이트 크기를 가지는 바이트 배열과 워드 크기를 가지는 워드배열이 사용
;// 각각의 배열 요소 초기값은 배열 정의에서 모두 포함되어야 한다
section .data
    a db 10,20,30,40,50,60
    b dw 110, 120, 130, 140, 150, 160
section .bss
    
section .text
global CMAIN
CMAIN:
    ;write your code here
    
    ret