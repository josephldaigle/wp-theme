#!/bin/bash

#########################
# Deploy swap file
#########################
#
# Creates a swap file on the host, if one does not exist.
# https://wiki.archlinux.org/index.php/swap
#

echo 'checking swap'

if ! free | awk '/^Swap:/ {exit !$2}';
then
    sudo dd if=/dev/zero of=/swapspace bs=1M count=4000

    sudo mkswap /swapspace
    sudo swapon /swapspace

    echo 'swap file created'
else
    echo 'swap found'
fi
