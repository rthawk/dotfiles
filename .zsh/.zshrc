
. $HOME/.shrc

PS1="%3~ %(1j,job:%j ,)%_%(!.#.$) "
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
typeset -U fpath PATH

setopt autopushd
setopt extendedglob
setopt interactive_comments
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space

autoload -U compinit && compinit
autoload -U select-word-style && select-word-style default

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

