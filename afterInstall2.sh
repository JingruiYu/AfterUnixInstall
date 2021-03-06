#!/bin/bash

# prepare 
# ~/eigen-3.3.7 https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.tar.gz 
# ~/doxygen / git clone https://github.com/doxygen/doxygen.git
# ~/Pangolin / git clone https://github.com/stevenlovegrove/Pangolin.git
# ~/opencv-3.4.6 / git clone https://github.com/opencv/opencv.git
# ~/ORB_SLAM2-master / 
# ~/lcm-1.3.1

# # eigen install
cd ~/eigen-3.1.2
mkdir "build"
cd "build"
cmake ..
sudo make install

# # ceres install
sudo apt-get install libgoogle-glog-dev libgflags-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install libsuitesparse-dev
git clone https://ceres-solver.googlesource.com/ceres-solver
# 1.14.0 is recommond
# 安装ceres提示“找不到要求版本3.3的Eigen3”解决办法  https://blog.csdn.net/me1171115772/article/details/105114903
# 编译ceres时：error: ‘integer_sequence’ is not a member of ‘std‘错误- ceres-1.14.X is helpful  https://blog.csdn.net/qq_41586768/article/details/107541917


# # Pangolin
sudo apt-get install libboost-all-dev
sudo apt-get install libblas-dev liblapack-dev 
sudo apt-get install libglew-dev
sudo apt-get install libboost-dev libboost-thread-dev libboost-filesystem-dev

# # doxygen
# cd ~
# git clone https://github.com/doxygen/doxygen.git
cd ~/doxygen
sudo apt-get install flex
sudo apt-get install bison
mkdir "build"
cd "build"
cmake -G "Unix Makefiles" ..
make -j
sudo make install

# cd ~
# git clone https://github.com/stevenlovegrove/Pangolin.git
cd ~/Pangolin
mkdir "build"
cd "build"
cmake ..
make -j
sudo make install

# opencv install
# git clone https://github.com/opencv/opencv.git
# git clone https://github.com/opencv/opencv_contrib.git
cd ~/opencv_contrib
# 1.查看所有分支
# > git branch -a
# 2.查看当前使用分支(结果列表中前面标*号的表示当前使用分支)
# > git branch
# 3.切换分支
# > git checkout 分支名
git checkout 3.4.6
sudo apt-get install build-essential libgtk2.0-dev libvtk5-dev libjpeg-dev libtiff5-dev libjasper-dev libopenexr-dev libtbb-dev
cd ~/opencv-3.4.6
mkdir "build"
cd "build"
cmake -DBUILD_opencv_world=ON -DCMAKE_BUILD_TYPE=RELEASE -DOPENCV_EXTRA_MODULES_PATH=/home/yujr/opencv_contrib/modules -DCMAKE_INSTALL_PREFIX=/usr/local -DWITH_V4L=ON -DWITH_OPENGL=ON -DCUDA_GENERATION=Kepler ..
make -j
sudo make install -j
sudo /bin/bash -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'  
sudo ldconfig

# 当make opencv中报错vtkversionMacros.h no such file时，应安装libvtk6-dev

# ORB_SLAM2
cd ~/ORB_SLAM2-master
sh build.sh

# lcm
cd ~/lcm-1.3.1
sudo apt-get install libglib2.0-dev openjdk-8-jdk
./configure
make
sudo make install

# ROS
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

# pcl
# sudo apt-get update  
sudo apt-get install linux-libc-dev cmake-gui libusb-1.0-0-dev libusb-dev libudev-dev mpi-default-dev openmpi-bin openmpi-common    
sudo apt-get install libflann1.8 libflann-dev libvtk5.10-qt4 libvtk5.10 libqhull* libgtest-dev  freeglut3-dev pkg-config  
sudo apt-get install libxmu-dev libxi-dev mono-complete  qt-sdk openjdk-8-jdk openjdk-8-jre
sudo apt-get install libpcl-dev
# # package install
# git clone https://github.com/PointCloudLibrary/pcl.git
# cd ~/pcl 
# mkdir "build"
# cd "build"
# cmake -DCMAKE_BUILD_TYPE=Release ..
# make -j
# sudo make -j install 
# sudo apt remove libpcl-dev
# cd /usr/lib/x86_64-linux-gnu
# sudo rm libpcl*
# cd /usr/include
# sudo rm -r pcl-1.7

# xscreensaver install
sudo apt-get install xscreensaver xscreensaver-data-extra xscreensaver-gl-extra

# tmux
sudo apt-get install tmux


