# gnuplot script file
# 
# Cruise Speed Chart for Performance Section
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/cruise_speed_wheel_pants_off.eps'

set xlabel "Cruise Speed - Wheel Pants OFF (KTAS)"
set ylabel "Altitude (ft)"
set format y "%'.0f"

set xrange [120:175]
set yrange [0:25000]

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

set label "75\\% Power" `./label_place.py data/cruise_speed_wheel_pants_off.txt 1 2000 55 25000` font "Times-Roman,20"
set label "65\\% Power" `./label_place.py data/cruise_speed_wheel_pants_off.txt 2 3500 55 25000` font "Times-Roman,20"
set label "55\\% Power" `./label_place.py data/cruise_speed_wheel_pants_off.txt 3 5000 55 25000` font "Times-Roman,20"
set label "45\\% Power" `./label_place.py data/cruise_speed_wheel_pants_off.txt 4 6500 55 25000` font "Times-Roman,20"
set label "35\\% Power" `./label_place.py data/cruise_speed_wheel_pants_off.txt 5 8000 55 25000` font "Times-Roman,20"

# set label "From Flight Tests 20 \\& 22 Jan 2011" at graph 0.01, 0.96 font "Times-Roman,20"

plot 'data/cruise_speed_wheel_pants_off.txt' with lines lt -1 lw 2 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
