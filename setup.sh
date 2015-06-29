#!/usr/bin/env bash

mkdir ~/tmp

sudo apt-get update && sudo apt-get install -y \
  wget \
  curl \
  git

./scripts/setup-vim.sh
cp ./resources/.vimrc ~

./scripts/setup-node.sh
