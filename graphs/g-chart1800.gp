# gnuplot script file
# 
# G vs Weight chart for Limitations Section - 1800 lb gross
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/g-chart1800.eps'

#set size 1,1.25

#set label "Normal Weight/CG Envelope" at 82.76,1850 center front
#set label "Restricted Aerobatic" at 82,1700 center front
#set label "Weight/CG Envelope" at 82,1650 center front

#set label "Aerobatic Weight/CG Envelope" at 82,1450 center front

#set arrow from

set xlabel "Weight (lb)"
#set format x "%'.0f"
set ylabel "Load Factor Limit (g)"

set xrange [1100:2000]
set yrange [-4:7]

# unset autoscale x

#set xtics 78,1,88
set mxtics 2     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

#unset grid

#set nokey	# turn off label in top right hand corner

plot 'data/g-chart1800.txt' with lines lt -1 lw 2

