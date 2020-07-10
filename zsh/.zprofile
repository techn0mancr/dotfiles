# Start desired wm on login
if [[ "$(tty)" = "/dev/tty1" ]]; then
   exec startx
fi
