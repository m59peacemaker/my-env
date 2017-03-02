#!/usr/bin/env bash

dir=$(dirname "$BASH_SOURCE")

# show no more than 3 dir levels in terminal
echo "export PROMPT_DIRTRIM=3" >> ~/.bashrc

# remove machine name from terminal
echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc

# make **/*.js match all depths
shopt -s globstar

$dir/gogh-custom-theme.sh
