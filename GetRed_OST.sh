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
