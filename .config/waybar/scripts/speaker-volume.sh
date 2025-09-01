VOLUME_PRECENTAGE=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP 'front-left: [^/]+/ *\K[0-9]+(?=%)')

echo "{\"text\": \"  $VOLUME_PRECENTAGE%\", \"tooltip\": \"Speaker volume: $VOLUME_PRECENTAGE\"}"
