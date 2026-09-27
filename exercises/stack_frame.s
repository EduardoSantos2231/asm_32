section .data

section .text
global _start
_start:
  push dword 8 
  push dword 6 
  call sum_squares

end:
  mov eax, 1
  mov ebx, 0
  int 80h

sum_squares:
 ;saving the previous base pointer
 push ebp
 ; making shure that ebp now points to the "floor" of our stack frame function
 mov ebp, esp
 ; accessing the values passed as arguments
 mov eax, [ebp + 8]
 mov ebx, [ebp + 12]
 ; multiplying eax by itself (a²)
 mul eax
 ; storing the val in the stack
 push eax
 ; copying the val
 mov eax, ebx
 mul eax
 ; retrieving the val of (a²)
 pop ebx
 add eax, ebx
 ; leaving the function
 mov esp, ebp
 pop ebp
 ret
