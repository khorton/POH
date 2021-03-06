# gnuplot script file
# 
# CG chart for WB Section
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/wb-cg-chart1900.eps'

set size 1.3,2

set label "\\Large \\bfseries \\sffamily Normal Weight/CG Envelope" at 82.76,1850 center front
set label "\\Large \\bfseries \\sffamily Restricted Aerobatic" at 82,1725 center front
set label "\\Large \\bfseries \\sffamily Weight/CG Envelope" at 82,1675 center front
set label "\\Large \\bfseries \\sffamily Aerobatic Weight/CG Envelope" at 82,1450 center front 

set xlabel "CG (inches aft of datum)"
set ylabel "Weight (lb)"
set format y "%'.0f"

set x2label "CG (inches aft of datum)"
set y2label "Weight (lb)"
#set format y2 "%'.0f"

set xrange [78:88]
set yrange [1100:2000]

set xtics 78,1,88
set x2tics 78,1,88
set x2range [78:88]
set y2range [1100:2000]
set y2tics

set mxtics 2     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

plot 'data/cg_chart1900.txt' with lines lt -1 lw 5 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
