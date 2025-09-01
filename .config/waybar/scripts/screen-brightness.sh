icon="󰖨 "

current_brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)

brightness=$(echo "$current_brightness*100 / $max_brightness" | bc)

echo "{\"text\": \"$icon $brightness%\", \"tooltip\": \"$brightness\"}"

