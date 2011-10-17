# gnuplot script file
# 
# Cruise Range Chart for Performance Section
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/cruise_range_wheel_pants_off.eps'

#set size 1,1.25

set xlabel "Cruise Range - Wheel Pants OFF (NM)"
set ylabel "Altitude (ft)"
set format y "%'.0f"

set xrange [400:700]
set yrange [0:14000]

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

set label "75\\% Power" `./label_place.py data/cruise_range_wheel_pants_off.txt 1 2000 300 14000` font "Times-Roman,20"
set label "65\\% Power" `./label_place.py data/cruise_range_wheel_pants_off.txt 2 3500 300 14000` font "Times-Roman,20"
set label "55\\% Power" `./label_place.py data/cruise_range_wheel_pants_off.txt 3 5000 300 14000` font "Times-Roman,20"

set label "From Flight Test 23 Jan 2010" at graph 0.01, 0.96 font "Times-Roman,20"

plot 'data/cruise_range_wheel_pants_off.txt' with lines lt -1 lw 2 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
