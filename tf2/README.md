# Overview

[tf2](http://wiki.ros.org/tf2) is ROS's newest library for keeping track of robot transforms between coordinate frames. Documentation for tf2 with Python is very limited, so this README is intended to document the use of tf2 transforms for Python 2.7 and provide some helpful resources.

# Simple transform

The ROS wiki for writing a transform listener has useful info on creating a Buffer and TransformListener: [http://wiki.ros.org/tf2/Tutorials/Writing%20a%20tf2%20listener%20%28Python%29](http://wiki.ros.org/tf2/Tutorials/Writing%20a%20tf2%20listener%20%28Python%29)

The lookup_transform method is documented for C++ in the following link. The Python method is the same except the name is `lookup_transform`.
[http://docs.ros.org/indigo/api/tf2_ros/html/c++/classtf2__ros_1_1Buffer.html#acabbd72cae8f49fb3b6ede3be7e34c55](http://docs.ros.org/indigo/api/tf2_ros/html/c++/classtf2__ros_1_1Buffer.html#acabbd72cae8f49fb3b6ede3be7e34c55)


To complete the transform, one can use one of the functions documented in the link below. Although the method names are correct for Python, the methods take `MSGTYPEStamped` rather than simply the `MSGTYPE` (e.g. `PoseStamped` instead of `Pose`). The transform argument should be what is returned from the `lookup_transform` method.
[http://docs.ros.org/diamondback/api/tf2_geometry_msgs/html/namespacetf2__geometry__msgs_1_1tf2__geometry__msgs.html](http://docs.ros.org/diamondback/api/tf2_geometry_msgs/html/namespacetf2__geometry__msgs_1_1tf2__geometry__msgs.html)

# Example

Below is an example of a simple transform of a PoseStamped message `pose_stamped` from `origin_frame` to `dest_frame`.

```
import tf2_ros
import tf2_geometry_msgs

tfBuffer = tf2_ros.Buffer()
listener = tf2_ros.TransformListener(tfBuffer)
trans = tfBuffer.lookup_transform(dest_frame, origin_frame, rospy.Time(), rospy.Duration(0.5))
transformed_pose_stamped = tf2_geometry_msgs.do_transform_pose(pose_stamped, trans)
```
