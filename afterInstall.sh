#!/bin/bash

# c++11
sudo apt-get update
sudo apt upgrade
sudo apt-get install gcc g++

# 显卡驱动
## 目前有效的方式是通过 software & update 安装

# cuda
## 22.04+11.7
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run
sudo sh cuda_11.7.0_515.43.04_linux.run

## 20.04+11.7
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run
sudo sh cuda_11.7.0_515.43.04_linux.run

## 20.04+11.6
wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda_11.6.0_510.39.01_linux.run
sudo sh cuda_11.6.0_510.39.01_linux.run

## 18.04+11.7
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run
sudo sh cuda_11.7.0_515.43.04_linux.run

## 18.04+11.6
wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda_11.6.0_510.39.01_linux.run
sudo sh cuda_11.6.0_510.39.01_linux.run

## check
gedit ~/.bashrc
export PATH="/usr/local/cuda-11.7/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.7/lib64:$LD_LIBRARY_PATH"
export CUDA_HOME="/usr/local/cuda-11.7"

export PATH="/usr/local/cuda-11.6/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH"
export CUDA_HOME="/usr/local/cuda-11.6"

source ~/.bashrc
nvcc -V

# nvidia vpn
sudo dpkg -i goog
gunzip anyconnect-linux64-4.10.05095-predeploy-k9.tar.gz
tar -xvf anyconnect-linux64-4.10.05095-predeploy-k9.tar
cd anyconnect-linux64-4.10.05095/vpn
sudo ./vpn_install.sh

ngvpn32.vpn.nvidia.com:8443

# omni
sudo apt-get install fuse libfuse2


# vscode
sudo snap install --classic code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code


# 中文输入法
## 参考 https://blog.csdn.net/github_39533414/article/details/85211012

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

# slack
sudo apt-get install alien
## sudo alien -i  *.rpm

# Anaconda
## https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart
