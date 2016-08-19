#!/bin/sh

DOTFILE_PATH="$(dirname "$0")"

cd "$DOTFILE_PATH" || exit 1

./create_symlink.sh
./setup_vim_plugins.sh
