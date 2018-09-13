export HISTSIZE=50000
export VISUAL='vi'
export FCEDIT=$VISUAL
export MANPAGER='less'
export SDCV_PAGER='less'
export LESS='-RMWij8~FXe'
export PATH="$HOME/bin:$HOME/usr/bin:$HOME/.local/bin:$PATH"
export MANPATH=$HOME/usr/share/man:$HOME/share/man:$MANPATH
export GOPATH=$HOME/var/go
export PATH="$GOPATH/bin:$PATH"

test "$KSH_VERSION" && export ENV=$HOME/.kshrc

