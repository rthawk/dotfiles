if test "$(uname)" != 'Darwin' ;then
  return 0
fi

# homebrew
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:/usr/local/sbin"

alias pwdcp='pwd | pbcopy'

if test "$PS1" && test "$BASH" && test -z ${POSIXLY_CORRECT+x}; then
  if (type brew > /dev/null) && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . "$(brew --prefix)/etc/bash_completion"
  fi
fi

