# Lesson 1 - Basics

## Summary
This lesson will introduce you into the very basics of ROS. By the end, you will know how to start ROS and run the turtle simulation. Before starting, you should take a few minutes and just read/watch videos about ROS in general, so you have a general understanding on what it is used for.

## Vocab
- ROS: Robot Operating System, the software we are learning about
- `roscore`: Command used to start ROS
- turtlesim: A ROS package that displays a turtle and allows basic interactions

## Goals
1. Start the roscore
2. Display the turtle simulation

## Resources
- [Understanding ROS Nodes](http://wiki.ros.org/ROS/Tutorials/UnderstandingNodes)
- [Turtlesim](http://wiki.ros.org/turtlesim)

**Important:** Run `apt-get update` before attempting to install tutorial packages

## Notes
- Before running ros commands, you need to run `source /opt/ros/melodic/setup.bash` inside the container. This will set up your environment to run ROS commands, and has to be run in every new terminal
- The version of ROS you are using is melodic
- If you are done with roscore, hit `ctrl-c` to exit the command
- Whenever you want to run ROS commands, you need to be in the container. This means that if you create a new terminal, you have to ssh into the docker container you are using
