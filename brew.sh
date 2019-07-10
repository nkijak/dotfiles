if [ $(uname) == "Linux" ]; then
  sudo apt install linuxbrew-wrapper
  sudo mkdir -p /home/linuxbrew/.linuxbrew/var/homebrew/linked
  sudo chown -R $(whoami) /home/linuxbrew/.linuxbrew/var/homebrew/linked

elif [ $OSTYPE == "darwin" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew install ctags
