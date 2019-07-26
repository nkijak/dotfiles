exitcode=0
if [[ -f ~/.bashrc ]] && [[ -f ~/.bashrc.local ]]; then
  echo "both a bashrc and bashrc.local exist.  unclear how to proceed."
  exitcode=1
elif [ -f ~/.bashrc ] ; then
  mv ~/.bashrc ~/.bashrc.local
fi
if [ "$exitcode" -eq 0 ]; then 
  echo "linking bashrc"
  ln -sv ~/.dotfiles/bash/bashrc ~/.bashrc
fi

if [[ -f ~/.bash_profile ]] && [[ -f ~/.bash_profile.local ]]; then
  echo "both a bash_profile and bash_profile.local exist.  unclear how to proceed."
  exitcode=2
elif [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.local
fi

if [ "$exitcode" -lt 2 ]; then 
  echo "linking bash_profile"
  ln -sv ~/.dotfiles/bash/bash_profile ~/.bash_profile
fi


exit $exitcode


