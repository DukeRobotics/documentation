# Lesson 0 - Introduction

This introduction will set up your system for the rest of the tutorials. It will expose you to some of the software we use: Unix command line, Docker, and Git.

## Command Line

Before continuing, if you have never used the Unix command line (or Terminal in Mac or Command Prompt in Windows), complete [this short tutorial](https://www.vikingcodeschool.com/web-development-basics/a-command-line-crash-course).

## Docker Setup

To run ROS, we will be using Docker. This is a software that allows you to run programs inside an isolated environment called a container. So, you only need to download the Docker client and then run our image. Our image includes all of the little pieces of software we need, rather than installing them individually. If you're curious, learn more [here](https://www.docker.com/resources/what-container) or [here](https://docs.docker.com/get-started/).

Download and install the appropriate Docker client:

* [Mac](https://docs.docker.com/docker-for-mac/install/)
* [Windows (Home)](https://docs.docker.com/docker-for-windows/install-windows-home/)
* [Windows (Pro, Education, etc.)](https://docs.docker.com/docker-for-windows/install/)

:information_source: Which Windows do I have? *Settings > System > About > look at "Edition"*

Once the Docker client is installed, run it like you would any other app on your computer.

## Starter Code and Git

To share and manage versions of our source code, we use [Git](https://git-scm.com/). When you have a folder of code files for your project, Git calls it a repository. We're going to use Git now to get some starter code for these tutorials.

Open up Terminal in Mac or Command Prompt in Windows. Type `git --version` and press Enter. If the command is not found, close the window and install Git from [here](https://git-scm.com/downloads). Then re-open Terminal or Command Prompt.

Now, run the following command:

```bash
git clone https://github.com/DukeRobotics/documentation.git
```

This clones, or makes a copy of, our documentation repository (the one you're reading this tutorial in right now). It contains the starter code.

## Run Docker

Now, we will download and run our Docker image so we can use that isolated environment.

Run the following to change directory to the starter code:
```bash
cd documentation/ros-tutorials
```

Then run this (it may take a few minutes to download the image and run the container):
```bash
docker-compose up -d
```

## Connect to Docker via SSH

Now that the container is up and running, let's get into that isolated environment so that we can use it. We'll do that by connecting to the command line that is _inside_ of that container using Secure Shell (SSH).

Install and run one of the following:
* [Mac: XQuartz](https://www.xquartz.org/)
* [Windows: MobaXterm](https://mobaxterm.mobatek.net/)<br>
    :warning: Open MobaXterm > click on Settings > go the X11 tab > uncheck RANDR. This will help with some graphics display later.

After opening that program, SSH into the container by running:
```bash
ssh -XY -p 2201 root@localhost
```

The password is `robotics`.

Now you're inside the container, isolated from the rest of your computer. This environment has ROS installed for you.

:information_source: **Whenever you're running ROS, you should be in this environment.**

***

Excellent! Now proceed to [Lesson 1 - Basics](lesson-1-basics.md).
