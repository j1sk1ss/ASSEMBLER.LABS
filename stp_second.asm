org 100h

mov AX, CANDYS_COST
mov BX, 1000
   
div BX   ; get cost per g for candy
mov CANDY_G, AX

mov AX, COOCKIES_COST
mov BX, 1000   

div BX   ; get cost per g for coockie
mov COOCKIE_G, AX
          
mov AX,CANDY_G
mov BX,300            
mul BX     ;sets end cost for 300g candys
mov FIRST_ANSWER, AX

mov AX,COOCKIE_G
mov BX,400            
mul BX           ;add end cost of 400g coockies
add FIRST_ANSWER, AX

mov CX, 3
loop1:
  mov AX,CANDY_G
  mov BX, 2000
  mul BX
  add SECOND_ANSWER, AX
  
  mov AX,COOCKIE_G
  mov BX, 1800
  mul BX   
  add SECOND_ANSWER, AX 
  loop loop1        
ret                

CANDYS_COST DW 2000
COOCKIES_COST DW 1000 
            
CANDY_G DW ?            
COOCKIE_G DW ?
            
FIRST_ANSWER DW ?
SECOND_ANSWER DW 0