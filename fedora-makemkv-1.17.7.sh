#!/bin/bash
# dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# Pulls and downloads pre-requisites needed by make-mkv. Only use if needed by FEDORA INSTALL ONLY)
dnf install -y @c-development @development-tools
dnf install -y zlib-devel openssl-devel expat-devel ffmpeg ffmpeg-devel qt5-qtbase-devel
# Installs Necessary Pre-req packages
cd ~/Downloads
# Change Directory
mkdir makemkv
# Make a new directory to save files.
cd makemkv
wget https://www.makemkv.com/download/old/makemkv-bin-1.17.7.tar.gz
wget https://www.makemkv.com/download/old/makemkv-oss-1.17.7.tar.gz
# Pulls the bin and oss files from the make.mkv website. The version number can be adjusted to whatever version you want to implement.
gzip -d makemkv-bin-1.17.7.tar.gz | tar xpf makemkv-bin-1.17.7.tar
gzip -d makemkv-oss-1.17.7.tar.gz | tar xpf makemkv-oss-1.17.7.tar
# Unzips the files completely for use.
cd makemkv-oss-1.17.7
./configure
# Starts the configuration from associated file(s)
make
# Compile
make install
# Installs compiled code
cd ../makemkv-bin-1.17.7
make
sudo make install