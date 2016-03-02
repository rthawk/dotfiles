#!/bin/sh

if [ "$(uname)" = 'Darwin' ] ; then
  CONFIG_PATH=~/dotfiles/karabiner/private.xml
  TARGET_PATH=~/Library/Application\ Support/Karabiner/private.xml

  mv "$TARGET_PATH" "$TARGET_PATH.bk.$(date +%Y-%m-%d.%H%M%S)"
  ln -sv "$CONFIG_PATH" "$TARGET_PATH"
fi
