#!/bin/bash

BUILDROOT=$(pwd)
TARGET=$1
NAME=$(whoami)
HOST=$(hostname)
DATETIME=`date +"%Y-%m-%d %H:%M:%S"`
if [[ $ROOTFS_TYPE -eq "squashfs" ]]; then
	echo "# rootfs type is $ROOTFS_TYPE, create ssh keys to $(pwd)/output/$CFG_BUILDROOT/target/etc/ssh"
	ssh-keygen -A -f $(pwd)/output/$CFG_BUILDROOT/target
fi
echo "built by $NAME on $HOST at $DATETIME" > $TARGET/timestamp
exit 0
