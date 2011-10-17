# Grace project file
#
page scroll 5%
page inout 5%
#link page off - input error
# Font mapping
# To add fonts, you have to add them to $GRACE_HOME/fonts/FontDataBase
# (e.g. /usr/X11R6/lib/X11/grace/fonts) and of course add the type1 fonts in 
# $GRACE_HOME/fonts/type1 directory (one .pfb and one .afm file for each font).
# Once that is done, you should be able to use the new fonts in the following mapping.
map font 0 to "Times-Roman", "Times-Roman"
map font 1 to "Times-Italic", "Times-Italic"
map font 2 to "Times-Bold", "Times-Bold"
map font 3 to "Times-BoldItalic", "Times-BoldItalic"
map font 4 to "Helvetica", "Helvetica"
map font 5 to "Helvetica-Oblique", "Helvetica-Oblique"
map font 6 to "Helvetica-Bold", "Helvetica-Bold"
map font 7 to "Helvetica-BoldOblique", "Helvetica-BoldOblique"
map font 8 to "Courier", "Courier"
map font 9 to "Courier-Oblique", "Courier-Oblique"
map font 10 to "Courier-Bold", "Courier-Bold"
map font 11 to "Courier-BoldOblique", "Courier-BoldOblique"
map font 12 to "Symbol", "Symbol"
map font 13 to "ZapfDingbats", "ZapfDingbats"
# Color mapping. To add colors, just type "showrgb" in a 
# terminal and copy the values in the same format as below
# or use any color chooser (e.g. kcolorchooser under KDE) 
# to find the RGB values you want
map color 0 to (255, 255, 255), "white"
map color 1 to (0, 0, 0), "black"
map color 2 to (255, 0, 0), "red"
map color 3 to (0, 255, 0), "green"
map color 4 to (0, 0, 255), "blue"
map color 5 to (255, 255, 0), "yellow"
map color 6 to (188, 143, 143), "brown"
map color 7 to (220, 220, 220), "grey"
map color 8 to (148, 0, 211), "violet"
map color 9 to (0, 255, 255), "cyan"
map color 10 to (255, 0, 255), "magenta"
map color 11 to (255, 165, 0), "orange"
map color 12 to (114, 33, 188), "indigo"
map color 13 to (103, 7, 72), "maroon"
map color 14 to (64, 224, 208), "turquoise"
map color 15 to (0, 139, 0), "green4"
default linewidth 1.0
default linestyle 1
default color 1
default pattern 1
default font 0
#default char size 1.000000
#default symbol size 1.000000
#default sformat "%16.8g"

# Timestamp options: uncomment and adapt to your wishes
# The first line is the location ; (0,0) = down left corner
# timestamp 0.03, 0.03
# timestamp rot 0
# timestamp color 1
# timestamp font 0
# timestamp char size 0.55

# Background color to your liking (see color numbers above)
# background color 7



# Page definition
page size 950,675
page background fill off

# Title string
with string
string on
string loctype view
string 1.36741, 0.86
string color 1
string rot 270
string char size 1.0
string def "Airspeed Indicator Instrument Error"

# Subtitle string
with string
string on
string loctype view
string 1.33741, 0.86
string color 1
string rot 270
string char size 0.9
string def "ASI Reading = IAS + Error"

# Create graphs and position legend boxes
with g0
   g0 hidden false
   view xmin 0.1
   view xmax 1.29741
   view ymin 0.145078
   view ymax 0.96
   legend loctype view
   legend 0.1, 0.113828
   legend char size 0.664062
   legend length 3
   legend vgap 0
   legend hgap 1
   legend box linestyle 0
   xaxis bar off
   yaxis bar off
   frame linestyle 2


# Read data files and create curves
read block pipe "tail +3 /Users/kwh/Desktop/RV_Stuff/ASI_Cal/ASI_error.txt"
with g0
   target s0
   block xy "1:2"
   s0 legend "ASI_error.txt"
   s0 comment "Airspeed Error (kt) from /Users/kwh/Desktop/RV_Stuff/ASI_Cal/ASI_error.txt"

# Graph layout and lines/symbols options
with g0
   xaxis label "ASI Reading (kt)"
   xaxis label char size 0.664062
   xaxis label layout para 
   xaxis label place spec 
   xaxis label place 0.0, 0.0390625
   xaxis ticklabel char size 0.78125
   xaxis  tick major size 0.600000 
   xaxis  tick major color 1 
   xaxis  tick major linewidth 1.0 
   xaxis  tick major linestyle 2 
   xaxis  tick minor size 0.40000 
   xaxis  tick minor color 1 
   xaxis  tick minor linewidth 0.5 
   xaxis  tick minor linestyle 2 
   yaxis  tick major size 0.600000 
   yaxis  tick major color 1 
   yaxis  tick major linewidth 1.0 
   yaxis  tick major linestyle 2 
   yaxis  tick minor size 0.40000 
   yaxis  tick minor color 1 
   yaxis  tick minor linewidth 0.5 
   yaxis  tick minor linestyle 2 
   yaxis label char size 0.664062
   yaxis label layout para 
   yaxis label place spec 
   yaxis label place 0.0, 0.0546875
   yaxis ticklabel char size 0.78125
   xaxis  tick major grid on 
   xaxis  tick minor grid off 
   yaxis  tick major grid on 
   yaxis  tick minor grid off 
   legend off
   yaxis label "Airspeed Error (kt)"
   s0 line color 1
   s0 line linestyle 1
   s0 linewidth 1.001
   s0 symbol color 1
   s0 symbol 1
   s0 symbol size 0.5
   s0 symbol fill pattern 0
   s0 symbol skip 0

# Position common legend
with g0
   legend on
   legend loctype view
   legend 0.1, 0.055
# Timestamp show on/off

   timestamp on
