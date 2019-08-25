# Alias for changing common settings
alias config-zsh="$EDITOR $HOME/.zshrc"
alias config-ohmyzsh="$EDITOR $HOME/.oh-my-zsh"
alias config-gitglobal="$EDITOR $HOME/.gitconfig"
alias config-hosts="sudo $EDITOR /etc/hosts"
alias config-boot="$EDITOR $SHCONFIG_PATH/boot.zsh"
alias config-env="$EDITOR $SHCONFIG_PATH/env.zsh"
alias config-alias="$EDITOR $SHCONFIG_PATH/alias.zsh"
alias config-functions="$EDITOR $SHCONFIG_PATH/functions.zsh"

alias config-vim="$EDITOR $HOME/.vimrc"
alias config-task="$EDITOR $HOME/.taskrc"
alias config-neofetch="$EDITOR $HOME/.config/neofetch/config.conf"

# Basic unix tools
alias h='cd $HOME'
alias l='/bin/ls'
alias ls="ls -l -G"
alias cp="cp -v -i"
alias mv="mv -i"
alias cat="bat --plain"
alias rcat="/bin/cat"

alias sshgen="ssh-keygen -t rsa -b 2048 -m pem"

# Common git operations for my workflow
alias gwip="git commit --no-verify -a -m WIP"
#alias gdip="git reset HEAD~1 --soft"

# Vagrant
alias vs="vagrant status"
alias vss="vagrant ssh"
alias vu="vagrant up"
alias vh="vagrant halt"
alias vr="vagrant reload"

# PHP
alias pdocm="bin/console doctrine:migrations:diff --formatted --line-length=120"

# kube-ps1 extension
alias kn="kubeon"
alias kf="kubeoff"

# Kubernetes management and useful commands
alias kls="kubectl get pods"

# Docker
#alias dps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}'"
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}'"
alias dls="dps"
#alias dpsw="watch -n 0.5 docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}'"

# Python
# -- VirtualEnv
alias venv='. venv/bin/activate'
alias denv='deactivate'

