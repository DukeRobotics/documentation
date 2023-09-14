# Lesson 0 - Introduction

This introduction will set up your system for the rest of the tutorials. It will expose you to some of the software we use: Unix command line, Docker, and Git.

## System Requirements

The primary requirement for installing these programs is computer disc space. Ensure before proceeding that you have sufficient space on your computer hard drive. We reccomend **at least 25 Gb**. The install script will require you to free this much disk space.

Some of our software, such as Docker or simulation software, may run slowly on a lower power machine (or an Apple Silicon chip). Please reach out to a leadership member if you are having techincal difficulties of any kind (or email [Drew Council](apc41@duke.edu)).

## Install

### For Windows 10 and 11

To simplify the installation steps for Windows 10 and 11 users, we have created an installation script that automates the installation of several applications.

Open the Start Menu and search for Powershell. Right click on Powershell and select *Run as Administrator*.

Run the following command:
```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/DukeRobotics/documentation/master/ros-tutorials/winget-ros-configuration.ps1'))
```

> If your antivirus is giving you trouble with the above, right-click on **[this link](https://raw.githubusercontent.com/DukeRobotics/documentation/master/ros-tutorials/winget-ros-configuration.ps1)** and select *"Save link as"*. Save the file somewhere with the default name and extension. Open the file location in File Explorer, right-click on the file and select *"Run with Powershell"*.
You may be prompted to ask if you trust this file to run. Please permit the file to execute. If you are unsure, you may look at the source code yourself and see what it does!

Now allow the script to execute! **Be sure to watch your computer, as you may be prompted to accept license agreements or give administrator access. When prompted, please select "Y" and allow the installations to proceed** The script will install the following programs:
- Docker Desktop
- Git
- GitHub Desktop
- Slack
- Python3
- MobaXTerm

Once it has installed these programs, you will be prompted asking if you would like to install VS Code, our recommended code editor. If you prefer another editor or already have VS Code installed, you should reject here.
> To update your programs in the future, simply run  `winget upgrade --all`

### For MacOS

Open terminal and run the following command:
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/DukeRobotics/documentation/master/ros-tutorials/brew-ros-configuration.sh)"
```

Now allow the script to execute! **Be sure to watch your computer, as you may be prompted to accept license agreements or give superuser permissions. When prompted, please select "Y" and allow the installations to proceed** The script will install the following programs:
- Docker Desktop
- Git
- GitHub Desktop
- Slack
- Python3.11
- XQuartz

Once it has installed these programs, you will be prompted asking if you would like to install VS Code, our recommended code editor. If you prefer another editor or already have VS Code installed, you should reject here.
> To update your programs in the future, simply run  `brew update && brew upgrade && brew upgrade --cask && brew cleanup`

## Starter Code and Git

To share and manage versions of our source code, we use [Git](https://git-scm.com/). When you have a folder of code files for your project, Git calls it a repository. We're going to use Git now to get some starter code for these tutorials.

Run the following command in a location you would like to use for these tutorials:

```bash
git clone https://github.com/DukeRobotics/documentation.git
```

This clones, or makes a copy of, our documentation repository (the one you're reading this tutorial in right now). It contains the starter code.

## Docker Setup

To run ROS, we will be using Docker. This is a software that allows you to run programs inside an isolated environment called a container. So, you only need to open Docker Desktop and then run our image. Our image includes all of the little pieces of software we need, rather than installing them individually. If you're curious, learn more [here](https://www.docker.com/resources/what-container) or [here](https://docs.docker.com/get-started/) or ask a software team member.

Search for the program Docker Desktop and run it.

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

- If on MacOS, Run the program called **XQuartz**
  - As long as this program is running in the background, you can just use the normal MacOS terminal to run your commands.
- If on Windows, Run the program called **MobaXTerm**
  - Be sure to run all commands in this terminal and *not* anywhere else.

    :warning: Open MobaXterm > click on Settings > go the X11 tab > uncheck RANDR. This will help with some graphics display later.

After opening that program, SSH into the container by running:
```bash
ssh -XY -p 2201 root@localhost
```

> The password is `robotics`.

Now you're inside the container, isolated from the rest of your computer. This environment has ROS installed for you.

:information_source: **Whenever you're running ROS, you should be in this environment.**


## Command Line

Before continuing, if you have never used the Unix/Bash command line (Terminal in MacOS or Linux), [this page](https://cs.colby.edu/maxwell/courses/tutorials/terminal/) provides a good reference.

***

Excellent! Now proceed to [Lesson 1 - Basics](lesson-1-basics.md).
