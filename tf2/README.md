# tf2 Documentation

## Overview

[tf2](http://wiki.ros.org/tf2) is ROS's newest library for keeping track of robot transforms between coordinate frames. Documentation for tf2 with Python is very limited, so this README is intended to document the use of tf2 transforms for Python 2.7 and provide some helpful resources.

## Simple transform

The ROS wiki for writing a transform listener has useful info on creating a Buffer and TransformListener [here](http://wiki.ros.org/tf2/Tutorials/Writing%20a%20tf2%20listener%20%28Python%29). At the time of writing, Python documentation for completing the transform is incomplete/incorrect, and clarification is below (that's the whole point of this README).

To complete the transform, you can use one of the functions documented [here](http://docs.ros.org/diamondback/api/tf2_geometry_msgs/html/namespacetf2__geometry__msgs_1_1tf2__geometry__msgs.html). Although the method names are correct for Python, the methods take `MSGTYPEStamped` rather than simply the `MSGTYPE` (e.g. `PoseStamped` instead of `Pose`). The transform argument should be what is returned from the `lookup_transform` method.

## Example

Below is an example of a simple transform of a PoseStamped message `pose_stamped` from `origin_frame` to `dest_frame`.

```python
import tf2_ros
import tf2_geometry_msgs
import rospy

def transform(pose_stamped, origin_frame, dest_frame):
    tfBuffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tfBuffer)
    trans = tfBuffer.lookup_transform(dest_frame, origin_frame, rospy.Time(), rospy.Duration(0.5))
    transformed_pose_stamped = tf2_geometry_msgs.do_transform_pose(pose_stamped, trans)
    return transformed_pose_stamped
```
