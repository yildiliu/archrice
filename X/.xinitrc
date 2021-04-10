# for intellij 
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

# for keyring

# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# export SSH_AUTH_SOCK

## dwm
## Statusbar

# bind keys
sxhkd & 
$HOME/exter-nilux/suckless/dwm-bar/dwm_bar.sh &
$HOME/.xwall &

while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
