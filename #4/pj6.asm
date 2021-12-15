%include "io64.inc"

;//어셈블리에서 변수는 메모리의 시작 주소와 사용되는 메모리의 크기를 의미한다.
;//변수는 다음과 같은 정보를 지닌다.

;// 시작 주소
;// 저장 되어 있는 값
;// 사용하는 데이터의 크기
 
;//> 데이터의 크기 지시어
    ;// byte       8비트 정수
    ;// word       16비트 정수
    ;// dword      32비트 정수
    ;// qword      64비트 정수
;// 변수는 section .bss 또는 section .data에 선언할 수 있다.



;// section .bss에 변수 선언하기 
    
    
    ;// 변수명 크기지시자 개수
section .data
    ;// section .data영역에는 초기값이 설정된 변수를 선언할 수 있다.
    ;//> 크기지시자 
        ;// db  1byte
        ;// dw  2byte
        ;// dd  4byte
        ;// dq  8byte
    
    ;// 변수명 크기지시자 초기값
    a dw 5
    b dw ? ;// 초기값을 설정할 필요 없을 때는 ?로 대신
section .bss
;// section .bss에는 크기와 변수의 개수를 지정해줄 수 있다.

;//> 크기지시자
    ;// resb    1byte
    ;// resw    2byte
    ;// resd    4byte
    ;// resq    8byte

    c resw 5 ;// 변수명 크기지시자 개수
    ;// 변수 a를 2바이트 5개(총 10바이트)의 크기로 선언
section .text
global CMAIN


    
CMAIN:
    ;write your code here
    
    ret