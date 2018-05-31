#!/bin/sh

export HISTSIZE=50000
export SAVEHIST=50000
export HISTFILESIZE=50000
export HISTTIMEFORMAT='%Y%m%d %T ';

export EDITOR='vim'
export SDCV_PAGER='less'

export PATH=$HOME/bin:$PATH
export PATH=$HOME/usr/bin:$PATH

export MANPATH=$HOME/share/man:$MANPATH
export MANPATH=$HOME/usr/share/man:$MANPATH

if test -d "$HOME/.rbenv" ; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    export PATH="$PATH:$HOME/.rbenv/shims"
    eval "$(rbenv init - --no-rehash )"
fi

if test -f "$HOME/.nodebrew/nodebrew" ; then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

export PATH="$HOME/.node_modules/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

