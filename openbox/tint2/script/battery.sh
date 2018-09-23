#!/usr/bin/env bash

battery_path="/sys/class/power_supply/BAT0"
capacity=$(cat $battery_path/capacity)
status=$(cat $battery_path/status)

if [[ $status == "Discharging" ]]; then
  case $((
    $capacity >= 1  && $capacity <= 15  ? 1 :
    $capacity >= 16 && $capacity <= 33  ? 2 :
    $capacity >= 34 && $capacity <= 66  ? 3 :
    $capacity >= 67 && $capacity <= 95  ? 4 :
    $capacity >= 95 && $capacity <= 100 ? 5 : 0)) in

    (1) echo "   $capacity%";;
    (2) echo "   $capacity%";;
    (3) echo "   $capacity%";;
    (4) echo "   $capacity%";;
    (5) echo "   $capacity%";;
    (0) echo "   $capacity%";;
  esac
else
  echo "   $capacity%"
fi
