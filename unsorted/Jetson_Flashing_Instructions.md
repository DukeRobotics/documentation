
# Jetson Setup

## Introduction
This guide will take you through setting up a Jetson TX2 and updating the NVIDIA Linux for Tegra Driver (L4T) to the latest version.

To install docker on the Jetson TX2, you will need another computer running Ubuntu 18.01+ with an x86 architecture (host PC).

##  Flashing the Jetson

 1. Connect a USB port from the host PC to the micro USB port on the TX2.
 2. Create a developer account on [NVIDIA's website](https://developer.nvidia.com/nvidia-sdk-manager) and download the NVIDIA SDK manager onto the host PC.
 This is the software that the host computer will use to flash the Jetson. Open the SDK manager once installed.
 4. The SDK manager should have multiple steps listed on the side, like so:**![](https://lh5.googleusercontent.com/hq4l0QxBIsL2YKA0jDe3feGs48QoikunApwW5NAKeA_2bFDp2zMBJsDXjkk04DxbErbApXoVLfsi9QO5eq97Zi6DQW2D788A8Dd4JofB-kzX7ewO9X4c5gFYC9n9OPJsXbphJbvm)**
 Make sure ‘Product Category’ is Jetson, and change ‘Target Hardware’ to Jetson TX2. The ‘Target Operating System’ should say Linux. Choose which Jetpack version you would like to use. For the Jetson on the development board, use the latest version (4.2 as of 9/25/19). For the Jetson on a ConnectTech Carrier board, use the version given on the ConnectTech website (4.2.1 as of 9/25/19 for the Orbitty carrier).
 5. Go to Step 2 and accept the details + license.
 6. Go to Step 3, and make sure to select all of the packages you want to install onto the TX2. The crucial one is to make sure under ‘Jetson OS’, that ‘Jetson OS Image’ and ‘Flash Jetson OS’ appear. Other packages that I saw when first doing this include CUDA + other computer vision tools. I recommend keeping them all selected as these tools will be necessary later on.
 7. Click the Install button. First, the host PC will download all the necessary files. After a bit, a box similar to the following one should pop up on the host PC: 
 **![](https://lh5.googleusercontent.com/tNs2TM3UgfTy34oFd0Drlk2vbcuZ2GajOx5lTXIas_bk4K25TBCadEiI9eESvZg4K57LbgT-P0dHLALg9gEEg1J5a0J5yEp9YTbSlf6dm1vt-7gjntXGNUI2qlctyrgP7gZC6OGy)**
 Note that it should obviously say ‘Jetson TX2’, but the general pop up structure should be the same.
 8. Since the host PC and the TX2 are connected as per step 2, I found it easier to click the drop down box with ‘Automatic Setup’ and change that to ‘Manual Setup’.
 9. Boot the TX2 into recovery mode. The easiest way I found to do this was, while the TX2 is on, hold down the recovery button. While holding the recovery button down for at least 2 seconds, press the reset button exactly once. Wait another 2 seconds then let go of the recovery button. Note that if the TX2 is connected to the monitor, then the screen should go completely black. To get full confirmation that the connection went through, on the host PC, open a terminal and type ‘lsusb’. One of the lines should say ‘Nvidia Corp.’ with corresponding ID for the TX2 as 0955:7c18. Note that the TX2 won’t show up here until you put it into recovery mode.
 10. Back in the popup on the host PC (make sure it’s in manual mode), click Flash.
 11. After the set up is all done, if you are using the development board, the TX2 should be ready to go. However, if you are using the Orbitty Carrier Board, do NOT stop flashing the TX2, and continue to the next steps to flash the carrier board as well.

## Flashing the Orbitty Carrier
In order to use the Orbitty Carrier, the carrier board must also be flashed.
1. Make sure that the Carrier/TX2 is still in recovery mode and is still plugged into the host computer through the same micro-USB/USB connection. Refer to the steps to flash the Jetson for more details.
2. Download the latest ConnectTech package for the Orbitty Carrier from their [website](http://connecttech.com/product/orbitty-carrier-for-nvidia-jetson-tx2-tx1/). Go to the L4T Board Support Packages section under Downloads and download the version that corresponds to the L4T version downloaded.
3. Move the .tgz file to the Linux For Tegra directory that the SDK manager created when downloading its components.
4. Extract the board support package by changing to the directory of the Linux For Tegra directory and running:
	```bash
	tar -xzf CTI-L4T-V###.tgz
	``` 
	Make sure to replace the ### with the version that is being used.
5.  Change directory using `cd` into the newly extracted directory
6. Execute the install script by running
	```bash
	sudo ./install.sh
	```
7.  Go back to the Linux for Tegra directory using `cd ..`
8. Execute the flashing script by running
	```bash
	sudo ./flash.sh cti/tx2/orbitty mmcblk0p1 
	```
The Jetson will then reboot once it finishes flashing. Additional packages like CUDA will then need to be installed from the host computer following the instructions from NVIDIA.

### References
[https://docs.nvidia.com/sdk-manager/install-with-sdkm-jetson/index.html](https://docs.nvidia.com/sdk-manager/install-with-sdkm-jetson/index.html)

[https://devtalk.nvidia.com/default/topic/1027143/orbitty-carrier-and-jetpack-3-1/](https://devtalk.nvidia.com/default/topic/1027143/orbitty-carrier-and-jetpack-3-1/)

    
