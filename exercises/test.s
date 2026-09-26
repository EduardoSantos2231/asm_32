section .data
    valor dd 25
section .text
global _start
_start:
 mov eax, [valor]
 add eax, 10
 mov [valor], eax
 mov eax, 1
 mov ebx, 0
 int 80h
