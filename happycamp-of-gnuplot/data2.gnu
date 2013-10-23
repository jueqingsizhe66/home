set ter 'jpeg'
set out '4.jpeg'
y(x) = a*x**2 + b*x +c
fit y(x) "data.txt" via a,b,c
set key right bottom
set xlabel "t"
set ylabel "A"
set title "A Dumb Figure"
plot "data.txt" title "some Data",y(x) title "~x^2"

