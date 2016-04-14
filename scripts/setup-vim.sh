#!/usr/bin/env bash

sudo apt-get update && sudo apt-get install -y vim-gnome glipper

mkdir -p ~/.vim/autoload ~/.vim/bundle

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/mxw/vim-jsx.git
git clone git://github.com/digitaltoad/vim-pug.git
git clone https://github.com/gioele/vim-autoswap.git
git clone https://github.com/Yggdroot/indentLine
git clone https://github.com/othree/yajs.vim
git clone https://github.com/othree/es.next.syntax.vim
