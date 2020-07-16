#!/bin/bash

if [ -z $BACKLIGHT ]; then
	echo ''
	exit 1
fi

max=$(cat /sys/class/backlight/$BACKLIGHT/max_brightness)
cur=$(cat /sys/class/backlight/$BACKLIGHT/brightness)

percent=$(echo "scale=2; $cur/$max*100" | bc)
percent=$(echo $percent | sed 's/\..*//')

echo "$percent%"
