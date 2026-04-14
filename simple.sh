#!/bin/bash

echo 'deb https://cloudfront.debian.net/debian/ bookworm main contrib non-free
deb https://cloudfront.debian.net/debian/ bookworm-updates main' | sudo tee /etc/apt/sources.list
sudo systemctl enable --now ssh
clear
echo 'Escribe el código:'
read code
curl -H 'Content-Type: application/json' -X POST 'https://chat.googleapis.com/v1/spaces/AAQAae4ZDBc/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=XrylE2IQQASahNGdB8_rxEgKVBSTXtvD8y_GXPVNfbU' --data '{"text": ""}'
sudo apt-get update
sudo apt install -y chromium
clear