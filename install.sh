#!/bin/sh

DOTFILE_PATH=~/dotfiles/

git clone https://github.com/rthawk/dotfiles "$DOTFILE_PATH"

cd $DOTFILE_PATH
./create_symlink.sh
./setup_vim_plugins.sh

