#!/usr/bin/env bash

status=$(playerctl status 2> /dev/null)

if [[ $status = "Playing" ]]; then
  artist=$(playerctl metadata artist)
  title=$(playerctl metadata title)
  echo -n "  $artist - $title"
else
  echo ""
fi
