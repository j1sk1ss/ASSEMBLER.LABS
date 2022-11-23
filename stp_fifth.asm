
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, num
loop1:
mov ax, str
mov bx, ax
mul bx
add str, 1
add ans, ax
loop loop1

ret
str dw 1
num dw 5
ans dw ?

