#!/bin/bash

DIRNAME=~/vim_plugins

if ! [ -d "$DIRNAME" ] ; then
  mkdir -pv $DIRNAME
  git clone https://github.com/VundleVim/Vundle.vim "$DIRNAME/Vundle.vim"
  ln -sv $DIRNAME ~/.vim/bundle
  printf '\n\n if needed, you can execute "vim +PluginInstall +qall" manually.'
fi

