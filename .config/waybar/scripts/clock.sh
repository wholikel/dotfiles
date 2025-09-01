year=$(date +%Y)
day=$(date +%d)
weekday_name=$(date +%A)
month_name=$(date +%B)
time=$(date +%R)

case $weekday_name in
	Monday)
		weekday_name="Poniedzialek"
		;;
	Tuesday)
		weekday_name="Wtorek"
		;;
	Wednesday)
		weekday_name="Środa"
		;;
	Thursday)
		weekday_name="Czwartek"
		;;
	Friday)
		weekday_name="Piątek"
		;;
	Saturday)
		weekday_name="Sobota"
		;;
	Sunday)
		weekday_name="Niedziela"
		;;
esac

case $month_name in
	January)
		month_name="Stycznia"
		;;
	February)
		month_name="Lutego"
		;;
	March)
		month_name="Marca"
		;;
	April)
		month_name="Kwietnia"
		;;
	May)
		month_name="Maja"
		;;
	June)
		month_name="Czerwca"
		;;
	July)
		month_name="Lipca"
		;;
	August)
		month_name="Sierpnia"
		;;
	September)
		month_name="Września"
		;;
	October)
		month_name="Października"
		;;
	November)
		month_name="Listopada"
		;;
	December)
		month_name="Grudnia"
		;;
esac

full_date="$weekday_name, $day $month_name $year, $time"

echo "{\"text\": \"$full_date\", \"tooltip\": \"$full_date\"}"
