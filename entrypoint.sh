#!/bin/bash

source /ws_livox/devel/setup.sh

rosbag record -aO "/root/shared_dir/${BAGNAME}.bag" &

roslaunch livox_ros_driver livox_lidar.launch xfer_format:=1

chmod a+rw "/root/shared_dir/${BAGNAME}.bag"
