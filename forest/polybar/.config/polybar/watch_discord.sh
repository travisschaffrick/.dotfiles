#!/bin/bash
notified=false

while true; do
    title=$(wmctrl -l 2>/dev/null | grep -i discord | awk '{for(i=5;i<=NF;i++) printf $i" "}')
    
    if echo "$title" | grep -qE '\([0-9]+\)'; then
        if [ "$notified" = false ]; then
            polybar-msg action xworkspaces hook 0  # trigger "has notification" hook
            notified=true
        fi
    else
        if [ "$notified" = true ]; then
            polybar-msg action xworkspaces hook 1  # trigger "clear" hook
            notified=false
        fi
    fi
    sleep 3
done
