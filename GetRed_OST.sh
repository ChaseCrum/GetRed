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
zypper in -y libgdk_pixbuff-2_0-0 libgdk_pixbuff-2_0-0-32bit libgtk-3 libgtk-3-32bit