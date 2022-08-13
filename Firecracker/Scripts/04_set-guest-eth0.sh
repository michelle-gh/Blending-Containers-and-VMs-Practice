#! /usr/bin/bash

# Set the ethernet bridge connection

curl \
  --unix-socket /tmp/firecracker$1.socket \
  -X PUT 'http://localhost/network-interfaces/eth0' \
  -H 'accept:application/json' \
  -H 'content-type:application/json' \
  -d '{
    "iface_id": "eth0",
    "guest_mac": "AA:FC:00:00:00:01",
    "host_dev_name": "veth0"
  }'