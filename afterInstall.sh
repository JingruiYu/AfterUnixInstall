#!/bin/bash

# cuda
## 目前有效的方式是通过 software & update 安装

# 中文输入法
## 参考 https://blog.csdn.net/github_39533414/article/details/85211012

# c++11
sudo apt-get install gcc g++

# vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# 配置bashrc
## 1. uncomment force_color_prompt=yes
## 2. 在bashrc中添加
# function git-branch-name {
#   git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
# }

# function git-branch-prompt {
#   local branch=`git-branch-name`
#   if [ $branch ]; then printf " [%s]" $branch; fi
# }

# PS1="\[\033[01;32m\]\u@\h \[\033[0;36m\]\W\[\033[0m\]\[\033[0;31m\]\$(git-branch-prompt)\[\033[0m\] \$ \n #  "

# 配置git
sudo apt install git
sudo apt install cmake
git config --global user.name jingruiy
git config --global user.email jingruiy@nvidia.com

# xscreensaver install
sudo apt-get install xscreensaver xscreensaver-data-extra xscreensaver-gl-extra

# tmux
sudo apt-get install tmux

