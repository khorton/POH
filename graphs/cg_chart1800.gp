# gnuplot script file
# 
# CG chart for Limitations Section
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/cg_chart1800.eps'

set size 1,1.25

set label "Normal Weight/CG Envelope" at 86.1,1450 center front rotate by 90
#set label "Restricted Aerobatic Weight/CG Envelope" at 82,1675 center front
set label "Restricted Aerobatic" at 82,1700 center front
set label "Weight/CG Envelope" at 82,1650 center front

set label "Aerobatic Weight/CG Envelope" at 82,1450 center front

#set arrow from 

set xlabel "CG (inches aft of datum)"
set ylabel "Weight (lb)"
#set format y "%'.0f"

set xrange [78:88]
#set yrange [1100:1900]
set yrange [1100:2000]

# unset autoscale x

set xtics 78,1,88
set mxtics 2     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

unset grid

#set nokey	# turn off label in top right hand corner

plot 'data/cg_chart1800.txt' with lines lt -1 lw 2 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
