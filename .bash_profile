# homebrew
export PATH=/usr/local/bin:$PATH

alias ctags="`brew --prefix`/bin/ctags"

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then

. `brew --prefix`/etc/bash_completion

fi

# ln -s "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"
########

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
