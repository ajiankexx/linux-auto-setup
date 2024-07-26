#!/bin/sh
# 提示用户输入名字
echo "please input you wsl_name:"
read wsl_name

# 输出用户输入的名字
echo "your wsl_name is $wsl_name"
export WSL_NAME="$wsl_name"
cat ./fish_config>>~/.config/fish/config.fish
source ~/.config/fish/config.fish
