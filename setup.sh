#!/bin/bash
sudo apt update && sudo apt upgrade -y

#install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
mv squashfs-root /
ln -s /squashfs-root/AppRun /usr/bin/nvim

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
