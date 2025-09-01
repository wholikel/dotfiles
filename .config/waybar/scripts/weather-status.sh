OUTPUT=$(curl "wttr.in/Szczecin?format=1" | sed 's/+//g')

echo "{\"text\": \"$OUTPUT\", \"tooltip\": \"Current weather\"}"

