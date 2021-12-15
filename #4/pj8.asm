%include "io64.inc"
section .data
    a db 10
section .bss

section .text
;// mov 명령어를 통한 메모리에 값 전달하기
;// mov명령어는 메모리 데이터를 복사하는 명령어 이다
;// 어셈블리 언어에서 메모리 변수의 이름은 일종의 라벨이다.
;// 이 라벨은 그 변수의 주소값을 표현하고 있는 것인데,
;// 주소가 가리키는 곳의 값은[변수명]으로 표현한다.

;// -레지스터는 사이즈가 같아야만 복사 가능(mov 연산 이용가능)
;// -메모리에서 곧바로 메모리로 복사는 불가능하다


global CMAIN
CMAIN:
    ;write your code here
    mov rax, [a] ;// a가 있는 메모리 주소안에 있는 값을 rax에 넘겨줌 *a
    mov rdx, a ;// 주소값 자체를 넘겨줌 &a
    ;//1. mov ebx, eax    -> eax 안의 7777이라는 값을 ebx에 복사
    ;//2. mov ebx, [eax]  -> 7777번지에 위치한 값을 ebx에 복사
    
    
    PRINT_DEC 1, rax
    NEWLINE
    PRINT_DEC 1, rdx
    ;//- 16진수 출력 : PRINT_HEX 바이트 수, 레지스터 또는 변수 이름
    ;//- 10진수 출력 : PRINT_DEC 바이트 수, 레지스터 또는 변수 이름
    ;//- 문자열 출력 : PRINT_STRING 변수이름 또는 문자열
    ;//- \n (줄바꿈) : NEWLINE
    
    xor rax, rax
    
    ret