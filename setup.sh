#!/bin/bash
sudo apt update && sudo apt upgrade -y
#TODO: there are problems to install nvim.

#install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

#install nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
sudo ln -s /root/node-v20.13.0-linux-x64/bin/node /usr/bin/node
sudo ln -s /root/node-v20.13.0-linux-x64/bin/npm /usr/bin/npm

#install g++ and gcc
apt install gcc
apt install g++

#install clangd
apt install clangd

#install git
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "ajiankex@163.com"
cat ~/.ssh/id_rsa.pub
