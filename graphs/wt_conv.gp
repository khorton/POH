# gnuplot script file
# 
# Weight Conversion Chart
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
unset xzeroaxis
set size 1,2

#set terminal aqua
set output '../graphs/wt_conv.eps'

wt_f(x)  = 2.2046226 * x

set xrange[0:900]
# set yrange[-40:120]
#set format y "%'.0f"

set xlabel "Mass (kg)"
set ylabel "Weight (lb)"

# set mxtics 11     # set minor tics on X-axis, with 5 divisions per major tic
# set mytics 11     # set minor tics on Y-axis, with 2 divisions per major tic
set mxtics    # set minor tics on X-axis, with 5 divisions per major tic
set mytics   # set minor tics on Y-axis, with 2 divisions per major tic

#set nokey	# turn off label in top right hand corner

plot wt_f(x) with lines lt -1 lw 2 # 
