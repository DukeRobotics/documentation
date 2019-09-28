# Docker Intro

Instructions on how to use duke robotics' docker image. Docker must already be installed.

1. Get the image
```bash
docker pull dukerobotics/robosub-ros
```

2. Run a container. Note that `source` must be given the full path to the `robosub-ros/src` folder on your system in order to work. Here are some examples for how the command can be run on different systems, replace the path to `robosub-ros/src` with whatever it is on your computer.
    * Windows
    ```bash
    docker run -td -p 2200:2200 --mount type=bind,source=C:\Users\Eric\Documents\Robotics\CS,target=/home/duke/dev/robosub-ros/src  dukerobotics/robosub-ros
    ```

    * Mac
    ```bash
    docker run -td -p 2200:2200 --mount type=bind,source=/Users/neil/Desktop/Code/robosub-ros/src,target=/home/duke/dev/robosub-ros/catkin_ws/src  dukerobotics/robosub-ros
    ```

    * Linux (production)
    ```bash
    docker run -td --privileged --net=host --mount type=bind,source=/home/robot/robosub-ros/src,target=/home/duke/dev/robosub-ros/catkin_ws/src  dukerobotics/robosub-ros
    ```

3. Connect to the container. 
    * Local container
    ```bash
    ssh -XY -p 2200 duke@localhost
    ```
    * Remote (on robot) container 
    ```bash
    ssh -XY -p 2200 duke@192.168.1.1
    ```
    * The password is 'robotics'

#### Run a container notes
* -t
  * Allocate a bash shell inside the container

* -d
  * Start the container in the background

* -p 2200:2200
  * Forward port 2200 on the container to port 2200 on user's computer

* --mount type=bind,source=/PATH/TO/SRC,target=/home/duke/dev/robosub-ros/catkin_ws/src
  * Create a binding between a folder on the user's computer to a folder inside the container
    * All files in src on user's computer will be mirrored to src inside container, i.e. changes made on user's computer will occur inside the container, and vice versa

* --privileged
  * Run the container in privileged mode, allowing access to /dev
  * Use this flag if you need to connect to USB devices

* --net=host
    * Allow the container to access network devices (such as cameras)
    * Automatically binds all container ports to system ports so no need to manually bind 2200


#### Connect to a container notes
* -XY
  * Forward graphics over ssh connections

* -p 2200
  * ssh to port 2200, instead of the default port 22
