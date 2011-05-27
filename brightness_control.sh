#/!bin/bash
usage="sh shell_name.sh +/-"
msg="valid brightness in this is between 1...7"

brightness=`cat /sys/class/backlight/acpi_video0/brightness`
if [ "$1" = + ]; then
    let brightness_cur=$brightness+1
else
    if [ "$1" = - ]; then
       let brightness_cur=$brightness-1
    fi
fi

if [ "$1" = + ] || [ "$1" = - ]; then
    if [ "$brightness_cur" -ge 1 ] && [ "$brightness_cur" -le 7 ]; then
        `echo $brightness_cur > /sys/class/backlight/acpi_video0/brightness`
    fi
else 
    echo $usage
    echo $msg
    exit 1
fi

brightness_cur=`cat /sys/class/backlight/acpi_video0/brightness` 
brightness_per=`expr $brightness_cur "*" 100 "/" 7`

if [ "$brightness_per" = "1" ]; then
    icon_name="notification-display-brightness-off"
else
    if [ "$brightness_per" -lt "33" ]; then
        icon_name="notification-display-brightness-low"
    else
        if [ "$brightness_per" -lt "67" ]; then
            icon_name="notification-display-brightness-medium"
        else
            if [ "$brightness_per" -lt "99" ]; then
                icon_name="notification-display-brightness-high"
            else
                icon_name="notification-display-brightness-full"
            fi
        fi
    fi
fi
notify-send " " -i $icon_name -h int:value:$brightness_per -h string:x-canonical-private-synchronous:brightness 
