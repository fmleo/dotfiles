pkill polybar

if type "xrandr"; then
	for m in $(xrandr --query | grep 'connected' | cut -d" " -f1); do
		MONITOR=$m polybar --reload main --config=~/.config/polybar/config.ini &
	done
else
	polybar --reload main --config=~/.config/polybar/config.ini &
fi
