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
G1 E2.100 F3000.000
G1 X171.500 Y150.000 E3.327 F1800.000
G1 E1.327 F3000.000
;Horizontal line #1 Tool 0
G1 X121.500 Y140.000 F12000.000
G1 E3.427 F3000.000
G1 X171.500 Y140.000 E4.655 F1800.000
G1 E2.655 F3000.000
;Horizontal line #2 Tool 0
G1 X121.500 Y130.000 F12000.000
G1 E4.755 F3000.000
G1 X171.500 Y130.000 E5.982 F1800.000
G1 E3.982 F3000.000
;Horizontal line #3 Tool 0
G1 X121.500 Y120.000 F12000.000
G1 E6.082 F3000.000
G1 X171.500 Y120.000 E7.309 F1800.000
G1 E5.309 F3000.000
;Horizontal line #4 Tool 0
G1 X121.500 Y110.000 F12000.000
G1 E7.409 F3000.000
G1 X171.500 Y110.000 E8.636 F1800.000
G1 E6.636 F3000.000
;Begin circle
G1 X115.500 Y100.000 E6.636 F12000.000
G1 E8.736 F3000.000
G1 X115.467 Y100.512 E8.749 F1800.000
G1 X115.369 Y101.015 E8.761 F1800.000
G1 X115.208 Y101.501 E8.773 F1800.000
G1 X114.985 Y101.963 E8.786 F1800.000
G1 X114.706 Y102.392 E8.798 F1800.000
G1 X114.373 Y102.783 E8.810 F1800.000
G1 X113.994 Y103.127 E8.823 F1800.000
G1 X113.574 Y103.421 E8.835 F1800.000
G1 X113.119 Y103.658 E8.847 F1800.000
G1 X112.638 Y103.835 E8.860 F1800.000
G1 X112.138 Y103.949 E8.872 F1800.000
G1 X111.628 Y103.998 E8.884 F1800.000
G1 X111.116 Y103.982 E8.897 F1800.000
G1 X110.610 Y103.900 E8.909 F1800.000
G1 X110.119 Y103.754 E8.921 F1800.000
G1 X109.650 Y103.546 E8.934 F1800.000
G1 X109.212 Y103.281 E8.946 F1800.000
G1 X108.811 Y102.961 E8.958 F1800.000
G1 X108.454 Y102.593 E8.971 F1800.000
G1 X108.148 Y102.182 E8.983 F1800.000
G1 X107.896 Y101.736 E8.995 F1800.000
G1 X107.704 Y101.260 E9.008 F1800.000
G1 X107.574 Y100.765 E9.020 F1800.000
G1 X107.508 Y100.256 E9.032 F1800.000
G1 X107.508 Y99.744 E9.045 F1800.000
G1 X107.574 Y99.235 E9.057 F1800.000
G1 X107.704 Y98.740 E9.069 F1800.000
G1 X107.896 Y98.264 E9.082 F1800.000
G1 X108.148 Y97.818 E9.094 F1800.000
G1 X108.454 Y97.407 E9.106 F1800.000
G1 X108.811 Y97.039 E9.119 F1800.000
G1 X109.212 Y96.719 E9.131 F1800.000
G1 X109.650 Y96.454 E9.143 F1800.000
G1 X110.119 Y96.246 E9.156 F1800.000
G1 X110.610 Y96.100 E9.168 F1800.000
G1 X111.116 Y96.018 E9.181 F1800.000
G1 X111.628 Y96.002 E9.193 F1800.000
G1 X112.138 Y96.051 E9.205 F1800.000
G1 X112.638 Y96.165 E9.218 F1800.000
G1 X113.119 Y96.342 E9.230 F1800.000
G1 X113.574 Y96.579 E9.242 F1800.000
G1 X113.994 Y96.873 E9.255 F1800.000
G1 X114.373 Y97.217 E9.267 F1800.000
G1 X114.706 Y97.608 E9.279 F1800.000
G1 X114.985 Y98.037 E9.292 F1800.000
G1 X115.208 Y98.499 E9.304 F1800.000
G1 X115.369 Y98.985 E9.316 F1800.000
G1 X115.467 Y99.488 E9.329 F1800.000
G1 X115.500 Y100.000 E9.341 F1800.000
G1 E7.341 F3000.000
;Horizontal line #5 Tool 0
G1 X121.500 Y100.000 F12000.000
G1 E9.441 F3000.000
G1 X171.500 Y100.000 E10.668 F1800.000
G1 E8.668 F3000.000
;Horizontal line #6 Tool 0
G1 X121.500 Y90.000 F12000.000
G1 E10.768 F3000.000
G1 X171.500 Y90.000 E11.995 F1800.000
G1 E9.995 F3000.000
;Horizontal line #7 Tool 0
G1 X121.500 Y80.000 F12000.000
G1 E12.095 F3000.000
G1 X171.500 Y80.000 E13.323 F1800.000
G1 E11.323 F3000.000
;Horizontal line #8 Tool 0
G1 X121.500 Y70.000 F12000.000
G1 E13.423 F3000.000
G1 X171.500 Y70.000 E14.650 F1800.000
G1 E12.650 F3000.000
;Horizontal line #9 Tool 0
G1 X121.500 Y60.000 F12000.000
G1 E14.750 F3000.000
G1 X171.500 Y60.000 E15.977 F1800.000
G1 E13.977 F3000.000
;Horizontal line #10 Tool 0
G1 X121.500 Y50.000 F12000.000
G1 E16.077 F3000.000
G1 X171.500 Y50.000 E17.305 F1800.000
G1 E15.305 F3000.000
G1 Z0.300 F1800.000
;Vertical line #0 Tool 0
G1 X96.500 Y180.000 F12000.000
G1 Z0.150 F1800.000
G1 E17.405 F3000.000
G1 X96.500 Y230.000 E18.632 F1800.000
G1 E16.632 F3000.000
;Vertical line #1 Tool 0
G1 X106.500 Y180.000 F12000.000
G1 E18.732 F3000.000
G1 X106.500 Y230.000 E19.959 F1800.000
G1 E17.959 F3000.000
;Vertical line #2 Tool 0
G1 X116.500 Y180.000 F12000.000
G1 E20.059 F3000.000
G1 X116.500 Y230.000 E21.286 F1800.000
G1 E19.286 F3000.000
;Vertical line #3 Tool 0
G1 X126.500 Y180.000 F12000.000
G1 E21.386 F3000.000
G1 X126.500 Y230.000 E22.614 F1800.000
G1 E20.614 F3000.000
;Vertical line #4 Tool 0
G1 X136.500 Y180.000 F12000.000
G1 E22.714 F3000.000
G1 X136.500 Y230.000 E23.941 F1800.000
G1 E21.941 F3000.000
;Begin circle
G1 X150.500 Y170.000 E21.941 F12000.000
G1 E24.041 F3000.000
G1 X150.467 Y170.512 E24.053 F1800.000
G1 X150.369 Y171.015 E24.066 F1800.000
G1 X150.208 Y171.501 E24.078 F1800.000
G1 X149.985 Y171.963 E24.090 F1800.000
G1 X149.706 Y172.392 E24.103 F1800.000
G1 X149.373 Y172.783 E24.115 F1800.000
G1 X148.994 Y173.127 E24.127 F1800.000
G1 X148.574 Y173.421 E24.140 F1800.000
G1 X148.119 Y173.658 E24.152 F1800.000
G1 X147.638 Y173.835 E24.164 F1800.000
G1 X147.138 Y173.949 E24.177 F1800.000
G1 X146.628 Y173.998 E24.189 F1800.000
G1 X146.116 Y173.982 E24.201 F1800.000
G1 X145.610 Y173.900 E24.214 F1800.000
G1 X145.119 Y173.754 E24.226 F1800.000
G1 X144.650 Y173.546 E24.238 F1800.000
G1 X144.212 Y173.281 E24.251 F1800.000
G1 X143.811 Y172.961 E24.263 F1800.000
G1 X143.454 Y172.593 E24.275 F1800.000
G1 X143.148 Y172.182 E24.288 F1800.000
G1 X142.896 Y171.736 E24.300 F1800.000
G1 X142.704 Y171.260 E24.312 F1800.000
G1 X142.574 Y170.765 E24.325 F1800.000
G1 X142.508 Y170.256 E24.337 F1800.000
G1 X142.508 Y169.744 E24.349 F1800.000
G1 X142.574 Y169.235 E24.362 F1800.000
G1 X142.704 Y168.740 E24.374 F1800.000
G1 X142.896 Y168.264 E24.386 F1800.000
G1 X143.148 Y167.818 E24.399 F1800.000
G1 X143.454 Y167.407 E24.411 F1800.000
G1 X143.811 Y167.039 E24.423 F1800.000
G1 X144.212 Y166.719 E24.436 F1800.000
G1 X144.650 Y166.454 E24.448 F1800.000
G1 X145.119 Y166.246 E24.460 F1800.000
G1 X145.610 Y166.100 E24.473 F1800.000
G1 X146.116 Y166.018 E24.485 F1800.000
G1 X146.628 Y166.002 E24.497 F1800.000
G1 X147.138 Y166.051 E24.510 F1800.000
G1 X147.638 Y166.165 E24.522 F1800.000
G1 X148.119 Y166.342 E24.534 F1800.000
G1 X148.574 Y166.579 E24.547 F1800.000
G1 X148.994 Y166.873 E24.559 F1800.000
G1 X149.373 Y167.217 E24.571 F1800.000
G1 X149.706 Y167.608 E24.584 F1800.000
G1 X149.985 Y168.037 E24.596 F1800.000
G1 X150.208 Y168.499 E24.608 F1800.000
G1 X150.369 Y168.985 E24.621 F1800.000
G1 X150.467 Y169.488 E24.633 F1800.000
G1 X150.500 Y170.000 E24.645 F1800.000
G1 E22.645 F3000.000
;Vertical line #5 Tool 0
G1 X146.500 Y180.000 F12000.000
G1 E24.745 F3000.000
G1 X146.500 Y230.000 E25.973 F1800.000
G1 E23.973 F3000.000
;Vertical line #6 Tool 0
G1 X156.500 Y180.000 F12000.000
G1 E26.073 F3000.000
G1 X156.500 Y230.000 E27.300 F1800.000
G1 E25.300 F3000.000
;Vertical line #7 Tool 0
G1 X166.500 Y180.000 F12000.000
G1 E27.400 F3000.000
G1 X166.500 Y230.000 E28.627 F1800.000
G1 E26.627 F3000.000
;Vertical line #8 Tool 0
G1 X176.500 Y180.000 F12000.000
G1 E28.727 F3000.000
G1 X176.500 Y230.000 E29.955 F1800.000
G1 E27.955 F3000.000
;Vertical line #9 Tool 0
G1 X186.500 Y180.000 F12000.000
G1 E30.055 F3000.000
G1 X186.500 Y230.000 E31.282 F1800.000
G1 E29.282 F3000.000
;Vertical line #10 Tool 0
G1 X196.500 Y180.000 F12000.000
G1 E31.382 F3000.000
G1 X196.500 Y230.000 E32.609 F1800.000
G1 E30.609 F3000.000
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
G1 E2.100 F3000.000
G1 X171.500 Y150.500 E3.327 F1800.000
G1 E1.327 F3000.000
;Horizontal line #1 Tool 1
G1 X121.500 Y140.400 F12000.000
G1 E3.427 F3000.000
G1 X171.500 Y140.400 E4.655 F1800.000
G1 E2.655 F3000.000
;Horizontal line #2 Tool 1
G1 X121.500 Y130.300 F12000.000
G1 E4.755 F3000.000
G1 X171.500 Y130.300 E5.982 F1800.000
G1 E3.982 F3000.000
;Horizontal line #3 Tool 1
G1 X121.500 Y120.200 F12000.000
G1 E6.082 F3000.000
G1 X171.500 Y120.200 E7.309 F1800.000
G1 E5.309 F3000.000
;Horizontal line #4 Tool 1
G1 X121.500 Y110.100 F12000.000
G1 E7.409 F3000.000
G1 X171.500 Y110.100 E8.636 F1800.000
G1 E6.636 F3000.000
;Horizontal line #5 Tool 1
G1 X121.500 Y100.000 F12000.000
G1 E8.736 F3000.000
G1 X171.500 Y100.000 E9.964 F1800.000
G1 E7.964 F3000.000
;Horizontal line #6 Tool 1
G1 X121.500 Y89.900 F12000.000
G1 E10.064 F3000.000
G1 X171.500 Y89.900 E11.291 F1800.000
G1 E9.291 F3000.000
;Horizontal line #7 Tool 1
G1 X121.500 Y79.800 F12000.000
G1 E11.391 F3000.000
G1 X171.500 Y79.800 E12.618 F1800.000
G1 E10.618 F3000.000
;Horizontal line #8 Tool 1
G1 X121.500 Y69.700 F12000.000
G1 E12.718 F3000.000
G1 X171.500 Y69.700 E13.945 F1800.000
G1 E11.945 F3000.000
;Horizontal line #9 Tool 1
G1 X121.500 Y59.600 F12000.000
G1 E14.045 F3000.000
G1 X171.500 Y59.600 E15.273 F1800.000
G1 E13.273 F3000.000
;Horizontal line #10 Tool 1
G1 X121.500 Y49.500 F12000.000
G1 E15.373 F3000.000
G1 X171.500 Y49.500 E16.600 F1800.000
G1 E14.600 F3000.000
G1 Z0.450 F1800.000
;Vertical line #0 Tool 1
G1 X96.000 Y180.000 F12000.000
G1 Z0.300 F1800.000
G1 E16.700 F3000.000
G1 X96.000 Y230.000 E17.927 F1800.000
G1 E15.927 F3000.000
;Vertical line #1 Tool 1
G1 X106.100 Y180.000 F12000.000
G1 E18.027 F3000.000
G1 X106.100 Y230.000 E19.255 F1800.000
G1 E17.255 F3000.000
;Vertical line #2 Tool 1
G1 X116.200 Y180.000 F12000.000
G1 E19.355 F3000.000
G1 X116.200 Y230.000 E20.582 F1800.000
G1 E18.582 F3000.000
;Vertical line #3 Tool 1
G1 X126.300 Y180.000 F12000.000
G1 E20.682 F3000.000
G1 X126.300 Y230.000 E21.909 F1800.000
G1 E19.909 F3000.000
;Vertical line #4 Tool 1
G1 X136.400 Y180.000 F12000.000
G1 E22.009 F3000.000
G1 X136.400 Y230.000 E23.236 F1800.000
G1 E21.236 F3000.000
;Vertical line #5 Tool 1
G1 X146.500 Y180.000 F12000.000
G1 E23.336 F3000.000
G1 X146.500 Y230.000 E24.564 F1800.000
G1 E22.564 F3000.000
;Vertical line #6 Tool 1
G1 X156.600 Y180.000 F12000.000
G1 E24.664 F3000.000
G1 X156.600 Y230.000 E25.891 F1800.000
G1 E23.891 F3000.000
;Vertical line #7 Tool 1
G1 X166.700 Y180.000 F12000.000
G1 E25.991 F3000.000
G1 X166.700 Y230.000 E27.218 F1800.000
G1 E25.218 F3000.000
;Vertical line #8 Tool 1
G1 X176.800 Y180.000 F12000.000
G1 E27.318 F3000.000
G1 X176.800 Y230.000 E28.545 F1800.000
G1 E26.545 F3000.000
;Vertical line #9 Tool 1
G1 X186.900 Y180.000 F12000.000
G1 E28.645 F3000.000
G1 X186.900 Y230.000 E29.873 F1800.000
G1 E27.873 F3000.000
;Vertical line #10 Tool 1
G1 X197.000 Y180.000 F12000.000
G1 E29.973 F3000.000
G1 X197.000 Y230.000 E31.200 F1800.000
G1 E29.200 F3000.000
G1 Z20 F600
G28 X0 Y0
M84
M107
M400