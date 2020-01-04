# ~/.bashrc


# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'

# aliases
alias l="ls -l"
alias rm="rm -i"


# change design of bash prompt
lightblue='\[\033[1;34m\]'
backtodefault='\[\033[0m\]'
darkblue='\[\033[0;34m\]'
red='\[\033[0;31m\]'
export PS1="${lightblue}\W ${backtodefault}${darkblue}(${backtodefault}${red}\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)${darkblue})${backtodefault} \$ "

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# temporary function for setting Power Management feature of hdd
hdd() {

drive="$(cat /proc/mounts | grep /home | cut -c1-8;)" # get current disk name
COMMAND="sudo hdparm -B 254 ${drive}"

echo "Perform the following command: ${COMMAND}"
echo -n "Answer 'yes' or 'no': "

read REPLY
if [[ $REPLY == "y" ]]; then
     $COMMAND
 else
     echo Aborted
fi

}



# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}


# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}


function cdd() {
    if [[ "$#" != 0 ]]; then
        builtin cd "$@";
        return
    fi
    while true; do
        local lsd=$(echo ".." && ls -p | grep '/$' | sed 's;/$;;')
        local dir="$(printf '%s\n' "${lsd[@]}" |
            fzf --reverse --preview '
                __cd_nxt="$(echo {})";
                __cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
                echo $__cd_path;
                echo;
                ls -p --color=always "${__cd_path}";
        ')"
        [[ ${#dir} != 0 ]] || return 0
        builtin cd "$dir" &> /dev/null
    done
}

# vim key bindings
set -o vi

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# set light

function setlight() {

sudo light -S $1

}
