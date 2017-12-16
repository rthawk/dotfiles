# shellcheck disable=SC1071
#!/usr/bin/env zsh

if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

typeset -U fpath PATH

# completion style
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt autopushd

export HISTFILE=${HOME}/.zsh_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space

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
bindkey -s '^[ml' ' | less^M'

# left prompt
case "$(uname)" in
  Linux)
    export PS1="%n@%M > %1~%(1j, job:%j,) %(!.#.$) "
    ;;
  Darwin) # for OSX
    export PS1="> %1~%(1j, job:%j,) %(!.#.$) "
    ;;
esac

# zsh completion
fpath=(/usr/local/share/zsh-completions $fpath)

# completion init
autoload -U compinit && compinit

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

