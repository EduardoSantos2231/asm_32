extern sum
extern exit
extern printf

section .data
  fmt db "Result is: %d",10,0
section .text
global main
main: 
  MOV eax, 0 ; the return value isn contained in eax 
  PUSH dword 2 ; the second parameter of our sum function
  PUSH dword 3 ; the first parameter of our sum function
  CALL sum ; calling it

  ADD esp, 8
  MOV ebx, eax

  PUSH ebx 
  PUSH fmt
  CALL printf
  ADD esp, 8
  
  PUSH dword 0; just to see it from the echo $? command after executed
  CALL exit ; will use the value contained on the top of the stack as argument


