#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
PARENT_DIR="$(dirname "$PROJECT_DIR")"

docker run -it --rm \
--gpus all \
--privileged \
-e QT_X11_NO_MITSHM=1 \
-e DISPLAY=$DISPLAY \
-e $XAUTHORITY \
-v $XAUTHORITY:$XAUTHORITY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $PROJECT_DIR:/root/CalibNet \
-v $PARENT_DIR/resnet_json_parameters:/root/resnet_json_parameters:ro \
-v $PARENT_DIR/kitti:/root/kitti:ro \
-v $PARENT_DIR/parsed_set:/root/parsed_set:ro \
-v $PARENT_DIR/weights:/root/weights \
jayadeepk/calibnet:latest \
/bin/bash
