# Lesson 3 - Write a Node

Reminder: Read the notes!

## Summary
In this lesson you will write your own node to control the turtle. This will involve making your own package,
and writing a node inside that package.

## Vocab
- Package: A folder of nodes, messages, all related to some common goal or concept
- `catkin`: The package managing system. This lets you create a workspace, create packages, manage packages, etc.

## Goals
1. Create your own package
   - Do not use `catkin_make`, use `catkin build`. See resources and notes for more details
2. Create a new node inside that package
3. Write this node to make the turtle move in a square
   - Hint: You will need to publish something somewhere

## Resources
- https://catkin-tools.readthedocs.io/en/latest/index.html
- http://wiki.ros.org/ROS/Tutorials/CreatingPackage
- http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29

## Notes
- In the second tutorial, on the official ROS site, use it more as an explanation of packages rather than a
set of commands to follow. When creating your own workspace and package, use the catkin_tools documentation.
This means you should not be using commands like `catkin_create_pkg` and `catkin_make`.
- In the catkin_tools documentation, look at Quickstart for how to initialize a new workspace
- You will not be able to use the code in the third tutorial exactly as it is
