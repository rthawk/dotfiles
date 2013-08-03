# 共通ファイルの読み込み
if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

# 重複履歴を無視 && 空白から始めたコマンドを無視
export HISTCONTROL=ignoreboth

# powerline for bash
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# bash-completion
# ln -s "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias cd='pushd > /dev/null'
