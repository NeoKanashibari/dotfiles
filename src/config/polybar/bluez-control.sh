#!/bin/bash
#

HEADSET="50:C2:75:37:41:54"

case $1 in
  connect) bluetoothctl connect "$HEADSET" ;;
  disconnect) bluetoothctl disconnect "$HEADSET" ;;
esac

notify-send $1 $HEADSET $1
echo "$1 $connected" >> /tmp/sideeffect
