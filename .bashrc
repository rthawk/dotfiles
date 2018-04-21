#!/bin/bash

if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

shopt -s autocd
shopt -s extglob
shopt -s globstar
shopt -s histappend
shopt -s dotglob
shopt -s hostcomplete

export HISTCONTROL=ignoreboth
export HISTFILE=${HOME}/.bash_history

alias cd='pushd > /dev/null'

case "$(uname)" in
  Linux)
    BASECL="\[$(tput setaf 38)\]"
    RESET="\[$(tput sgr0)\]"

    if [ -n "$SSH_CLIENT" ]; then
      text="ssh "
    fi
      export PS1=$BASECL"$text\s:\j \W >$RESET "
    ;;
  Darwin) # for OSX
    # bash-completion
    if (type brew > /dev/null) && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
        . "$(brew --prefix)/etc/bash_completion"
    fi

    BLUE="\[\033[0;34m\]"
    WHITE="\[\033[0;37m\]"
    export PS1=$BLUE"b>$WHITE \W \$ "
    ;;
esac
