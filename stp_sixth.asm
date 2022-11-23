
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
push b
mov ax, a 
mov temp, ax  
mov dx, a
sub b, dx
add b, 1 
mov cx, b
pop b

loop1: 

mov ax, temp  
mov bx, 5
div bl
cmp ah, 0
je find
jmp next 
find:
mov dx, temp
add ans, dx
next:
mov ax, temp  
mov bl, 7
div bl
cmp ah, 0
je find1
jmp next1 
find1: 
mov dx, temp
add ans, dx
next1:     
add temp, 1
loop loop1

ret
temp dw ?
a dw 10
b dw 20

ans dw ?