xset s off -dpms &
setxkbmap -layout us,ru,ua -option grp:win_space_toggle &
gentoo-pipewire-launcher &
~/.scripts/dwm_status.sh &
~/.scripts/battery_notify.sh &
~/.fehbg &
exec dbus-launch --sh-syntax --exit-with-session dwm
