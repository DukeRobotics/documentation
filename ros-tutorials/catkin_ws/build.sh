#!/bin/bash
# A convenience script used to build our code.

set -e

source /opt/ros/melodic/setup.bash

catkin build
source devel/setup.bash
cd ../..

echo ""
echo "Now, please run:"
echo "source devel/setup.bash"
echo ""
