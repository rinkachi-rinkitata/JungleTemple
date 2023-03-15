 rem Hello World

 
 score=0
 COLUPF = $14
 COLUBK = $C4
 w=0
 y=128
 z=0
 rem z = tick for sprites
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
 z=z+1
 if z=6 then z=0

  rem player
 b=b+1
 player0y=b
 if collision(player0,playfield) then b=b-1
 if joy0left then a=a-1
 if joy0right then a=a+1 
 if a<15 then a=140: y=y-1
 if a>140 then a=20: y=y+1
 player0x=a
 
 goto setMap
mapReturn
 drawscreen
 goto main

setMap
 w=0
 if y=129 then w=1 
  if w=0 then playfield:
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
 if w=1 then playfield:
......................X.........
.....................X..........
....................X...........
...................X............
..................X.............
.................XXXXXXXXXXXXXXX
................................
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
................................
................................
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
  
 goto mapReturn

