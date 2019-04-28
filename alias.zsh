# Alias for changing common settings
alias config-zsh="$SHCONFIG_EDITOR $HOME/.zshrc"
alias config-ohmyzsh="$SHCONFIG_EDITOR $HOME/.oh-my-zsh"
alias config-neofetch="$SHCONFIG_EDITOR $HOME/.config/neofetch/config.conf"
alias config-gitglobal="$SHCONFIG_EDITOR $HOME/.gitconfig"
alias config-hosts="sudo $SHCONFIG_EDITOR /etc/hosts"
alias config-boot="$SHCONFIG_EDITOR $SHCONFIG_PATH/boot.zsh"
alias config-env="$SHCONFIG_EDITOR $SHCONFIG_PATH/env.zsh"
alias config-sensitive="$SHCONFIG_EDITOR $SHCONFIG_PATH/sensitive.zsh"
alias config-alias="$SHCONFIG_EDITOR $SHCONFIG_PATH/alias.zsh"
alias config-functions="$SHCONFIG_EDITOR $SHCONFIG_PATH/functions.zsh"

# Remapped commands
alias ls="ls -l --color"
alias mv="mv -i"
alias cat="bat --plain --theme 1337"
alias rcat="/bin/cat"

# Additional alias for `debian` oh-my-zsh plugin
alias ali="grep \" install \" /var/log/dpkg.log"    # List installed packages
alias ass="apt show"
