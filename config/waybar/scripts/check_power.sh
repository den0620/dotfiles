#!/bin/sh

bat=/sys/class/power_supply/BAT0
CRIT=${1:-15}

pwr=$(cat /sys/class/power_supply/BAT0/power_now)

python3 -c "print(\"%.1f\" % ($pwr/1000000))"

