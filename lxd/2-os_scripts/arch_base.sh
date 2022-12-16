#!/usr/bin/env sh
pacman -Syy --noconfirm openssh python3
systemctl enable sshd
systemctl start sshd

useradd -m -G wheel user
