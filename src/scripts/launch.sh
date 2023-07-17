#!/bin/sh

#Virtual Display Manager - Because Using Virtual Linux Decvice
#Xvfb :1 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &
#export DISPLAY=:1

xterm  -e  " gazebo " &
sleep 5
xterm  -e  " source /opt/ros/kinetic/setup.bash; roscore" & 
sleep 5
xterm  -e  " rosrun rviz rviz" 