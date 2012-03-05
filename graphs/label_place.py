#!/usr/bin/env python
from __future__ import division
import sys
import math

if len(sys.argv) <> 7:
    print "Error: exactly five arguments must be provided - the file name, \
    the number of the desired label, \
    its y value, \
    the plot xrange,  \
    the plot yrange, and \
    L or R for fonts facing left or right"
    exit()
file_name = sys.argv[1]
label_num = int(sys.argv[2])
label_y = sys.argv[3]
xr = float(sys.argv[4])
yr = float(sys.argv[5])
lr = sys.argv[6]
xtoy = xr / yr # ratio of xrange to yrange
angle_corr = 1.2
x_corr = 0.04
xr_corr = 0.02
# print xtoy
label_y2 = str(int(label_y) + 5000)

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
                rotate_deg = 180*math.atan2(5000, (x2-x1) / xtoy * angle_corr)/math.pi
                if lr == 'L':
                    rotate_deg += 180

                # print rotate_deg
                # print label_x
                if count == label_num:
                    if lr == 'R':
                        label_x = x1 + xr * x_corr
                        print "at %.2f,%s rotate by %.2f" % (label_x, label_y, rotate_deg)
                    else:
                        label_x = x1 + xr * xr_corr
                        # print "at %.2f,%s right rotate by %.2f" % (x2, label_y2, rotate_deg)
                        print "at %.2f,%s right rotate by %.2f" % (label_x, label_y, rotate_deg)
                        
                    exit
        except ValueError:
            pass