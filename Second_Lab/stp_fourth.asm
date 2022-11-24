
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
add ax, f
add ax, s
add ax, t

mov bx, 3
div bx

sub f, ax
sub s, ax
sub t, ax

mov bx, s
cmp f, bx
jb fls
mov bx, t
cmp s, bx
jb send
mov bx, f
cmp t, bx
jb tend
fls:
mov bx, t
cmp f, bx
je fend
fend:
mov ans, 1 
ret
send:
mov ans, 2
ret
tend:
mov ans, 3
ret

f dw 20
s dw 25
t dw 30

ans dw ?