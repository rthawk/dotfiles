shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkjobs
shopt -s direxpand
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s globstar
shopt -s histappend
shopt -s histverify
shopt -s hostcomplete
shopt -s nocaseglob
shopt -s nocasematch

HISTCONTROL=ignoredups:ignorespace:erasedups
PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"
PS1='\W:\j:\$ '

