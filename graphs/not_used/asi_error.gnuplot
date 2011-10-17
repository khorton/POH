# gnuplot script file
# 
# ASI error plot
#
set terminal aqua

set title "Airspeed Indicator Instrument Error"  font "Helvetica,22"
set label "ASI Reading = IAS + Error" at 120,3.5 center font "Helvetica,16" front
set xlabel "Airspeed Indicator Reading (kt)
set ylabel "Error (kt)"

#set grid lt 0 lw 2 , lt 0 lw 1
set grid lt -1 lw 1 , lt -1 lw .5
#
set grid xtics ytics
set grid mxtics
set grid mytics 
set grid

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
set pointsize .75	# multiplier for size of data points

plot 'ASI_error.txt' with lp lt -1 lw 2 pt 12 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
