#!/bin/bash

# Ubuntu16.04-配置CUDA9.0+CUDNN1.17+Python升级TENSORFLOW
# https://zhuanlan.zhihu.com/p/103466293

# 新建用户
# https://www.linuxidc.com/Linux/2016-06/132218.htm
# 修改启动顺序
# sudo vim /etc/default/grub
# #grub_defult = 4
# sudo update-grub

# update and remove
sudo apt-get update
sudo apt-get upgrade
sudo apt remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines transmission-common gnome-orca gnome-sudoku onboard deja-dup bluez 
sudo apt-get autoremove

# terminal everywhere
sudo apt-get install nautilus-open-terminal

# c++11
sudo apt-get install gcc g++

# time locally
timedatectl set-local-rtc 1

# git & cmake install 
sudo apt install git
sudo apt install cmake

# vim install & configure
sudo apt-get install vim
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x

# vscode install
sudo snap install --classic code

# 配置git
git config --global user.name JingruiYu
git config --global user.email yujingrui@sjtu.edu.cn
ssh-keygen -t rsa -C "yujingrui@sjtu.edu.cn"
cd .ssh/
code id_rsa.pub
# ssh -T git@github.com
#https://blog.csdn.net/Rookie_tong/article/details/82628301
