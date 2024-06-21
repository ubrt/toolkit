G21 ; metric values
G90 ; absolute positioning
M82 ; set extruder to absolute mode
M107 ; start with the fans off

M140 S{material_bed_temperature} ; start preheating the bed WITHOUT wait to what is set in Cura
M104 S{material_print_temperature} T0 ; start preheating hotend WITHOUT wait to what is set in Cura
G28 X0 Y0 ; move X/Y to min endstops
G28 Z0 ; move Z to min endstops
M501 ; restore epron settings
M420 S1 ; apply bed leve mesh (if you updated the firmware)
M190 S{material_bed_temperature} ; start heating the bed to what is set in Cura and WAIT
M109 S{material_print_temperature} T0 ; start heating hotend to what is set in Cura and WAIT

M106 S255 ; fan on
G0 Z0.2 F1800 ; move nozzle to print position
G92 E0 ; specify current extruder position as zero
G1 X190 E50 F1200 ; extrude a line in front of the printer
G92 E0 ; specify current extruder position as zero
G0 Z20 F6000 ; move head up
G1 E-6 F2400 ; retract
G04 S2 ; wait 2s
G0 X0 F6000 ; wipe from oozed filament
G1 E-1 F2400 ; undo some of the retraction to avoid oozing
G1 F6000 ; set travel speed to move to start printing point
M117 Printing...
G5