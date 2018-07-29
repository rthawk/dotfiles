HISTFILE=${HOME}/.${0#-}_history
PS1='\$ '
set -o emacs
bind -m '^L'='^U clear^M^Y'

