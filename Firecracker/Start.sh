#! /usr/bin/bash

( \
  sleep 1 && Scripts/02_set-guest-kernel.sh $1 && \
  sleep 1 && Scripts/03_set-guest-rootfs.sh $1 && \
  sleep 1 && Scripts/04_set-guest-eth0.sh $1   && \
  sleep 1 && Scripts/05_set-cpu-n-mem.sh $1    && \
  sleep 1 && Scripts/06_start-guest-machine.sh $1 \
) & \
Scripts/01_start-socket.sh $1
