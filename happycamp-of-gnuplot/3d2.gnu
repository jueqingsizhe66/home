set samples 21
set isosample 11
set ter "jpeg"
set out "7.jpeg"
set xlabel "x axis" 
set ylabel "y axis" 
set zlabel "z axis"
set title "3d gnu plot demo"
set xrange [-10:10]
set yrange [-10:10]
splot x*y with points

