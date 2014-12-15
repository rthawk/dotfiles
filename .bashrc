# 共通ファイルの読み込み
if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

# 重複履歴を無視 && 空白から始めたコマンドを無視
export HISTCONTROL=ignoreboth

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# rbenv
# if which -s rbenv ; then
if which rbenv > /dev/null ; then
    export PATH="$HOME/.rbenv/shims:$PATH"
    eval "$(rbenv init -)"
fi

alias cd='pushd > /dev/null'
