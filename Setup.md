# 更新软件源及c++

更新软件源，例如选择china的ftp.sjtu.edu.cn

```
sh update.sh
```

# 显卡驱动相关
## 升级kernel
[参考博客](https://blog.csdn.net/musiclvme/article/details/107477099)

1. 从[地址](https://kernel.ubuntu.com/~kernel-ppa/mainline)下载安装deb包，选择目标版本的generic和all的4个包。
2. 这四个包放到一个单独的文件夹下
3. 执行命令
```
sudo dpkg -i *.deb
```

## 删除kernel
[参考博客](https://blog.csdn.net/bless_forever/article/details/79630315)

```
dpkg --get-selections | grep linux
sudo apt-get purge linux-image-<版本号>
sudo update-grub
```

## Terminator
```
sudo apt-get install terminator
```
[美化](https://zhuanlan.zhihu.com/p/144711440)


## vscode
1. 阉割版
```
sudo snap install --classic code
```
卸载
```
sudo snap remove code
```
2. 完整版
```
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code
```
卸载
```
sudo apt remove code
```

## ZSH
```
sudo install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```
参考的 *.zshrc* 见文件 *zshrc*

安装插件
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search  ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
source ~/.zshrc
```

## NIVIDA 驱动安装
目前有效的方式是通过 software & update 安装

## CUDA 安装
1. 先[下载run文件](https://developer.nvidia.com/cuda-toolkit-archive)

例如对于CUDA 11.6
```
wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda_11.6.0_510.39.01_linux.run
```

2. 安装
> sudo sh cuda_*_linux.run


3. 配置环境变量
```
gedit ~/.bashrc
```
把下面的变量添加
```
export PATH="/usr/local/cuda-11.7/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.7/lib64:$LD_LIBRARY_PATH"
export CUDA_HOME="/usr/local/cuda-11.7"
```

4. 检验
```
lsmod | grep nouveau
lspci | grep NV
nvidia-smi
source ~/.bashrc
nvcc -V
```
另外再Sample文件夹下还有可验证的项目，但11.6之后的CUDA有更新，下面的命令仅作参考，
```
cd /usr/local/cuda-9.0/samples/1_Utilities/deviceQuery
sudo make
./deviceQuery
cd ../bandwidthTest
sudo make
./bandwidthTest
```

# APP
## Chrome
下载deb包并安装，在app文件夹中也有。
```
sudo dpkg -i goog
```

## Anyconnect
[下载安装包](https://ngvpn.nvidia.com/)，在app文件夹种也有。
```
gunzip anyconnect-linux64-4.10.05095-predeploy-k9.tar.gz
tar -xvf anyconnect-linux64-4.10.05095-predeploy-k9.tar
cd anyconnect-linux64-4.10.05095/vpn
sudo ./vpn_install.sh
```
vpn地址的填写参考
> ngvpn32.vpn.nvidia.com:8443
> ngvpn30.vpn.nvidia.com

## omni
```
sudo apt-get install fuse libfuse2
```
[下载地址](https://www.nvidia.com/en-us/omniverse/download/
)


## 中文输入法
全界面化操作 [参考博客](https://blog.csdn.net/github_39533414/article/details/85211012)
谷歌拼音 [参考博客](http://8.129.108.223/post/linux-basic/Ubuntu-daily-usage-Chinese-input/)

## 配置bashrc
1. 取消 *uncomment force_color_prompt=yes* 的注释
2. 在bashrc中添加
```
function git-branch-name {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}

function git-branch-prompt {
  local branch=`git-branch-name`
  if [ $branch ]; then printf " [%s]" $branch; fi
}

PS1="\[\033[01;32m\]\u@\h \[\033[0;36m\]\W\[\033[0m\]\[\033[0;31m\]\$(git-branch-prompt)\[\033[0m\] \$ \n #  "
```

## Cato VPN
```
wget https://clients.catonetworks.com/linux/5.0.1.1/cato-install-5.0.1.1.sh
```
配置命令



## 配置git
配置key
```
sudo apt install xclip
ssh-keygen -t ed25519 -C jingruiy@nvidia.com 
xclip -sel clip < ~/.ssh/id_ed25519.pub 

ssh-keygen -o -t rsa -C "yujingrui@sjtu.edu.cn"
xclip -sel clip < ~/.ssh/id_rsa.pub 
```

```
sudo apt install cmake
git config --global user.name jingruiy
git config --global user.email jingruiy@nvidia.com
```

## 安装tmux
```
sudo apt-get install tmux
```

## 安装slack
[下载安装包](https://slack.com/intl/zh-hk/downloads/linux)
```
sudo apt-get install alien
sudo alien -i  *.rpm
```
通过slack安装

```
sudo snap install slack
```

## 安装teams
[下载deb安装包](https://www.microsoft.com/zh-cn/microsoft-teams/download-app)
后安装

## Anaconda
[参考博客](https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart)
