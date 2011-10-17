#!/usr/bin/env python

"""
Returns latex code for landing distance table for RV-8 POH.

Input is ground roll and air distance for sea level std day.
Corrections for other altitudes and temperatures are made as
per USAF Flight Test Engineering Handbook, Herrington, 1961
"""

#import std_atm as SA
import ft_data_reduction as FT

gr = 500 # ground roll under sea level std day zero wind conditions
tow = 1800 # weight for table
V50 = 'XX' # speed at 50 ft

header = r"""% Landing Distance
\begin{sidewaysfigure}[t]
% \addcontentsline{toc}{section}{Figure \ref{Landing-dist} Landing Distance}
\addcontentsline{toc}{section}{LANDING DISTANCE}
\begin{center}
\begin{perfhdr}LANDING DISTANCE\\
1800 LBS
\end{perfhdr}
\Large
\textcolor{red}{VANS CLAIMED PERF EXPANDED TO OTHER CONDITIONS}\vspace{1ex}\\
\textcolor{red}{TO BE CONFIRMED BY FLIGHT TEST}\normalsize \vspace{5ex}\\

\begin{minipage}{9in}
  \begin{flushleft}
    CONDITIONS:\\
    Full Flaps\\
    Power OFF\\
    Maximum Braking\\
    Paved, Level, Dry Runway\\
    Zero Wind\\

    NOTES:
    \begin{enumerate*}
      \item Short field technique as specified in Section \textcolor{red}{4}.
      \item Decrease distances by 10\% for each 5 knots headwind.  For operations with tailwinds up to 10 knots, increase distances by 10\% for each 2 knots.
      \item For operation on a dry, grass runway, increase distances by 40\% of the ground roll figure.
      \end{enumerate*}
    \end{flushleft}
\end{minipage}\\

\vspace{\perfnoteskip}

\settowidth{\colOne}{WEIGHT}
\settowidth{\colTwo}{SPEED}
\settowidth{\colThree}{PRESS}
\settowidth{\colFour}{GRND}
\settowidth{\colFive}{TOTAL}
\setlength{\rowdrop}{\baselineskip/-1}
\begin{tabular}{|c|c|r|r|r|r|r|r|r|r|r|r|r|}
\hline
\multirow{5}{\colOne}{\centering WEIGHT (LB)}&\multirow{5}{\colTwo}{\centering SPEED AT 50 FT (KIAS)}&
\multirow{5}{\colThree}{\centering PRESS ALT (FT)}&\multicolumn{2}{c|}{0\textdegree C}&
\multicolumn{2}{c|}{10\textdegree C}&\multicolumn{2}{c|}{20\textdegree C}&
\multicolumn{2}{c|}{30\textdegree C}&\multicolumn{2}{c|}{40\textdegree C}\\
\cline{4-13}
&&&\multirow{4}{\colFour}{\centering GRND ROLL (FT)}&\multirow{4}{\colFive}{\centering TOTAL DIST FROM 50 FT}&
\multirow{4}{\colFour}{\centering GRND ROLL (FT)}&\multirow{4}{\colFive}{\centering TOTAL DIST FROM 50 FT}&
\multirow{4}{\colFour}{\centering GRND ROLL (FT)}&\multirow{4}{\colFive}{\centering TOTAL DIST FROM 50 FT}&
\multirow{4}{\colFour}{\centering GRND ROLL (FT)}&\multirow{4}{\colFive}{\centering TOTAL DIST FROM 50 FT}&
\multirow{4}{\colFour}{\centering GRND ROLL (FT)}&\multirow{4}{\colFive}{\centering TOTAL DIST FROM 50 FT}\\
&&&&&&&&&&&&\\ 
&&&&&&&&&&&&\\
&&&&&&&&&&&&\\
\hline
\hline
"""

footer=r"""\end{tabular}
\end{center}
\caption{Landing Distance}
\label{Landing-dist}
\end{sidewaysfigure}
"""

alts=range(0, 13, 2) # thousands of feet
temps = (0, 10, 20, 30, 40)

lines = []
for alt_t in alts:
    line=[]
    Hp = alt_t * 1000
    if Hp==0:
        line.append(str(tow))
        line.append(str(V50))
        line.append('S.L.')
    else:
        line.append('')
        line.append(str(V50))
        line.append(str(alt_t) + ',' + '000')
    
    for T in temps:
        ground_roll = gr / FT.ldg_ground_dist_density_corr(Hp, T)
        line.append(str(int(round(ground_roll, -1))))
        line.append('TTT')
#    print line
    lines.append('&'.join(line) + r'\\')
    lines.append(r'\hline')
    
print header
for line in lines:
    print line
print footer
