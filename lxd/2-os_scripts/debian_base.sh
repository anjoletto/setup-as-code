#!/usr/bin/env sh
apt install -y openssh-server python3
systemctl enable sshd
systemctl start sshd

groupsadd wheel
useradd -m -G wheel user
