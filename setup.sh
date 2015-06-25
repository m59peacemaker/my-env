#!/usr/bin/env bash

./gnome-colors.sh

apt-get update && apt-get install -y \
  wget \
  curl \
  git \
  vim \
  docker.io

sudo groupadd docker
sudo gpasswd -a $(id -un) docker
sudo service docker.io restart
newgrp docker

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp ./.vimrc ~
git clone https://github.com/mxw/vim-jsx.git         ~/.vim/bundle
git clone git://github.com/digitaltoad/vim-jade.git  ~/.vim/bundle
git clone https://github.com/gioele/vim-autoswap.git ~/.vim/bundle
git clone https://github.com/Yggdroot/indentLine     ~/.vim/bundle

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
nvm install stable
echo "nvm use stable" >> ~/.bashrc
source ~/.bashrc

npm install -g \
  tape \
  testling \
  gulp \
  grunt \
  bower \
  nodemon \
  live-server \
  http-server
