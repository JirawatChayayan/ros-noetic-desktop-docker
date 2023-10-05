#!/bin/bash
source /opt/ros/noetic/setup.bash

chmod +x /ros_ws/src/ping_mqtt/script/talker.py
dos2unix /ros_ws/src/ping_mqtt/script/talker.py

cd /ros_ws && catkin_make

source /ros_ws/devel/setup.bash

roslaunch ping_mqtt test.launch

