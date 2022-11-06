#!/usr/bin/env sh
apt install -y openssh-server python3
systemctl enable sshd
systemctl start sshd

useradd -m -G sudo user
