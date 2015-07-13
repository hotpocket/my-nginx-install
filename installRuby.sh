#!/bin/sh


# this is included here for convience of getting the docker continers setup easily
# this script is not intended to be run multiple times
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
apt-get install curl
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
echo "source /usr/local/rvm/scripts/rvm" >> ~/.bashrc
rvm reload


