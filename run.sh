#!/bin/bash

xhost +

docker run -it --rm --privileged --net=host \
--volume $(pwd)/A-LOAM:/catkin_ws/src/A-LOAM \
-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
ghcr.io/rosblox/ros-a-loam:noetic


