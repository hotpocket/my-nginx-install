#!/usr/bin/env bash

### Setup the container with ruby
# ensure ruby is installed
apt-get install curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
echo "source /usr/local/rvm/scripts/rvm" >> ~/.bashrc
rvm reload

git clone https://github.com/hotpocket/my-nginx-install.git
cd my-nginx-install
bundle
librarian-chef install
# get back my cookbook that librarian-chef just blew away
git checkout cookbooks
