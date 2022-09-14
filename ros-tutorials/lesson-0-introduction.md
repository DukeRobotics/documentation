# Lesson 0 - Introduction

This introduction will set up your system for the rest of the tutorials. It will expose you to some of the software we use: Unix command line, Docker, and Git.

## System Requirements

The primary requirement for installing these programs is computer disc space. Ensure before proceeding that you have sufficient space on your computer hard drive. We reccomend **at least 32 Gb**.

Some of our software, such as Docker or simulation software, may run slowly on a lower power machine (or an Apple Silicon chip). Please reach out to a leadership member if you are having techincal difficulties of any kind (or email [Drew Council](apc41@duke.edu)).

## For Windows 10 and 11

To simplify the installation steps for Windows 10 and 11 users, we have created an installation script that automates the installation of several applications.
- Before running this script, **install `winget` on your computer**. Open Windows Store and search for *"App Installer"*. Install the first result. `winget` is a package manager made by Microsoft to manage applications for Windows.
- Once `winget` is installed, right-clock on **[this link]**(https://raw.githubusercontent.com/DukeRobotics/documentation/master/ros-tutorials/winget-ros-configuration.ps1) and select *"Save link as"*. Save the file somewhere with the default name and extension. Open the file location in File Explorer, right-click on the file and select *"Run with Powershell"*.
    - You may be prompted to ask if you trust this file to run. Please permit the file to execute. If you are unsure, you may look at the source code yourself and see what it does! You have succeeded when a blue terminal window displays a loading bar.
- Now allow the script to execute! **Be sure to watch your computer, as you may be prompted to accept license agreements or give administrator access.** The script will install the following programs:
    - Docker Desktop
    - Git
    - GitHub Desktop
    - Windows Terminal
    - Slack
    - Python3
- Once it has installed these programs, you will be prompted asking if you would like to install VS Code, our recommended code editor. If you prefer another editor or already have VS Code installed, you should reject here.
- Once the script has completed, you may delete the script file. To update your programs in the future, simply run
```powershell
winget upgrade --all
```

## Command Line

Before continuing, if you have never used the Unix command line (or Terminal in Mac or Command Prompt in Windows), complete [this short tutorial](https://www.vikingcodeschool.com/web-development-basics/a-command-line-crash-course).

## Starter Code and Git

To share and manage versions of our source code, we use [Git](https://git-scm.com/). When you have a folder of code files for your project, Git calls it a repository. We're going to use Git now to get some starter code for these tutorials.
### For those not using `winget` script
Install Git [from their website](https://git-scm.com/) now if you have not already.

Open up Terminal in Mac or Command Prompt in Windows. Type `git --version` and press Enter. If the command is not found, close the window and install Git from [here](https://git-scm.com/downloads). Then re-open Terminal or Command Prompt.

Now, run the following command:

```bash
git clone https://github.com/DukeRobotics/documentation.git
```

This clones, or makes a copy of, our documentation repository (the one you're reading this tutorial in right now). It contains the starter code.

## Docker Setup

To run ROS, we will be using Docker. This is a software that allows you to run programs inside an isolated environment called a container. So, you only need to download Docker Desktop and then run our image. Our image includes all of the little pieces of software we need, rather than installing them individually. If you're curious, learn more [here](https://www.docker.com/resources/what-container) or [here](https://docs.docker.com/get-started/) or ask a software team member.

Download and install the appropriate Docker client:

* [Windows (10 and 11)](#for-windows-10-and-11) see above
* [Windows (Other, no `winget`)](https://docs.docker.com/desktop/install/windows-install/)
* [Mac](https://docs.docker.com/desktop/install/mac-install/)

Once Docker Desktop is installed, run it like you would any other app on your computer.

## Run Docker

Now, we will download and run our Docker image so we can use that isolated environment.

Run the following to change directory to the starter code:
```bash
cd documentation/ros-tutorials
```

Then run this (it may take a few minutes to download the image and run the container):
```bash
docker compose up -d
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
