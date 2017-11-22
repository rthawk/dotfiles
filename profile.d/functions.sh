#!/bin/bash

# less source-highlight
function _enable_src_highlight() {
if type 'source-highlight' > /dev/null 2>&1 ; then
  local SRC_HIGHLIGHT='src-hilite-lesspipe.sh'
  local BREW_PATH='/usr/local/bin'
  local APT_PATH='/usr/share/source-highlight'
  local ARCH_PATH='/usr/bin/src-hilite-lesspipe.sh'

  [ -x "$BREW_PATH/$SRC_HIGHLIGHT" ] && local LESSPIPE_PATH="$BREW_PATH/$SRC_HIGHLIGHT"
  [ -x "$APT_PATH/$SRC_HIGHLIGHT" ] && local LESSPIPE_PATH="$APT_PATH/$SRC_HIGHLIGHT"
  [ -x "$ARCH_PATH" ] && local LESSPIPE_PATH="$ARCH_PATH"

  export LESS=' -R '
  export LESSOPEN="| $LESSPIPE_PATH %s"
fi
}
_enable_src_highlight
