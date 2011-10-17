# gnuplot script file
# 
# Cruise Range Chart for Performance Section
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/cruise_range.eps'

#set size 1,1.25

set xlabel "Cruise Range (NM)"
set ylabel "Altitude (ft)"
set format y "%'.0f"

set xrange [500:700]
set yrange [0:14000]

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

set label "75\\% Power" at 565,2300 rotate by 77 font "Times-Roman,20"
set label "65\\% Power" at 615,3519 rotate by 76 font "Times-Roman,20"
set label "55\\% Power" at 670,5000 rotate by 76 font "Times-Roman,20"

set label "\\Large\\textcolor{red}{FROM ANALYSIS OF CAFE DATA}\\normalsize" at 600,10900 center font "Times-Roman,72"
set label "\\Large\\textcolor{red}{PENDING FLIGHT TEST}\\normalsize" at 600,8900 center font "Times-Roman,72"


plot 'data/cruise_range.txt' with lines lt -1 lw 2 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
