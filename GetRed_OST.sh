#!/bin/bash
# Title: GetRed_OST.sh
# Description: Installs Red Language and dependencies on OpenSUSE Tumbleweed
# Version: 0.1 (BETA)
# Date: 13JAN22
# Author: Chase Crum
# Contact: chase.crum@suse.com
# License: GetRed is licensed under the GNU Affero General Public License v3.0

# refresh/update repositories
zypper ref

# install 32-bit Runtime Environment
zypper in -y patterns-base-32bit

# install dependencies
zypper in -y libgdk_pixbuf-2_0-0 libgdk_pixbuf-2_0-0-32bit
zypper in -y libgtk-3-0 libgtk-3-0-32bit
zypper in -y glibc libcurl4 libcurl4-32bit

### download and install Red Language binary
mkdir $HOME/Red
cd $HOME/Red
# let's make sure wget is installed, not found in some vagrant boxes
zypper in -y wget
wget https://static.red-lang.org/dl/auto/linux/red-latest
chmod

### must install rebol/view for GUI applications or get vew has no value error

# install dep libxt and libXaw (and their 32 bit versions)
zypper in -y libXt6 libXt6-32bit libXaw-devel libXaw-devel-32bit

#download the tar file
wget http://www.rebol.com/downloads/v278/rebol-view-278-4-3.tar.gz

# now to unpack it...
tar -xvf rebol-view-278-4-3.tar.gz

# let's go get it...
cd releases/rebol-view

# install the binary:
./rebol





echo "The Red language (and its dependencies) has been installed"
echo "Please go to /root/Red and execute the cimpiler binary"
echo "by using the command (as root): ./red-064"
echo "YOUR RED LANGUAGE PROGRAMS WILL NOT WORK UNTIL YOU DO"
