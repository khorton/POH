# gnuplot script file
# 
# dummy file, as gnuplot Windows seems to truncate the output of the last file loaded.

load 'common_commands.gp'
set output '../graphs/dummy.eps'

#set terminal aqua
#set terminal x11

set parametric


Arm_front_baggage = 58.51
Arm_front_seat = 91.78
Arm_rear_seat = 119.12
Arm_rear_baggage = 138
Arm_hat_shelf = 152.91
Arm_fuel = 80

max_front_baggage = 50
max_front_seat = 250
max_rear_seat = 250
max_rear_baggage = 75
max_hat_shelf = 25
max_fuel = 6.01 * 42


Weight_front_baggage(t) = t * max_front_baggage/100
Moment_front_baggage(t) = t * max_front_baggage * Arm_front_baggage/100000

Weight_front_seat(t) = t * max_front_seat/100
Moment_front_seat(t) = t * max_front_seat * Arm_front_seat/100000

Weight_rear_seat(t) = t * max_rear_seat/100
Moment_rear_seat(t) = t * max_rear_seat * Arm_rear_seat/100000

Weight_rear_baggage(t) = t * max_rear_baggage/100
Moment_rear_baggage(t) = t * max_rear_baggage * Arm_rear_baggage/100000

Weight_hat_shelf(t) = t * max_hat_shelf/100
Moment_hat_shelf(t) = t * max_hat_shelf * Arm_hat_shelf/100000

Weight_fuel(t) = t * max_fuel/100
Moment_fuel(t) = t * max_fuel * Arm_fuel/100000

set size 1.8,2

set label "\\Large Fuel\\normalsize" at 14.5,190 rotate by 39.8 font "Times-Roman,28"
set label "\\Large Pilot\\normalsize" at 18.3,190 rotate by 36 font "Times-Roman,28"
set label "\\Large Passenger\\normalsize" at 23.8,190 rotate by 29.23 font "Times-Roman,28"
set label "\\Large Rear Baggage Compartment Floor\\normalsize" at 13.5,60 font "Times-Roman,28"
set label "\\Large Front Baggage Compartment\\normalsize" at 1.5,80 rotate by 90 font "Times-Roman,28"
set label "\\Large Rear Baggage Compartment Shelf\\normalsize" at 7,10 font "Times-Roman,28"

set arrow from 6.8,11.5 to 4,20
set arrow from 13.3,61.5 to 10.5,70 size 0.5,30
set arrow from 1.5,78 to 2,45

set xlabel "Load Moment/1000 (pound-inches)"
set ylabel "Load Weight (lb)"

set x2label "Load Moment/1000 (pound-inches)"
set y2label "Load Weight (lb)"

set xrange [0:30]
set yrange [0:300]

set xtics 0,5,30
set x2tics 0,5,30
set x2range [0:30]
set y2range [0:300]
set y2tics

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 5     # set minor tics on Y-axis, with 2 divisions per major tic

#plot 'data/cg_chart.txt' with lines lt -1 lw 5 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options

plot [t=0:100] Moment_front_baggage(t),Weight_front_baggage(t)  with lines lt -1 lw 2 ,\
Moment_front_seat(t),Weight_front_seat(t)  with lines lt -1 lw 2  ,\
Moment_rear_seat(t),Weight_rear_seat(t)  with lines lt -1 lw 2  ,\
Moment_rear_baggage(t),Weight_rear_baggage(t)  with lines lt -1 lw 2  ,\
Moment_hat_shelf(t),Weight_hat_shelf(t)  with lines lt -1 lw 2  ,\
Moment_fuel(t),Weight_fuel(t) with lines lt -1 lw 2 # 
#pause -1 "Hit return to continue"
