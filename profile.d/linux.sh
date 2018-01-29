#!/bin/bash

if test "$(uname)" != 'Linux' ;then
  return 0
fi

# for slimux on tmux 2.2
export EVENT_NOEPOLL=1

export LS_COLORS='di=33:fi=0:ln=95:pi=5:so=5:bd=5:cd=5:or=37:mi=0:ex=38;05;163:*.rpm=90'
alias ls="ls --color=auto"

# vim:set filetype=sh:
