#!/bin/bash

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

prepare 
~/eigen-3.1.2
~/doxygen / git clone https://github.com/doxygen/doxygen.git
~/Pangolin / git clone https://github.com/stevenlovegrove/Pangolin.git
~/opencv-3.4.6 / git clone https://github.com/opencv/opencv.git
~/ORB_SLAM2-master / 
~/lcm-1.3.1