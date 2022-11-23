
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
          
mov AX, BOAT_SPD
mov BX, LAKE_TIME
mul BX
mov DRIVE, AX

mov AX, BOAT_SPD
mov BX, RIVER_SPD
sub AX, BX
mov BX, RIVER_TIME
mul BX
add AX, DRIVE
mov DRIVE, AX

int 21h
BOAT_SPD DW 16
RIVER_SPD DW 2
LAKE_TIME DW 21
RIVER_TIME DW 32
DRIVE DW ?