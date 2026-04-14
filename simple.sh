#!/bin/bash

echo 'deb https://cloudfront.debian.net/debian/ bookworm main contrib non-free
deb https://cloudfront.debian.net/debian/ bookworm-updates main' | sudo tee /etc/apt/sources.list
sudo systemctl enable --now ssh
sudo apt-get update
sudo apt install -y chromium
clear