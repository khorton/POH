# gnuplot script file
# 
# contains commands common to all graphs in RV-8 POH Perf Section
#

## for direct inclusion in latex using epslatex terminal
reset
set terminal epslatex
set grid xtics ytics mxtics mytics

set grid lt 4 lw 2 , lt 0 lw 1 	# lt 0 = black dashed line.
									# lt 1 = grey solid line
									# lt 2 & 3 both appear to be grey dashed lines
									# lt 4 is short dashed line
									# lt 5 is long and short dashed line

set nokey	# turn off label in top right hand corner

set xzeroaxis lt -1 lw 2
