#!/bin/bash
export GIT_ROOT=$(cd $(dirname $0)/.. ; pwd)
sudo docker run -it --rm --net=host --runtime nvidia -e DISPLAY=$DISPLAY \
	--device /dev/bus/usb \
	--device /dev/video0:/dev/video0:mwr \
	-v /tmp/.X11-unix/:/tmp/.X11-unix \
	cleargrasp:100
 
