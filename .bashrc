#!/bin/bash
# 共通ファイルの読み込み
if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

shopt -s autocd
shopt -s globstar

# 重複履歴を無視 && 空白から始めたコマンドを無視
export HISTCONTROL=ignoreboth

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
    if (which brew > /dev/null) && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
        . "$(brew --prefix)/etc/bash_completion"
    fi

    BLUE="\[\033[0;34m\]"
    WHITE="\[\033[0;37m\]"
    export PS1=$BLUE"b>$WHITE \W \$ "
    ;;
esac
