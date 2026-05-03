#!/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
filter_battery_status_logs() {
    sed -u '/^\(Charging\|Discharging\|Not charging\|Unknown\|Full\)$/d'
}

if [ "${1:-}" = "--debug" ]; then
    WAYBAR_LOG_LEVEL=debug waybar 2>&1 | filter_battery_status_logs
else
    WAYBAR_LOG_LEVEL=info waybar 2>&1 | filter_battery_status_logs
fi
