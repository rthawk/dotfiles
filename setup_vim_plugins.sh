#!/bin/sh

DIRNAME='./.vim/bundle'

if ! [ -d "$DIRNAME" ] ; then
  echo "create directory: $DIRNAME"
  mkdir -p $DIRNAME
fi

if ! [ -d "$DIRNAME/Vundle.vim" ] ; then
  git clone https://github.com/VundleVim/Vundle.vim "$DIRNAME/Vundle.vim"
fi

vim +PluginInstall +qall
