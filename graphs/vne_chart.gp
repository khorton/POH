# gnuplot script file
# 
# VNE vs Altitude chart for Limitations Section
#
## for direct inclusion in latex using epslatex terminal

# must manually edit vne_chart.tex to add commas in the altitude number

load 'common_commands.gp'
set output '../graphs/vne_chart.eps'

# set size 1,1.25

set xlabel "$\\mathrm{V_{NE}}$ (KIAS)"
set ylabel "Altitude (ft)"

set xrange [150:210]
set yrange [0:25000]

set format y "%'.0f"

# unset autoscale x

# set xtics 78,1,88
set mxtics 2     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

# unset grid

#set nokey	# turn off label in top right hand corner

plot 'data/vne_chart.txt' with lines lt -1 lw 2 # lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
