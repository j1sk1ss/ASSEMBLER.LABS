
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
push FIRST
push SECOND
push THIRD 
mov CX, 3
loopMain: 
pop AX
mov FIRST, AX
mov bl, 2
div bl 
mov AX, FIRST
cmp ah, 0
je NONE1
; DX остаток CX лупы 
jmp EQUALS1

EQUALS1:      ;нечёт
 
    mov BX, AX
    mul BX
    mov BX, AX
    mul BX
    mov BX, AX
    mov FIRST, AX 
    
NONE1:
    
    mov BX, AX
    mul BX
    mov BX, AX
    mul BX
    mov BX, AX
    mul BX
    mov BX, AX
    mov FIRST, AX  
  
loop loopMain 
ret

FIRST DW 10
SECOND DW 7
THIRD DW 3