#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
source ~/.bashrc
source ~/.nvm/nvm.sh
nvm install stable
echo "nvm use stable > /dev/null" >> ~/.bashrc
source ~/.bashrc

npm config set init.author.name "Johnny Hauser"
npm config set init.author.email johnnyhauser@gmail.com
npm config set init.license CC0-1.0

npm install -g \
  tape \
  live-server \
  http-server \
  cordova
