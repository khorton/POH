# gnuplot script file
# 
# ASI error plot
#
#set terminal aqua
#set terminal x11

# for direct inclusion in latex using pslatex terminal
# get dashed grid lines, with weight controled by lw.  Same weight for all grid lines.
# no control of font size for title or labels in pslatex mode
set terminal pslatex
set output '/Users/kwh/Desktop/RV_Stuff/POHs/graphs/data/asi_error_pslatex.tex'
set grid mxtics	# default line style varies with terminal type.  x11 uses dotted l#ines, aqua uses thin lines
set grid mytics lw 1	# lw works in pslatex mode, if desired
set grid xtics ytics
set pointsize 1 	# works in pslatex mode
#set title "Airspeed Indicator Instrument Error"
set label "ASI Reading = IAS + Error" at 120,3.5 center front


#set label "via pslatex terminal" at 120,2.5 center front
set xlabel "Airspeed Indicator Reading (kt)
set ylabel "Error (kt)"

set grid lt 0 lw 2 , lt 0 lw 1 	# lt 0 = black dashed line.
									# lt 1 = grey solid line
									# lt 2 & 3 both appear to be grey dashed lines
									# lt 4 is short dashed line
									# lt 5 is long and short dashed line


set xzeroaxis lt -1 lw 2

set nokey	# turn off label in top right hand corner


set mxtics 5     # set minor tics on X-axis, with 5 divisions per major tic
set mytics 2     # set minor tics on Y-axis, with 2 divisions per major tic

set pointsize .25


plot 'ASI_error.txt' with lp lt -1 lw 2 pt 12 # lp = linespoints = lines joining points
											# lt -1 = blackline
											# lw = line width
											# pt = point style
											# do gnuplot test to see options
