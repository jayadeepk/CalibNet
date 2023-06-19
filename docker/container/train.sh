#!/bin/bash

bash /root/CalibNet/docker/container/compile.sh

cd /root/CalibNet/code
CUDA_VISIBLE_DEVICES=0,0 python -B train_model_combined.py
