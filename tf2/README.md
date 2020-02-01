# Overview

Documentation for tf2 with python is very limited, so this readme is intended to document and provide some helpful resources for tf2 transforms for python 2.7.

# Simple transform

The ros wiki for writing a transform listener has useful info on creating a Buffer and TransformListener: [http://wiki.ros.org/tf2/Tutorials/Writing%20a%20tf2%20listener%20%28Python%29](http://wiki.ros.org/tf2/Tutorials/Writing%20a%20tf2%20listener%20%28Python%29)

The lookup_transform method is documented for c++ in the following link. The python method is the same except the name is "lookup_transform."
[http://docs.ros.org/indigo/api/tf2_ros/html/c++/classtf2__ros_1_1Buffer.html#acabbd72cae8f49fb3b6ede3be7e34c55](http://docs.ros.org/indigo/api/tf2_ros/html/c++/classtf2__ros_1_1Buffer.html#acabbd72cae8f49fb3b6ede3be7e34c55)


To complete the transform, one can use one of the functions documented in the link below. However, although the method names are correct for python, the methods take MSGTYPEStamped rather than simply the MSGTYPE (e.g. PoseStamped instead of Pose). The transform argument should be what is returned from the lookup_transform method.
[http://docs.ros.org/diamondback/api/tf2_geometry_msgs/html/namespacetf2__geometry__msgs_1_1tf2__geometry__msgs.html](http://docs.ros.org/diamondback/api/tf2_geometry_msgs/html/namespacetf2__geometry__msgs_1_1tf2__geometry__msgs.html)
