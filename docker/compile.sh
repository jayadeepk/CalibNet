#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

docker run -it --rm \
--gpus all \
--privileged \
-e QT_X11_NO_MITSHM=1 \
-e DISPLAY=$DISPLAY \
-e $XAUTHORITY \
-v $XAUTHORITY:$XAUTHORITY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $PROJECT_DIR:/root/CalibNet \
tensorflow/tensorflow:1.3.0-gpu \
/root/compile.sh
