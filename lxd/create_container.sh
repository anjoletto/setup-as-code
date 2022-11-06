#!/usr/bin/env sh

echo Creating container $2 using image $1
lxc launch images:$1 --profile default --profile x11 $2 -c security.nesting=true -c security.privileged=true
