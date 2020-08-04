#                          _____ __   
#  ____  ____  _________  / __(_) /__ 
# /_  / / __ \/ ___/ __ \/ /_/ / / _ \
#  / /_/ /_/ / /  / /_/ / __/ / /  __/
# /___/ .___/_/   \____/_/ /_/_/\___/ 
#    /_/                              
#
# zsh profile
#
# Written by Nathanael Putro

# Start bspwm on login
if [[ "$(tty)" = "/dev/tty1" ]]; then
   pgrep bspwm || startx
fi
