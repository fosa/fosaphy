set terminal latex
set output 'fosaphy_main-gnuplottex-fig1.tex'
set terminal epslatex color
set grid
  set xrange [0:100]
set yrange [-80:35]
set xtics 20
set ytics 20
set xlabel '$x$ [m]'
set ylabel '$y$ [m]'
set xzeroaxis

  # define the function
  f(x,theta)=tan(pi/180*theta)*x-9.81/(2*(25*cos(pi/180*theta))**2)*x**2

  plot f(x,70) ti "$\\theta=70$",f(x,53.1) ti "$\\theta=53.1$",f(x,45) ti "$\\theta=45$",f(x,36.9) ti "$\\theta=36.9$",f(x,20) ti "$\\theta=20$"
