# Lesson 1 - Basics

## Summary
This lesson will introduce you into the very basics of ROS. By the end, you will know how to start ROS and run the turtle simulation. Before starting, you should take a few minutes and just watch videos or read about ROS in general, just so that you have a general understanding of its uses.

## Vocab
- **ROS**: Robot Operating System, the software we are learning about
- **`roscore`**: Command used to start ROS
- **turtlesim**: A ROS package that displays a turtle and allows basic interactions

## Goals
1. Start the roscore.
2. Print information about a node.
3. Display the turtle simulation.

## Resources
- [Understanding ROS Nodes](http://wiki.ros.org/ROS/Tutorials/UnderstandingNodes)

## Notes
- :information_source: Before running ROS commands, you need to run
    ```bash
    source /opt/ros/melodic/setup.bash
    ```
    inside the container. This will set up your environment to run ROS commands, and has to be run in every new terminal.
- :information_source: Run these two commands inside the container to install the tutorial packages:
    ```bash
    apt update
    apt install ros-melodic-ros-tutorials
    ```
- The version of ROS you are using is melodic.
- If you are done with roscore, hit `ctrl-c` to exit the command.
- Whenever you want to run ROS commands, you need to be in the container. So if you create a new terminal, you have to SSH into the Docker container you are using. (But you don't need to run docker-compose again since your container is already running.)

***

Radical! Now proceed to [Lesson 2 - Node and Topics](lesson-2-nodes-and-topics.md).
