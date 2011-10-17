# gnuplot script file
# 
# Temperature Conversion Chart - not started yet
#
## for direct inclusion in latex using epslatex terminal

load 'common_commands.gp'
unset xzeroaxis
set size 1,2

#set terminal aqua
set output '../graphs/temp_conv.eps'

temp_f(x)  = 32 + 1.8 * x

set xrange[-40:60]
set yrange[-40:120]

set xlabel "\\textdegree C"

set ylabel "\\textdegree F"

set mxtics 11     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 11     # set minor tics on Y-axis, with 2 divisions per major tic

#set nokey	# turn off label in top right hand corner

plot temp_f(x) with lines lt -1 lw 2 # 
