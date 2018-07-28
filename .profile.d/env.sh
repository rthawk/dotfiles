export HISTSIZE=50000
export SAVEHIST=50000
export HISTFILESIZE=50000

export EDITOR='vim'
export FCEDIT=$EDITOR
export SDCV_PAGER='less'
export LESS='-RMFWi~'

export PATH=$HOME/bin:$PATH
export PATH=$HOME/usr/bin:$PATH

export MANPATH=$HOME/share/man:$MANPATH
export MANPATH=$HOME/usr/share/man:$MANPATH

export GOPATH=$HOME/var/go
export PATH=$PATH:$GOPATH/bin

test "$KSH_VERSION" && export ENV=$HOME/.kshrc

