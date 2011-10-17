# gnuplot script file
# 
# ASI error plot
#
# for direct inclusion in latex using postscript terminal
# postscript eps mode works.  Grid lines are produced, but it doesn't seem p#ossible to get different line weights for major and minor grid lines.
set terminal postscript eps "Times-Roman" 20
set output '/Users/kwh/Desktop/RV_Stuff/POHs/graphs/data/asi_error_ps_eps.eps'
set grid mxtics	# default line style varies with terminal type.  x11 uses dotted l#ines, aqua uses thin lines
set grid mytics	# lw works in postscript mode, if desired
set grid xtics ytics
set pointsize 1 	# works in postscript eps mode


# title and label font face and size works in postscript terminal
# set title "Airspeed Indicator Instrument  - fontsize 36"  font "Times-Roman,36"
#set label "ASI Reading = IAS + Error - fontsize 14" at 120,3.5 center font "Times-Roman,14" front
set label "ASI Reading = IAS + Error" at 120,3.5 center front
#set label "via postscript eps terminal fontsize 18" at 120,2.5 center front

set xlabel "Airspeed Indicator Reading (kt)
set ylabel "Error (kt)"

set grid lt 0 lw 2 , lt 0 lw 1 	# lt 0 = black dashed line.
									# lt 1 = grey solid line
									# lt 2 & 3 both appear to be grey dashed lines
									# lt 4 is short dashed line
									# lt 5 is long and short dashed line


set xzeroaxis lt -1 lw 2

set nokey	# turn off label in top right hand corner


set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

plot 'ASI_error.txt' with lp lt -1 lw 2 pt 12 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
