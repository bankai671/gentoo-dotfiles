#!/bin/sh

interval=1

datef() {
	date_info=$(date '+%b %d %a')
	printf "$date_info"
}

clock() {
	time_info=$(date '+%H:%M')
	printf "$time_info"
}

battery() {
	battery_info=$(cat /sys/class/power_supply/BAT0/capacity)
	printf "$battery_info%%"
}

while true; do
	xsetroot -name "[$(datef)] [$(clock)] [$(battery)]"
	sleep $interval
done
