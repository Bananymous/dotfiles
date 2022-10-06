#!/bin/sh

STATUS=$(cat /sys/class/power_supply/BAT0/status)
CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

if [[ $STATUS == "Charging" ]] ; then
	echo -e "\uf0e7 $CAPACITY%"
elif [[ $CAPACITY -ge 80 ]] ; then
	echo -e "\uf240 $CAPACITY%"
elif [[ $CAPACITY -ge 60 ]] ; then
	echo -e "\uf241 $CAPACITY%"
elif [[ $CAPACITY -ge 40 ]] ; then
	echo -e "\uf242 $CAPACITY%"
elif [[ $CAPACITY -ge 20 ]] ; then
	echo -e "\uf243 $CAPACITY%"
else
	echo -e "\uf244 $CAPACITY%"
fi

if [[ $STATUS == "Charging" ]] ; then
	echo "#00FF00"
elif [[ $CAPACITY -le 10 ]] ; then
	echo "#FF0000"
elif [[ $CAPACITY -le 20 ]] ; then
	echo "#FFFF00"
else
	echo "#FFFFFF"
fi
