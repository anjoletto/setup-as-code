#!/usr/bin/env sh
dnf install -y openssh-server
systemctl enable sshd
systemctl start sshd

useradd -m -G wheel user
