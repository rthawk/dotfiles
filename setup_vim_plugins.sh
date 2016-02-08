#!/bin/bash

DIRNAME=~/.vim/bundle

if ! type vim > /dev/null >2&1 ; then
  echo 'vim is not installed'
  exit 1
fi

if ! [ -d "$DIRNAME" ] ; then
  echo "create directory: $DIRNAME"
  mkdir -p $DIRNAME
fi

if ! [ -d "$DIRNAME/Vundle.vim" ] ; then
  git clone https://github.com/VundleVim/Vundle.vim "$DIRNAME/Vundle.vim"
fi

vim +PluginInstall +qall
