#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

MONITOR=HDMI-0 polybar main 2>&1 | tee -a /tmp/polybar1.log &
MONITOR2=DP-0 polybar secondary 2>&1 | tee -a /tmp/polybar2.log &
