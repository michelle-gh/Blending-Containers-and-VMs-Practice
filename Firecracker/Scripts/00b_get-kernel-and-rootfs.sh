#! /usr/bin/bash

git clone https://github.com/bkleiner/ubuntu-firecracker && \
cd ubuntu-firecracker && \
docker build -t ubuntu-firecracker . && \
sleep 2 && \
docker run --privileged -it --rm -v $(pwd)/output:/output ubuntu-firecracker && \
cd ..