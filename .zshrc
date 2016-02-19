# shellcheck disable=SC1071
#!/usr/bin/env zsh

if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

# keymode
bindkey -e

# 重複したパスを登録しない
typeset -U fpath PATH

# 補完style
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# pushd popd
setopt autopushd

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# 履歴の共有
setopt share_history

# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space

# 前履歴の一覧表示
function history-all {
  history -E 1
}

# history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# prompt
case "$(uname)" in
  Linux)
    export PS1="%n@%M > %1~%(1j, job:%j,) %(!.#.$) "
    ;;
  Darwin) # for OSX
    export PS1="> %1~%(1j, job:%j,) %(!.#.$) "
    ;;
esac

#文字コードの設定
export LANG=ja_JP.UTF-8

# lessを色付け表示させる 要source-highlight
EXISTS_SOURCE_HIGHLIGHT='/usr/local/Cellar/source-highlight'
if [ -e $EXISTS_SOURCE_HIGHLIGHT ]; then
    # print "$EXISTS_SOURCE_HIGHLIGHT directory found."
    export LESS='-R'
    export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
else
    print "$EXISTS_SOURCE_HIGHLIGHT directory is not found."
    print "please install source-highlight , type 'brew list | grep source-highlight' "
fi

# zsh completion
fpath=(/usr/local/share/zsh-completions $fpath)

# rbenv
# if which -s rbenv ; then
if which rbenv > /dev/null ; then
    export PATH="$HOME/.rbenv/shims:$PATH"
    eval "$(rbenv init - --no-rehash )"
fi

# completion init
autoload -U compinit && compinit

manbash () {
    man -P "less +/\ \ \ $1" bash
}

# path separate
autoload -U select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified


# auto cd
setopt AUTO_CD
cdpath=(.. ~)

# named directories
hash -d src=~/Dropbox/src/

for file in ~/.zsh/*.zsh; do
    . "$file"
done

