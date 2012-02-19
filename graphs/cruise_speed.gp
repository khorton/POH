# gnuplot script file
# 
# Cruise Speed Chart for Performance Section
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/cruise_speed.eps'

#set size 1,1.25

set xlabel "Cruise Speed (KTAS)"
set ylabel "Altitude (ft)"
set format y "%'.0f"

set xrange [130:180]
set yrange [0:22000]

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

# set label "75\\% Power" at 167.5,2300 rotate by 50 font "Times-Roman,20"
# set label "65\\% Power" at 162.5,3519 rotate by 50 font "Times-Roman,20"
# set label "55\\% Power" at 152,5000 rotate by 50 font "Times-Roman,20"
set label "75\\% Power" `./label_place.py data/cruise_speed.txt 1 2000 50 22000` font "Times-Roman,20"
set label "65\\% Power" `./label_place.py data/cruise_speed.txt 2 4000 50 22000` font "Times-Roman,20"
set label "55\\% Power" `./label_place.py data/cruise_speed.txt 3 6000 50 22000` font "Times-Roman,20"
set label "45\\% Power" `./label_place.py data/cruise_speed.txt 4 8000 50 22000` font "Times-Roman,20"

# set label "\\Large\\textcolor{red}{FROM ANALYSIS OF CAFE DATA}\\normalsize" at 160,10900 center font "Times-Roman,72"
# set label "\\Large\\textcolor{red}{PENDING FLIGHT TEST}\\normalsize" at 160,8900 center font "Times-Roman,72"


plot 'data/cruise_speed.txt' with lines lt -1 lw 2 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
