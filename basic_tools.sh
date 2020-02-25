#!/bin/bash

#
# Updating system
#

sudo apt-get update #update resources
sudo apt dist-upgrade -f #Then, a dist upgrade


#
# Adding PPAs
#
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg && sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" >  /etc/apt/sources.list.d/vscode.list' #Visual studio code
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - #Nodejs

#
# Updating resources (again)
#

sudo apt-get update

#
# Devs stuff
#

sudo apt install -y git
sudo apt install -y git-ftp
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y php
sudo apt install -y unace rar unzar p7zip-rar p7zip #Archive formats

sudo apt install -y vlc
sudo apt install -y transmission-gtk

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
