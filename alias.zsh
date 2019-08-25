# Alias for changing common settings
alias config-zsh="$EDITOR $HOME/.zshrc"
alias config-ohmyzsh="$EDITOR $HOME/.oh-my-zsh"
alias config-gitglobal="$EDITOR $HOME/.gitconfig"
alias config-hosts="sudo $EDITOR /etc/hosts"
alias config-boot="$EDITOR $SHCONFIG_PATH/boot.zsh"
alias config-env="$EDITOR $SHCONFIG_PATH/env.zsh"
alias config-alias="$EDITOR $SHCONFIG_PATH/alias.zsh"
alias config-functions="$EDITOR $SHCONFIG_PATH/functions.zsh"

alias config-homestead="$SHCONFIG_EDITOR $HOME/Personal/Homestead/Homestead.yaml"

# Remapped commands
if [[ "$OSTYPE" == "darwin"* ]]; then
	alias ls="ls -l -G"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	alias ls="ls -l --color"
        alias lsh="ls -h"
fi

alias mv="mv -i"
alias cat="bat --plain --theme 1337"
alias rcat="/bin/cat"

# Additional alias for `debian` oh-my-zsh plugin
alias ali="grep \" install \" /var/log/dpkg.log"    # List installed packages
alias ass="apt show"

# Express VPN
alias evpn="expressvpn"
alias evpns="expressvpn status"
alias evpnc="expressvpn connect"
alias evpnd="expressvpn disconnect"

# trash-cli (Ubuntu)
alias tf="trash"
alias tl="trash-list"

alias gpl="gp --force-with-lease"

alias sshgen="ssh-keygen -t rsa -b 2048 -m pem"

