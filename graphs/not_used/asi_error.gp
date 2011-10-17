# gnuplot script file
# 
# ASI error plot
#
#set terminal aqua
#set terminal x11

## for direct inclusion in latex using epslatex terminal - no grid lines :(
#set terminal epslatex
#set output '/Users/kwh/Desktop/RV_Stuff/POHs/graphs/data/asi_error.tex'

## for direct inclusion in latex using latex terminal
## latex mode prints grid lines as solid, all the same weight.  Data points are solid circles.
#set terminal latex
#set output '/Users/kwh/Desktop/RV_Stuff/POHs/graphs/data/asi_error.tex'
#set grid mxtics	# default line style varies with terminal type.  x11 uses dotted lines
#set grid mytics
#set grid xtics ytics
##set pointsize .25 	# no effect on point size in latex mode

## for direct inclusion in latex using postscript terminal
## postscript eps mode works.  Grid lines are produced, but it doesn't seem p#ossible to get different line weights for major and minor grid lines.
#set terminal postscript eps
#set output '/Users/kwh/Desktop/RV_Stuff/POHs/graphs/data/asi_error.eps'
#set grid mxtics	# default line style varies with terminal type.  x11 uses dotted l#ines, aqua uses thin lines
#set grid mytics	# lw works in postscript mode, if desired
#set grid xtics ytics
#set pointsize 1 	# works in postscript eps mode

# for direct inclusion in latex using pslatex terminal
# get dashed grid lines, with weight controled by lw.  Same weight for all grid lines.
# no control of font size for title or labels in pslatex mode
set terminal pslatex
set output '/Users/kwh/Desktop/RV_Stuff/POHs/graphs/data/asi_error.tex'
set grid mxtics	# default line style varies with terminal type.  x11 uses dotted l#ines, aqua uses thin lines
set grid mytics lw 1	# lw works in pslatex mode, if desired
set grid xtics ytics
set pointsize 1 	# works in pslatex mode
set title "Airspeed Indicator Instrument Error"
set label "ASI Reading = IAS + Error" at 120,3.5 center front



#set title "Airspeed Indicator Instrument Error"  font "Helvetica,60"
#set label "ASI Reading = IAS + Error" at 120,3.5 center font "Helvetica,32" front
set xlabel "Airspeed Indicator Reading (kt)
set ylabel "Error (kt)"

#set grid lt 0 lw 2 , lt 0 lw 1
#set grid lt -1 lw 1 , lt -1 lw .5
#
#set grid mxtics	# default line style varies with terminal type.  x11 uses dotted lines
#set grid mytics # aqua uses thin lines.
#set grid

set xzeroaxis lt -1 lw 2

set nokey	# turn off label in top right hand corner
#set key 200, 3 title "F(x) = A tanh (x/B)"	manually create a key.  Coordinates are X & Y in units of axis


#set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

#plot 'ASI_error.txt' using 1:2:(1.0) smooth acsplines
#plot 'ASI_error.txt' smooth csplines
#set tics out
#set data style linespoints	# joins data points with lines
#set pointsize .75	# multiplier for size of data points

plot 'ASI_error.txt' with lp lt -1 lw 2 pt 12 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
