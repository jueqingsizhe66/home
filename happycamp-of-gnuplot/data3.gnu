set ter 'jpeg' enh font "/usr/share/fonts/truetype/wqy/wqy-microhei.ttc"
set out '5.jpeg'

#set logscale xy #if you uncomment it  you will get the different fig

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
plot "data.txt" title "Data",y1(x) title "A1x**b1",y2(x) t "A2x**b2"

