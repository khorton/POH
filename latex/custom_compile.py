#! /sw/bin/python
import os, os.path

file_path = os.environ['TM_FILEPATH']
base_name = os.path.splitext(os.path.split(file_path)[1])[0]

latex_command = '/sw/bin/latex ' + base_name + '.tex'
os.system(latex_command)

dvips_command = '/sw/bin/dvips -t letter -o ' + base_name + '.ps ' + base_name + '.dvi'
os.system(dvips_command)

ps2pdf_command = '/sw/bin/ps2pdf13 ' + base_name + '.ps ' + base_name + '.pdf'
os.system(ps2pdf_command)
