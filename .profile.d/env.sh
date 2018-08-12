export HISTSIZE=50000
export SAVEHIST=$HISTSIZE
export HISTFILESIZE=$HISTSIZE

export VISUAL='vi'
export FCEDIT=$VISUAL
export SDCV_PAGER='less'
export LESS='-RMFWi~'

export PATH=$HOME/bin:$PATH
export PATH=$HOME/usr/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export MANPATH=$HOME/share/man:$MANPATH
export MANPATH=$HOME/usr/share/man:$MANPATH

export GOPATH=$HOME/var/go
export PATH=$PATH:$GOPATH/bin

test "$KSH_VERSION" && export ENV=$HOME/.kshrc

