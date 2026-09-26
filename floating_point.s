section .data
  x DD 1.1
  y DD 3.14

section .text
global _start
_start:
 MOVSS xmm0, [x]
 MOVSS xmm0, [y]
 MOV EAX, 1
 MOV EBX, 0
 INT 80h
 

