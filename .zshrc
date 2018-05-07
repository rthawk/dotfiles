if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

typeset -U fpath PATH

setopt autopushd
setopt extendedglob

export HISTFILE=${HOME}/.zsh_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd
cdpath=(.. ~)

function history-all {
  history -E 1
}

bindkey -e
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward
bindkey -s '^[mv' '|'
bindkey -s '^[md' '$'
bindkey -s '^[mt' '~/'
bindkey -s '^[mb' '\'
bindkey -s '^[mp' '+'
bindkey -s '^[me' '='
bindkey -s '^[ml' ' | less^M'
bindkey -s '^[mg' ' | grep '
bindkey -s '^[mq' '^a$(^e)'

PS1="> %3~%(1j, job:%j,) %(!.#.$) "

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U compinit && compinit
autoload -U select-word-style && select-word-style default

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

for file in ~/.zsh/*.zsh; do
    . "$file"
done

