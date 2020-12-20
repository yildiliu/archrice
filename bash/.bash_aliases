alias l="ls -l"
alias rm="rm -iv"
alias smount="sudo mount"
alias sumount="sudo umount"
alias udiskoff="udisksctl power-off -b"
alias sourceit=". /home/meyya/.bash_profile"
alias pwdy="pwd | xclip -selection clipboard"
alias getip="sudo dhcpcd"
alias gx='sudo dhcpcd -x'
alias killconnection="sudo killall wpa_supplicant"
alias fgrep='fgrep --color=auto'
alias ports='netstat -tulanp'
alias ccc='cd ..'
alias v='nvim'
alias declarus='declare -f' # get definition of function
alias lsblk='lsblk -o name,label,size,type,mountpoint,fstype'
alias gpg2='gpg'
alias xournal='xournalpp'
alias ls='ls --color=auto'
alias i3lock='i3lock -fc 000000'
alias vcu='vim $HOME/.current_use'
alias c='cd'
alias sx='startx'
alias screenshot='flameshot gui -p $(pwd)'
alias currentdu='gt5 --with-mounts /'
alias packagestobeupdated="pacman -Qu"
alias txa="tmux_attach"
alias mountfs="sudo mount -t ntfs-3g -o uid=1000,gid=985,dmask=022,fmask=133"
alias start-ssh-agent='eval "$(ssh-agent -s)"'
alias kill-ssh-agent='eval "$(ssh-agent -k)"'
alias grep="grep --color"
alias showallmodules="find /lib/modules/$(uname -r) -type f -name '*.ko*'"
alias my_hdd-spindown-in5sec="hdparm -S 1"
alias dmesg-lean='dmesg -T --color=always | grep -v UFW --color=always'
alias dmesg="dmesg -T"

# git 
alias gitlog1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gitlog2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''        %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

# network

alias netstat-listen="sudo netstat -ntpul" # view services in a "LISTEN" state.

