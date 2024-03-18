#!/bin/bash

TIME=$(osascript -e 'tell application "Flow" to getTime')
PHASE=$(osascript -e 'tell application "Flow" to getPhase') 
CURR=''

if [ $PHASE = "Flow" ]; then
	COLOR=0xFFA6D189
  CURR="FOCUS"
elif [ $PHASE = "Break" ]; then
	COLOR=0xFFE78284
  CURR="BREAK"
fi

sketchybar --set $NAME label="$TIME $CURR" icon="󰄉" icon.color=$COLOR
