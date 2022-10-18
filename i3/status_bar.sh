#!/usr/bin/env bash

/usr/bin/i3status --config "$HOME/.config/i3/status.conf" | (
    read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :
    do
        read line
        state=$(/usr/local/bin/piactl get connectionstate)
        region=$(/usr/local/bin/piactl get region)
        protocol=$(/usr/local/bin/piactl get protocol)
        volume=$(amixer -c 0 get Master | awk 'NR==5 {print $4}')
        prefix="VOL: ${volume} | ${state}[${region}]-${protocol}"
        echo ",[{\"full_text\":\"${prefix}\" },${line#,\[}" || exit 1
    done)
