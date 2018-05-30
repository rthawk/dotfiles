#!/bin/sh

alias v='vim'
alias l='ls -1'
alias lsa='ls -a'
alias la='ls -1a'
alias ll='ls -hl'
alias lla='ls -alh'

alias p="popd"

alias g='git'
alias gn='git --no-pager'
alias cdg='cd $(git rev-parse --show-toplevel)'

alias be="bundle exec"

alias grep='grep --color=auto'
alias grepr='grep -Ir --exclude=tags --exclude-dir={.git,.hg,.svn,.idea,.cvs}'

alias d="sdcv --color"
alias hs='fc -l -25'
alias hsa='fc -l 1'
