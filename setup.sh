#!/usr/bin/env bash

dir=$(dirname "$BASH_SOURCE")

mkdir ~/tmp

gsettings set com.canonical.Unity.Launcher launcher-position Bottom

sudo apt-get update && sudo apt-get install -y \
  wget \
  curl \
  git \
  xclip

$dir/vim/setup.sh
$dir/terminal/setup.sh
$dir/node/setup.sh

curl -sSL https://get.docker.com/ | sh

cat << EOF > ~/.bashrc
drm() { docker rm \$(docker ps -a | tail -n +2 | awk {'print \$1'}); }
drmi() { docker rmi \$(docker images | grep "<none>" | awk {'print \$3'}); }
EOF
