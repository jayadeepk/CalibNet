#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run -it --rm \
--gpus all \
--privileged \
-e QT_X11_NO_MITSHM=1 \
-e DISPLAY=$DISPLAY \
-e $XAUTHORITY \
-v $XAUTHORITY:$XAUTHORITY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $SCRIPT_DIR:/root/CalibNet \
tensorflow/tensorflow:1.3.0-gpu \
/bin/bash
