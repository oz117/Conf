#!/bin/sh
i=0
while [ 1 ]
do
    i=$(($i + 1))
    if [ $i = 0 ]; then
	xrandr --output eDP1 --gamma 255:0:0
    elif [ $i = 1 ]; then
	xrandr --output eDP1 --gamma 255:255:0
    elif [ $i = 2 ]; then
	xrandr --output eDP1 --gamma 0:255:0
    elif [ $i = 3 ]; then
	xrandr --output eDP1 --gamma 0:255:255
    elif [ $i = 4 ]; then
	xrandr --output eDP1 --gamma 0:0:255
    elif [ $i = 5 ]; then
	xrandr --output eDP1 --gamma 255:0:255
    else
	i=$((-1))
    fi
done
