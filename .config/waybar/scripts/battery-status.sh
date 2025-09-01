ICON_FULL="  "
ICON_HIGH="  "
ICON_MED="  "
ICON_LOW="  "
ICON_EMPTY="  "
ICON_CHARGING="  "

BAT_PATH="/sys/class/power_supply"
BAT_NAME="BAT1"
STATUS=$(cat "$BAT_PATH/$BAT_NAME/status")
CAPACITY=$(cat "$BAT_PATH/$BAT_NAME/capacity")

if [ "$STATUS" == "Charging" ] || [ "$STATUS" == "Full" ]; then
    ICON="$ICON_CHARGING"
else
    if [ "$CAPACITY" -ge 80 ]; then
        ICON="$ICON_FULL"
    elif [ "$CAPACITY" -ge 60 ]; then
        ICON="$ICON_HIGH"
    elif [ "$CAPACITY" -ge 40 ]; then
        ICON="$ICON_MED"
    elif [ "$CAPACITY" -ge 20 ]; then
        ICON="$ICON_LOW"
    else
        ICON="$ICON_EMPTY"
    fi
fi

echo "{\"text\": \"$ICON $CAPACITY%\", \"tooltip\": \"Charge level: $CAPACITY%, Status: $STATUS\"}"

