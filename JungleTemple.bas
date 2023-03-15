 rem Hello World

 playfield:
................................
................................
................................
................................
................................
................................
................................
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
................................
................................
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
 score=0
 COLUPF = $14
 COLUBK = $C4

 player0: 
 %00100100
 %00100100
 %00011000
 %00011000
 %11111111
 %00011000
 %00111100
 %00011000
end
 rem a = p0x b = p0y
 a=20
 b=0
main
 b=b+1
 player0y=b
 if collision(player0,playfield) then b=b-1
 if joy0left then a=a-1
 if joy0right then a=a+1
 if a<15 then a=140
 if a>140 then a=20
 player0x=a
 
 drawscreen
 goto main

