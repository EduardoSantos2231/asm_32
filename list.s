
section .data
list DB 1,2,3,4,0


section .text
global _start
_start:
 mov eax, 0 ; index
 mov cl, 0 ; sum
 loop:
  mov bl, [list + eax] 
  add cl, bl; saving the number contained inside cl and increasing the counting
  inc eax
  cmp eax, 4
  jne loop

END:
 mov eax, 1
 mov ebx, 1
 int 80h



