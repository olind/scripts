#!/bin/bash

#http://linuxwacom.sourceforge.net/index.php/howto/xsetwacom
#pad left = leftclick
#pad right = double click

#"Wacom Graphire4 6x8 eraser"
#"Wacom Graphire4 6x8 cursor"
#"Wacom Graphire4 6x8 pad"
#"Wacom Graphire4 6x8"

#xsetwacom set "Wacom Graphire4 6x8" Mode Relative
#xsetwacom set "Wacom Graphire4 6x8" Button2 "button 3"
#xsetwacom set "Wacom Graphire4 6x8" Button3 "button 2"
#xsetwacom set "Wacom Graphire4 6x8" SpeedLevel 5
#xsetwacom set "Wacom Graphire4 6x8" Accel 7

#---

#$ xsetwacom --list dev --verbose

xsetwacom set '"Wacom Graphire4 6x8"' Mode Relative
xsetwacom set '"Wacom Graphire4 6x8"' Button2 "button 3"
xsetwacom set '"Wacom Graphire4 6x8"' Button3 "button 2"
xsetwacom set '"Wacom Graphire4 6x8"' SpeedLevel 5
xsetwacom set '"Wacom Graphire4 6x8"' Accel 7


#$ xsetwacom --list dev 
#"Wacom Graphire4 6x8" eraser ERASER    b
#"Wacom Graphire4 6x8" cursor CURSOR    
#"Wacom Graphire4 6x8" pad PAD       
#"Wacom Graphire4 6x8" STYLUS 
