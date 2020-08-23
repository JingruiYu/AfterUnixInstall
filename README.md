
These shell are used for configure the pure Ubuntu OS

# Recommendations for installing the version
* 64bit would be better than 32bit, if you need MATLAB.
* I do not know if Ubuntu 18 supports ros, but Ubuntu 14 and 16 do.
* There are some other choice for you to use UNIX operation system, such as mint, fedora, etc.

# Boot mode (for double operation system)
In the BIOS, change the Boot mode to Legecy, instead of UEFI.

# Partitioning scenarios

\boot | ext4 | 200M
----|------|----
\ | ext4  | max
swap | swap area  | memory size

\boot is the primary partition, while the others is logical partiton.

# Updating software sources
To make sure your software sources is faster:

software manager -> software source -> mirrors, choose the best one.

# To use

Once the system is installed, run the script **afterInstall.sh** to configure the system and install some necessary softerware.

```
cd ~/AfterUnixInstall
sh afterInstall.sh
```

# Attention

The script provided is is to congfiurethe environment for slam. You shoulde make some changes according to your need.

There is a listing of the contents of the installation:
* c++11
* git, camke
* vim, vsode
* doxyen, Pangolin
* eigen(3.1.2)
* opencv(3.4.0)
* lcm
* ORB2
* tmux, zsh
* xscreensaver

