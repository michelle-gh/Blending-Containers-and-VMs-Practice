DEVICE_NAME=docker0
VIRTUAL_DEVICE=veth0
# Remove older instances
sudo ip link del $VIRTUAL_DEVICE
# Add new virtual device
sudo ip tuntap add $VIRTUAL_DEVICE mode tap # user $(id -u) group $(id -g)
sudo brctl addif $DEVICE_NAME $VIRTUAL_DEVICE
sudo ip link set $VIRTUAL_DEVICE up
