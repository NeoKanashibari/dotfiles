#!/bin/bash
#

list_cards() {
    pactl list cards short | awk '{print $2}' | grep bluez | awk -F"." '{print $NF}'
}

toggle_control() {
    if pidof pavucontrol; then
        killall pavucontrol
    else
        pavucontrol
    fi
}
case $1 in
  toggle) toggle_control ;;
  list) list_cards ;;
  *) toggle_control ;;
esac


