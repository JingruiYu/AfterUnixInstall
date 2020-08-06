#!/bin/bash

# # nivida
# # cuda

# # eigen install
cd ~/eigen-3.1.2
mkdir "build"
cd "build"
cmake ..
sudo make install

# # Pangolin
sudo apt-get install libboost-all-dev
sudo apt-get install libblas-dev liblapack-dev 
sudo apt-get install libglew-dev
sudo apt-get install libboost-dev libboost-thread-dev libboost-filesystem-dev

# # doxygen
# cd ~
# git clone https://github.com/doxygen/doxygen.git
cd doxygen
sudo apt-get install flex
sudo apt-get install bison
mkdir "build"
cd "build"
cmake -G "Unix Makefiles" ..
make -j8
sudo make install

# cd ~
# git clone https://github.com/stevenlovegrove/Pangolin.git
cd ~/Pangolin
mkdir "build"
cd "build"
cmake ..
make -j8
sudo make install

# opencv install
# git clone https://github.com/opencv/opencv.git
# git clone https://github.com/opencv/opencv_contrib.git
cd ~/opencv_contrib
git checkout 3.4.6
sudo apt-get install build-essential libgtk2.0-dev libvtk5-dev libjpeg-dev libtiff5-dev libjasper-dev libopenexr-dev libtbb-dev
cd ~/opencv-3.4.6
mkdir "build"
cd "build"
cmake -DBUILD_opencv_world=ON -DCMAKE_BUILD_TYPE=RELEASE -DOPENCV_EXTRA_MODULES_PATH=/home/yujr/opencv_contrib/modules -DCMAKE_INSTALL_PREFIX=/usr/local -DWITH_V4L=ON -DWITH_OPENGL=ON -DCUDA_GENERATION=Kepler ..
make -j8
sudo make install -j8
sudo /bin/bash -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'  
sudo ldconfig

# ORB_SLAM2
cd ~/ORB_SLAM2-master
sh build.sh

# lcm
cd ~/lcm-1.3.1
sudo apt-get install libglib2.0-dev openjdk-8-jdk
./configure
make
sudo make install

# xscreensaver install
sudo apt-get install xscreensaver xscreensaver-data-extra xscreensaver-gl-extra

# tmux
sudo apt-get install tmux

# ROS
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

# git
git config --global user.name JingruiYu
git config --global user.email yujingrui@sjtu.edu.cn
ssh-keygen -t rsa -C "yujingrui@sjtu.edu.cn"
cd .ssh/
code id_rsa.pub
ssh -T git@github.com
#https://blog.csdn.net/Rookie_tong/article/details/82628301


# zsh
# sudo apt-get install zsh
# chsh -s /bin/zsh
# wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh 
# sh install.sh
# wget http://mimosa-pudica.net/src/incr-0.2.zsh 
# https://www.jianshu.com/p/d194d29e488c?open_source=weibo_search

# # smartgit https://jingyan.baidu.com/article/ab0b563096adbbc15bfa7d5d.html

# # Anaconda https://www.anaconda.com/distribution/#download-section
# # sudo gedit /etc/profile
# # export PATH=/home/yujr/anaconda3/bin:$PATH
# # source /etc/profile

# # networkx https://networkx.github.io/documentation/latest/install.html
# # pip install networkx
# # pip install --upgrade networkx
# # pip install numpy scipy pandas matplotlib pygraphviz pydot pyyaml gdal
# # nosetests networkx -v

# # tensorflow
# conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free
# conda config --set show_channel_urls yes
# conda install numpy
# anaconda search -t conda tensorflow
# anaconda show anaconda/tensorflow
# conda install --channel https://conda.anaconda.org/anaconda tensorflow
# python
# import tensorflow as tf

# pip install opencv-python

# # pytorch
# conda install pytorch torchvision cudatoolkit=10.0 -c pytorch
# conda install h5py imageio imagesize matplotlib numpy scipy tqdm
