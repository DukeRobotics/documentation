# Lesson 3 - Write a Node

Reminder: Read the notes!

## Summary
In this lesson, you will write your own node to control the turtle. This will involve modifying files in a package we prepared for you in the starter code.

This final tutorial will not necessarily provide all the information necessary. This is by design. The intention is to teach problem solving in the situation when you know _what_ you want to do, but not _how_ to do it. If there are things you do not recognize or feel comfortable with, take initiative and look them up online. Read tutorials, documentation, etc.

:warning: Moving forward, you will need to program in Python. If you do not have experience coding, you will need to learn Python. Find a tutorial/course you like online, or pick one from [here](https://stackify.com/learn-python-tutorials/#post-21937-_u49dnodg9ai6) or [here](https://gitconnected.com/learn/python). If you have experience coding in another language, feel free to proceed, as Python should be fairly easy for you to pick up.

## Vocab
- **Package**: A folder of nodes, messages, and other files all related to some common goal

## Goals
1. Program a node inside that package by editing the premade Python file.
    - Hint: You will need to publish something somewhere.
2. Run this node to make the turtle move in a square.

## Resources
- [turtlesim](http://wiki.ros.org/turtlesim)
- [Publisher & Subscriber](http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29)
- [Video tutorial #1](https://youtu.be/4Lifb9Cg_9w) (extra help)
- [Video tutorial #2](https://youtu.be/D7ISrmszozk) (extra help)

## Notes
- The starter code's premade package is found in the folder you cloned in Lesson 0, here: `documentation/ros-tutorials/catkin_ws`. There is a Python file in there for you to edit.
    - Inside the container, you can find the package at `~/dev/catkin_ws`.
    - How does that work? The docker-compose command we had you run in Lesson 0 "mounted" the starter code that is on your computer into the container. That means that code changes on your local computer will be reflected in the container, and vice versa.
- :information_source: When you first open a new terminal inside the container, run the following commands to build and source the package:
    ```bash
    cd ~/dev/catkin_ws       # Go to package
    ./build.sh               # Build the package using our custom script
    source devel/setup.bash  # Source the package's nodes and info
    ```
    - If you're curious, here's more about [packages](http://wiki.ros.org/ROS/Tutorials/CreatingPackage), the [catkin build system](https://catkin-tools.readthedocs.io/en/latest/index.html), and [quickstart](https://catkin-tools.readthedocs.io/en/latest/quick_start.html).
- You will not be able to use the code in the 'Publisher and Subscriber' tutorial exactly as is, but it's a good starting point. Same with the video tutorials.
