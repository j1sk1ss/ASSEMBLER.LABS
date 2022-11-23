
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov AX, YEAR
mov BX, 4
div BX
cmp DX, 0 
    jz FOUR_YES
  jmp FOUR_NO
      
      
FOUR_NO:
mov AX,YEAR
mov BX, 100
div BX
cmp DX, 0
    jz HOUNDRED_YES
  jmp HOUNDRED_NO
ret

HOUNDRED_NO:
mov AX,YEAR
mov BX, 400
div BX
cmp DX, 0
    jz FOUR_HOUNDRED_YES
  jmp FOUR_HOUNDRED_NO
ret
                       
FOUR_HOUNDRED_NO:
mov ANSWER, 366
ret

FOUR_HOUNDRED_YES:
mov ANSWER, 365
ret                       

HOUNDRED_YES:
mov ANSWER, 365
ret
  
FOUR_YES:
mov AX,YEAR
mov BX, 100
div BX
cmp DX, 0
    jz HOUNDRED_YES
  jmp HOUNDRED_NO
ret  
                       
ret
YEAR DW 2022
ANSWER DW ? 


