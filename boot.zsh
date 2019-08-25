# -- Environment variables
source $SHCONFIG_PATH/env.zsh

# -- Aliases
source $SHCONFIG_PATH/alias.zsh

# -- Functions and helpers
source $SHCONFIG_PATH/functions.zsh

# -- Sensitive functions, env vars, alises, etc
[ -f $SHCONFIG_PATH/sensitive.zsh ] && source $SHCONFIG_PATH/sensitive.zsh

# -- Exec at startup
#(neofetch && echo "\n\n" && quote)
kubeoff
