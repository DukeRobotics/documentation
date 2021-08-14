# Computer Vision

##Image Detection
The general process for image detection via machine learning is as follows:

1. Divide the frames from the source video.
2. Unzip the folder containing the images.
3. Use labelImg on each of these creating bounding boxes for any desired objects.
4. Using the labelled images from before, train a model to detect the images.
5. Upload the model to docker for later use.

## Stereovision
Stereovision refers to the process of determining depth information for an image using multiple 2d images (such as a side by side camera)
The general process is as follows:

1. Create [calibration images](https://drive.google.com/drive/folders/1r3TcvJ9Vl_IRpzWQOqtCldVhNTHVJgFU) (such as by photographing checkerboard), preferrably in a similar environment to where the robot will operate.
2. Use the aforementioned images to calibrate depth calculation (generate remapping matrices).
3. Test the accuracy of depth calculations using the generated matrices
4. Account for issues such as noise
5. Integrate the model with the work of other teams.

______________________________________________________________________________
Look in the folders for information on how to do these tasks in more detail.

