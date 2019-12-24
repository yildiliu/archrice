# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
#was ist das
bindkey -v

autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
#
prompt redhat
