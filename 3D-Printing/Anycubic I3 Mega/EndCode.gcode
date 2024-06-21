M104 S0 ; turn off extruder
M140 S0 ; turn off bed
M84 ; disable motors
M107 ; fans off
G91 ; relative positioning
G1 E-6 F2400 ; retract the filament
G1 Z+0.5 ;X-20 Y-20 F7200 ; wipe from model
G28 X0 ;Y0 ; move X/Y to min endstops
G1 Y180 F2000 ;
M84 ; steppers off
G90
M300 P300 S4000