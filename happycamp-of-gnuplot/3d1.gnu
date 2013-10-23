set samples 21
set isosample 11
set ter jpeg
set out '6.jpeg'
set xlabel "x axis" 
set ylabel "y axis"
set zlabel "z axis"
set title "3d gnu plot demo"
set label 1 "this is the surface boundary" at -10,-5,150 center
set arrow 1 from -10,-5,120 to -10,0,0 nohead
set arrow 2 from -10,-5,120 to 10,0,0 nohead
set arrow 3 from -10,-5,120 to 0,10,0 nohead
set arrow 4 from -10,-5,120 to 0,-10,0 nohead
set xrange [-10:10]
set yrange [-10:10]
splot x*y

