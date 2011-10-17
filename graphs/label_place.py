#!/usr/bin/env python
from __future__ import division
import sys
import math

if len(sys.argv) <> 6:
    print "Error: exactly five arguments must be provided - the file name, \
    the number of the desired label, \
    its y value, \
    the plot xrange and \
    the plot yrange"
    exit()
file_name = sys.argv[1]
label_num = int(sys.argv[2])
label_y = sys.argv[3]
xr = float(sys.argv[4])
yr = float(sys.argv[5])
xtoy = xr / yr # ratio of xrange to yrange
angle_corr = 1.2
x_corr = 0.04
# print xtoy
label_y2 = str(int(label_y) + 3000)

FILE = open(file_name)
lines = FILE.readlines()
count = 0

for line in lines:
    if line[0] == '#':
        pass
    else:
        try:
            x_value, y_value = line.split()
            if y_value == label_y:
                count += 1
                x1 = float(x_value)
                y1 = float(y_value)
                # print "found", x_value, y_value
            if y_value == label_y2:
                x2 = float(x_value)
                # print "found2", x_value, y_value
                rotate_deg = 180*math.atan2(3000, (x2-x1) / xtoy * angle_corr)/math.pi
                label_x = x1 + xr * x_corr
                # print rotate_deg
                # print label_x
                if count == label_num:
                    print "at %.2f,%s rotate by %.2f" % (label_x, label_y, rotate_deg)
                    exit
        except ValueError:
            pass