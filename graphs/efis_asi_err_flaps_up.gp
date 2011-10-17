# gnuplot script file
# 
# Position Error - IAS error plot - Flaps UP, no correction for instrument error
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/efis_ias_err_flaps_up.eps'

set title "EFIS Airspeed Error - Flaps Retracted"
set grid xtics mxtics ytics mxtics lw 2, lw 1
set xrange [50:240]
set xlabel "EFIS ASI Indication (kt)"
set ylabel "Error in Airspeed (kt)"

# set label 10 "Flaps Retracted" at 125, -55 front center
set label 11 "CAS = EFIS ASI Indication + Error" at 125, -4.5 front center
set label 12 "Chart Includes EFIS ASI Instrument Error" at 125, -5.5 front center

# plot 'data/ias_err_no_inst_corr.txt' with lp lt -1 lw 2 pt 1 # lp = linespoints = lines joining points
plot 'data/efis_ias_err_flaps_up.txt' with l lt -1 lw 2 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
