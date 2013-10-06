#! /usr/bin/env python

import std_atm as SA

FF0 = 17
for alt in range(0, 20001, 2000):
    sigma = SA.alt2density_ratio(alt)
    FF = sigma * FF0
    print "%.0f %.0f" % (alt, FF)
