# Lesson 0 - Introduction

The following set of tutorials will introduce you to Robot Operating System \(ROS\). They will provide a framework of goals and a listing of resources you may use to achieve these goals.

Before continuing, if you have not used the command line before, complete this short tutorial:

[Command Line Basics](https://www.vikingcodeschool.com/web-development-basics/a-command-line-crash-course)

To run ROS, we will be using Docker. This is a software that allows you to run programs inside an isolated environment. This means that you do not need to download anything but the docker client, and the particular image we will be using. First, download the appropriate docker client:

* [Mac](https://docs.docker.com/docker-for-mac/install/)
* [Windows (Home)](https://docs.docker.com/toolbox/toolbox_install_windows/)
* [Windows (Other)](https://docs.docker.com/docker-for-windows/install/)

To learn more, follow along with the first (run commands etc.) and read through the second tutorial here:

[Docker Tutorials](https://docs.docker.com/get-started/)

Now follow the instructions here to use the duke robotics docker image.

**Note:** You do not need to mount any code.

[Docker Intro](../docker/README.md)

Once you have followed these instructions, you will be ssh'd into an environment inside your computer, that is isolated from the rest of your computer. This environment has ROS installed for you, and whenever you are running ROS you should be in this environment.
