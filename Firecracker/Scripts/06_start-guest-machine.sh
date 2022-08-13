#! /usr/bin/bash

# Start the guest machine
curl --unix-socket /tmp/firecracker$1.socket -i \
  -X PUT 'http://localhost/actions'       \
  -H  'Accept: application/json'          \
  -H  'Content-Type: application/json'    \
  -d '{
      "action_type": "InstanceStart"
  }'