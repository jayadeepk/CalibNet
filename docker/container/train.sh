#!/bin/bash

apt update
apt install -y python-tk
pip install tqdm

cd /root/CalibNet/code
CUDA_VISIBLE_DEVICES=0,0 python -B train_model_combined.py
