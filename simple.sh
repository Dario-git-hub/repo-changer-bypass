#!/bin/bash

echo 'deb https://cloudfront.debian.net/debian/ bookworm main contrib non-free
deb https://cloudfront.debian.net/debian/ bookworm-updates main' | sudo tee /etc/apt/sources.list

sudo apt-get update
clear