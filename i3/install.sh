#!/bin/bash

if [ -d ~/.config/i3 ]; then
  echo "i3 config exists, moving out of the way..."
  mv ~/.config/i3 ~/.config/i3.bak
fi
ln -svf ~/.dotfiles/i3/i3/ ~/.config/
ln -svf ~/.dotfiles/i3/i3blocks/ ~/.config/
