#!/usr/bin/env bash

CPU=$(ps -A -o %cpu | awk '{s+=$1} END {s /= 8} END {printf "%.1f%%\n", s}')
TEMPC=$(/usr/local/bin/smctemp -c)
TEMPG=$(/usr/local/bin/smctemp -g)
PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')
UPTIMEMAC=$(python3 ~/.config/SketchyBar/plugins/mac_uptime.py)

if [ "$PERCENTAGE" = "" ]; then
	exit 0
fi

case ${PERCENTAGE} in
9[0-9] | 100)
	ICON="PWR"
	;;
[6-8][0-9])
	ICON="PWR"
	;;
[3-5][0-9])
	ICON="PWR"
	;;
[1-2][0-9])
	ICON="PWR"
	;;
*) ICON="PWR" ;;
esac

if [ "$CHARGING" != "" ]; then
	ICON=""
fi


sketchybar --set "$NAME" icon="M1" label="$CPU  CPU ${TEMPC}󰔄  GPU ${TEMPG}󰔄  ${ICON} -> ${PERCENTAGE}%  UPTIME -> ${UPTIMEMAC}"
