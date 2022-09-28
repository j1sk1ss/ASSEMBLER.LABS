
; À¿¡¿ 1 - «¿ƒ¿Õ»≈ 1

org 100h

mov AX,X
mov BX,Y
MUL AX  
mov BX, Z
MUL AX
mov MLT, AX

mov AX, X
mov BX, Y
ADD AX, BX  
mov BX, Z
ADD AX, BX
mov SM, AX

ret
X DW 3
Y DW 4
Z DW 7
MLT DW ?
SM DW ?

