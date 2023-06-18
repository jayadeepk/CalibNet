#!/bin/bash

cd /root/CalibNet/code/tf_ops/sampling
./tf_sampling_compile.sh
cd /root/CalibNet/code/tf_ops/grouping
./tf_grouping_compile.sh
cd /root/CalibNet/code/tf_ops/interpolation
./tf_interpolate_compile.sh
cd /root/CalibNet/code/tf_ops/emd
./tf_auctionmatch_compile.sh
