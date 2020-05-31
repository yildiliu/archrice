
## Bind keys
#sxhkd & 
#exec i3


## dwm
## Statusbar

sxhkd & 
$HOME/suckless/dwm-bar/dwm_bar.sh &
$HOME/.xwall &

while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
