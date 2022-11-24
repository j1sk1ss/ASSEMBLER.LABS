org 100h

looping:
mov al, a
mov bl, b
div bl
mov ans, ah

mov al, b
mov a, al
mov al, ans
mov b, al
 
cmp a, 0
je looping

jmp next
next:

looping1:
mov al, a
mov bl, c
div bl
mov ans1, ah

mov al, c
mov a, al
mov al, ans1
mov c, al
 
cmp a, 0
je looping1

jmp next1
next1:

looping2:
mov al, b
mov bl, c
div bl
mov ans2, ah

mov al, c
mov b, al
mov al, ans2
mov c, al
 
cmp b, 0
je looping2

jmp next2
next2:

ret

a db 10 ; a-b a-c b-c
b db 15
c db 20

ans db ? 
ans1 db ? 
ans2 db ?