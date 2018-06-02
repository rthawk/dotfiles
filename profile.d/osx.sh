#!/bin/bash

if test "$(uname)" != 'Darwin' ;then
  return 0
fi

stty discard undef # C-o

# homebrew
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:/usr/local/sbin"

export LSCOLORS=dxgxcxdxCxegedabagacad

alias ls='ls -G'
alias pwdcp='pwd | pbcopy'

