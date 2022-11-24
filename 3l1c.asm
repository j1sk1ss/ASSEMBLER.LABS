
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
looping:
mov ax, a
mov bx, b
mov dx, 0
div bx
mov c, dx

mov ax, b
mov a, ax
mov ax, c
mov b, ax
 
cmp a, 0
je next


jmp looping
next:
ret
a dw 128
b dw 6
c dw ?