#!/bin/bash
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y @c-development @development-tools
dnf install -y zlib-devel openssl-devel expat-devel ffmpeg ffmpeg-devel qt5-qtbase-devel
cd ~/Downloads
mkdir makemkv
cd makemkv
wget https://www.makemkv.com/download/old/makemkv-bin-1.17.7.tar.gz
wget https://www.makemkv.com/download/makemkv-oss-1.17.7.tar.gz
gzip -d makemkv-bin-1.17.7.tar.gz | tar xpf makemkv-bin-1.17.7.tar
gzip -d makemkv-oss-1.17.7.tar.gz | tar xpf makemkv-oss-1.17.7.tar
cd makemkv-oss-1.17.7
./configure
make
make install
cd ../makemkv-bin-1.17.7
make
sudo make install