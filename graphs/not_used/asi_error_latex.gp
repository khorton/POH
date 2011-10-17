# gnuplot script file
# 
# ASI error plot
#

# for direct inclusion in latex using latex terminal
# latex mode prints grid lines as solid, all the same weight.  Data points are solid circles.
set terminal latex
set output '/Users/kwh/Desktop/RV_Stuff/POHs/graphs/data/asi_error_latex.tex'
set grid mxtics	# default line style varies with terminal type.  x11 uses dotted lines
set grid mytics
set grid xtics ytics
#set pointsize .25 	# no effect on point size in latex mode

set grid lt 0 lw 2 , lt 4 lw 1 	# lt 0 = black dashed line.
									# lt 1 = grey solid line
									# lt 2 & 3 both appear to be grey dashed lines
									# lt 4 is short dashed line
									# lt 5 is long and short dashed line

set label "ASI Reading = IAS + Error" at 120,3.5 center font "Helvetica,16" front
#set label "via latex terminal" at 120,2.5 center front
set xlabel "Airspeed Indicator Reading (kt)
set ylabel "Error (kt)"


set xzeroaxis lt -1 lw 2

set nokey	# turn off label in top right hand corner


set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic


plot 'ASI_error.txt' with lp lt -1 lw 2 pt 12 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
