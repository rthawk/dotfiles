#!/bin/bash

if test "$(uname)" != 'Darwin' ;then
  return 0
fi

# homebrew
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:/usr/local/sbin"

# for slimux on tmux 2.2
export EVENT_NOKQUEUE=1
export EVENT_NOPOLL=1

export LSCOLORS=dxgxcxdxCxegedabagacad
alias ls='ls -G'
alias man='env LANG=C man'
alias pwdcp='pwd | pbcopy'

# vim:set filetype=sh:
