#!/bin/bash
# A convenience script used to build our code. Takes one argument that specifies the workspace to build.

set -e

source /opt/ros/melodic/setup.bash

catkin build
source devel/setup.bash
cd ../..

echo "If you did not source this script, please run"
echo "source devel/setup.bash"
