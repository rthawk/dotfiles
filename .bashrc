
. $HOME/.shrc
shopt -s \
  autocd \
  cdable_vars \
  cdspell \
  checkjobs \
  direxpand \
  dirspell \
  dotglob \
  extglob \
  globstar \
  histappend \
  histverify \
  hostcomplete \
  nocaseglob

HISTCONTROL=ignoredups:ignorespace:erasedups
PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"
PS1='\W:\j:\$ '

