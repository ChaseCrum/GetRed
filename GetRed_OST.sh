#!/bin/bash
# Title: GetRed_OST.sh
# Description: Installs Red Language and dependencies on OpenSUSE Tumbleweed
# Version: 0.1 (BETA)
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
wget https://static.red-lang.org/dl/linux/red-064
chmod +x red-064
echo "The Red language (and its dependencies) has been installed"
echo "Please go to /root/Red and execute the cimpiler binary"
echo "by using the command (as root): ./red-064"
echo "YOUR RED LANGUAGE PROGRAMS WILL NOT WORK UNTIL YOU DO"

