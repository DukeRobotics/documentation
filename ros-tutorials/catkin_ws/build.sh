#!/bin/bash
# A convenience script used to build our code.

set -ex

source /opt/ros/melodic/setup.bash

catkin build
source devel/setup.bash

set +x
echo ""
echo "Now, please run:"
echo "source devel/setup.bash"
echo ""
