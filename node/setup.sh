#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
source ~/.bashrc
source ~/.nvm/nvm.sh
nvm install stable
echo "nvm use stable > /dev/null" >> ~/.bashrc
source ~/.bashrc

npm install -g \
  tape \
  gulp \
  grunt \
  bower \
  nodemon \
  live-server \
  http-server \
  cordova
