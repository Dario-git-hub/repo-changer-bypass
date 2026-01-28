#!/bin/bash

echo 'deb http://debian.rutgers.edu/debian/ bullseye main contrib non-free
deb http://debian.rutgers.edu/debian/ bullseye-updates main
deb http://debian.rutgers.edu/security bullseye-security main contrib non-free' | sudo tee /etc/apt/sources.list

curl -sS 'https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg' | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo 'deb https://repository.spotify.com stable non-free' | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client snapd
sudo systemctl enable --now snapd 
sudo snap install snap-store