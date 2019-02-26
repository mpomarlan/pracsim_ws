#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
cd ./0_giskard
rosws update
rosdep update
rosdep install --ignore-src --from-paths src/
catkin_make
source ./devel/setup.bash
cd ../2_cram
rosws update
rosdep update
rosdep install --ignore-src --from-paths src/
catkin_make
source ./devel/setup.bash
cd ../6_demos
rosws update
rosdep update
rosdep install --ignore-src --from-paths src/
catkin_make
source ./devel/setup.bash



