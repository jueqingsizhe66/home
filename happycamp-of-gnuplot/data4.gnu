set ter postscript eps enhanced color 
set size 0.8,0.8

set out '5.eps'
set logscale xy
set style data linespoints

set xrange [0.007:40]
set yrange [1:50]
y1(x) = A1*x**b1
y2(x) = A2*x**b2
fit [0.01:0.3] y1(x) "data.txt" via A1,b1
fit [3:30] y2(x) "data.txt" via A2,b2

set key left top
#set key right bottom
set xlabel "t 中文"
set ylabel "A"
set title "A Dumb Figure"
plot "data.txt" title "Exponetial" lw 2 lt 1,y1(x) title "{/Symbol b} in low-{/Symbol w} regime" lt 2,y2(x) t "{/Symbol b} in high-{/Symbole w} regime" lt 3

