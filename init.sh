#!/bin/sh
# 提示用户输入名字
echo "please input you wsl_name:"
read wsl_name

# 输出用户输入的名字
echo "your wsl_name is $wsl_name"
echo "export WSL_NAME=$wsl_name">>~/.bashrc
export WSL_NAME=$wsl_name
cat ./fish_config>>~/.config/fish/config.fish
echo pcall(require, "mynvim")>>./config/nvim/init.lua
