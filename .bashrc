#!/bin/bash
# 共通ファイルの読み込み
if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

shopt -s autocd
shopt -s globstar

# 重複履歴を無視 && 空白から始めたコマンドを無視
export HISTCONTROL=ignoreboth

# bash-completion
if (which brew > /dev/null) && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . "$(brew --prefix)/etc/bash_completion"
fi

# rbenv
if which rbenv > /dev/null ; then
    export PATH="$HOME/.rbenv/shims:$PATH"
    eval "$(rbenv init -)"
fi

alias cd='pushd > /dev/null'

# prompt
BLUE="\[\033[0;34m\]"
WHITE="\[\033[0;37m\]"

case "$(uname)" in
  Linux)
    if [ -z "$SSH_CLIENT" ]; then
      PROMPT_SSH_CONN="ssh:"
    fi
    export PS1=$BLUE$PROMPT_SSH_CONN"b>$WHITE \W $ "
    ;;
  Darwin) # for OSX
    export PS1=$BLUE"b>$WHITE \W $ "
    ;;
esac
