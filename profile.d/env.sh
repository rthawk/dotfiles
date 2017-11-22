#!/bin/sh

export HISTSIZE=20000
export SAVEHIST=20000
export HISTFILESIZE=20000
export HISTTIMEFORMAT='%Y%m%d %T ';

export EDITOR=/usr/bin/vim
export BUNDLER_EDITOR=vim

export SDCV_PAGER="/usr/bin/env less"

export PATH=$HOME/bin:$PATH

# rbenv
if [ -d ~/.rbenv ]  > /dev/null ; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    export PATH="$PATH:$HOME/.rbenv/shims"
    eval "$(rbenv init - --no-rehash )"
fi

# nodebrew
if [[ -f $HOME/.nodebrew/nodebrew ]]; then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

export PATH="$HOME/.node_modules/bin:$PATH"

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

