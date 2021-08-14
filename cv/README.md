# Computer Vision

## Image Detection
The general process for image detection via machine learning is as follows:

1. Divide the frames from the source video. [Video Examples](https://drive.google.com/drive/folders/1BP-wbPu_gobxFj8zPLdBdgE1Iy7eikwx)
2. Unzip the folder containing the images. [Image Examples](https://drive.google.com/drive/folders/156_NqoKKZ5KHTL7POvCyuxTZyWQYFGwM)
3. Use [labelImg](https://pypi.org/project/labelImg/) on each of these creating bounding boxes for any desired objects.
4. Using the labelled images from before, [train](https://drive.google.com/drive/folders/1oB_YPC_YCpcqommP5OclnOwGP9knE6l9) a model to detect the images.
5. Upload the model to docker for later use.

## Stereovision 
Stereovision refers to the process of determining depth information for an image using multiple 2d images (such as a side by side camera)
The general process is as follows:

1. Create [calibration images](https://drive.google.com/drive/folders/1r3TcvJ9Vl_IRpzWQOqtCldVhNTHVJgFU) (such as by photographing checkerboard), preferrably in a similar environment to where the robot will operate.
2. Use the aforementioned images to calibrate depth calculation (generate remapping matrices). [an attempt from last year](https://colab.research.google.com/drive/10h8D7kE5-hSTv8K-LvXY2ijnBxIu-b-V)
3. Test the accuracy of depth calculations using the generated matrices
4. Account for issues such as noise
5. Integrate the model with the work of other teams.

______________________________________________________________________________
[Github Location](https://github.com/DukeRobotics/robosub-ros/tree/master/onboard/catkin_ws/src/cv)
Look in the folders for information on how to do these tasks in more detail.

