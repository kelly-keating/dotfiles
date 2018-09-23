#!/usr/bin/env bash

status=$(amixer get Master | grep '%' | awk -F "[][]" '{print $6}')
volumen_pct=$(amixer get Master | awk -F "[][]" '/dB/ {print $2}')
if [[ $status = 'off' ]]; then
  echo "   $volumen_pct"
else
  echo "   $volumen_pct"
fi
