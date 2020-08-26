#!/bin/bash

# # Anaconda https://www.anaconda.com/distribution/#download-section
# # https://blog.csdn.net/haeasringnar/article/details/82079943
# sudo bash Anaconda3-5.2.0-Linux-x86_64.sh
# sudo gedit /etc/profile
# export PATH=/home/yujr/anaconda3/bin:$PATH
# # source /etc/profile
conda create --name e2e python=3.5
conda activate e2e
# conda deactivate
# conda remove -n e2e --all

# Carla
# https://carla.readthedocs.io/en/latest/start_quickstart/
pip install --user pygame numpy
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 92635A407F7A020C
sudo add-apt-repository "deb [arch=amd64 trusted=yes] http://dist.carla.org/carla-0.9.9/ all main"
sudo apt-get update
sudo apt-get install carla-simulator
cd /opt/carla-simulator
./ImportAssets.sh
./CarlaUE4.sh


# rlkit
# git clone https://github.com/vitchyr/rlkit.git
cd ~/rlkit
pip install -e .


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