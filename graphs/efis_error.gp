# gnuplot script file
# 
# EFIS error plot
#
## for direct inclusion in latex using epslatex terminal
## no grid lines seen on screen, but they show up in the printed output

load 'common_commands.gp'
set output '../graphs/efis_error.eps'

set label "EFIS Airspeed Reading = IAS + Error" at 120,-2.5 center front

set xlabel "EFIS Airspeed Reading (kt)

set ylabel "EFIS ASI Instrument Error (kt)"

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
#set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic
#set ytics -3, 1, 2
#set ytics (-3,-2,-1,0,1)
set ytics 1

#set nokey	# turn off label in top right hand corner

plot 'data/efis_error.txt' with lp lt -1 lw 2 pt 1 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
