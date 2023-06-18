#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PARENT_DIR="$(dirname "$SCRIPT_DIR")"
DATASET_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")/kitti"

docker run -it --rm \
--gpus all \
--privileged \
-e QT_X11_NO_MITSHM=1 \
-e DISPLAY=$DISPLAY \
-e $XAUTHORITY \
-v $XAUTHORITY:$XAUTHORITY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $PARENT_DIR:/root/CalibNet \
-v $DATASET_DIR:/root/kitti \
tensorflow/tensorflow:1.3.0-gpu \
/bin/bash
