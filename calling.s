extern sum
extern exit

section .data

section .text
global main
main: 
  mov eax, 0 ; the return value isn contained in eax 
  PUSH 2 ; the second parameter of our sum function
  PUSH 3 ; the first parameter of our sum function
  CALL sum ; calling it

  PUSH eax ; just to see it from the echo $? command after executed
  CALL exit ; will use the value contained on the top of the stack as argument


