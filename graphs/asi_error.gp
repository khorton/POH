# gnuplot script file
# 
# ASI error plot
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/asi_error.eps'

set label "ASI Reading = IAS + Error" at 120,2.5 center front

set xlabel "Airspeed Indicator Reading (kt)

set ylabel "ASI Instrument Error (kt)"

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

#set nokey	# turn off label in top right hand corner

plot 'data/ASI_error.txt' with lp lt -1 lw 2 pt 1 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
