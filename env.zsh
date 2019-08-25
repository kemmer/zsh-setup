unsetopt share_history
export HISTSIZE=500000
export SAVEHIST=100000
export HISTCONTROL=erasedups
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear"

export EDITOR='vim'
export FILES='/Volumes/Personal'

# ssh key
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# User/local binaries in the PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Compiler flags
#export LDFLAGS="-L/usr/local/opt/curl/lib"
#export CPPFLAGS="-I/usr/local/opt/curl/include"

# golang
export GOPATH="$HOME/Projects/golang"

# Extending oh-my-zsh default theme
PROMPT='${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[yellow]%}"

# Hiding kube information by default and changing layout
KUBE_PS1_SYMBOL_ENABLE=false
RPS1='$(kube_ps1) $EPS1'

# Fixing locale
export LC_ALL='en_US.UTF-8'

# phpbrew
# source $HOME/.phpbrew/bashrc

# Completions
source <(kubectl completion zsh)

