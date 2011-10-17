# gnuplot script file
# 
# Volume Conversion Chart
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
unset xzeroaxis
set size 1,2

#set terminal aqua
set output '../graphs/vol_conv.eps'

wt_f(x)  = 3.7854118 * x

set xrange[0:50]
# set yrange[-40:120]

set xlabel "Volume (USG)"
set ylabel "Volume (l)"

# set mxtics 11     # set minor tics on X-axis, with 5 divisions per major tic
# set mytics 11     # set minor tics on Y-axis, with 2 divisions per major tic
set mxtics    # set minor tics on X-axis, with 5 divisions per major tic
set mytics   # set minor tics on Y-axis, with 2 divisions per major tic

#set nokey	# turn off label in top right hand corner

plot wt_f(x) with lines lt -1 lw 2 # 
