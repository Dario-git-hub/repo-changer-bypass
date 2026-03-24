#!/bin/bash

echo 'deb https://cloudfront.debian.net/debian/ bookworm main contrib non-free
deb https://cloudfront.debian.net/debian/ bookworm-updates main' | sudo tee /etc/apt/sources.list

sudo apt-get update
sudo apt-get install -y nodejs
curl -fsSL https://bun.sh/install | bash
exec bash
bun i -g chattt
clear