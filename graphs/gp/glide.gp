# gnuplot script file
# 
# Engine-out glide plot
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'

set label "\\Large\\textcolor{red}{FROM CAFE DATA,}\\normalsize" at 10,13000 center font "Times-Roman,72"
set label "\\Large\\textcolor{red}{WITH DECREMENT}\\normalsize" at 10,11000 center font "Times-Roman,72"
set label "\\Large\\textcolor{red}{FOR WINDMILLING DRAG}\\normalsize" at 10,9000 center font "Times-Roman,72"
set label "\\Large\\textcolor{red}{PENDING FLIGHT TEST}\\normalsize" at 10,5000 center font "Times-Roman,72"

#set terminal aqua
set output '../graphs/glide.eps'

glide_ratio = 8

altitude(x)  = x * 6076.11/glide_ratio
#altitude(x)  = 0.5 * rho_MSL * S * CL_full_flap * (x * 6076.11/3600)**2

#set label "Full Flap" at 45,1600 rotate by 46 font "Times-Roman,20"
#set label "Flaps UP" at 47.7,1450 rotate by 42 font "Times-Roman,20"

set xrange[0:20]
set yrange[0:15000]


# label "ASI Reading = IAS + Error" at 120,2.5 center front

set xlabel "Glide Distance (nm)

set ylabel "Altitude (ft)"

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

#set nokey	# turn off label in top right hand corner

plot altitude(x) with lines lt -1 lw 2 # 
