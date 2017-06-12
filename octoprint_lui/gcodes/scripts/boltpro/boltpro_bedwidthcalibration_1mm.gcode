G28
T0
M109 T0
M109 T1
M190
M107
G28
G90
;Begin Tool 0
T0
G1 Z0.300 F1800.000
G92 E0; zero extruder
G1 Y-33.00 F12000; move to front of machine
G1 E15 F6000; extrude 15 mm fast
G1 E30 F150 ; extrude another 15 mm slow
G1 E28 F6000 ; retract 2mm
G4 S2; wait for 2 seconds
; perform wipe sequence
G1 X308.000 F12000
G1 X337.000 F12000
G1 X308.000 F12000
G1 X337.000 F12000
G92 E0; zero extruder
;Vertical line #0 Tool 0
G1 X31.000 Y260.000 F12000.000
G1 Z0.150 F1800.000
G1 E2.100 F3000.000
G1 X31.000 Y310.000 E3.327 F1800.000
G1 E1.327 F3000.000
;Vertical line #1 Tool 0
G1 X46.000 Y260.000 F12000.000
G1 E3.427 F3000.000
G1 X46.000 Y310.000 E4.655 F1800.000
G1 E2.655 F3000.000
;Vertical line #2 Tool 0
G1 X61.000 Y260.000 F12000.000
G1 E4.755 F3000.000
G1 X61.000 Y310.000 E5.982 F1800.000
G1 E3.982 F3000.000
;Vertical line #3 Tool 0
G1 X76.000 Y260.000 F12000.000
G1 E6.082 F3000.000
G1 X76.000 Y310.000 E7.309 F1800.000
G1 E5.309 F3000.000
;Vertical line #4 Tool 0
G1 X91.000 Y260.000 F12000.000
G1 E7.409 F3000.000
G1 X91.000 Y310.000 E8.636 F1800.000
G1 E6.636 F3000.000
;Vertical line #5 Tool 0
G1 X106.000 Y260.000 F12000.000
G1 E8.736 F3000.000
G1 X106.000 Y310.000 E9.964 F1800.000
G1 E7.964 F3000.000
;Vertical line #6 Tool 0
G1 X121.000 Y260.000 F12000.000
G1 E10.064 F3000.000
G1 X121.000 Y310.000 E11.291 F1800.000
G1 E9.291 F3000.000
;Vertical line #7 Tool 0
G1 X136.000 Y260.000 F12000.000
G1 E11.391 F3000.000
G1 X136.000 Y310.000 E12.618 F1800.000
G1 E10.618 F3000.000
;Begin circle
G1 X155.000 Y250.000 E10.618 F12000.000
G1 E12.718 F3000.000
G1 X154.967 Y250.512 E12.730 F1800.000
G1 X154.869 Y251.015 E12.743 F1800.000
G1 X154.708 Y251.501 E12.755 F1800.000
G1 X154.485 Y251.963 E12.768 F1800.000
G1 X154.206 Y252.392 E12.780 F1800.000
G1 X153.873 Y252.783 E12.792 F1800.000
G1 X153.494 Y253.127 E12.805 F1800.000
G1 X153.074 Y253.421 E12.817 F1800.000
G1 X152.619 Y253.658 E12.829 F1800.000
G1 X152.138 Y253.835 E12.842 F1800.000
G1 X151.638 Y253.949 E12.854 F1800.000
G1 X151.128 Y253.998 E12.866 F1800.000
G1 X150.616 Y253.982 E12.879 F1800.000
G1 X150.110 Y253.900 E12.891 F1800.000
G1 X149.619 Y253.754 E12.903 F1800.000
G1 X149.150 Y253.546 E12.916 F1800.000
G1 X148.712 Y253.281 E12.928 F1800.000
G1 X148.311 Y252.961 E12.940 F1800.000
G1 X147.954 Y252.593 E12.953 F1800.000
G1 X147.648 Y252.182 E12.965 F1800.000
G1 X147.396 Y251.736 E12.977 F1800.000
G1 X147.204 Y251.260 E12.990 F1800.000
G1 X147.074 Y250.765 E13.002 F1800.000
G1 X147.008 Y250.256 E13.014 F1800.000
G1 X147.008 Y249.744 E13.027 F1800.000
G1 X147.074 Y249.235 E13.039 F1800.000
G1 X147.204 Y248.740 E13.051 F1800.000
G1 X147.396 Y248.264 E13.064 F1800.000
G1 X147.648 Y247.818 E13.076 F1800.000
G1 X147.954 Y247.407 E13.088 F1800.000
G1 X148.311 Y247.039 E13.101 F1800.000
G1 X148.712 Y246.719 E13.113 F1800.000
G1 X149.150 Y246.454 E13.125 F1800.000
G1 X149.619 Y246.246 E13.138 F1800.000
G1 X150.110 Y246.100 E13.150 F1800.000
G1 X150.616 Y246.018 E13.162 F1800.000
G1 X151.128 Y246.002 E13.175 F1800.000
G1 X151.638 Y246.051 E13.187 F1800.000
G1 X152.138 Y246.165 E13.199 F1800.000
G1 X152.619 Y246.342 E13.212 F1800.000
G1 X153.074 Y246.579 E13.224 F1800.000
G1 X153.494 Y246.873 E13.236 F1800.000
G1 X153.873 Y247.217 E13.249 F1800.000
G1 X154.206 Y247.608 E13.261 F1800.000
G1 X154.485 Y248.037 E13.273 F1800.000
G1 X154.708 Y248.499 E13.286 F1800.000
G1 X154.869 Y248.985 E13.298 F1800.000
G1 X154.967 Y249.488 E13.310 F1800.000
G1 X155.000 Y250.000 E13.323 F1800.000
G1 E11.323 F3000.000
;Vertical line #8 Tool 0
G1 X151.000 Y260.000 F12000.000
G1 E13.423 F3000.000
G1 X151.000 Y310.000 E14.650 F1800.000
G1 E12.650 F3000.000
;Vertical line #9 Tool 0
G1 X166.000 Y260.000 F12000.000
G1 E14.750 F3000.000
G1 X166.000 Y310.000 E15.977 F1800.000
G1 E13.977 F3000.000
;Vertical line #10 Tool 0
G1 X181.000 Y260.000 F12000.000
G1 E16.077 F3000.000
G1 X181.000 Y310.000 E17.305 F1800.000
G1 E15.305 F3000.000
;Vertical line #11 Tool 0
G1 X196.000 Y260.000 F12000.000
G1 E17.405 F3000.000
G1 X196.000 Y310.000 E18.632 F1800.000
G1 E16.632 F3000.000
;Vertical line #12 Tool 0
G1 X211.000 Y260.000 F12000.000
G1 E18.732 F3000.000
G1 X211.000 Y310.000 E19.959 F1800.000
G1 E17.959 F3000.000
;Vertical line #13 Tool 0
G1 X226.000 Y260.000 F12000.000
G1 E20.059 F3000.000
G1 X226.000 Y310.000 E21.286 F1800.000
G1 E19.286 F3000.000
;Vertical line #14 Tool 0
G1 X241.000 Y260.000 F12000.000
G1 E21.386 F3000.000
G1 X241.000 Y310.000 E22.614 F1800.000
G1 E20.614 F3000.000
;Vertical line #15 Tool 0
G1 X256.000 Y260.000 F12000.000
G1 E22.714 F3000.000
G1 X256.000 Y310.000 E23.941 F1800.000
G1 E21.941 F3000.000
;Vertical line #16 Tool 0
G1 X271.000 Y260.000 F12000.000
G1 E24.041 F3000.000
G1 X271.000 Y310.000 E25.268 F1800.000
G1 E23.268 F3000.000
G1 Z0.300 F1800.000
;Begin Tool 1
T1
G1 Z0.450 F1800.000
G92 E0; zero extruder
G1 Y-33.00 F12000; move to front of machine
G1 E15 F6000; extrude 15 mm fast
G1 E30 F150 ; extrude another 15 mm slow
G1 E28 F6000 ; retract 2mm
G4 S2; wait for 2 seconds
; perform wipe sequence
G1 X-6.000 F12000
G1 X-35.000 F12000
G1 X-6.000 F12000
G1 X-35.000 F12000
G92 E0; zero extruder
;Vertical line #0 Tool 1
G1 X23.000 Y260.000 F12000.000
G1 Z0.300 F1800.000
G1 E2.100 F3000.000
G1 X23.000 Y310.000 E3.327 F1800.000
G1 E1.327 F3000.000
;Vertical line #1 Tool 1
G1 X39.000 Y260.000 F12000.000
G1 E3.427 F3000.000
G1 X39.000 Y310.000 E4.655 F1800.000
G1 E2.655 F3000.000
;Vertical line #2 Tool 1
G1 X55.000 Y260.000 F12000.000
G1 E4.755 F3000.000
G1 X55.000 Y310.000 E5.982 F1800.000
G1 E3.982 F3000.000
;Vertical line #3 Tool 1
G1 X71.000 Y260.000 F12000.000
G1 E6.082 F3000.000
G1 X71.000 Y310.000 E7.309 F1800.000
G1 E5.309 F3000.000
;Vertical line #4 Tool 1
G1 X87.000 Y260.000 F12000.000
G1 E7.409 F3000.000
G1 X87.000 Y310.000 E8.636 F1800.000
G1 E6.636 F3000.000
;Vertical line #5 Tool 1
G1 X103.000 Y260.000 F12000.000
G1 E8.736 F3000.000
G1 X103.000 Y310.000 E9.964 F1800.000
G1 E7.964 F3000.000
;Vertical line #6 Tool 1
G1 X119.000 Y260.000 F12000.000
G1 E10.064 F3000.000
G1 X119.000 Y310.000 E11.291 F1800.000
G1 E9.291 F3000.000
;Vertical line #7 Tool 1
G1 X135.000 Y260.000 F12000.000
G1 E11.391 F3000.000
G1 X135.000 Y310.000 E12.618 F1800.000
G1 E10.618 F3000.000
;Vertical line #8 Tool 1
G1 X151.000 Y260.000 F12000.000
G1 E12.718 F3000.000
G1 X151.000 Y310.000 E13.945 F1800.000
G1 E11.945 F3000.000
;Vertical line #9 Tool 1
G1 X167.000 Y260.000 F12000.000
G1 E14.045 F3000.000
G1 X167.000 Y310.000 E15.273 F1800.000
G1 E13.273 F3000.000
;Vertical line #10 Tool 1
G1 X183.000 Y260.000 F12000.000
G1 E15.373 F3000.000
G1 X183.000 Y310.000 E16.600 F1800.000
G1 E14.600 F3000.000
;Vertical line #11 Tool 1
G1 X199.000 Y260.000 F12000.000
G1 E16.700 F3000.000
G1 X199.000 Y310.000 E17.927 F1800.000
G1 E15.927 F3000.000
;Vertical line #12 Tool 1
G1 X215.000 Y260.000 F12000.000
G1 E18.027 F3000.000
G1 X215.000 Y310.000 E19.255 F1800.000
G1 E17.255 F3000.000
;Vertical line #13 Tool 1
G1 X231.000 Y260.000 F12000.000
G1 E19.355 F3000.000
G1 X231.000 Y310.000 E20.582 F1800.000
G1 E18.582 F3000.000
;Vertical line #14 Tool 1
G1 X247.000 Y260.000 F12000.000
G1 E20.682 F3000.000
G1 X247.000 Y310.000 E21.909 F1800.000
G1 E19.909 F3000.000
;Vertical line #15 Tool 1
G1 X263.000 Y260.000 F12000.000
G1 E22.009 F3000.000
G1 X263.000 Y310.000 E23.236 F1800.000
G1 E21.236 F3000.000
;Vertical line #16 Tool 1
G1 X279.000 Y260.000 F12000.000
G1 E23.336 F3000.000
G1 X279.000 Y310.000 E24.564 F1800.000
G1 E22.564 F3000.000
G1 Z0.450 F1800.000
G1 Z20 F600
G28 X0 Y0
M84
M107
M400
