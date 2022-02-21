#export ENV="$HOME/.config/shell/kshrc"
export ENV="$HOME/.config/zsh/.zshrc"
source "$HOME/.zprofile"
xrandr --dpi 96

#xset fp+ /usr/local/share/fonts/terminus
#xset fp+ /usr/local/share/fonts/ghostscript
#xset b off

#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

#"$HOME/.local/bin/setbg"
setbg &
remap &
mpd &
dunst &
xcompmgr &
dwmblocks &
dwm
