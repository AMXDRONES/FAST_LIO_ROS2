#!/bin/bash

# Source ROS2 and FastLIO workspace
source /opt/ros/humble/setup.bash || { echo "Error: Unable to source ROS2 setup file"; exit 1; }
cd ~/fastlio_ws || { echo "Error: Unable to change to ~/fastlio_ws directory"; exit 1; }
source install/setup.bash || { echo "Error: Unable to source FastLIO workspace setup file"; exit 1; }

# Start fast_lio and livox_ros2_driver

ros2 launch fast_lio livox_fastlio.launch.py &

echo "LiDAR driver and FastLIO mapping started successfully"

# Keep the script running until both processes exit
wait

EOF
