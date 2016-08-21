# shellcheck disable=SC1071
#!/usr/bin/env zsh

if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

# keymode
bindkey -e

# unique path
typeset -U fpath PATH

# completion style
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# pushd popd
setopt autopushd

# history file path
export HISTFILE=${HOME}/.zsh_history
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

# left prompt
case "$(uname)" in
  Linux)
    export PS1="%n@%M > %1~%(1j, job:%j,) %(!.#.$) "
    ;;
  Darwin) # for OSX
    export PS1="> %1~%(1j, job:%j,) %(!.#.$) "
    ;;
esac

# right prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

precmd () {
  vcs_info
}
# shellcheck disable=SC2016
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# zsh completion
fpath=(/usr/local/share/zsh-completions $fpath)

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

for file in ~/.zsh/*.zsh; do
    . "$file"
done

