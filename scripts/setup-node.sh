#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

nvm install stable
echo "nvm use stable" >> ~/.bashrc
. ~/.bashrc

npm install -g \
  tape \
  gulp \
  grunt \
  bower \
  nodemon \
  live-server \
  http-server
