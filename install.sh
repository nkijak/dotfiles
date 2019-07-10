#!/bin/bash

echo "Installing vim"
./vim/install.sh

echo "Installing tmux"
./tmux/install.sh

if [ $(uname) == 'Linux' ]; then
  echo "Installing i3 config"
  ./i3/install.sh
fi

echo "Configuring git"
if [ -f ~/.gitconfig ]; then
  echo "gitconfig file exists. will not modify"
else
  ln -svf ~/.dotfiles/.gitconfig ~/.gitconfig
fi

echo "Installing bash config"
./bash/install.sh

echo "Installing brew"
./brew.sh
