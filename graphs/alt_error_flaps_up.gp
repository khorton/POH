# gnuplot script file
# 
# Position Error - Altitude plot - Flaps UP
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
set output '../graphs/alt_error_flaps_up.eps'

set title "Static Source Position Error - Altitude - Flaps Retracted"
set grid xtics mxtics ytics mxtics lw 2, lw 1
set xrange [50:200]
set xlabel "IAS - instrument corrected (kt)"
set ylabel "Position Error in Altitude (ft)"

# set label 10 "Flaps Retracted" at 125, -55 front center
set label 11 "Baro Altitude = Altimeter Reading + Error" at 125, -65 front center
set label 12 "ASI and Altimeter Instrument Errors Assumed to be Zero" at 125, -75 front center

set label 20 "Sea Level" at 180, -24.5 front rotate by -36
set label 21 "10,000 ft" at 180, -34 front rotate by -44
set label 22 "20,000 ft" at 180, -47 front  rotate by -53

plot -26.5738079850128877 + 0.6535077617469572 * x + -0.0031623285223541 * x**2 + -0.0000027699653106 * x**3 title "" with lines lt -1 lw 2 , 1.35413389 * (-26.5738079850128877 + 0.6535077617469572 * x + -0.0031623285223541 * x**2 + -0.0000027699653106 * x**3) title "" with lines lt -1 lw 2 , 1.87683561 * (-26.5738079850128877 + 0.6535077617469572 * x + -0.0031623285223541 * x**2 + -0.0000027699653106 * x**3) title "" with lines lt -1 lw 2  
