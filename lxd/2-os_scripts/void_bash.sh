#!/usr/bin/env sh
ln -s /etc/sv/sshd /run/runit/runsvdir/current/sshd
sv start sshd

useradd -m -G wheel user
