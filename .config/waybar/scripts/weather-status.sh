OUTPUT=$(curl "wttr.in/Szczecin?format=1&lang=pl" | sed 's/+//g')

echo "{\"text\": \"$OUTPUT\", \"tooltip\": \"Current weather\"}"

