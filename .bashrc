#!/bin/bash

if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

stty werase undef
bind '\C-w:unix-filename-rubout'

shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s globstar
shopt -s histappend
shopt -s histverify
shopt -s hostcomplete

HISTCONTROL=ignoreboth
HISTFILE=${HOME}/.bash_history
PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"

alias cd='pushd > /dev/null'

PS1="\\W:\\j:\$ "

case "$(uname)" in
  Darwin) # for OSX
    if (type brew > /dev/null) && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
      . "$(brew --prefix)/etc/bash_completion"
    fi
    ;;
esac
