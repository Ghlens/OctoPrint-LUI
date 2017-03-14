G28
T0
M109
M190
M106 S255
;Begin Tool 0
T0
G1 Z0.300 F1800.000
G92 E0; zero extruder
G1 Y-33 F12000; move to front of machine
G1 E15 F6000; extrude 15 mm fast
G1 E30 F150 ; extrude another 15 mm slow
G1 E28 F6000 ; retract 2mm
G4 S2; wait for 2 seconds
; perform wipe sequence
G1 X308 F12000
G1 X330 F12000
G1 X308 F12000
G1 X330 F12000
G92 E0; zero extruder
;Horizontal line #0 Tool 0
G1 X121.500 Y150.000 F12000.000
G1 Z0.150 F1800.000
G1 X171.500 Y150.000 E1.227 F1800.000
G1 E-0.773 F3000.000
;Horizontal line #1 Tool 0
G1 X121.500 Y140.000 F12000.000
G1 E1.327 F3000.000
G1 X171.500 Y140.000 E2.555 F1800.000
G1 E0.555 F3000.000
;Horizontal line #2 Tool 0
G1 X121.500 Y130.000 F12000.000
G1 E2.655 F3000.000
G1 X171.500 Y130.000 E3.882 F1800.000
G1 E1.882 F3000.000
;Horizontal line #3 Tool 0
G1 X121.500 Y120.000 F12000.000
G1 E3.982 F3000.000
G1 X171.500 Y120.000 E5.209 F1800.000
G1 E3.209 F3000.000
;Horizontal line #4 Tool 0
G1 X121.500 Y110.000 F12000.000
G1 E5.309 F3000.000
G1 X171.500 Y110.000 E6.536 F1800.000
G1 E4.536 F3000.000
;Begin circle
G1 X115.500 Y100.000 E4.536 F12000.000
G1 E6.636 F3000.000
G1 X115.467 Y100.512 E6.649 F1800.000
G1 X115.369 Y101.015 E6.661 F1800.000
G1 X115.208 Y101.501 E6.673 F1800.000
G1 X114.985 Y101.963 E6.686 F1800.000
G1 X114.706 Y102.392 E6.698 F1800.000
G1 X114.373 Y102.783 E6.710 F1800.000
G1 X113.994 Y103.127 E6.723 F1800.000
G1 X113.574 Y103.421 E6.735 F1800.000
G1 X113.119 Y103.658 E6.747 F1800.000
G1 X112.638 Y103.835 E6.760 F1800.000
G1 X112.138 Y103.949 E6.772 F1800.000
G1 X111.628 Y103.998 E6.784 F1800.000
G1 X111.116 Y103.982 E6.797 F1800.000
G1 X110.610 Y103.900 E6.809 F1800.000
G1 X110.119 Y103.754 E6.821 F1800.000
G1 X109.650 Y103.546 E6.834 F1800.000
G1 X109.212 Y103.281 E6.846 F1800.000
G1 X108.811 Y102.961 E6.858 F1800.000
G1 X108.454 Y102.593 E6.871 F1800.000
G1 X108.148 Y102.182 E6.883 F1800.000
G1 X107.896 Y101.736 E6.895 F1800.000
G1 X107.704 Y101.260 E6.908 F1800.000
G1 X107.574 Y100.765 E6.920 F1800.000
G1 X107.508 Y100.256 E6.932 F1800.000
G1 X107.508 Y99.744 E6.945 F1800.000
G1 X107.574 Y99.235 E6.957 F1800.000
G1 X107.704 Y98.740 E6.969 F1800.000
G1 X107.896 Y98.264 E6.982 F1800.000
G1 X108.148 Y97.818 E6.994 F1800.000
G1 X108.454 Y97.407 E7.006 F1800.000
G1 X108.811 Y97.039 E7.019 F1800.000
G1 X109.212 Y96.719 E7.031 F1800.000
G1 X109.650 Y96.454 E7.043 F1800.000
G1 X110.119 Y96.246 E7.056 F1800.000
G1 X110.610 Y96.100 E7.068 F1800.000
G1 X111.116 Y96.018 E7.081 F1800.000
G1 X111.628 Y96.002 E7.093 F1800.000
G1 X112.138 Y96.051 E7.105 F1800.000
G1 X112.638 Y96.165 E7.118 F1800.000
G1 X113.119 Y96.342 E7.130 F1800.000
G1 X113.574 Y96.579 E7.142 F1800.000
G1 X113.994 Y96.873 E7.155 F1800.000
G1 X114.373 Y97.217 E7.167 F1800.000
G1 X114.706 Y97.608 E7.179 F1800.000
G1 X114.985 Y98.037 E7.192 F1800.000
G1 X115.208 Y98.499 E7.204 F1800.000
G1 X115.369 Y98.985 E7.216 F1800.000
G1 X115.467 Y99.488 E7.229 F1800.000
G1 X115.500 Y100.000 E7.241 F1800.000
G1 E5.241 F3000.000
;Horizontal line #5 Tool 0
G1 X121.500 Y100.000 F12000.000
G1 E7.341 F3000.000
G1 X171.500 Y100.000 E8.568 F1800.000
G1 E6.568 F3000.000
;Horizontal line #6 Tool 0
G1 X121.500 Y90.000 F12000.000
G1 E8.668 F3000.000
G1 X171.500 Y90.000 E9.895 F1800.000
G1 E7.895 F3000.000
;Horizontal line #7 Tool 0
G1 X121.500 Y80.000 F12000.000
G1 E9.995 F3000.000
G1 X171.500 Y80.000 E11.223 F1800.000
G1 E9.223 F3000.000
;Horizontal line #8 Tool 0
G1 X121.500 Y70.000 F12000.000
G1 E11.323 F3000.000
G1 X171.500 Y70.000 E12.550 F1800.000
G1 E10.550 F3000.000
;Horizontal line #9 Tool 0
G1 X121.500 Y60.000 F12000.000
G1 E12.650 F3000.000
G1 X171.500 Y60.000 E13.877 F1800.000
G1 E11.877 F3000.000
;Horizontal line #10 Tool 0
G1 X121.500 Y50.000 F12000.000
G1 E13.977 F3000.000
G1 X171.500 Y50.000 E15.205 F1800.000
G1 E13.205 F3000.000
G1 Z0.300 F1800.000
;Vertical line #0 Tool 0
G1 X96.500 Y180.000 F12000.000
G1 Z0.150 F1800.000
G1 X96.500 Y230.000 E14.432 F1800.000
G1 E12.432 F3000.000
;Vertical line #1 Tool 0
G1 X106.500 Y180.000 F12000.000
G1 E14.532 F3000.000
G1 X106.500 Y230.000 E15.759 F1800.000
G1 E13.759 F3000.000
;Vertical line #2 Tool 0
G1 X116.500 Y180.000 F12000.000
G1 E15.859 F3000.000
G1 X116.500 Y230.000 E17.086 F1800.000
G1 E15.086 F3000.000
;Vertical line #3 Tool 0
G1 X126.500 Y180.000 F12000.000
G1 E17.186 F3000.000
G1 X126.500 Y230.000 E18.414 F1800.000
G1 E16.414 F3000.000
;Vertical line #4 Tool 0
G1 X136.500 Y180.000 F12000.000
G1 E18.514 F3000.000
G1 X136.500 Y230.000 E19.741 F1800.000
G1 E17.741 F3000.000
;Begin circle
G1 X150.500 Y170.000 E17.741 F12000.000
G1 E19.841 F3000.000
G1 X150.467 Y170.512 E19.853 F1800.000
G1 X150.369 Y171.015 E19.866 F1800.000
G1 X150.208 Y171.501 E19.878 F1800.000
G1 X149.985 Y171.963 E19.890 F1800.000
G1 X149.706 Y172.392 E19.903 F1800.000
G1 X149.373 Y172.783 E19.915 F1800.000
G1 X148.994 Y173.127 E19.927 F1800.000
G1 X148.574 Y173.421 E19.940 F1800.000
G1 X148.119 Y173.658 E19.952 F1800.000
G1 X147.638 Y173.835 E19.964 F1800.000
G1 X147.138 Y173.949 E19.977 F1800.000
G1 X146.628 Y173.998 E19.989 F1800.000
G1 X146.116 Y173.982 E20.001 F1800.000
G1 X145.610 Y173.900 E20.014 F1800.000
G1 X145.119 Y173.754 E20.026 F1800.000
G1 X144.650 Y173.546 E20.038 F1800.000
G1 X144.212 Y173.281 E20.051 F1800.000
G1 X143.811 Y172.961 E20.063 F1800.000
G1 X143.454 Y172.593 E20.075 F1800.000
G1 X143.148 Y172.182 E20.088 F1800.000
G1 X142.896 Y171.736 E20.100 F1800.000
G1 X142.704 Y171.260 E20.112 F1800.000
G1 X142.574 Y170.765 E20.125 F1800.000
G1 X142.508 Y170.256 E20.137 F1800.000
G1 X142.508 Y169.744 E20.149 F1800.000
G1 X142.574 Y169.235 E20.162 F1800.000
G1 X142.704 Y168.740 E20.174 F1800.000
G1 X142.896 Y168.264 E20.186 F1800.000
G1 X143.148 Y167.818 E20.199 F1800.000
G1 X143.454 Y167.407 E20.211 F1800.000
G1 X143.811 Y167.039 E20.223 F1800.000
G1 X144.212 Y166.719 E20.236 F1800.000
G1 X144.650 Y166.454 E20.248 F1800.000
G1 X145.119 Y166.246 E20.260 F1800.000
G1 X145.610 Y166.100 E20.273 F1800.000
G1 X146.116 Y166.018 E20.285 F1800.000
G1 X146.628 Y166.002 E20.297 F1800.000
G1 X147.138 Y166.051 E20.310 F1800.000
G1 X147.638 Y166.165 E20.322 F1800.000
G1 X148.119 Y166.342 E20.334 F1800.000
G1 X148.574 Y166.579 E20.347 F1800.000
G1 X148.994 Y166.873 E20.359 F1800.000
G1 X149.373 Y167.217 E20.371 F1800.000
G1 X149.706 Y167.608 E20.384 F1800.000
G1 X149.985 Y168.037 E20.396 F1800.000
G1 X150.208 Y168.499 E20.408 F1800.000
G1 X150.369 Y168.985 E20.421 F1800.000
G1 X150.467 Y169.488 E20.433 F1800.000
G1 X150.500 Y170.000 E20.445 F1800.000
G1 E18.445 F3000.000
;Vertical line #5 Tool 0
G1 X146.500 Y180.000 F12000.000
G1 E20.545 F3000.000
G1 X146.500 Y230.000 E21.773 F1800.000
G1 E19.773 F3000.000
;Vertical line #6 Tool 0
G1 X156.500 Y180.000 F12000.000
G1 E21.873 F3000.000
G1 X156.500 Y230.000 E23.100 F1800.000
G1 E21.100 F3000.000
;Vertical line #7 Tool 0
G1 X166.500 Y180.000 F12000.000
G1 E23.200 F3000.000
G1 X166.500 Y230.000 E24.427 F1800.000
G1 E22.427 F3000.000
;Vertical line #8 Tool 0
G1 X176.500 Y180.000 F12000.000
G1 E24.527 F3000.000
G1 X176.500 Y230.000 E25.755 F1800.000
G1 E23.755 F3000.000
;Vertical line #9 Tool 0
G1 X186.500 Y180.000 F12000.000
G1 E25.855 F3000.000
G1 X186.500 Y230.000 E27.082 F1800.000
G1 E25.082 F3000.000
;Vertical line #10 Tool 0
G1 X196.500 Y180.000 F12000.000
G1 E27.182 F3000.000
G1 X196.500 Y230.000 E28.409 F1800.000
G1 E26.409 F3000.000
;Begin Tool 1
T1
G1 Z0.450 F1800.000
G92 E0; zero extruder
G1 Y-33 F12000; move to front of machine
G1 E15 F6000; extrude 15 mm fast
G1 E30 F150 ; extrude another 15 mm slow
G1 E28 F6000 ; retract 2mm
G4 S2; wait for 2 seconds
; perform wipe sequence
G1 X-17 F12000
G1 X-37 F12000
G1 X-17 F12000
G1 X-37 F12000
G92 E0; zero extruder
;Horizontal line #0 Tool 1
G1 X121.500 Y150.500 F12000.000
G1 Z0.300 F1800.000
G1 X171.500 Y150.500 E1.227 F1800.000
G1 E-0.773 F3000.000
;Horizontal line #1 Tool 1
G1 X121.500 Y140.400 F12000.000
G1 E1.327 F3000.000
G1 X171.500 Y140.400 E2.555 F1800.000
G1 E0.555 F3000.000
;Horizontal line #2 Tool 1
G1 X121.500 Y130.300 F12000.000
G1 E2.655 F3000.000
G1 X171.500 Y130.300 E3.882 F1800.000
G1 E1.882 F3000.000
;Horizontal line #3 Tool 1
G1 X121.500 Y120.200 F12000.000
G1 E3.982 F3000.000
G1 X171.500 Y120.200 E5.209 F1800.000
G1 E3.209 F3000.000
;Horizontal line #4 Tool 1
G1 X121.500 Y110.100 F12000.000
G1 E5.309 F3000.000
G1 X171.500 Y110.100 E6.536 F1800.000
G1 E4.536 F3000.000
;Horizontal line #5 Tool 1
G1 X121.500 Y100.000 F12000.000
G1 E6.636 F3000.000
G1 X171.500 Y100.000 E7.864 F1800.000
G1 E5.864 F3000.000
;Horizontal line #6 Tool 1
G1 X121.500 Y89.900 F12000.000
G1 E7.964 F3000.000
G1 X171.500 Y89.900 E9.191 F1800.000
G1 E7.191 F3000.000
;Horizontal line #7 Tool 1
G1 X121.500 Y79.800 F12000.000
G1 E9.291 F3000.000
G1 X171.500 Y79.800 E10.518 F1800.000
G1 E8.518 F3000.000
;Horizontal line #8 Tool 1
G1 X121.500 Y69.700 F12000.000
G1 E10.618 F3000.000
G1 X171.500 Y69.700 E11.845 F1800.000
G1 E9.845 F3000.000
;Horizontal line #9 Tool 1
G1 X121.500 Y59.600 F12000.000
G1 E11.945 F3000.000
G1 X171.500 Y59.600 E13.173 F1800.000
G1 E11.173 F3000.000
;Horizontal line #10 Tool 1
G1 X121.500 Y49.500 F12000.000
G1 E13.273 F3000.000
G1 X171.500 Y49.500 E14.500 F1800.000
G1 E12.500 F3000.000
G1 Z0.450 F1800.000
;Vertical line #0 Tool 1
G1 X96.000 Y180.000 F12000.000
G1 Z0.300 F1800.000
G1 X96.000 Y230.000 E13.727 F1800.000
G1 E11.727 F3000.000
;Vertical line #1 Tool 1
G1 X106.100 Y180.000 F12000.000
G1 E13.827 F3000.000
G1 X106.100 Y230.000 E15.055 F1800.000
G1 E13.055 F3000.000
;Vertical line #2 Tool 1
G1 X116.200 Y180.000 F12000.000
G1 E15.155 F3000.000
G1 X116.200 Y230.000 E16.382 F1800.000
G1 E14.382 F3000.000
;Vertical line #3 Tool 1
G1 X126.300 Y180.000 F12000.000
G1 E16.482 F3000.000
G1 X126.300 Y230.000 E17.709 F1800.000
G1 E15.709 F3000.000
;Vertical line #4 Tool 1
G1 X136.400 Y180.000 F12000.000
G1 E17.809 F3000.000
G1 X136.400 Y230.000 E19.036 F1800.000
G1 E17.036 F3000.000
;Vertical line #5 Tool 1
G1 X146.500 Y180.000 F12000.000
G1 E19.136 F3000.000
G1 X146.500 Y230.000 E20.364 F1800.000
G1 E18.364 F3000.000
;Vertical line #6 Tool 1
G1 X156.600 Y180.000 F12000.000
G1 E20.464 F3000.000
G1 X156.600 Y230.000 E21.691 F1800.000
G1 E19.691 F3000.000
;Vertical line #7 Tool 1
G1 X166.700 Y180.000 F12000.000
G1 E21.791 F3000.000
G1 X166.700 Y230.000 E23.018 F1800.000
G1 E21.018 F3000.000
;Vertical line #8 Tool 1
G1 X176.800 Y180.000 F12000.000
G1 E23.118 F3000.000
G1 X176.800 Y230.000 E24.345 F1800.000
G1 E22.345 F3000.000
;Vertical line #9 Tool 1
G1 X186.900 Y180.000 F12000.000
G1 E24.445 F3000.000
G1 X186.900 Y230.000 E25.673 F1800.000
G1 E23.673 F3000.000
;Vertical line #10 Tool 1
G1 X197.000 Y180.000 F12000.000
G1 E25.773 F3000.000
G1 X197.000 Y230.000 E27.000 F1800.000
G1 E25.000 F3000.000
G1 Z20 F600
G28 X0 Y0
M84
M107
M400
