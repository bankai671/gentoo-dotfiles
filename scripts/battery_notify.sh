chech_battery_percentage() {
    battery_dir="/sys/class/power_supply/BAT0"
    battery_percentage=$(cat "$battery_dir/capacity")

    if [ "$battery_percentage" -le 30 ]; then
        notify-send "Battery Low!" "Battery level is at ${battery_percentage}%"
    fi
    
    if [ "$battery_percentage" -le 20 ]; then
        notify-send "Battery Low!!" "Battery level is at ${battery_percentage}%"
    fi
    
    if [ "$battery_percentage" -le 10 ]; then
        notify-send "Battery Low!!!" "Battery level is at ${battery_percentage}%"
    fi
    
    if [ "$battery_percentage" -le 5 ]; then
        notify-send "Battery Low!!!" "Battery level is at ${battery_percentage}%" "!!!!!!!!!! I NEED CHARGE !!!!!!!!!!"
    fi
}

while true; do
    chech_battery_percentage
    sleep 1m
done
