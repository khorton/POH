# gnuplot script file
# 
# Weight vs moment chart for WB Section
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/wb-moment-chart1900.eps'

set size 1.3,2

set label "\\Large \\bfseries \\sffamily Normal Weight/Moment Envelope" at 110,1950 center front
set label "\\Large \\bfseries \\sffamily Restricted Aerobatic" at 105,1775 center front 
set label "\\Large \\bfseries \\sffamily Weight/Moment Envelope" at 105,1725 center front 
set label "\\Large \\bfseries \\sffamily Aerobatic Weight/Moment Envelope" at 135,1150 center front 

set arrow from 138,1945 to 152,1850 lw 4
set arrow from 125,1750 to 140,1700 lw 4
set arrow from 105,1155 to 100,1225 lw 4

set xlabel "Moment/1000 (pound-inches)"
set ylabel "Weight (lb)"
#set format y "%'.0f"

set x2label "Moment/1000 (pound-inches)"
set y2label "Weight (lb)"
#set format y2 "%'.0f"

set xrange [80:170]
set yrange [1100:2000]

set x2range [80:170]
set y2range [1100:2000]

set x2tics
set y2tics

set mx2tics 4     # set minor tics on X-axis, with 5 divisions per major tic
set my2tics 2     # set minor tics on Y-axis, with 2 divisions per major tic

set mxtics 4     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

#unset grid

#set nokey	# turn off label in top right hand corner

plot 'data/wb-moment-chart1900.txt' with lines lt -1 lw 5 # lt -1 = blackline
#plot 'data/wb-moment-chart.txt' axis x2y2 with lines lt -1 lw 5 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
