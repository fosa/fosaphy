set terminal latex
set output 'fosaphy_main-gnuplottex-fig2.tex'
set terminal epslatex color
set size ratio -1
set grid
  set xrange [0:55]
set yrange [-5:15]
set xtics 5
set ytics 5
set format ""
unset key

  # define the function
  f(x,theta)=tan(pi/180*theta)*x-9.81/(2*(25*cos(pi/180*theta))**2)*x**2

set style line 2 lc rgb 'black' pt 7   # circle

set label 1 "$s=v_0 \\cdot t$" at 25,10 rotate by 20
set arrow from 0,0 to 35,12.739

set label 2 "$\\vec{v_0}$" at 10,5
set arrow from 0,0 to 15,tan(pi/180*20)*15 linecolor rgb 'green' linewidth 3

set label 3 "$y=\\frac{1}{2}g \\cdot t^2$" at 37,11 rotate right
set arrow from 35,12.739 to 35,f(35,20)

set label 4 "$\\vec{v_0}$" at 45,7
set arrow from 35,f(35,20) to 50,tan(pi/180*20)*15+f(35,20) linecolor rgb 'green' linewidth 3

set object circle at 35,f(35,20) size 0.2
  plot f(x,20) ti ""
