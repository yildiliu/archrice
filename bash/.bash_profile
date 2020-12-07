# User specific environment and startup programs
export PATH=$PATH:$HOME/scripts/:$HOME/.scripts/

export TLDR_CACHE_ENABLED=1
export TLDR_CACHE_MAX_AGE=720

# ~/.bash_profile

#if [[ "$(tty)" = "/dev/tty1" ]]; then
#				pgrep dwm || startx "/home/meyya/.xinitrc"
#fi


[[ -f ~/.bashrc ]] && . ~/.bashrc


