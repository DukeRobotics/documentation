# Lesson 3 - Write a Node

Reminder: Read the notes!

## Summary
In this lesson you will write your own node to control the turtle. This will involve making your own package,
and writing a node inside that package. Moving forward, you will need to program in Python. If you do not have
experience coding, you will need to learn Python. Find a tutorial/course you like online, or pick one from
[here](https://stackify.com/learn-python-tutorials/#post-21937-_u49dnodg9ai6) or [here](https://gitconnected.com/learn/python).
If you have experience coding in another language, feel free to proceed as Python should be fairly easy for you to pick up.

## Vocab
- Package: A folder of nodes, messages, all related to some common goal or concept
- `catkin`: The package managing system. This lets you create a workspace, create packages, manage packages, etc.

## Goals
1. Create your own package
   - Be sure to use the newer versions of catkin commands (see Catkin Tools below). For example, do not use `catkin_make`, use `catkin build`. Similarly, `catkin_create_pkg` becomes `catkin create pkg`.
2. Create a new node inside that package
3. Write this node to make the turtle move in a square
   - Hint: You will need to publish something somewhere

## Resources
- [Packages](http://wiki.ros.org/ROS/Tutorials/CreatingPackage)
- [Publisher & Subscriber](http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29)
- [Catkin Tools](https://catkin-tools.readthedocs.io/en/latest/index.html)
   - [Quickstart](https://catkin-tools.readthedocs.io/en/latest/quick_start.html) to initialize new workspace
- [Video tutorial #1](https://youtu.be/4Lifb9Cg_9w)
- [Video tutorial #2](https://youtu.be/D7ISrmszozk)

## Notes
- You may want to run the docker container using a mount version of the `docker run` command to save your files (remember the [Docker Intro](https://github.com/DukeRobotics/documentation/blob/master/docker/README.md))
- You will not be able to use the code in the 'Publisher and Subscriber' tutorial exactly as it is
