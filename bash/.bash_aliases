alias l="ls -l"
alias rm="rm -iv"
alias my_mount="sudo mount"
alias my_umount="sudo umount"
alias my_udisk-power-off="udisksctl power-off -b"
alias my_bash-reload=". /home/meyya/.bash_profile"
alias my_xclip-pwd="pwd | xclip -selection clipboard"
alias my_dhcpcd-get-ip="sudo dhcpcd"
alias my_dhcpcd-end='sudo dhcpcd -x'
alias my_wpasupplicant-end="sudo killall wpa_supplicant"
alias fgrep='fgrep --color=auto'
alias v='nvim'
alias my_declare-get-definition='declare -f' # get definition of function
alias lsblk='lsblk -o name,label,size,type,mountpoint,fstype'
alias gpg2='gpg'
alias xournal='xournalpp'
alias ls='ls --color=auto'
alias i3lock='i3lock -fc 000000'
alias my_currently-used-commands='vim $HOME/.current_use'
alias c='cd'
alias my_flameshot-make-screenshot='flameshot gui -p $(pwd)'
alias my_gt5-show-diff='gt5 --with-mounts /'

alias my_pacman-packages-to-be-updated="pacman -Qu"
alias my_pacman-installed-packages="pacman -Qe"

alias my_tmux-attach="tmux attach-session -t"
alias my_tmux-kill-session="tmux kill-session -t"

alias my_mount-ntfs="sudo mount -t ntfs-3g -o uid=1000,gid=985,dmask=022,fmask=133"

alias my_ssh-start-agent='eval "$(ssh-agent -s)"'
alias my_ssh-kill-agent='eval "$(ssh-agent -k)"'

alias grep="grep --color"

alias my_kernel-show-all-available-modules="find /lib/modules/$(uname -r) -type f -name '*.ko*'"

alias my_hdparm-spindown-in5sec="sudo hdparm -S 1"

alias my_dmesg-lean='dmesg -T --color=always | grep -v UFW --color=always'
alias my_dmesg="dmesg -T"

# git 
alias my_git-log1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias my_git-log2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''        %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

# network

alias my_netstat-listen="sudo netstat -ntpul" # view services in a "LISTEN" state.

