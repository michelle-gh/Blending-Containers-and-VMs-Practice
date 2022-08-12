#! /usr/bin/bash

git clone https://github.com/bkleiner/ubuntu-firecracker && \
cd ubuntu-firecracker && \
echo "AAAAAAAAAAAA $(pwd)" && \
docker build -t ubuntu-firecracker . && \
echo "BBBBBBBBBBBB" && \
docker run --privileged -it --rm -v $(pwd)/output:/output ubuntu-firecracker && \
cd ..