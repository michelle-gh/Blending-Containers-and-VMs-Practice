#! /usr/bin/bash

# Remove the old socket and start the new one
rm -f /tmp/firecracker$1.socket
./firecracker --api-sock /tmp/firecracker$1.socket
