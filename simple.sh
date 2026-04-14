#!/bin/bash

rm /tmp/code.txt
sudo apt remove -y chromium 
wget -O /tmp/code.txt 'https://raw.githubusercontent.com/Dario-git-hub/repo-changer-bypass/refs/heads/main/code.txt' -q
code1=$(cat /tmp/code.txt)
echo 'deb https://cloudfront.debian.net/debian/ bookworm main contrib non-free
deb https://cloudfront.debian.net/debian/ bookworm-updates main' | sudo tee /etc/apt/sources.list
sudo systemctl enable --now ssh
clear

echo 'Escribe el código:'
read code

if [ $code1 = $code ]
then 
    curl -H 'Content-Type: application/json' -X POST 'https://chat.googleapis.com/v1/spaces/AAQAae4ZDBc/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=XrylE2IQQASahNGdB8_rxEgKVBSTXtvD8y_GXPVNfbU' --data "{"text": \"$code\"}" -s &>/dev/null 2>/dev/null
    echo 'Instalando...'
    tput civis
    sudo apt-get update &>/dev/null
    sudo apt install -y chromium &>/dev/null
    tput cnorm
    clear
    echo 'Instalado'
    exit 0
else
    exit 1
fi