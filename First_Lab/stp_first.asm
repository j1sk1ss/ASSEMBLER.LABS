org 100h

mov AX, FIRST_BASE
mov BX, SECOND_BASE
add AX,BX
      
mov BX, 2
div BX
mul HEIGHT
         
mov ANSWER, AX
ret

FIRST_BASE DW 3
SECOND_BASE DW 4
HEIGHT DW 7
ANSWER DW ?