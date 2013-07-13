
PATH=$PATH:/usr/local/share/python
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="/usr/local/bin:$PATH:/usr/local/sbin"
source "$HOME/.rvm/scripts/rvm" # rvm

# npm set $NODE_PATH
export NODE_PATH=/usr/local/lib/node_modules

# powerline
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# 重複履歴を無視 && 空白から始めたコマンドを無視
export HISTCONTROL=ignoreboth

# historyに時刻追加
HISTTIMEFORMAT='%Y%m%d %T';
export HISTTIMEFORMAT

##### 
# C-S で画面が停止するのをやめる. 代わりに履歴検索が使えるようになる
stty stop undef


# bash-completion
# ln -s "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias ctags="`brew --prefix`/bin/ctags"
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad


