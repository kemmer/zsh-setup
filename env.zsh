# Disables command history sharing between terminals
unsetopt share_history

HISTSIZE=500000
SAVEHIST=100000

export EDITOR=vim

export POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
