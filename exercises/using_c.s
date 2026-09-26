extern printf ; extern function
extern exit

section .data
 data DB "Hello world", 0 ; null terminator
 fmt DB "Output is: %s", 10, 0; new line and null terminator respectively

section .text
global main ; when using exter c functions, we gotta use main -> entry point
main:
  PUSH data ; c will use data contained on the stack which is LIFO
  PUSH fmt
  
  CALL printf
  PUSH 1
  CALL exit

