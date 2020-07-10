#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on multiple monitors
if type "xrandr"; then
    for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$monitor polybar --reload -c ~/.config/polybar/config.ini top &
        MONITOR=$monitor polybar --reload -c ~/.config/polybar/config.ini bottom &
    done
else
    polybar --reload -c ~/.config/polybar/config.ini top &
    polybar --reload -c ~/.config/polybar/config.ini bottom &
fi
