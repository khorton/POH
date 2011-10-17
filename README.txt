README

This repository contains all files needed to create the Pilot's Operating Handbook for Kevin Horton's RV-8, C-GNHK.

The POH is created by running the following commands:

latex POH.tex
dvips -Ppdf -t letter -o POH.ps POH.dvi
ps2pdf14 -dPDFSETTINGS=/prepress POH.ps POH.pdf

It is useful to create an alias for the above commands, so that the whole series of commands can be run at once:

alias pohlatex="latex POH.tex; dvips -Ppdf -t letter -o POH.ps POH.dvi; ps2pdf14 -dPDFSETTINGS=/prepress POH.ps POH.pdf"

Note: The first time latex is run, it creates the table of contents files.  It needs to be run again to create the table of contents.  If the table of contents is empty, or incorrect, run the above commands again.

License: The POH and all associated files are released into the Public Domain.  Any users are responsible to ensure that any information that is used is applicable to the aircraft.