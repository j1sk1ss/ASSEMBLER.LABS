
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax, b
sub ax, a
mov cx, ax

loop1:

add a, 1          
mov ax, a
add ans, ax

loop loop1  
  
ret
a dw 10
b dw 25

ans dw ?