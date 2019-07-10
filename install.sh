#!/bin/bash

echo "Installing vim"
./vim/install.sh

echo "Installing tmux"
./tmux/install.sh

if [ $(uname) == 'Linux' ]; then
  echo "Installing i3 config"
  ./i3/install.sh
fi
