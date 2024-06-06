#! /bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait til the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar mybar -r &
