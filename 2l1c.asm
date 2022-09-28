
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    mov AX, NUMBER
    cmp AX, 100
    jg YES  
    jmp NTHREED 
    
YES:
  cmp AX, 1000
  jg NTHREED
  jmp THREED 
  
THREED:
  mov ANSWER, 1
  ret  
  
NTHREED:    
  mov ANSWER, 0
  ret
   

  int 21h
  NUMBER DW 41
  ANSWER DW ?


