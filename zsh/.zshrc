
. $HOME/.shrc

PS1="%3~:%(1j,%j:,)%(!.#.$) "
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
typeset -U fpath PATH

setopt \
  auto_pushd \
  pushd_ignore_dups \
  cdable_vars \
  extendedglob \
  interactive_comments \
  share_history \
  hist_ignore_all_dups \
  hist_ignore_space \
  hist_reduce_blanks \
  print_exit_value

autoload -Uz compinit && compinit
autoload -Uz select-word-style && select-word-style default
autoload -Uz edit-command-line && zle -N edit-command-line && bindkey '^X^E' edit-command-line

bindkey -M emacs '^[[L' vi-cmd-mode
bindkey -M main  '^P'   history-search-backward
bindkey -M main  '^N'   history-search-forward
bindkey -M viins '^A'   beginning-of-line
bindkey -M viins '^E'   end-of-line
bindkey -M viins '^B'   backward-char
bindkey -M vicmd 'k'    history-search-backward
bindkey -M vicmd 'j'    history-search-forward

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

