#!/bin/sh
export HIS=$(ls -t /run/user/1000/hypr/ | head -n 1)
case "$1" in
    up)   d='e+1' ;;
    down) d='e-1' ;;
    *)    exit 1 ;;
esac
exec hyprctl -i "$HIS" dispatch 'hl.dsp.exec_raw("workspace '"$d"'")'
