#!/bin/zsh
zmodload zsh/mathfunc

if [ -z $BACKLIGHT ]; then exit 1; fi

max=$(cat /sys/class/backlight/$BACKLIGHT/max_brightness)
five=$((int(rint( $((max * 0.05)) )) )) 					# five %
curr=$(cat /sys/class/backlight/$BACKLIGHT/brightness)

if [[ "$1" == "up" ]]; then
	if (( $curr+$five > $max )); then echo $max > /sys/class/backlight/$BACKLIGHT/brightness
	else echo $(( $curr + $five )) > /sys/class/backlight/$BACKLIGHT/brightness; fi
elif [[ "$1" == "down" ]]; then
	if (( $curr-$five <= 0 )); then echo 1 > /sys/class/backlight/$BACKLIGHT/brightness
	else echo $(( $curr - $five )) > /sys/class/backlight/$BACKLIGHT/brightness; fi
fi
