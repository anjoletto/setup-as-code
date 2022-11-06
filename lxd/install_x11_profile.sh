#!/usr/bin/env sh

echo "Creating X11 profile..."
lxc profile create x11

echo "Configuring X11 profile..."
cat x11-config.yml | lxc profile edit x11
