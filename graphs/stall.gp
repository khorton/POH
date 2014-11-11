# gnuplot script file
# 
# Stall Speed plot
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'

# set label "\\Large\\textcolor{red}{FROM CAFE DATA}\\normalsize" at 52,1850 center font "Times-Roman,72"
# set label "\\Large\\textcolor{red}{PENDING FLIGHT TEST}\\normalsize" at 52,1750 center font "Times-Roman,72"

#set terminal aqua
set output '../graphs/stall.eps'

#CL_full_flap = 2.17 # from CAFE testing
CL_full_flap = 1.6583620035075826 # from flight 339 on 09 Nov 2014
#CL_clean = 1.75
CL_clean = 1.3373 # CAFE result factored by full flap tests on flight 339
S = 110
rho_MSL = 0.002378

weight_full_flap(x)  = 0.5 * rho_MSL * S * CL_full_flap * (x * 6076.11/3600)**2
weight_clean(x) = 0.5 * rho_MSL * S * CL_clean * (x * 6076.11/3600)**2

set label "Full Flap" at 51.5,1600 rotate by 57 font "Times-Roman,20"
set label "Flaps UP" at 55.5,1500 rotate by 52 font "Times-Roman,20"

set xrange[45:65]
set yrange[1300:1900]


# label "ASI Reading = IAS + Error" at 120,2.5 center front

set xlabel "Stall Speed (KCAS)

set ylabel "Gross Weight (lb)"
#set format y "%'.0f"

set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

#set nokey	# turn off label in top right hand corner

plot weight_full_flap(x) with lines lt -1 lw 2, weight_clean(x) with lines lt -1 lw 2 # 
#plot weight_clean(x) with lines lt 0 lw 2 # 
