#!/usr/bin/env bash

### General

# Don't log repeated identical commands and commands starting with space
export HISTCONTROL="ignoredups ignorespace"

# cd into a directory just by entering the path
shopt -s autocd

# Set tty for GPG to use pinentry curses
GPG_TTY="$(tty)"
export GPG_TTY

# Prompt
[ -s "/usr/share/git/git-prompt.sh" ] && . "/usr/share/git/git-prompt.sh"
export PS1='\[\033[01;32m\]\W\[\033[01;34m\]$(__git_ps1 " (%s)") \[\033[01;32m\]$\[\033[01;00m\] '

# Node Version Manager 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

### Aliases ###

# Enable color
alias ls="ls --color=auto"
alias grep="grep --color=auto"

# Void Linux
alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"
alias xq="xbps-query"

