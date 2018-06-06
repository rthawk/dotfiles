#!/bin/bash

if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

stty werase undef

shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkjobs
shopt -s direxpand
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

PS1="\\W:\\j:\$ "

