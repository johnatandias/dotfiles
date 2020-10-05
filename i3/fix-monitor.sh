#!/bin/bash

xrandr \
  --output eDP-1 \
    --mode 1366x768 \
    --pos 277x1080 \
    --rotate normal \
  --output HDMI-1 \
    --primary \
    --mode 1920x1080 \
    --pos 0x0 \
    --rotate normal
