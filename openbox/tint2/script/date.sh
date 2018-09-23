#!/usr/bin/env bash

echo $(date +"%a %d %H:%M" | sed 's/^./\u&/')
